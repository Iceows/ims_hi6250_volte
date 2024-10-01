package com.huawei.videoengine;

import android.annotation.SuppressLint;
import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import vendor.huawei.hardware.radio.ims.V1_0.RilConstS32;

@SuppressLint({"NewApi"})
/* loaded from: MediaCodecDecoder.class */
public class MediaCodecDecoder {
    private static final int MSG_BASE = 0;
    private static final int MSG_INIT_EGL = 1;
    private static final int MSG_ONFRAME = 8;
    private static final int MSG_RESET_DECODER = 10;
    private static final int MSG_SET_COORDINATES = 6;
    private static final int MSG_SET_DISPLAYMODE = 7;
    private static final int MSG_SET_FRAME_INFO = 9;
    private static final int MSG_SET_SCALERATE = 5;
    private static final int MSG_START_DECODER = 3;
    private static final int MSG_STOP_DECODER = 4;
    private static final int MSG_UNINIT_EGL = 2;
    private static final int MSG_UPDATE_SURFACE = 11;
    private static final String PREFIXSTEP = "#step#";
    private static final String PREFIXWINSF = "#winsf#";
    private static final String TAG = "hme_engine_JavaDEC";
    private static final String VENDOR_KEY_VTMODE = "vendor.hisi.SceneMode";
    private int dataLength;
    Surface glSurfaceView;
    private int inputHeight;
    private int inputWidth;
    private int isKeyFrame;
    private Handler mBackgroundHandler;
    private HandlerThread mBackgroundThread;
    private FpsStatistic mDecOutFps;
    private int origlHeight;
    private int origlWidth;
    private long renderTime;
    private MediaCodec decoder = null;
    private MediaFormat mediaFormat = null;
    private ByteBuffer playBuffer = null;
    private ByteBuffer renderBuffer = null;
    private boolean needKeyFrame = false;
    private boolean started = false;
    private boolean bindedSurface = false;
    private long lnativeObject = 0;
    private LinkedList<Integer> indexList = null;
    private SurfaceListener surfaceListener = null;
    private int codecType = 0;
    private SurfaceView decSurfaceView = null;
    private SurfaceHolder decSurfaceHolder = null;
    private Surface mDecoderSurface = null;
    private byte[] tempBufPlay = null;
    private Map<Long, Long> timeStampMap = new HashMap();
    private SurfaceTexture mDecoderTexture = null;
    private int resolution_num = 10;
    private int[][] resolution = {new int[]{1920, 1080}, new int[]{1120, RilConstS32.RIL_REQUEST_HW_SWITCH_SIM_SLOT_WITHOUT_RESTART_RILD}, new int[]{960, RilConstS32.RIL_REQUEST_HW_SET_TRANSMIT_POWER}, new int[]{800, 450}, new int[]{RilConstS32.RIL_REQUEST_HW_IMS_MERGE_ECONF, 360}, new int[]{480, 270}, new int[]{320, 180}, new int[]{160, 90}, new int[]{480, 360}, new int[]{160, 120}};
    private boolean needAlign = false;
    long lastRestTime = 0;
    Object listLock = new Object();
    private EglCore mEglCore = null;
    private WindowSurface mWindowSurface = null;
    private FullFrameRect mFullFrameBlit = null;
    private int mTextureId = 0;
    private float[] mDisplayProjectionMatrix = new float[16];
    private int mViewWidth = 0;
    private int mViewHeight = 0;
    private int mDecoderWidth = 0;
    private int mDecoderHeight = 0;
    private EAspectRatio mAspectModeView = EAspectRatio.none;
    float scaleRatio = 1.0f;
    float moveWidth = 0.0f;
    float moveHeight = 0.0f;
    int mOrientation = 0;
    int mMirrorX = 0;
    int mMirrorY = 0;
    Object configLock = new Object();
    int defualt_width = 1920;
    int defualt_height = 1080;

    /* loaded from: MediaCodecDecoder$EAspectRatio.class */
    public enum EAspectRatio {
        none,
        encapsulate,
        crop
    }

    /* loaded from: MediaCodecDecoder$FrameInfoMsg.class */
    private class FrameInfoMsg extends MsgBase {
        public int dataLength;
        public int height;
        public int isKeyFrame;
        public long renderTime;
        public int width;

