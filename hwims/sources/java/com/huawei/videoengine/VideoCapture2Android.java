package com.huawei.videoengine;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.Face;
import android.media.MediaCodec;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import com.huawei.ims.HwImsConfigImpl;
import com.huawei.videoengine.Texture2dProgram;
import java.util.ArrayList;
import java.util.concurrent.Semaphore;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class VideoCapture2Android {
    private static final int MSG_CAPTURE_SIZE = 1;
    private static final int MSG_DESTROY = 4;
    private static final int MSG_INIT_EGL = 0;
    private static final int MSG_UPDATE_ENCSURFACE = 3;
    private static final int MSG_UPDATE_PREVIEW = 2;
    private static final String PREFIXSTEP = "#step#";
    private static final String PREFIXWINSF = "#winsf#";
    private static final String TAG = "hme_engine_java";
    private static final long WAIT_TIME = 3000;
    private static final String java_version = "LOG-iMedia Video VILTE 1.2.1";
    private boolean bDestroyed;
    private boolean bUpdated;
    private int faces_length;
    private int[] iROI;
    private ArrayList<Surface> mArraySf;
    private EAspectRatio mAspectModeEnc;
    private EAspectRatio mAspectModePreView;
    private Handler mBackgroundHandler;
    private HandlerThread mBackgroundThread;
    private CameraDevice mCameraDevice;
    private Semaphore mCameraOpenCloseLock;
    private FpsStatistic mCameraOutFps;
    private SurfaceTexture mCameraTexture;
    private int mCapH;
    private int mCapW;
    private CameraCaptureSession.CaptureCallback mCaptureCallback;
    private HandlerThread mCapturePreviewThread;
    private CameraCaptureSession mCaptureSession;
    private float[] mDisplayProjectionMatrix;
    private int mDstCount;
    private EglCore mEglCore;
    private int mEncHeight;
    private FpsStatistic mEncInFps;
    private Surface mEncSfJava;
    private Surface mEncSfUpdateTmp;
    private int mEncWidth;
    private Object mEncWinLock;
    private WindowSurface mEncWindowSurface;
    private FullFrameRect mFullFrameBlit;
    private boolean mIsFaceFront;
    private boolean mIsPreviewStart;
    private KirinMediaCodecEncoder mMCE;
    private Object mMCELock;
    private int mMaxHeight;
    private int mMaxWidth;
    private MediaCodec mMediaCodec;
    float[] mModelViewM;
    private long mNativeClassInstance;
    boolean mNeedDropEncFrame;
    private int mNoSfECount;
    float[] mPojectionM;
    private FpsStatistic mPreViewFps;
    private int mPreViewHeight;
    private int mPreViewWidth;
    private CaptureRequest.Builder mPreviewBuilder;
    private Surface mRecordSfJava;
    private CaptureRequest mReq;
    private int mRotEnc;
    private int mRotLeft;
    private int mRotPrieview;
    private Surface[] mSfDst;
    private SurfaceEncoder mSfE;
    private Object mSfELock;
    private Surface mSfPreview;
    private CameraDevice.StateCallback mStateCallback;
    private int mTextureId;
    private Object mWinLock;
    private WindowSurface mWindowSurface;
    private CameraManager manager;
    private ObjExtend objDestroy;
    private ObjExtend objInitEGL;
    private ObjExtend objUpdatePreview;
    public TotalCaptureResult result;
    private Semaphore semInitEGL;
    private long time_stamp;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public enum EAspectRatio {
        none,
        crop,
        encapsulate
    }

    native boolean nDropEncFrame(long j, int i, int i2, int i3, int i4, int i5);

    native void nGetRoiCoordinate(long j, int i, int[] iArr, long j2);

    native void nMsgSend(int i, long j);

    private void init() {
        this.mCameraOutFps = new FpsStatistic("Camera Out", 33);
        synchronized (this.mEncWinLock) {
            this.mEncInFps = null;
        }
        synchronized (this.mWinLock) {
            this.mPreViewFps = null;
        }
    }

    public VideoCapture2Android() {
        this.mEncSfJava = null;
        this.mRecordSfJava = null;
        this.mSfELock = new Object();
        this.mMCELock = new Object();
        this.mSfE = null;
        this.mMCE = null;
        this.mNoSfECount = 0;
        this.mIsPreviewStart = true;
        this.mAspectModePreView = EAspectRatio.crop;
        this.mAspectModeEnc = EAspectRatio.crop;
        this.iROI = null;
        this.mCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.huawei.videoengine.VideoCapture2Android.1
            private void process(CaptureResult captureResult) {
                Integer num = (Integer) captureResult.get(CaptureResult.STATISTICS_FACE_DETECT_MODE);
                if (num == null) {
                    Log.e(VideoCapture2Android.TAG, "#ROI# detect_mode is null !!!");
                    return;
                }
                Long l = (Long) captureResult.get(CaptureResult.SENSOR_TIMESTAMP);
                if (l == null) {
                    Log.e(VideoCapture2Android.TAG, "#ROI# ts is null !!!");
                    return;
                }
                VideoCapture2Android.this.time_stamp = l.longValue();
                if (num.intValue() == 0) {
                    Log.i(VideoCapture2Android.TAG, "#ROI# DETECT_MODE is OFF !!!");
                    return;
                }
                Face[] faceArr = (Face[]) captureResult.get(CaptureResult.STATISTICS_FACES);
                int length = faceArr.length;
                VideoCapture2Android.this.faces_length = faceArr.length;
                if (length > 0) {
                    VideoCapture2Android.this.iROI = new int[4 * length];
                }
                while (length > 0) {
                    int length2 = faceArr.length - length;
                    int i = (faceArr[length2].getBounds().left * VideoCapture2Android.this.mCapW) / VideoCapture2Android.this.mMaxWidth;
                    int i2 = (faceArr[length2].getBounds().top * VideoCapture2Android.this.mCapH) / VideoCapture2Android.this.mMaxHeight;
                    int i3 = (faceArr[length2].getBounds().right * VideoCapture2Android.this.mCapW) / VideoCapture2Android.this.mMaxWidth;
                    int i4 = (faceArr[length2].getBounds().bottom * VideoCapture2Android.this.mCapH) / VideoCapture2Android.this.mMaxHeight;
                    int i5 = length2 * 4;
                    VideoCapture2Android.this.iROI[i5] = i2;
                    VideoCapture2Android.this.iROI[i5 + 1] = VideoCapture2Android.this.mCapW - i3;
                    VideoCapture2Android.this.iROI[i5 + 2] = i4 - i2;
                    VideoCapture2Android.this.iROI[i5 + 3] = i3 - i;
                    length--;
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                process(totalCaptureResult);
            }
        };
        this.mMediaCodec = null;
        this.mStateCallback = new CameraDevice.StateCallback() { // from class: com.huawei.videoengine.VideoCapture2Android.2
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) {
                Log.i(VideoCapture2Android.TAG, "#step#CameraDevice onOpen");
                VideoCapture2Android.this.mCameraDevice = cameraDevice;
                VideoCapture2Android.this.nMsgSend(1, VideoCapture2Android.this.mNativeClassInstance);
                if (VideoCapture2Android.this.mMediaCodec != null) {
                    VideoCapture2Android.this.mMediaCodec.start();
                }
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                Log.i(VideoCapture2Android.TAG, "#step# CameraDevice onDisconnected");
                if (VideoCapture2Android.this.mMediaCodec != null) {
                    VideoCapture2Android.this.mMediaCodec.stop();
                    VideoCapture2Android.this.mMediaCodec.release();
                    VideoCapture2Android.this.mMediaCodec = null;
                }
                cameraDevice.close();
                VideoCapture2Android.this.mCameraDevice = null;
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int i) {
                Log.e(VideoCapture2Android.TAG, "#step#cameraDevice onError:" + i);
                cameraDevice.close();
                VideoCapture2Android.this.mCameraDevice = null;
            }
        };
        this.mCameraTexture = null;
        this.mCaptureSession = null;
        this.mEglCore = null;
        this.mWindowSurface = null;
        this.mWinLock = new Object();
        this.mFullFrameBlit = null;
        this.mDisplayProjectionMatrix = new float[16];
        this.mEncWindowSurface = null;
        this.mEncWidth = 0;
        this.mEncHeight = 0;
        this.mEncWinLock = new Object();
        this.mPreViewWidth = 0;
        this.mPreViewHeight = 0;
        this.mCapW = 0;
        this.mCapH = 0;
        this.mCameraOpenCloseLock = new Semaphore(1);
        this.objInitEGL = new ObjExtend();
        this.semInitEGL = new Semaphore(1);
        this.mPojectionM = new float[16];
        this.mModelViewM = new float[16];
        this.mNeedDropEncFrame = false;
        this.mEncSfUpdateTmp = null;
        this.objUpdatePreview = new ObjExtend();
        this.bUpdated = false;
        this.objDestroy = new ObjExtend();
        this.bDestroyed = false;
        this.mRotPrieview = 0;
        this.mRotLeft = 0;
        this.mRotEnc = 0;
        Log.i(TAG, "#step#VideoCapture2Android()");
        init();
    }

    public VideoCapture2Android(long j, boolean z) {
        this.mEncSfJava = null;
        this.mRecordSfJava = null;
        this.mSfELock = new Object();
        this.mMCELock = new Object();
        this.mSfE = null;
        this.mMCE = null;
        this.mNoSfECount = 0;
        this.mIsPreviewStart = true;
        this.mAspectModePreView = EAspectRatio.crop;
        this.mAspectModeEnc = EAspectRatio.crop;
        this.iROI = null;
        this.mCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.huawei.videoengine.VideoCapture2Android.1
            private void process(CaptureResult captureResult) {
                Integer num = (Integer) captureResult.get(CaptureResult.STATISTICS_FACE_DETECT_MODE);
                if (num == null) {
                    Log.e(VideoCapture2Android.TAG, "#ROI# detect_mode is null !!!");
                    return;
                }
                Long l = (Long) captureResult.get(CaptureResult.SENSOR_TIMESTAMP);
                if (l == null) {
                    Log.e(VideoCapture2Android.TAG, "#ROI# ts is null !!!");
                    return;
                }
                VideoCapture2Android.this.time_stamp = l.longValue();
                if (num.intValue() == 0) {
                    Log.i(VideoCapture2Android.TAG, "#ROI# DETECT_MODE is OFF !!!");
                    return;
                }
                Face[] faceArr = (Face[]) captureResult.get(CaptureResult.STATISTICS_FACES);
                int length = faceArr.length;
                VideoCapture2Android.this.faces_length = faceArr.length;
                if (length > 0) {
                    VideoCapture2Android.this.iROI = new int[4 * length];
                }
                while (length > 0) {
                    int length2 = faceArr.length - length;
                    int i = (faceArr[length2].getBounds().left * VideoCapture2Android.this.mCapW) / VideoCapture2Android.this.mMaxWidth;
                    int i2 = (faceArr[length2].getBounds().top * VideoCapture2Android.this.mCapH) / VideoCapture2Android.this.mMaxHeight;
                    int i3 = (faceArr[length2].getBounds().right * VideoCapture2Android.this.mCapW) / VideoCapture2Android.this.mMaxWidth;
                    int i4 = (faceArr[length2].getBounds().bottom * VideoCapture2Android.this.mCapH) / VideoCapture2Android.this.mMaxHeight;
                    int i5 = length2 * 4;
                    VideoCapture2Android.this.iROI[i5] = i2;
                    VideoCapture2Android.this.iROI[i5 + 1] = VideoCapture2Android.this.mCapW - i3;
                    VideoCapture2Android.this.iROI[i5 + 2] = i4 - i2;
                    VideoCapture2Android.this.iROI[i5 + 3] = i3 - i;
                    length--;
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                process(totalCaptureResult);
            }
        };
        this.mMediaCodec = null;
        this.mStateCallback = new CameraDevice.StateCallback() { // from class: com.huawei.videoengine.VideoCapture2Android.2
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) {
                Log.i(VideoCapture2Android.TAG, "#step#CameraDevice onOpen");
                VideoCapture2Android.this.mCameraDevice = cameraDevice;
                VideoCapture2Android.this.nMsgSend(1, VideoCapture2Android.this.mNativeClassInstance);
                if (VideoCapture2Android.this.mMediaCodec != null) {
                    VideoCapture2Android.this.mMediaCodec.start();
                }
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                Log.i(VideoCapture2Android.TAG, "#step# CameraDevice onDisconnected");
                if (VideoCapture2Android.this.mMediaCodec != null) {
                    VideoCapture2Android.this.mMediaCodec.stop();
                    VideoCapture2Android.this.mMediaCodec.release();
                    VideoCapture2Android.this.mMediaCodec = null;
                }
                cameraDevice.close();
                VideoCapture2Android.this.mCameraDevice = null;
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int i) {
                Log.e(VideoCapture2Android.TAG, "#step#cameraDevice onError:" + i);
                cameraDevice.close();
                VideoCapture2Android.this.mCameraDevice = null;
            }
        };
        this.mCameraTexture = null;
        this.mCaptureSession = null;
        this.mEglCore = null;
        this.mWindowSurface = null;
        this.mWinLock = new Object();
        this.mFullFrameBlit = null;
        this.mDisplayProjectionMatrix = new float[16];
        this.mEncWindowSurface = null;
        this.mEncWidth = 0;
        this.mEncHeight = 0;
        this.mEncWinLock = new Object();
        this.mPreViewWidth = 0;
        this.mPreViewHeight = 0;
        this.mCapW = 0;
        this.mCapH = 0;
        this.mCameraOpenCloseLock = new Semaphore(1);
        this.objInitEGL = new ObjExtend();
        this.semInitEGL = new Semaphore(1);
        this.mPojectionM = new float[16];
        this.mModelViewM = new float[16];
        this.mNeedDropEncFrame = false;
        this.mEncSfUpdateTmp = null;
        this.objUpdatePreview = new ObjExtend();
        this.bUpdated = false;
        this.objDestroy = new ObjExtend();
        this.bDestroyed = false;
        this.mRotPrieview = 0;
        this.mRotLeft = 0;
        this.mRotEnc = 0;
        init();
    }

    public VideoCapture2Android(long j) {
        this.mEncSfJava = null;
        this.mRecordSfJava = null;
        this.mSfELock = new Object();
        this.mMCELock = new Object();
        this.mSfE = null;
        this.mMCE = null;
        this.mNoSfECount = 0;
        this.mIsPreviewStart = true;
        this.mAspectModePreView = EAspectRatio.crop;
        this.mAspectModeEnc = EAspectRatio.crop;
        this.iROI = null;
        this.mCaptureCallback = new CameraCaptureSession.CaptureCallback() { // from class: com.huawei.videoengine.VideoCapture2Android.1
            private void process(CaptureResult captureResult) {
                Integer num = (Integer) captureResult.get(CaptureResult.STATISTICS_FACE_DETECT_MODE);
                if (num == null) {
                    Log.e(VideoCapture2Android.TAG, "#ROI# detect_mode is null !!!");
                    return;
                }
                Long l = (Long) captureResult.get(CaptureResult.SENSOR_TIMESTAMP);
                if (l == null) {
                    Log.e(VideoCapture2Android.TAG, "#ROI# ts is null !!!");
                    return;
                }
                VideoCapture2Android.this.time_stamp = l.longValue();
                if (num.intValue() == 0) {
                    Log.i(VideoCapture2Android.TAG, "#ROI# DETECT_MODE is OFF !!!");
                    return;
                }
                Face[] faceArr = (Face[]) captureResult.get(CaptureResult.STATISTICS_FACES);
                int length = faceArr.length;
                VideoCapture2Android.this.faces_length = faceArr.length;
                if (length > 0) {
                    VideoCapture2Android.this.iROI = new int[4 * length];
                }
                while (length > 0) {
                    int length2 = faceArr.length - length;
                    int i = (faceArr[length2].getBounds().left * VideoCapture2Android.this.mCapW) / VideoCapture2Android.this.mMaxWidth;
                    int i2 = (faceArr[length2].getBounds().top * VideoCapture2Android.this.mCapH) / VideoCapture2Android.this.mMaxHeight;
                    int i3 = (faceArr[length2].getBounds().right * VideoCapture2Android.this.mCapW) / VideoCapture2Android.this.mMaxWidth;
                    int i4 = (faceArr[length2].getBounds().bottom * VideoCapture2Android.this.mCapH) / VideoCapture2Android.this.mMaxHeight;
                    int i5 = length2 * 4;
                    VideoCapture2Android.this.iROI[i5] = i2;
                    VideoCapture2Android.this.iROI[i5 + 1] = VideoCapture2Android.this.mCapW - i3;
                    VideoCapture2Android.this.iROI[i5 + 2] = i4 - i2;
                    VideoCapture2Android.this.iROI[i5 + 3] = i3 - i;
                    length--;
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                process(totalCaptureResult);
            }
        };
        this.mMediaCodec = null;
        this.mStateCallback = new CameraDevice.StateCallback() { // from class: com.huawei.videoengine.VideoCapture2Android.2
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) {
                Log.i(VideoCapture2Android.TAG, "#step#CameraDevice onOpen");
                VideoCapture2Android.this.mCameraDevice = cameraDevice;
                VideoCapture2Android.this.nMsgSend(1, VideoCapture2Android.this.mNativeClassInstance);
                if (VideoCapture2Android.this.mMediaCodec != null) {
                    VideoCapture2Android.this.mMediaCodec.start();
                }
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                Log.i(VideoCapture2Android.TAG, "#step# CameraDevice onDisconnected");
                if (VideoCapture2Android.this.mMediaCodec != null) {
                    VideoCapture2Android.this.mMediaCodec.stop();
                    VideoCapture2Android.this.mMediaCodec.release();
                    VideoCapture2Android.this.mMediaCodec = null;
                }
                cameraDevice.close();
                VideoCapture2Android.this.mCameraDevice = null;
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int i) {
                Log.e(VideoCapture2Android.TAG, "#step#cameraDevice onError:" + i);
                cameraDevice.close();
                VideoCapture2Android.this.mCameraDevice = null;
            }
        };
        this.mCameraTexture = null;
        this.mCaptureSession = null;
        this.mEglCore = null;
        this.mWindowSurface = null;
        this.mWinLock = new Object();
        this.mFullFrameBlit = null;
        this.mDisplayProjectionMatrix = new float[16];
        this.mEncWindowSurface = null;
        this.mEncWidth = 0;
        this.mEncHeight = 0;
        this.mEncWinLock = new Object();
        this.mPreViewWidth = 0;
        this.mPreViewHeight = 0;
        this.mCapW = 0;
        this.mCapH = 0;
        this.mCameraOpenCloseLock = new Semaphore(1);
        this.objInitEGL = new ObjExtend();
        this.semInitEGL = new Semaphore(1);
        this.mPojectionM = new float[16];
        this.mModelViewM = new float[16];
        this.mNeedDropEncFrame = false;
        this.mEncSfUpdateTmp = null;
        this.objUpdatePreview = new ObjExtend();
        this.bUpdated = false;
        this.objDestroy = new ObjExtend();
        this.bDestroyed = false;
        this.mRotPrieview = 0;
        this.mRotLeft = 0;
        this.mRotEnc = 0;
        init();
        Log.i(TAG, "VideoCapture2Android.java! enter VideoCapture2Android! java version:LOG-iMedia Video VILTE 1.2.1");
        this.mNativeClassInstance = j;
    }

    private void startBackgroundThread() {
        Log.i(TAG, "#step#startBackgroudThread");
        this.mBackgroundThread = new HandlerThread("CameraBackground");
        this.mBackgroundThread.start();
        Looper looper = this.mBackgroundThread.getLooper();
        if (looper == null) {
            stopBackgroundThread();
            Log.e(TAG, "startBackgroudThread getLooper err!");
        } else {
            this.mBackgroundHandler = new Handler(looper) { // from class: com.huawei.videoengine.VideoCapture2Android.3
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    switch (message.what) {
                        case 0:
                            TranObj tranObj = (TranObj) message.obj;
                            VideoCapture2Android.this.backInitEGl(tranObj.getViewSf(), tranObj.getEncSf(), tranObj.getWidth(), tranObj.getHeigth());
                            return;
                        case 1:
                            VideoCapture2Android.this.mCapW = message.arg1;
                            VideoCapture2Android.this.mCapH = message.arg2;
                            return;
                        case 2:
                            VideoCapture2Android.this.backUpdatePreViewSf((Surface) message.obj, message.arg1, message.arg2);
                            return;
                        case 3:
                            VideoCapture2Android.this.backUpdateEncSf((Surface) message.obj);
                            return;
                        case 4:
                            VideoCapture2Android.this.backDestroy();
                            return;
                        default:
                            return;
                    }
                }
            };
        }
    }

    private void stopBackgroundThread() {
        Log.i(TAG, "#step#stopBackgroundThread");
        this.mBackgroundThread.quitSafely();
        try {
            this.mBackgroundThread.join();
            this.mBackgroundThread = null;
            this.mBackgroundHandler = null;
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void createCaptureSession() {
        if (this.mCaptureSession != null) {
            Log.i(TAG, "capture session exist, no need create ");
            return;
        }
        Log.i(TAG, "#step#captrue session create");
        if (this.mCameraDevice == null) {
            Log.e(TAG, "cameraDevice is null, can not create capture session");
            return;
        }
        try {
            this.mPreviewBuilder = this.mCameraDevice.createCaptureRequest(3);
            this.mReq = this.mPreviewBuilder.build();
            ArrayList arrayList = new ArrayList();
            if (this.mCameraTexture == null) {
                Log.e(TAG, "cameraTexure is null when create capture session, must be initEGL first");
                return;
            }
            Surface surface = new Surface(this.mCameraTexture);
            arrayList.add(surface);
            this.mPreviewBuilder.addTarget(surface);
            this.mCameraDevice.createCaptureSession(arrayList, new CameraCaptureSession.StateCallback() { // from class: com.huawei.videoengine.VideoCapture2Android.4
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                    Log.i(VideoCapture2Android.TAG, "#step#capture session onConfigured");
                    VideoCapture2Android.this.mCaptureSession = cameraCaptureSession;
                    VideoCapture2Android.this.nMsgSend(2, VideoCapture2Android.this.mNativeClassInstance);
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                    Log.e(VideoCapture2Android.TAG, "#step#capture session onConfigureFailed");
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onReady(CameraCaptureSession cameraCaptureSession) {
                    super.onReady(cameraCaptureSession);
                }
            }, this.mBackgroundHandler);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public int updatePreview() {
        if (this.mCaptureSession == null) {
            Log.e(TAG, "wwmax mCaptureSession is null when startCapture");
            return -1;
        }
        try {
            setUpCaptureRequestBuilder(this.mPreviewBuilder);
            new HandlerThread("CameraPreview").start();
            this.mCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), new CameraCaptureSession.CaptureCallback() { // from class: com.huawei.videoengine.VideoCapture2Android.5
            }, this.mBackgroundHandler);
            return 0;
        } catch (CameraAccessException e) {
            e.printStackTrace();
            return 0;
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
            return 0;
        } catch (Exception e3) {
            e3.printStackTrace();
            return 0;
        }
    }

    private void setUpCaptureRequestBuilder(CaptureRequest.Builder builder) {
        builder.set(CaptureRequest.CONTROL_MODE, 1);
        builder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 2);
    }

    public void setPreviewSf(Surface surface) {
        this.mSfPreview = surface;
    }

    public int setDstSf(Surface[] surfaceArr, int i) {
        if (i <= 0) {
            Log.i(TAG, i + " dstSf, invailed");
            return -1;
        }
        if (i >= 2) {
            Log.i(TAG, i + " dstSf");
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.mArraySf.add(surfaceArr[i]);
        }
        return 0;
    }

    public int allocateCamera(int i, Context context, String str) {
        Log.i(TAG, "#step# allocateCamera");
        this.manager = (CameraManager) context.getSystemService("camera");
        if (this.manager == null) {
            Log.e(TAG, "get camera manager failed");
            return -1;
        }
        startBackgroundThread();
        try {
        } catch (CameraAccessException e) {
            Log.e(TAG, "CameraAccessException, maybe cameraDevice has been disconnected");
            e.printStackTrace();
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
        } catch (NullPointerException e3) {
            Log.e(TAG, "NULL PointerEx");
            e3.printStackTrace();
        }
        if (i >= this.manager.getCameraIdList().length) {
            Log.e(TAG, "the cameraId:" + i + " is beyond the cameraList length");
            return -1;
        }
        String str2 = this.manager.getCameraIdList()[i];
        for (int i2 = 0; i2 < this.manager.getCameraIdList().length; i2++) {
            Log.i(TAG, "camera[" + i2 + "]:" + this.manager.getCameraIdList()[i2]);
        }
        CameraCharacteristics cameraCharacteristics = this.manager.getCameraCharacteristics(str2);
        this.mMaxWidth = ((Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)).right;
        this.mMaxHeight = ((Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)).bottom;
        this.mIsFaceFront = Camera2Characteristic.isFaceFront(this.manager, str2);
        this.manager.openCamera(str2, this.mStateCallback, this.mBackgroundHandler);
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0064 A[Catch: all -> 0x002d, TryCatch #2 {all -> 0x002d, blocks: (B:39:0x0005, B:41:0x000b, B:8:0x003f, B:9:0x0062, B:12:0x0064, B:14:0x006c, B:15:0x00cf, B:17:0x00d3, B:18:0x00fc, B:20:0x0082, B:24:0x008a, B:22:0x00b4, B:30:0x00a1, B:28:0x00a6, B:35:0x0036, B:42:0x0029), top: B:38:0x0005, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0036 A[Catch: all -> 0x002d, TryCatch #2 {all -> 0x002d, blocks: (B:39:0x0005, B:41:0x000b, B:8:0x003f, B:9:0x0062, B:12:0x0064, B:14:0x006c, B:15:0x00cf, B:17:0x00d3, B:18:0x00fc, B:20:0x0082, B:24:0x008a, B:22:0x00b4, B:30:0x00a1, B:28:0x00a6, B:35:0x0036, B:42:0x0029), top: B:38:0x0005, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003f A[Catch: all -> 0x002d, TryCatch #2 {all -> 0x002d, blocks: (B:39:0x0005, B:41:0x000b, B:8:0x003f, B:9:0x0062, B:12:0x0064, B:14:0x006c, B:15:0x00cf, B:17:0x00d3, B:18:0x00fc, B:20:0x0082, B:24:0x008a, B:22:0x00b4, B:30:0x00a1, B:28:0x00a6, B:35:0x0036, B:42:0x0029), top: B:38:0x0005, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int updateWinowSurface(com.huawei.videoengine.WindowSurface r4, android.view.Surface r5, java.lang.Object r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.videoengine.VideoCapture2Android.updateWinowSurface(com.huawei.videoengine.WindowSurface, android.view.Surface, java.lang.Object, java.lang.String):int");
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    private static class TranObj {
        private Surface mEncSf;
        private int mVH;
        private int mVW;
        private Surface mVsf;

        public TranObj(Surface surface, Surface surface2, int i, int i2) {
            this.mVsf = surface;
            this.mEncSf = surface2;
            this.mVW = i;
            this.mVH = i2;
        }

        public Surface getViewSf() {
            return this.mVsf;
        }

        public Surface getEncSf() {
            return this.mEncSf;
        }

        public int getWidth() {
            return this.mVW;
        }

        public int getHeigth() {
            return this.mVH;
        }
    }

    public int initEGl(Surface surface, Surface surface2, int i, int i2, int i3, int i4) {
        Log.i(TAG, "#step# initEGL, viewSf:" + surface + ", encSf:" + surface2 + "View(" + i + HwImsConfigImpl.SEPARATOR_TAG + i2 + "); Cap(" + i3 + HwImsConfigImpl.SEPARATOR_TAG + i4 + ")");
        if (this.mBackgroundHandler == null) {
            Log.e(TAG, "wwmax backThreadHandler is null");
            return -1;
        }
        TranObj tranObj = new TranObj(surface, surface2, i, i2);
        this.mBackgroundHandler.sendMessage(this.mBackgroundHandler.obtainMessage(1, i3, i4));
        this.mBackgroundHandler.sendMessage(this.mBackgroundHandler.obtainMessage(0, tranObj));
        return 0;
    }

    public int backInitEGl(Surface surface, Surface surface2, int i, int i2) {
        if (this.mEglCore == null) {
            try {
                this.mEglCore = new EglCore(null, 1);
            } catch (RuntimeException e) {
                Log.e(TAG, "new EglCore fail");
                nMsgSend(3, this.mNativeClassInstance);
                return 0;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (i2 == 0 || i == 0) {
                Log.e(TAG, "wwmax viewSfW:" + i + ", viewSfH:" + i2);
            }
            synchronized (this.mWinLock) {
                this.mPreViewWidth = i;
                this.mPreViewHeight = i2;
            }
            updateWinowSurface(this.mWindowSurface, surface, this.mWinLock, "mWindowSurface");
            if (this.mEncSfUpdateTmp != null) {
                Log.i(TAG, "encSf exit befor initEGL, use encSfupdateTmp for mEncWindowSurface");
                updateWinowSurface(this.mEncWindowSurface, this.mEncSfUpdateTmp, this.mEncWinLock, "mEncWindowSurface");
                this.mEncSfUpdateTmp = null;
            } else {
                updateWinowSurface(this.mEncWindowSurface, surface2, this.mEncWinLock, "mEncWindowSurface");
            }
            createCaptureSession();
            return 0;
        }
        Log.i(TAG, "egl has been inited");
        nMsgSend(2, this.mNativeClassInstance);
        return 0;
    }

    private int createSurfaceTexureForCamera(int i) {
        if (this.mCameraTexture != null) {
            Log.w(TAG, "cameraTexure is already exist, no need to create");
            return 0;
        }
        this.mCameraTexture = new SurfaceTexture(this.mTextureId);
        this.mCameraTexture.setDefaultBufferSize(this.mCapW, this.mCapH);
        this.mCameraTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.huawei.videoengine.VideoCapture2Android.6
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                if (VideoCapture2Android.this.mCameraOutFps != null) {
                    VideoCapture2Android.this.mCameraOutFps.add();
                }
                synchronized (VideoCapture2Android.this.mWinLock) {
                    if (VideoCapture2Android.this.mWindowSurface == null && VideoCapture2Android.this.mEncWindowSurface == null) {
                        return;
                    }
                    surfaceTexture.updateTexImage();
                    synchronized (VideoCapture2Android.this.mWinLock) {
                        if (VideoCapture2Android.this.mIsPreviewStart && VideoCapture2Android.this.mWindowSurface != null) {
                            if (VideoCapture2Android.this.mPreViewFps != null) {
                                VideoCapture2Android.this.mPreViewFps.add();
                            }
                            VideoCapture2Android.this.mWindowSurface.makeCurrent();
                            VideoCapture2Android.this.mPreViewHeight = VideoCapture2Android.this.mWindowSurface.getHeight();
                            VideoCapture2Android.this.mPreViewWidth = VideoCapture2Android.this.mWindowSurface.getWidth();
                            if (VideoCapture2Android.this.mPreViewHeight != 0 && VideoCapture2Android.this.mPreViewWidth != 0) {
                                VideoCapture2Android.this.getMVPP(VideoCapture2Android.this.mDisplayProjectionMatrix, VideoCapture2Android.this.mPojectionM, VideoCapture2Android.this.mModelViewM, !VideoCapture2Android.this.mIsFaceFront, VideoCapture2Android.this.mRotPrieview, VideoCapture2Android.this.mAspectModePreView, VideoCapture2Android.this.mPreViewWidth, VideoCapture2Android.this.mPreViewHeight);
                                GLES20.glViewport(0, 0, VideoCapture2Android.this.mPreViewWidth, VideoCapture2Android.this.mPreViewHeight);
                                VideoCapture2Android.this.mFullFrameBlit.drawFrame(VideoCapture2Android.this.mTextureId, VideoCapture2Android.this.mDisplayProjectionMatrix, GlUtil.getIDENTITY_MATRIX());
                                VideoCapture2Android.this.mWindowSurface.swapBuffers();
                                GlUtil.checkGlError("draw done");
                            } else {
                                Log.e(VideoCapture2Android.TAG, "PreView SF W or H is 0");
                            }
                        }
                    }
                    synchronized (VideoCapture2Android.this.mEncWinLock) {
                        if (VideoCapture2Android.this.mEncWindowSurface != null) {
                            if (!VideoCapture2Android.this.nDropEncFrame(VideoCapture2Android.this.mNativeClassInstance, 0, 0, VideoCapture2Android.this.mRotLeft, VideoCapture2Android.this.mCapH, VideoCapture2Android.this.mCapW)) {
                                synchronized (VideoCapture2Android.this.mMCELock) {
                                    if (VideoCapture2Android.this.mMCE != null) {
                                        VideoCapture2Android.this.mMCE.setRoiCoordinate(VideoCapture2Android.this.faces_length, VideoCapture2Android.this.iROI, VideoCapture2Android.this.time_stamp);
                                    }
                                }
                                synchronized (VideoCapture2Android.this.mEncWinLock) {
                                    if (VideoCapture2Android.this.mEncWindowSurface != null) {
                                        if (VideoCapture2Android.this.mEncInFps != null) {
                                            VideoCapture2Android.this.mEncInFps.add();
                                        }
                                        VideoCapture2Android.this.mEncWindowSurface.makeCurrent();
                                        VideoCapture2Android.this.mEncHeight = VideoCapture2Android.this.mEncWindowSurface.getHeight();
                                        VideoCapture2Android.this.mEncWidth = VideoCapture2Android.this.mEncWindowSurface.getWidth();
                                        if (VideoCapture2Android.this.mEncHeight != 0 && VideoCapture2Android.this.mEncWidth != 0) {
                                            VideoCapture2Android.this.getMVPP(VideoCapture2Android.this.mDisplayProjectionMatrix, VideoCapture2Android.this.mPojectionM, VideoCapture2Android.this.mModelViewM, true, VideoCapture2Android.this.mRotEnc, VideoCapture2Android.this.mAspectModeEnc, VideoCapture2Android.this.mEncWidth, VideoCapture2Android.this.mEncHeight);
                                            GLES20.glViewport(0, 0, VideoCapture2Android.this.mEncWindowSurface.getWidth(), VideoCapture2Android.this.mEncWindowSurface.getHeight());
                                            VideoCapture2Android.this.mFullFrameBlit.drawFrame(VideoCapture2Android.this.mTextureId, VideoCapture2Android.this.mDisplayProjectionMatrix, GlUtil.getIDENTITY_MATRIX());
                                            VideoCapture2Android.this.mEncWindowSurface.swapBuffers();
                                            GlUtil.checkGlError("draw done");
                                            return;
                                        }
                                        Log.e(VideoCapture2Android.TAG, "encode SF W or H is 0");
                                    }
                                }
                            }
                        }
                    }
                }
            }
        });
        return 0;
    }

    public void dropFrame() {
        this.mNeedDropEncFrame = true;
    }

    public void updateEncSf(Surface surface, int i) {
        Log.i(TAG, "#step# update encSf:" + surface + ",mEncWindowSurface:" + this.mEncWindowSurface + ", eglcore:" + this.mEglCore);
        if (this.mSfE != null && surface != null) {
            this.mSfE.setEncSurface(surface, i);
        }
        if (this.mBackgroundHandler == null) {
            Log.e(TAG, "background is null when updateEncSf");
            return;
        }
        if (surface != null && !surface.isValid()) {
            Log.e(TAG, "encsf is invalid");
            return;
        }
        if (this.mEglCore == null) {
            Log.i(TAG, "#step#now egl has not init, save update encSf");
            this.mEncSfUpdateTmp = surface;
            return;
        }
        synchronized (this.mEncWinLock) {
            if (this.mEncWindowSurface != null) {
                if (this.mEncWindowSurface.isCurrent()) {
                    Log.i(TAG, "#winsf#mEncWindowSurface makeNothingCurrent ");
                    this.mEglCore.makeNothingCurrent();
                }
                Log.i(TAG, "#winsf#mEncWindowSurface  release");
                this.mEncWindowSurface.release();
                this.mEncWindowSurface = null;
            }
            if (surface == null) {
                return;
            }
            Log.i(TAG, "#winsf#mEncWindowSurface create");
            this.mEncSfUpdateTmp = surface;
            this.mEncWindowSurface = new WindowSurface(this.mEglCore, surface, false);
            this.mBackgroundHandler.sendMessage(this.mBackgroundHandler.obtainMessage(3, surface));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void backUpdateEncSf(Surface surface) {
        if (this.mFullFrameBlit == null) {
            Log.i(TAG, "wwmax mEncWindowSurface new program 655");
            this.mEncWindowSurface.makeCurrent();
            this.mFullFrameBlit = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_EXT));
            this.mTextureId = this.mFullFrameBlit.createTextureObject();
        }
        createSurfaceTexureForCamera(this.mTextureId);
    }

    public int updatePreViewSf(Surface surface, int i, int i2) {
        ObjExtend objExtend;
        int res;
        Log.i(TAG, "#step# update PreViewSf:" + surface + ",w:" + i + ",h:" + i2);
        if (this.mBackgroundHandler == null) {
            Log.e(TAG, "wwmax mBackThread is null when updatepreview");
            return -1;
        }
        synchronized (this.objUpdatePreview) {
            this.mBackgroundHandler.sendMessage(this.mBackgroundHandler.obtainMessage(2, i, i2, surface));
            this.objUpdatePreview.setRes(-1);
            this.bUpdated = false;
            while (!this.bUpdated) {
                try {
                    try {
                        this.objUpdatePreview.wait(WAIT_TIME);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        objExtend = this.objUpdatePreview;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        objExtend = this.objUpdatePreview;
                    }
                } catch (Throwable th) {
                    this.objUpdatePreview.getRes();
                    throw th;
                }
            }
            objExtend = this.objUpdatePreview;
            res = objExtend.getRes();
        }
        return res;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void backUpdatePreViewSf(Surface surface, int i, int i2) {
        int i3 = 0;
        if (this.mEglCore == null) {
            Log.i(TAG, "egl has not init, return");
            i3 = -1;
        } else {
            synchronized (this.mWinLock) {
                stopPreview();
                if (this.mWindowSurface != null) {
                    if (this.mWindowSurface.isCurrent()) {
                        Log.i(TAG, "#winsf#mWindowSurface makeNothingCurrent ");
                        this.mEglCore.makeNothingCurrent();
                    }
                    Log.i(TAG, "#winsf#mWinowSurface realease");
                    this.mWindowSurface.release();
                    this.mWindowSurface = null;
                }
                this.mWindowSurface = new WindowSurface(this.mEglCore, surface, false);
                Log.d(TAG, "#winsf#update new mWindowSurface:" + this.mWindowSurface);
                this.mPreViewWidth = i;
                this.mPreViewHeight = i2;
                startPreview();
                this.mWindowSurface.makeCurrent();
                if (this.mFullFrameBlit == null) {
                    this.mFullFrameBlit = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_EXT));
                    this.mTextureId = this.mFullFrameBlit.createTextureObject();
                    createSurfaceTexureForCamera(this.mTextureId);
                }
            }
        }
        synchronized (this.objUpdatePreview) {
            if (!this.bUpdated) {
                this.bUpdated = true;
                this.objUpdatePreview.setRes(i3);
                this.objUpdatePreview.notifyAll();
            }
        }
    }

    public int test(Context context) {
        Log.i(TAG, "wwmax test");
        return 0;
    }

    public int setFrameReceiver(SurfaceEncoder surfaceEncoder) {
        Log.i(TAG, "#step# setFrameReceiver:" + surfaceEncoder);
        synchronized (this.mSfELock) {
            this.mSfE = surfaceEncoder;
        }
        return 0;
    }

    public int setFrameReceiver(KirinMediaCodecEncoder kirinMediaCodecEncoder) {
        synchronized (this.mMCELock) {
            Log.i(TAG, "#step# setFrameReceiver:" + kirinMediaCodecEncoder + ", mMCE:" + this.mMCE);
            if (this.mMCE == kirinMediaCodecEncoder) {
                return 0;
            }
            if (this.mMCE != null) {
                this.mMCE.setCapSource(null);
            }
            if (kirinMediaCodecEncoder != null) {
                kirinMediaCodecEncoder.setCapSource(this);
            }
            this.mMCE = kirinMediaCodecEncoder;
            return 0;
        }
    }

    public int startCapture() {
        Log.i(TAG, "#step#startCapture");
        if (this.mCaptureSession == null) {
            Log.e(TAG, "wwmax mCaptureSession is null when startCapture");
            return -1;
        }
        try {
            setUpCaptureRequestBuilder(this.mPreviewBuilder);
            this.mCapturePreviewThread = new HandlerThread("CameraPreview");
            this.mCapturePreviewThread.start();
            this.mCaptureSession.setRepeatingRequest(this.mPreviewBuilder.build(), this.mCaptureCallback, this.mBackgroundHandler);
        } catch (CameraAccessException e) {
            Log.e(TAG, "camera err");
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            Log.e(TAG, "camera err");
            e2.printStackTrace();
        } catch (Exception e3) {
            Log.e(TAG, "camera err");
            e3.printStackTrace();
        }
        Log.i(TAG, "startCapture end");
        return 0;
    }

    public int stopCapture() {
        Log.i(TAG, "#step# stopcapture");
        if (this.mCaptureSession != null) {
            try {
                this.mCaptureSession.stopRepeating();
                this.mCapturePreviewThread.quit();
                return 0;
            } catch (CameraAccessException e) {
                Log.e(TAG, "camera err");
                e.printStackTrace();
                return 0;
            } catch (IllegalStateException e2) {
                Log.e(TAG, "camera err");
                e2.printStackTrace();
                return 0;
            } catch (Exception e3) {
                Log.e(TAG, "camera err");
                e3.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    public int startPreview() {
        Log.i(TAG, "#step#start preview");
        this.mIsPreviewStart = true;
        return 0;
    }

    public int stopPreview() {
        Log.i(TAG, "#step#stop preview");
        this.mIsPreviewStart = false;
        return 0;
    }

    public int destroy() {
        int res;
        Log.i(TAG, "#step#destroy");
        if (this.mCameraTexture != null) {
            this.mCameraTexture.setOnFrameAvailableListener(null);
        }
        if (this.mCaptureSession != null) {
            this.mCaptureSession.close();
            this.mCaptureSession = null;
        }
        if (this.mCameraDevice != null) {
            this.mCameraDevice.close();
            this.mCameraDevice = null;
        }
        if (this.mCameraTexture != null) {
            this.mCameraTexture.release();
            this.mCameraTexture = null;
        }
        synchronized (this.mEncWinLock) {
            if (this.mEncWindowSurface != null) {
                Log.i(TAG, "#winsf#mEncWindowSurface realse");
                this.mEncWindowSurface.release();
                this.mEncWindowSurface = null;
            }
        }
        if (this.mMediaCodec != null) {
            this.mMediaCodec.stop();
            this.mMediaCodec.release();
            this.mMediaCodec = null;
        }
        synchronized (this.objDestroy) {
            this.objDestroy.setRes(-1);
            this.mBackgroundHandler.sendMessage(this.mBackgroundHandler.obtainMessage(4));
            this.bDestroyed = false;
            while (!this.bDestroyed) {
                try {
                    try {
                        try {
                            this.objDestroy.wait(WAIT_TIME);
                            this.bDestroyed = true;
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                            res = this.objDestroy.getRes();
                            if (res != 0) {
                                Log.e(TAG, "destroy failed");
                            }
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        res = this.objDestroy.getRes();
                        if (res != 0) {
                            Log.e(TAG, "destroy failed");
                        }
                    }
                } finally {
                    if (this.objDestroy.getRes() != 0) {
                        Log.e(TAG, "destroy failed");
                    }
                    stopBackgroundThread();
                }
            }
        }
        return res;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void backDestroy() {
        if (this.mEglCore != null) {
            this.mEglCore.makeNothingCurrent();
        }
        synchronized (this.mWinLock) {
            if (this.mWindowSurface != null) {
                Log.i(TAG, "#winsf#mWinowSuface release");
                this.mWindowSurface.release();
                this.mWindowSurface = null;
            }
        }
        if (this.mFullFrameBlit != null) {
            this.mFullFrameBlit.release(false);
            this.mFullFrameBlit = null;
        }
        if (this.mEglCore != null) {
            this.mEglCore.release();
            this.mEglCore = null;
        }
        synchronized (this.objDestroy) {
            this.bDestroyed = true;
            this.objDestroy.setRes(0);
            this.objDestroy.notifyAll();
        }
    }

    public int setPreviewRotation(int i) {
        Log.i(TAG, "#step# rotate preiview: r" + i);
        this.mRotPrieview = 360 - i;
        return 0;
    }

    public int setEncRotation(int i, int i2) {
        Log.i(TAG, "#step#rotate enc: " + i + ", left for cvo:" + i2);
        synchronized (this.mEncWinLock) {
            this.mRotLeft = i2;
            this.mRotEnc = (360 - i) % 360;
            if (this.mRotEnc != 90 && this.mRotEnc != 270) {
                Log.e(TAG, "wwmax mRotEnc:" + this.mRotEnc);
            }
        }
        return 0;
    }

    public int setCaptureWH(int i, int i2) {
        Log.i(TAG, "#step#capture width: " + i + ", height:" + i2);
        if (this.mBackgroundHandler == null) {
            Log.e(TAG, "wwmax backThreadHandler is null");
            return -1;
        }
        this.mBackgroundHandler.sendMessage(this.mBackgroundHandler.obtainMessage(1, i, i2));
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getMVPP(float[] fArr, float[] fArr2, float[] fArr3, boolean z, int i, EAspectRatio eAspectRatio, int i2, int i3) {
        float f;
        float f2;
        float f3 = i2;
        float f4 = i3;
        Matrix.orthoM(fArr2, 0, 0.0f, f3, 0.0f, f4, -1.0f, 1.0f);
        Matrix.setIdentityM(fArr3, 0);
        float f5 = f3 / 2.0f;
        float f6 = f4 / 2.0f;
        Matrix.translateM(fArr3, 0, f5, f6, 0.0f);
        Matrix.rotateM(fArr3, 0, i, 0.0f, 0.0f, 1.0f);
        if (i == 90 || i == 270) {
            f = (f4 * this.mCapH) / this.mCapW;
            f2 = (f3 * this.mCapW) / this.mCapH;
        } else {
            f = (f4 * this.mCapW) / this.mCapH;
            f2 = (f3 * this.mCapH) / this.mCapW;
        }
        if (eAspectRatio == EAspectRatio.crop) {
            if (i == 90 || i == 270) {
                if (i3 <= i2) {
                    float f7 = f2 / 2.0f;
                    if (z) {
                        f5 = (-f3) / 2.0f;
                    }
                    Matrix.scaleM(fArr3, 0, f7, f5, 1.0f);
                } else if ((f4 / f3) - (this.mCapW / this.mCapH) > 0.0f) {
                    Matrix.scaleM(fArr3, 0, f6, z ? (-f) / 2.0f : f / 2.0f, 1.0f);
                } else {
                    float f8 = f2 / 2.0f;
                    if (z) {
                        f5 = (-f3) / 2.0f;
                    }
                    Matrix.scaleM(fArr3, 0, f8, f5, 1.0f);
                }
            } else if (i3 > i2) {
                Matrix.scaleM(fArr3, 0, f / 2.0f, z ? (-f4) / 2.0f : f6, 1.0f);
            } else if ((f3 / f4) - (this.mCapW / this.mCapH) < 0.0f) {
                Matrix.scaleM(fArr3, 0, f / 2.0f, z ? (-f4) / 2.0f : f6, 1.0f);
            } else {
                Matrix.scaleM(fArr3, 0, f5, z ? (-f2) / 2.0f : f2 / 2.0f, 1.0f);
            }
        } else if (eAspectRatio != EAspectRatio.encapsulate) {
            if (z) {
                f5 = (-f3) / 2.0f;
            }
            Matrix.scaleM(fArr3, 0, f6, f5, 1.0f);
        } else if (i3 < i2) {
            Matrix.scaleM(fArr3, 0, f6, z ? (-f) / 2.0f : f / 2.0f, 1.0f);
        } else {
            float f9 = f2 / 2.0f;
            if (z) {
                f5 = (-f3) / 2.0f;
            }
            Matrix.scaleM(fArr3, 0, f9, f5, 1.0f);
        }
        Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr3, 0);
    }

    public int setAspectMode(int i, boolean z) {
        EAspectRatio eAspectRatio;
        switch (i) {
            case 1:
                eAspectRatio = EAspectRatio.none;
                break;
            case 2:
                eAspectRatio = EAspectRatio.crop;
                break;
            case 3:
                eAspectRatio = EAspectRatio.encapsulate;
                break;
            default:
                Log.e(TAG, "wwmax setAspectMode:" + i);
                return -1;
        }
        if (z) {
            this.mAspectModePreView = eAspectRatio;
            return 0;
        }
        Log.w(TAG, " set Enc AspectMode:" + eAspectRatio);
        this.mAspectModeEnc = eAspectRatio;
        return 0;
    }

    public int getWidthAfterRendering() {
        int i = this.mCapH;
        if (i > this.mCapW) {
            return this.mCapW;
        }
        return i;
    }

    public int getHeighAftertRendering() {
        int i = this.mCapW;
        if (i < this.mCapH) {
            return this.mCapH;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public static class ObjExtend {
        private int mRes = 0;

        public void setRes(int i) {
            this.mRes = i;
        }

        public int getRes() {
            return this.mRes;
        }
    }
}
