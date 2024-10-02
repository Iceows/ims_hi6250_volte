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
/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public enum EAspectRatio {
        none,
        encapsulate,
        crop
    }

    public native void procDecodedYUV(long j, int i, int i2, int i3);

    public native void setDecodedSize(long j, int i, int i2);

    public MediaCodecDecoder() {
        this.mDecOutFps = null;
        Log.i(TAG, "Enter MediaCodecDecoder.");
        this.mDecOutFps = new FpsStatistic("Dec In", 33);
    }

    public int inNeedAlignResolution(int i, int i2) {
        if (i < i2) {
            int i3 = i + i2;
            i2 = i3 - i2;
            i = i3 - i2;
        }
        for (int i4 = 0; i4 < this.resolution_num; i4++) {
            if (this.resolution[i4][0] == i && i2 == ((this.resolution[i4][1] / 16) + 1) * 16) {
                return i4;
            }
        }
        return -1;
    }

    public int postMessage(int i, int i2, int i3, MsgBase msgBase) {
        int res;
        if (this.mBackgroundHandler == null) {
            Log.e(TAG, "wwmax backThreadHandler is null");
            return -1;
        }
        ObjExtend objExtend = new ObjExtend();
        msgBase.setSemaphore(objExtend);
        Message obtain = Message.obtain(this.mBackgroundHandler, i, i2, i3, msgBase);
        synchronized (objExtend) {
            if (!this.mBackgroundHandler.sendMessage(obtain)) {
                return -1;
            }
            for (boolean z = true; z; z = false) {
                try {
                    try {
                        objExtend.wait(3000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } finally {
                    objExtend.getRes();
                }
            }
            return res;
        }
    }

    public boolean sendMessage(int i, int i2, int i3, Object obj) {
        if (this.mBackgroundHandler == null) {
            Log.e(TAG, "wwmax backThreadHandler is null");
            return false;
        }
        return this.mBackgroundHandler.sendMessage(Message.obtain(this.mBackgroundHandler, i, i2, i3, obj));
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
            } else {
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
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return -1;
                }
            }
            return 0;
        } catch (Exception e4) {
            Log.e(TAG, "Allocate buffer failed");
            this.playBuffer = null;
            this.renderBuffer = null;
            this.tempBufPlay = null;
            return -1;
        }
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

    public void addAsyncCallback() {
        Log.i(TAG, "Enter addAsyncCallback.");
        this.decoder.setCallback(new MediaCodec.Callback() { // from class: com.huawei.videoengine.MediaCodecDecoder.1
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
                    if (!MediaCodecDecoder.this.bindedSurface) {
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
                        return;
                    }
                    if (((Long) MediaCodecDecoder.this.timeStampMap.get(Long.valueOf(j))) != null) {
                        MediaCodecDecoder.this.timeStampMap.remove(Long.valueOf(j));
                    } else {
                        Log.i(MediaCodecDecoder.TAG, "no find timesttamp " + j);
                    }
                    if (MediaCodecDecoder.this.mDecOutFps != null) {
                        MediaCodecDecoder.this.mDecOutFps.add();
                    }
                    MediaCodecDecoder.this.decoder.releaseOutputBuffer(i, true);
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
                if (mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-right")) {
                    integer = (mediaFormat.getInteger("crop-right") + 1) - mediaFormat.getInteger("crop-left");
                }
                if (mediaFormat.containsKey("crop-top") && mediaFormat.containsKey("crop-bottom")) {
                    integer2 = (mediaFormat.getInteger("crop-bottom") + 1) - mediaFormat.getInteger("crop-top");
                }
                Log.i(MediaCodecDecoder.TAG, " onOutputFormatChanged width = " + integer + ", height = " + integer2);
                int inNeedAlignResolution = MediaCodecDecoder.this.inNeedAlignResolution(integer, integer2);
                if (inNeedAlignResolution == -1) {
                    MediaCodecDecoder.this.mDecoderWidth = integer;
                    MediaCodecDecoder.this.mDecoderHeight = integer2;
                } else {
                    MediaCodecDecoder.this.mDecoderWidth = integer >= integer2 ? MediaCodecDecoder.this.resolution[inNeedAlignResolution][0] : MediaCodecDecoder.this.resolution[inNeedAlignResolution][1];
                    MediaCodecDecoder.this.mDecoderHeight = integer >= integer2 ? MediaCodecDecoder.this.resolution[inNeedAlignResolution][1] : MediaCodecDecoder.this.resolution[inNeedAlignResolution][0];
                }
                MediaCodecDecoder.this.origlWidth = integer;
                MediaCodecDecoder.this.origlHeight = integer2;
                Log.i(MediaCodecDecoder.TAG, " onOutputFormatChanged mDecoderWidth = " + MediaCodecDecoder.this.mDecoderWidth + ", mDecoderHeight = " + MediaCodecDecoder.this.mDecoderHeight);
                MediaCodecDecoder.this.setDecodedSize(MediaCodecDecoder.this.lnativeObject, MediaCodecDecoder.this.mDecoderWidth, MediaCodecDecoder.this.mDecoderHeight);
            }

            @Override // android.media.MediaCodec.Callback
            public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
                codecException.printStackTrace();
            }
        });
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

    public void setFrameInfo(int i, long j, int i2, int i3, int i4) {
        if (!this.started) {
            return;
        }
        postMessage(9, 0, 0, new FrameInfoMsg(i, j, i2, i3, i4));
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

    public int onFrame() {
        if (this.started) {
            return postMessage(8, 0, 0, new MsgBase());
        }
        return 0;
    }

    public int handleProcessFunc_putFrame() {
        if (!this.started) {
            return 0;
        }
        if (this.dataLength <= 0) {
            Log.e(TAG, "dataLength=" + this.dataLength);
            if (this.needKeyFrame) {
                return -100;
            }
            this.needKeyFrame = true;
            return -1;
        }
        if (this.inputWidth == 0 || this.inputHeight == 0) {
            Log.e(TAG, "wrong frameSize width=" + this.inputWidth + ", height = " + this.inputHeight);
            if (this.needKeyFrame) {
                return -100;
            }
            this.needKeyFrame = true;
            return -1;
        }
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

    public void registerNativeObject(long j) {
        this.lnativeObject = j;
    }

    public void startDecoder() {
        if (postMessage(3, 0, 0, new MsgBase()) == -1) {
            Log.e(TAG, "startdecoder failed");
        }
    }

    public int handleProcessFunc_startDecoder() {
        Log.i(TAG, "startDecoder enter");
        if (!this.mDecoderSurface.isValid()) {
            Log.e(TAG, "process startDecoder failed mDecoderSurface is invalid,mDecoderSurface:" + this.mDecoderSurface);
            return -1;
        }
        if (this.started) {
            Log.w(TAG, "decoder is started");
            return 0;
        }
        if (handleProcessFunc_InitEGL(this.mDecoderSurface) != 0) {
            Log.e(TAG, "initegl failed");
            return -1;
        }
        if (this.mDecoderTexture == null) {
            Log.e(TAG, "decodertexture is null");
            return -1;
        }
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

    public int resetDecoder() {
        sendMessage(10, 0, 0, new MsgBase());
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
        if (handleProcessFunc_startDecoder == 0) {
            return 0;
        }
        Log.e(TAG, "resetDecoder failed in start decoder");
        return handleProcessFunc_startDecoder;
    }

    public void stopDecoder() {
        postMessage(4, 0, 0, new MsgBase());
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

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public static class ObjExtend {
        private int mRes = -1;

        public void setRes(int i) {
            this.mRes = i;
        }

        public int getRes() {
            return this.mRes;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0018. Please report as an issue. */
    public int setDisplayMode(int i) {
        EAspectRatio eAspectRatio;
        Log.i(TAG, "setDisplayMode mode = " + i);
        EAspectRatio eAspectRatio2 = EAspectRatio.none;
        switch (i) {
            case 0:
                eAspectRatio = EAspectRatio.none;
                handleProcessFunc_SetDspMode(eAspectRatio);
                return 0;
            case 1:
                eAspectRatio = EAspectRatio.encapsulate;
                handleProcessFunc_SetDspMode(eAspectRatio);
                return 0;
            case 2:
                eAspectRatio = EAspectRatio.crop;
                handleProcessFunc_SetDspMode(eAspectRatio);
                return 0;
            default:
                return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int handleProcessFunc_SetDspMode(EAspectRatio eAspectRatio) {
        synchronized (this.configLock) {
            this.mAspectModeView = eAspectRatio;
        }
        return 0;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

    public int setRenderScaleRate(float f, float f2, float f3) {
        Log.i(TAG, "setRenderScaleRate rate = " + f + ", moveX = " + f2 + ", moveY = " + f3);
        sendMessage(5, 0, 0, new ScaleMsg(f, f2, f3));
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

    public int setDisplayOrientation(int i) {
        synchronized (this.configLock) {
            if (i == -1) {
                i = 0;
            }
            this.mOrientation = i;
        }
        return 0;
    }

    public int setDisplayMirror(int i, int i2) {
        synchronized (this.configLock) {
            this.mMirrorX = i;
            this.mMirrorY = i2;
        }
        return 0;
    }

    private void startBackgroundThread() {
        Log.i(TAG, "#step#startBackgroudThread");
        this.mBackgroundThread = new HandlerThread("DecoderBackground");
        this.mBackgroundThread.start();
        Looper looper = this.mBackgroundThread.getLooper();
        if (looper == null) {
            stopBackgroundThread();
            Log.e(TAG, "startBackgroudThread getLooper err!");
        } else {
            this.mBackgroundHandler = new Handler(looper) { // from class: com.huawei.videoengine.MediaCodecDecoder.2
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    super.handleMessage(message);
                    int i = 0;
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
                            int i2 = message.arg1;
                            EAspectRatio eAspectRatio = EAspectRatio.none;
                            switch (i2) {
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
                                    i = -1;
                                    break;
                            }
                            if (i == 0) {
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
        }
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
                            if (width != 0 && height != 0) {
                                GLES20.glClear(16384);
                                MediaCodecDecoder.this.getMVPP(MediaCodecDecoder.this.mDisplayProjectionMatrix, MediaCodecDecoder.this.mOrientation, MediaCodecDecoder.this.mAspectModeView, width, height);
                                GLES20.glViewport(0, 0, width, height);
                                MediaCodecDecoder.this.mFullFrameBlit.drawFrame(MediaCodecDecoder.this.mTextureId, MediaCodecDecoder.this.mDisplayProjectionMatrix, GlUtil.getIDENTITY_MATRIX());
                                MediaCodecDecoder.this.mWindowSurface.swapBuffers();
                                GlUtil.checkGlError("draw done");
                            } else {
                                Log.e(MediaCodecDecoder.TAG, "PreView SF W or H is 0");
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

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    private class SurfaceInfoMsg extends MsgBase {
        public Surface updateSf;

        public SurfaceInfoMsg(Surface surface) {
            super();
            this.updateSf = surface;
        }
    }

    public int updateWinowSurface(Surface surface) {
        postMessage(11, 0, 0, new SurfaceInfoMsg(surface));
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b A[Catch: all -> 0x00bc, TryCatch #0 {, blocks: (B:4:0x0004, B:6:0x0028, B:8:0x0030, B:9:0x003c, B:14:0x005b, B:15:0x0076, B:18:0x0078, B:20:0x0091, B:21:0x00ba, B:23:0x0051), top: B:3:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078 A[Catch: all -> 0x00bc, TryCatch #0 {, blocks: (B:4:0x0004, B:6:0x0028, B:8:0x0030, B:9:0x003c, B:14:0x005b, B:15:0x0076, B:18:0x0078, B:20:0x0091, B:21:0x00ba, B:23:0x0051), top: B:3:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int backupdateWinowSurface(android.view.Surface r6) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.configLock
            monitor-enter(r0)
            java.lang.String r1 = "hme_engine_JavaDEC"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbc
            r2.<init>()     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r3 = "updateWinowSurface currentWS="
            r2.append(r3)     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.WindowSurface r3 = r5.mWindowSurface     // Catch: java.lang.Throwable -> Lbc
            r2.append(r3)     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r3 = ", updateSF= "
            r2.append(r3)     // Catch: java.lang.Throwable -> Lbc
            r2.append(r6)     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lbc
            android.util.Log.i(r1, r2)     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.WindowSurface r1 = r5.mWindowSurface     // Catch: java.lang.Throwable -> Lbc
            if (r1 == 0) goto L4b
            com.huawei.videoengine.WindowSurface r1 = r5.mWindowSurface     // Catch: java.lang.Throwable -> Lbc
            boolean r1 = r1.isCurrent()     // Catch: java.lang.Throwable -> Lbc
            if (r1 == 0) goto L3c
            java.lang.String r1 = "hme_engine_JavaDEC"
            java.lang.String r2 = "#winsf#mWindowSurface makeNothingCurrent "
            android.util.Log.i(r1, r2)     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.EglCore r1 = r5.mEglCore     // Catch: java.lang.Throwable -> Lbc
            r1.makeNothingCurrent()     // Catch: java.lang.Throwable -> Lbc
        L3c:
            java.lang.String r1 = "hme_engine_JavaDEC"
            java.lang.String r2 = "#winsf# mWindowSurface release"
            android.util.Log.i(r1, r2)     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.WindowSurface r1 = r5.mWindowSurface     // Catch: java.lang.Throwable -> Lbc
            r1.release()     // Catch: java.lang.Throwable -> Lbc
            r1 = 0
            r5.mWindowSurface = r1     // Catch: java.lang.Throwable -> Lbc
        L4b:
            r1 = 0
            if (r6 != 0) goto L51
        L4f:
            r2 = r1
            goto L59
        L51:
            boolean r2 = r6.isValid()     // Catch: java.lang.Throwable -> Lbc
            if (r2 != 0) goto L58
            goto L4f
        L58:
            r2 = 1
        L59:
            if (r2 != 0) goto L78
            java.lang.String r2 = "hme_engine_JavaDEC"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbc
            r3.<init>()     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r4 = "no need to create windowSF, beause Surface:"
            r3.append(r4)     // Catch: java.lang.Throwable -> Lbc
            r3.append(r6)     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r6 = " is null, or Surface isValid"
            r3.append(r6)     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> Lbc
            android.util.Log.i(r2, r6)     // Catch: java.lang.Throwable -> Lbc
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbc
            return r1
        L78:
            com.huawei.videoengine.WindowSurface r2 = new com.huawei.videoengine.WindowSurface     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.EglCore r3 = r5.mEglCore     // Catch: java.lang.Throwable -> Lbc
            r2.<init>(r3, r6, r1)     // Catch: java.lang.Throwable -> Lbc
            r5.mWindowSurface = r2     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r6 = "hme_engine_JavaDEC"
            java.lang.String r2 = "#winsf# mWindowSurface create"
            android.util.Log.i(r6, r2)     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.WindowSurface r6 = r5.mWindowSurface     // Catch: java.lang.Throwable -> Lbc
            r6.makeCurrent()     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.FullFrameRect r6 = r5.mFullFrameBlit     // Catch: java.lang.Throwable -> Lbc
            if (r6 != 0) goto Lba
            java.lang.String r6 = "hme_engine_JavaDEC"
            java.lang.String r2 = "#step#FullFrame 2d programe create "
            android.util.Log.i(r6, r2)     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.FullFrameRect r6 = new com.huawei.videoengine.FullFrameRect     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.Texture2dProgram r2 = new com.huawei.videoengine.Texture2dProgram     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.Texture2dProgram$ProgramType r3 = com.huawei.videoengine.Texture2dProgram.ProgramType.TEXTURE_EXT     // Catch: java.lang.Throwable -> Lbc
            r2.<init>(r3)     // Catch: java.lang.Throwable -> Lbc
            r6.<init>(r2)     // Catch: java.lang.Throwable -> Lbc
            r5.mFullFrameBlit = r6     // Catch: java.lang.Throwable -> Lbc
            com.huawei.videoengine.FullFrameRect r6 = r5.mFullFrameBlit     // Catch: java.lang.Throwable -> Lbc
            int r6 = r6.createTextureObject()     // Catch: java.lang.Throwable -> Lbc
            r5.mTextureId = r6     // Catch: java.lang.Throwable -> Lbc
            int r6 = r5.mTextureId     // Catch: java.lang.Throwable -> Lbc
            r5.createSurfaceTexureForDecoder(r6)     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r6 = "hme_engine_JavaDEC"
            java.lang.String r2 = "FullFrame created "
            android.util.Log.i(r6, r2)     // Catch: java.lang.Throwable -> Lbc
        Lba:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbc
            return r1
        Lbc:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbc
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.videoengine.MediaCodecDecoder.backupdateWinowSurface(android.view.Surface):int");
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

    /* JADX INFO: Access modifiers changed from: private */
    public void getMVPP(float[] fArr, int i, EAspectRatio eAspectRatio, int i2, int i3) {
        int i4;
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
            i4 = 1;
            Matrix.rotateM(fArr3, 0, 180.0f, 0.0f, 1.0f, 0.0f);
        } else {
            i4 = 1;
        }
        if (this.mMirrorX == i4) {
            Matrix.rotateM(fArr3, 0, 180.0f, 1.0f, 0.0f, 0.0f);
        }
        Matrix.rotateM(fArr3, 0, i, 0.0f, 0.0f, 1.0f);
        if (this.mDecoderWidth == 0 || this.mDecoderHeight == 0) {
            Log.w(TAG, "getMVPP mDecoderWidth or mDecoderHeight is zero");
            return;
        }
        int i5 = this.mDecoderWidth;
        int i6 = this.mDecoderHeight;
        if (i == 90 || i == 270) {
            f = f4;
            f4 = f2;
        } else {
            f = f2;
        }
        float f5 = this.origlWidth - this.mDecoderWidth;
        float f6 = this.origlHeight - this.mDecoderHeight;
        float f7 = i5;
        float f8 = i6;
        float f9 = (f4 * f7) / f8;
        float f10 = (f8 * f) / f7;
        if (eAspectRatio == EAspectRatio.crop) {
            if (f9 - f2 > 0.0f) {
                Matrix.scaleM(fArr3, 0, ((f9 / 2.0f) + (this.needAlign == i4 ? (f5 * f4) / (this.origlHeight * 2) : 0.0f)) * this.scaleRatio, this.scaleRatio * ((f4 / 2.0f) + (this.needAlign == i4 ? (f6 * f4) / (this.origlHeight * 2) : 0.0f)), 1.0f);
            } else {
                Matrix.scaleM(fArr3, 0, ((f / 2.0f) + (this.needAlign == i4 ? (f5 * f) / (this.origlWidth * 2) : 0.0f)) * this.scaleRatio, ((f10 / 2.0f) + (this.needAlign == i4 ? (f6 * f) / (this.origlWidth * 2) : 0.0f)) * this.scaleRatio, 1.0f);
            }
        } else if (eAspectRatio == EAspectRatio.encapsulate) {
            if (f9 - f2 > 0.0f) {
                Matrix.scaleM(fArr3, 0, ((f / 2.0f) + (this.needAlign == i4 ? (f5 * f) / (this.origlWidth * 2) : 0.0f)) * this.scaleRatio, ((f10 / 2.0f) + (this.needAlign == i4 ? (f6 * f) / (this.origlWidth * 2) : 0.0f)) * this.scaleRatio, 1.0f);
            } else {
                Matrix.scaleM(fArr3, 0, ((f9 / 2.0f) + (this.needAlign == i4 ? (f5 * f4) / (this.origlHeight * 2) : 0.0f)) * this.scaleRatio, this.scaleRatio * ((f4 / 2.0f) + (this.needAlign == i4 ? (f6 * f4) / (this.origlHeight * 2) : 0.0f)), 1.0f);
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
}