        public FrameInfoMsg(int i, long j, int i2, int i3, int i4) {
            super();
            this.dataLength = i;
            this.renderTime = j;
            this.isKeyFrame = i2;
            this.width = i3;
            this.height = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: MediaCodecDecoder$MsgBase.class */
    public class MsgBase {
        private ObjExtend mSemaphore = null;

        public MsgBase() {
        }

        public ObjExtend getSemaphore() {
            return this.mSemaphore;
        }

        public void setSemaphore(ObjExtend objExtend) {
            this.mSemaphore = objExtend;
        }
    }

    /* loaded from: MediaCodecDecoder$ObjExtend.class */
    public static class ObjExtend {
        private int mRes = -1;

        public int getRes() {
            return this.mRes;
        }

        public void setRes(int i) {
            this.mRes = i;
        }
    }

    /* loaded from: MediaCodecDecoder$ScaleMsg.class */
    private class ScaleMsg extends MsgBase {
        public float moveX;
        public float moveY;
        public float rate;

        public ScaleMsg(float f, float f2, float f3) {
            super();
            this.rate = f;
            this.moveX = f2;
            this.moveY = f3;
        }
    }

    /* loaded from: MediaCodecDecoder$SurfaceInfoMsg.class */
    private class SurfaceInfoMsg extends MsgBase {
        public Surface updateSf;

        public SurfaceInfoMsg(Surface surface) {
            super();
            this.updateSf = surface;
        }
    }

    /* loaded from: MediaCodecDecoder$SurfaceListener.class */
    class SurfaceListener implements SurfaceHolder.Callback {
        SurfaceListener() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            MediaCodecDecoder.this.mViewWidth = i2;
            MediaCodecDecoder.this.mViewHeight = i3;
            Log.i(MediaCodecDecoder.TAG, "Enter surfaceChanged width=" + MediaCodecDecoder.this.mViewWidth + ", heightIn = " + MediaCodecDecoder.this.mViewHeight);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            Log.i(MediaCodecDecoder.TAG, "Enter surfaceCreated");
            MediaCodecDecoder.this.startDecoder();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            Log.i(MediaCodecDecoder.TAG, "Enter surfaceDestroyed");
            MediaCodecDecoder.this.stopDecoder();
        }
    }

    /* JADX WARN: Type inference failed for: r1v33, types: [int[], int[][]] */
    public MediaCodecDecoder() {
        this.mDecOutFps = null;
        Log.i(TAG, "Enter MediaCodecDecoder.");
        this.mDecOutFps = new FpsStatistic("Dec In", 33);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008a A[Catch: all -> 0x0123, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x003f, B:8:0x0049, B:10:0x005b, B:20:0x008a, B:21:0x00b3, B:24:0x00b6, B:26:0x00e0, B:28:0x0120, B:14:0x0078), top: B:36:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b6 A[Catch: all -> 0x0123, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x003f, B:8:0x0049, B:10:0x005b, B:20:0x008a, B:21:0x00b3, B:24:0x00b6, B:26:0x00e0, B:28:0x0120, B:14:0x0078), top: B:36:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int backupdateWinowSurface(android.view.Surface r6) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.videoengine.MediaCodecDecoder.backupdateWinowSurface(android.view.Surface):int");
    }

    @SuppressLint({"NewApi"})
    private int createSurfaceTexureForDecoder(int i) {
        if (this.mDecoderTexture != null) {
            Log.w(TAG, "cameraTexure is already exist, no need to create");
            return 0;
        }
        Log.i(TAG, "createSurfaceTexureForDecoder textureName " + i + " started:" + this.started);
        if (this.mTextureId == 0) {
            Log.e(TAG, "createSurfaceTexureForDecoder failed");
            return -1;
        }
        this.mDecoderTexture = new SurfaceTexture(this.mTextureId);
        this.mDecoderTexture.setDefaultBufferSize(this.defualt_width, this.defualt_height);
        this.mDecoderTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.huawei.videoengine.MediaCodecDecoder.3
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                try {
                    if (!MediaCodecDecoder.this.started) {
                        Log.w(MediaCodecDecoder.TAG, "onFrameAvailable decoder has stoped");
                        return;
                    }
                    surfaceTexture.updateTexImage();
                    synchronized (MediaCodecDecoder.this.configLock) {
                        if (!MediaCodecDecoder.this.started || MediaCodecDecoder.this.mWindowSurface == null) {
                            Log.w(MediaCodecDecoder.TAG, "createSurfaceTexureForDecoder mWindowSurface = " + MediaCodecDecoder.this.mWindowSurface + ", started= " + MediaCodecDecoder.this.started);
                        } else {
                            MediaCodecDecoder.this.mWindowSurface.makeCurrent();
                            int height = MediaCodecDecoder.this.mWindowSurface.getHeight();
                            int width = MediaCodecDecoder.this.mWindowSurface.getWidth();
                            if (width == 0 || height == 0) {
                                Log.e(MediaCodecDecoder.TAG, "PreView SF W or H is 0");
                            } else {
                                GLES20.glClear(16384);
                                MediaCodecDecoder.this.getMVPP(MediaCodecDecoder.this.mDisplayProjectionMatrix, MediaCodecDecoder.this.mOrientation, MediaCodecDecoder.this.mAspectModeView, width, height);
                                GLES20.glViewport(0, 0, width, height);
                                MediaCodecDecoder.this.mFullFrameBlit.drawFrame(MediaCodecDecoder.this.mTextureId, MediaCodecDecoder.this.mDisplayProjectionMatrix, GlUtil.getIDENTITY_MATRIX());
                                MediaCodecDecoder.this.mWindowSurface.swapBuffers();
                                GlUtil.checkGlError("draw done");
                            }
                        }
                    }
                } catch (Exception e) {
                    Log.e(MediaCodecDecoder.TAG, "onFrameAvailable : failed message =" + e.getMessage());
                }
            }
        });
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getMVPP(float[] fArr, int i, EAspectRatio eAspectRatio, int i2, int i3) {
        float f;
        float[] fArr2 = new float[16];
        float[] fArr3 = new float[16];
        float[] fArr4 = new float[16];
        float[] fArr5 = new float[16];
        float f2 = i2;
        float f3 = i3;
        float f4 = f3;
        Matrix.orthoM(fArr2, 0, 0.0f, f2, 0.0f, f3, -1.0f, 1.0f);
        Matrix.setIdentityM(fArr3, 0);
        Matrix.translateM(fArr3, 0, f2 / 2.0f, f4 / 2.0f, 0.0f);
        Matrix.rotateM(fArr3, 0, 180.0f, 1.0f, 0.0f, 0.0f);
        if (this.mMirrorY == 1) {
            Matrix.rotateM(fArr3, 0, 180.0f, 0.0f, 1.0f, 0.0f);
        }
        if (this.mMirrorX == 1) {
            Matrix.rotateM(fArr3, 0, 180.0f, 1.0f, 0.0f, 0.0f);
        }
        Matrix.rotateM(fArr3, 0, i, 0.0f, 0.0f, 1.0f);
        if (this.mDecoderWidth == 0 || this.mDecoderHeight == 0) {
            Log.w(TAG, "getMVPP mDecoderWidth or mDecoderHeight is zero");
            return;
        }
        int i4 = this.mDecoderWidth;
        int i5 = this.mDecoderHeight;
        if (i == 90 || i == 270) {
            f = f4;
            f4 = f2;
        } else {
            f = f2;
        }
        float f5 = this.origlWidth - this.mDecoderWidth;
        float f6 = this.origlHeight - this.mDecoderHeight;
        float f7 = i4;
        float f8 = i5;
        float f9 = (f4 * f7) / f8;
        float f10 = (f8 * f) / f7;
        if (eAspectRatio == EAspectRatio.crop) {
            if (f9 - f2 > 0.0f) {
                Matrix.scaleM(fArr3, 0, ((f9 / 2.0f) + (this.needAlign ? (f5 * f4) / (this.origlHeight * 2) : 0.0f)) * this.scaleRatio, this.scaleRatio * ((f4 / 2.0f) + (this.needAlign ? (f6 * f4) / (this.origlHeight * 2) : 0.0f)), 1.0f);
            } else {
                Matrix.scaleM(fArr3, 0, ((f / 2.0f) + (this.needAlign ? (f5 * f) / (this.origlWidth * 2) : 0.0f)) * this.scaleRatio, ((f10 / 2.0f) + (this.needAlign ? (f6 * f) / (this.origlWidth * 2) : 0.0f)) * this.scaleRatio, 1.0f);
            }
        } else if (eAspectRatio == EAspectRatio.encapsulate) {
            if (f9 - f2 > 0.0f) {
                Matrix.scaleM(fArr3, 0, ((f / 2.0f) + (this.needAlign ? (f5 * f) / (this.origlWidth * 2) : 0.0f)) * this.scaleRatio, ((f10 / 2.0f) + (this.needAlign ? (f6 * f) / (this.origlWidth * 2) : 0.0f)) * this.scaleRatio, 1.0f);
            } else {
                Matrix.scaleM(fArr3, 0, ((f9 / 2.0f) + (this.needAlign ? (f5 * f4) / (this.origlHeight * 2) : 0.0f)) * this.scaleRatio, this.scaleRatio * ((f4 / 2.0f) + (this.needAlign ? (f6 * f4) / (this.origlHeight * 2) : 0.0f)), 1.0f);
            }
        } else if (this.needAlign) {
            Matrix.scaleM(fArr3, 0, ((f / 2.0f) + ((f5 * f) / (this.origlWidth * 2))) * this.scaleRatio, ((f4 / 2.0f) + ((f6 * f4) / (this.origlHeight * 2))) * this.scaleRatio, 1.0f);
        } else {
            Matrix.scaleM(fArr3, 0, (f / 2.0f) * this.scaleRatio, this.scaleRatio * (f4 / 2.0f), 1.0f);
        }
        Matrix.multiplyMM(fArr4, 0, fArr2, 0, fArr3, 0);
        Matrix.setIdentityM(fArr5, 0);
        Matrix.translateM(fArr5, 0, this.moveWidth, this.moveHeight, 0.0f);
        Matrix.multiplyMM(fArr, 0, fArr4, 0, fArr5, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int handleProcessFunc_SetDspMode(EAspectRatio eAspectRatio) {
        synchronized (this.configLock) {
            this.mAspectModeView = eAspectRatio;
        }
        return 0;
    }

    private void startBackgroundThread() {
        Log.i(TAG, "#step#startBackgroudThread");
        this.mBackgroundThread = new HandlerThread("DecoderBackground");
        this.mBackgroundThread.start();
        Looper looper = this.mBackgroundThread.getLooper();
        if (looper != null) {
            this.mBackgroundHandler = new Handler(looper) { // from class: com.huawei.videoengine.MediaCodecDecoder.2
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    int i = 0;
                    int i2 = 0;
                    switch (message.what) {
                        case 3:
                            i = MediaCodecDecoder.this.handleProcessFunc_startDecoder();
                            break;
                        case 4:
                            i = MediaCodecDecoder.this.handleProcessFunc_stopDecoder();
                            break;
                        case 5:
                            ScaleMsg scaleMsg = (ScaleMsg) message.obj;
                            i = MediaCodecDecoder.this.handleProcessFunc_SetScaleRate(scaleMsg.rate, scaleMsg.moveX, scaleMsg.moveY);
                            break;
                        case 6:
                        default:
                            Log.w(MediaCodecDecoder.TAG, "handle message unknow msgid = " + message.what);
                            break;
                        case 7:
                            int i3 = message.arg1;
                            EAspectRatio eAspectRatio = EAspectRatio.none;
                            switch (i3) {
                                case 0:
                                    eAspectRatio = EAspectRatio.none;
                                    break;
                                case 1:
                                    eAspectRatio = EAspectRatio.encapsulate;
                                    break;
                                case 2:
                                    eAspectRatio = EAspectRatio.crop;
                                    break;
                                default:
                                    i2 = -1;
                                    break;
                            }
                            i = i2;
                            if (i2 == 0) {
                                i = MediaCodecDecoder.this.handleProcessFunc_SetDspMode(eAspectRatio);
                                break;
                            }
                            break;
                        case 8:
                            i = MediaCodecDecoder.this.handleProcessFunc_putFrame();
                            break;
                        case 9:
                            FrameInfoMsg frameInfoMsg = (FrameInfoMsg) message.obj;
                            i = MediaCodecDecoder.this.handleProcessFunc_setFrameInfo(frameInfoMsg.dataLength, frameInfoMsg.renderTime, frameInfoMsg.isKeyFrame, frameInfoMsg.width, frameInfoMsg.height);
                            break;
                        case 10:
                            i = MediaCodecDecoder.this.handleProcessFunc_ResetDecoder();
                            break;
                        case 11:
                            i = MediaCodecDecoder.this.backupdateWinowSurface(((SurfaceInfoMsg) message.obj).updateSf);
                            break;
                    }
                    ObjExtend semaphore = ((MsgBase) message.obj).getSemaphore();
                    if (semaphore != null) {
                        synchronized (semaphore) {
                            semaphore.setRes(i);
                            semaphore.notifyAll();
                        }
                    }
                }
            };
            return;
        }
        stopBackgroundThread();
        Log.e(TAG, "startBackgroudThread getLooper err!");
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
        }
    }

    public void addAsyncCallback() {
        Log.i(TAG, "Enter addAsyncCallback.");
        this.decoder.setCallback(new MediaCodec.Callback() { // from class: com.huawei.videoengine.MediaCodecDecoder.1
            @Override // android.media.MediaCodec.Callback
            public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
                codecException.printStackTrace();
            }

            @Override // android.media.MediaCodec.Callback
            public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
                synchronized (MediaCodecDecoder.this.listLock) {
                    MediaCodecDecoder.this.indexList.add(Integer.valueOf(i));
                }
            }

            @Override // android.media.MediaCodec.Callback
            public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
                try {
                    long j = bufferInfo.presentationTimeUs;
                    if (MediaCodecDecoder.this.bindedSurface) {
                        if (((Long) MediaCodecDecoder.this.timeStampMap.get(Long.valueOf(j))) != null) {
                            MediaCodecDecoder.this.timeStampMap.remove(Long.valueOf(j));
                        } else {
                            Log.i(MediaCodecDecoder.TAG, "no find timesttamp " + j);
                        }
                        if (MediaCodecDecoder.this.mDecOutFps != null) {
                            MediaCodecDecoder.this.mDecOutFps.add();
                        }
                        MediaCodecDecoder.this.decoder.releaseOutputBuffer(i, true);
                        return;
                    }
                    ByteBuffer outputBuffer = MediaCodecDecoder.this.decoder.getOutputBuffer(i);
                    MediaFormat outputFormat = MediaCodecDecoder.this.decoder.getOutputFormat(i);
                    int integer = outputFormat.getInteger("width");
                    int integer2 = outputFormat.getInteger("height");
                    MediaCodecDecoder.this.renderBuffer.rewind();
                    MediaCodecDecoder.this.renderBuffer.put(outputBuffer);
                    if (((Long) MediaCodecDecoder.this.timeStampMap.get(Long.valueOf(j))) != null) {
                        MediaCodecDecoder.this.timeStampMap.remove(Long.valueOf(j));
                    } else {
                        Log.i(MediaCodecDecoder.TAG, "no find timesttamp " + j);
                    }
                    MediaCodecDecoder.this.decoder.releaseOutputBuffer(i, false);
                    MediaCodecDecoder.this.procDecodedYUV(MediaCodecDecoder.this.lnativeObject, integer, integer2, MediaCodecDecoder.this.renderBuffer.position());
                } catch (Exception e) {
                    Log.e(MediaCodecDecoder.TAG, "decode onOutputBufferAvailable failed exception = " + e.getMessage());
                    e.printStackTrace();
                    MediaCodecDecoder.this.resetDecoder();
                }
            }

            @Override // android.media.MediaCodec.Callback
            public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
                int integer = mediaFormat.getInteger("width");
                int integer2 = mediaFormat.getInteger("height");
                int i = integer;
                if (mediaFormat.containsKey("crop-left")) {
                    i = integer;
                    if (mediaFormat.containsKey("crop-right")) {
                        i = (mediaFormat.getInteger("crop-right") + 1) - mediaFormat.getInteger("crop-left");
                    }
                }
                int i2 = integer2;
                if (mediaFormat.containsKey("crop-top")) {
                    i2 = integer2;
                    if (mediaFormat.containsKey("crop-bottom")) {
                        i2 = (mediaFormat.getInteger("crop-bottom") + 1) - mediaFormat.getInteger("crop-top");
                    }
                }
                Log.i(MediaCodecDecoder.TAG, " onOutputFormatChanged width = " + i + ", height = " + i2);
                int inNeedAlignResolution = MediaCodecDecoder.this.inNeedAlignResolution(i, i2);
                if (inNeedAlignResolution != -1) {
                    MediaCodecDecoder.this.mDecoderWidth = i >= i2 ? MediaCodecDecoder.this.resolution[inNeedAlignResolution][0] : MediaCodecDecoder.this.resolution[inNeedAlignResolution][1];
                    MediaCodecDecoder.this.mDecoderHeight = i >= i2 ? MediaCodecDecoder.this.resolution[inNeedAlignResolution][1] : MediaCodecDecoder.this.resolution[inNeedAlignResolution][0];
                } else {
                    MediaCodecDecoder.this.mDecoderWidth = i;
                    MediaCodecDecoder.this.mDecoderHeight = i2;
                }
                MediaCodecDecoder.this.origlWidth = i;
                MediaCodecDecoder.this.origlHeight = i2;
                Log.i(MediaCodecDecoder.TAG, " onOutputFormatChanged mDecoderWidth = " + MediaCodecDecoder.this.mDecoderWidth + ", mDecoderHeight = " + MediaCodecDecoder.this.mDecoderHeight);
                MediaCodecDecoder.this.setDecodedSize(MediaCodecDecoder.this.lnativeObject, MediaCodecDecoder.this.mDecoderWidth, MediaCodecDecoder.this.mDecoderHeight);
            }
        });
    }

    public int handleProcessFuc_UninitEGL() {
        Log.i(TAG, "#step# handleProcessFuc_UninitEGL");
        if (this.mEglCore != null) {
            this.mEglCore.makeNothingCurrent();
        }
        synchronized (this.configLock) {
            if (this.mWindowSurface != null) {
                this.mWindowSurface.release();
                this.mWindowSurface = null;
            }
            if (this.mDecoderTexture != null) {
                this.mDecoderTexture.release();
                this.mDecoderTexture = null;
            }
            if (this.mFullFrameBlit != null) {
                this.mFullFrameBlit.release(true);
                this.mFullFrameBlit = null;
            }
        }
        if (this.mEglCore != null) {
            this.mEglCore.release();
            this.mEglCore = null;
            return 0;
        }
        return 0;
    }

    public int handleProcessFunc_InitEGL(Surface surface) {
        Log.i(TAG, "#step# handleProcessFunc_InitEGL, viewSf:" + surface);
        if (this.mEglCore == null) {
            this.mEglCore = new EglCore(null, 1);
            return backupdateWinowSurface(surface);
        }
        Log.w(TAG, "egl has been inited");
        return 0;
    }

    public int handleProcessFunc_ResetDecoder() {
        Log.i(TAG, "enter handleProcessFunc_ResetDecoder");
        if (this.lastRestTime != 0 && System.currentTimeMillis() - this.lastRestTime < 500) {
            Log.e(TAG, "lastRestTime is too close lastTime = " + this.lastRestTime + ", now = " + System.currentTimeMillis());
            return 0;
        }
        this.lastRestTime = System.currentTimeMillis();
        int handleProcessFunc_stopDecoder = handleProcessFunc_stopDecoder();
        if (handleProcessFunc_stopDecoder != 0) {
            Log.e(TAG, "resetDecoder failed in stop decoder");
            return handleProcessFunc_stopDecoder;
        }
        int handleProcessFunc_startDecoder = handleProcessFunc_startDecoder();
        if (handleProcessFunc_startDecoder != 0) {
            Log.e(TAG, "resetDecoder failed in start decoder");
            return handleProcessFunc_startDecoder;
        }
        return 0;
    }

    public int handleProcessFunc_SetScaleRate(float f, float f2, float f3) {
        synchronized (this.configLock) {
            this.scaleRatio = f;
            this.moveWidth = f2;
            this.moveHeight = f3;
        }
        return 0;
    }

    public int handleProcessFunc_putFrame() {
        if (this.started) {
            if (this.dataLength <= 0) {
                Log.e(TAG, "dataLength=" + this.dataLength);
                if (this.needKeyFrame) {
                    return -100;
                }
                this.needKeyFrame = true;
                return -1;
            } else if (this.inputWidth == 0 || this.inputHeight == 0) {
                Log.e(TAG, "wrong frameSize width=" + this.inputWidth + ", height = " + this.inputHeight);
                if (this.needKeyFrame) {
                    return -100;
                }
                this.needKeyFrame = true;
                return -1;
            } else {
                synchronized (this.listLock) {
                    if (this.indexList.size() == 0) {
                        Log.e(TAG, "indexList is empty");
                        this.needKeyFrame = true;
                        return -1;
                    }
                    if (this.needKeyFrame) {
                        if (this.isKeyFrame == 0) {
                            Log.e(TAG, "onFrame Request i, but not");
                            return -100;
                        }
                        this.needKeyFrame = false;
                    }
                    int intValue = this.indexList.remove().intValue();
                    try {
                        this.playBuffer.get(this.tempBufPlay, 0, this.dataLength);
                        this.playBuffer.rewind();
                        ByteBuffer inputBuffer = this.decoder.getInputBuffer(intValue);
                        inputBuffer.clear();
                        inputBuffer.put(this.tempBufPlay, 0, this.dataLength);
                        this.decoder.queueInputBuffer(intValue, 0, this.dataLength, this.renderTime, 0);
                        return 0;
                    } catch (Exception e) {
                        Log.e(TAG, "decode onFrame failed exception = " + e.getMessage());
                        e.printStackTrace();
                        resetDecoder();
                        if (this.isKeyFrame == 0 && this.needKeyFrame) {
                            return -100;
                        }
                        this.needKeyFrame = true;
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    public int handleProcessFunc_setFrameInfo(int i, long j, int i2, int i3, int i4) {
        this.dataLength = i;
        this.renderTime = j;
        this.isKeyFrame = i2;
        this.inputWidth = i3;
        this.inputHeight = i4;
        this.timeStampMap.put(Long.valueOf(j), Long.valueOf(System.currentTimeMillis()));
        return 0;
    }

    public int handleProcessFunc_startDecoder() {
        Log.i(TAG, "startDecoder enter");
        if (!this.mDecoderSurface.isValid()) {
            Log.e(TAG, "process startDecoder failed mDecoderSurface is invalid,mDecoderSurface:" + this.mDecoderSurface);
            return -1;
        } else if (this.started) {
            Log.w(TAG, "decoder is started");
            return 0;
        } else if (handleProcessFunc_InitEGL(this.mDecoderSurface) != 0) {
            Log.e(TAG, "initegl failed");
            return -1;
        } else if (this.mDecoderTexture == null) {
            Log.e(TAG, "decodertexture is null");
            return -1;
        } else {
            this.glSurfaceView = new Surface(this.mDecoderTexture);
            if (this.codecType == 0) {
                try {
                    this.decoder = MediaCodec.createDecoderByType("video/avc");
                } catch (IOException e) {
                    e.printStackTrace();
                    return -1;
                }
            } else if (this.codecType == 1) {
                try {
                    this.decoder = MediaCodec.createDecoderByType("video/hevc");
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return -1;
                }
            }
            addAsyncCallback();
            try {
                Log.i(TAG, "Use valid surface to init decoder");
                this.decoder.configure(this.mediaFormat, this.glSurfaceView, (MediaCrypto) null, 0);
                this.playBuffer.rewind();
                this.decoder.start();
                this.started = true;
                this.needKeyFrame = true;
                Log.i(TAG, "startDecoder leave");
                return 0;
            } catch (Exception e3) {
                e3.printStackTrace();
                return -1;
            }
        }
    }

    public int handleProcessFunc_stopDecoder() {
        Log.i(TAG, "stopDecoder enter mDecoderTexture = " + this.mDecoderTexture);
        if (!this.started) {
            Log.i(TAG, "Decoder is not started");
            return 0;
        }
        this.started = false;
        if (this.mDecoderTexture != null) {
            this.mDecoderTexture.setOnFrameAvailableListener(null);
        }
        this.indexList.clear();
        try {
            this.decoder.stop();
            Log.i(TAG, "stopDecoder after stop");
            this.decoder.release();
            this.decoder = null;
            return handleProcessFuc_UninitEGL();
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(TAG, "stopDecoder exception");
            return -1;
        }
    }

    public int inNeedAlignResolution(int i, int i2) {
        int i3 = i;
        int i4 = i2;
        if (i < i2) {
            int i5 = i + i2;
            i4 = i5 - i2;
            i3 = i5 - i4;
        }
        for (int i6 = 0; i6 < this.resolution_num; i6++) {
            if (this.resolution[i6][0] == i3 && i4 == ((this.resolution[i6][1] / 16) + 1) * 16) {
                return i6;
            }
        }
        return -1;
    }

    public int init(int i, Surface surface, int i2, int i3) {
        Log.i(TAG, "Enter init. width " + i2 + "  height " + i3 + " surfaceIn: " + surface);
        try {
            this.playBuffer = ByteBuffer.allocateDirect(2097152);
            this.renderBuffer = ByteBuffer.allocateDirect(4147200);
            this.tempBufPlay = new byte[2097152];
            startBackgroundThread();
            this.codecType = i;
            this.indexList = new LinkedList<>();
            if (this.codecType == 0) {
                this.mediaFormat = MediaFormat.createVideoFormat("video/avc", i2, i3);
            } else if (this.codecType == 1) {
                this.mediaFormat = MediaFormat.createVideoFormat("video/hevc", i2, i3);
            }
            this.mediaFormat.setInteger(VENDOR_KEY_VTMODE, 1);
            if (surface != null) {
                this.bindedSurface = true;
                this.mDecoderSurface = surface;
                startDecoder();
                return 0;
            }
            if (this.codecType == 0) {
                try {
                    this.decoder = MediaCodec.createDecoderByType("video/avc");
                } catch (IOException e) {
                    e.printStackTrace();
                    return -1;
                }
            } else if (this.codecType == 1) {
                try {
                    this.decoder = MediaCodec.createDecoderByType("video/hevc");
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return -1;
                }
            }
            addAsyncCallback();
            try {
                this.decoder.configure(this.mediaFormat, (Surface) null, (MediaCrypto) null, 0);
                this.decoder.start();
                this.playBuffer.rewind();
                this.started = true;
                this.needKeyFrame = true;
                return 0;
            } catch (Exception e3) {
                e3.printStackTrace();
                return -1;
            }
        } catch (Exception e4) {
            Log.e(TAG, "Allocate buffer failed");
            this.playBuffer = null;
            this.renderBuffer = null;
            this.tempBufPlay = null;
            return -1;
        }
    }

    public int onFrame() {
        if (this.started) {
            return postMessage(8, 0, 0, new MsgBase());
        }
        return 0;
    }

    public int postMessage(int i, int i2, int i3, MsgBase msgBase) {
        if (this.mBackgroundHandler == null) {
            Log.e(TAG, "wwmax backThreadHandler is null");
            return -1;
        }
        ObjExtend objExtend = new ObjExtend();
        msgBase.setSemaphore(objExtend);
        Message obtain = Message.obtain(this.mBackgroundHandler, i, i2, i3, msgBase);
        synchronized (objExtend) {
            if (this.mBackgroundHandler.sendMessage(obtain)) {
                boolean z = true;
                while (z) {
                    try {
                        objExtend.wait(3000L);
                        z = false;
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                return objExtend.getRes();
            }
            return -1;
        }
    }

    public native void procDecodedYUV(long j, int i, int i2, int i3);

    public void registerNativeObject(long j) {
        this.lnativeObject = j;
    }

    public int resetDecoder() {
        sendMessage(10, 0, 0, new MsgBase());
        return 0;
    }

    public boolean sendMessage(int i, int i2, int i3, Object obj) {
        if (this.mBackgroundHandler == null) {
            Log.e(TAG, "wwmax backThreadHandler is null");
            return false;
        }
        return this.mBackgroundHandler.sendMessage(Message.obtain(this.mBackgroundHandler, i, i2, i3, obj));
    }

    public native void setDecodedSize(long j, int i, int i2);

    public int setDisplayMirror(int i, int i2) {
        synchronized (this.configLock) {
            this.mMirrorX = i;
            this.mMirrorY = i2;
        }
        return 0;
    }

    public int setDisplayMode(int i) {
        EAspectRatio eAspectRatio;
        Log.i(TAG, "setDisplayMode mode = " + i);
        EAspectRatio eAspectRatio2 = EAspectRatio.none;
        switch (i) {
            case 0:
                eAspectRatio = EAspectRatio.none;
                break;
            case 1:
                eAspectRatio = EAspectRatio.encapsulate;
                break;
            case 2:
                eAspectRatio = EAspectRatio.crop;
                break;
            default:
                return -1;
        }
        handleProcessFunc_SetDspMode(eAspectRatio);
        return 0;
    }

    public int setDisplayOrientation(int i) {
        synchronized (this.configLock) {
            int i2 = i;
            if (i == -1) {
                i2 = 0;
            }
            this.mOrientation = i2;
        }
        return 0;
    }

    public void setFrameInfo(int i, long j, int i2, int i3, int i4) {
        if (this.started) {
            postMessage(9, 0, 0, new FrameInfoMsg(i, j, i2, i3, i4));
        }
    }

    public int setRenderScaleRate(float f, float f2, float f3) {
        Log.i(TAG, "setRenderScaleRate rate = " + f + ", moveX = " + f2 + ", moveY = " + f3);
        sendMessage(5, 0, 0, new ScaleMsg(f, f2, f3));
        return 0;
    }

    public void startDecoder() {
        if (postMessage(3, 0, 0, new MsgBase()) == -1) {
            Log.e(TAG, "startdecoder failed");
        }
    }

    public void stopDecoder() {
        postMessage(4, 0, 0, new MsgBase());
    }

    public void uninit() {
        Log.i(TAG, "Enter uninit");
        stopDecoder();
        if (this.decSurfaceView != null) {
            this.decSurfaceView.getHolder().removeCallback(this.surfaceListener);
            this.decSurfaceView = null;
        }
        this.indexList = null;
        this.playBuffer = null;
        this.renderBuffer = null;
        this.tempBufPlay = null;
        this.mediaFormat = null;
        this.listLock = null;
        this.lnativeObject = 0L;
        stopBackgroundThread();
    }

    public int updateWinowSurface(Surface surface) {
        postMessage(11, 0, 0, new SurfaceInfoMsg(surface));
        return 0;
    }
}
