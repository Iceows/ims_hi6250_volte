package com.huawei.videoengine;

import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import com.huawei.videoengine.Texture2dProgram;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class MediaCodecDecoder {
    private static final int CONFIGURE_FLAG_DECODE_QUICKOUT = 2;
    private static final long DEC_WAIT_COUNT = 20;
    private static final long DEC_WAIT_TIME_MS = 5;
    private static final int INVALID_INDEX = -9999;
    private static final int PRINT_FRAME_INTERVAL = 60;
    private static final String TAG = "MediaCodecDecoder";
    private long mNativeObject;
    private MediaCodec mDecoder = null;
    private MediaFormat mMediaFormat = null;
    private boolean mNeedKeyFrame = false;
    private boolean mStarted = false;
    private boolean mQuickOut = false;
    private LinkedList<Integer> mIndexList = null;
    private final Object mListLock = new Object();
    private int mCodecType = 0;
    private Surface mDecoderSurface = null;
    private final Object mHandlerWait = new Object();
    private final Object mHandlerWaitSec = new Object();
    private Boolean mHandlerWaitNotified = false;
    private Boolean mHandlerWaitSecNotified = false;
    private Handler mHandler = null;
    private Surface mGlSurface = null;
    private SurfaceTexture mTexture = null;
    private EglCore mEglCore = null;
    private WindowSurface mWindowSurface = null;
    private FullFrameRect mFullFrameBlit = null;
    private int mTextureId = 0;
    private long mLastRestTime = 0;
    private int mDecoderWidth = 0;
    private int mDecoderHeight = 0;
    private int mAspectMode = 2;
    private List<Long> skipRenderList = Collections.synchronizedList(new LinkedList());
    private float mScaleRatio = 1.0f;
    private float mMoveWidth = 0.0f;
    private float mMoveHeight = 0.0f;
    private int mOrientation = 0;
    private int mMirrorX = 0;
    private int mMirrorY = 0;
    private int mOutFrameCount = 0;
    private float mAvgDecTime = 0.0f;
    private long mMaxDecTime = 0;
    private long mMinDecTime = 0;
    private int mInputOnlyCount = 0;
    private boolean mAbnormalState = false;
    private boolean mUseOpenGl = true;
    private final Object mClientLock = new Object();
    private RenderClient mRenderClient = null;
    private OffscreenSurface mOffscreenSurface = null;
    private long mLastDecRelaseTime = 0;

    static /* synthetic */ int access$708(MediaCodecDecoder mediaCodecDecoder) {
        int i = mediaCodecDecoder.mOutFrameCount;
        mediaCodecDecoder.mOutFrameCount = i + 1;
        return i;
    }

    public MediaCodecDecoder(long j) {
        this.mNativeObject = 0L;
        Log.i(TAG, "Enter MediaCodecDecoder.");
        this.mNativeObject = j;
    }

    public int init(int i, int i2, int i3) {
        Log.i(TAG, "Enter init. width " + i2 + "  height " + i3);
        this.mCodecType = i;
        this.mIndexList = new LinkedList<>();
        int i4 = this.mCodecType;
        if (i4 == 0) {
            this.mMediaFormat = MediaFormat.createVideoFormat("video/avc", i2, i3);
        } else if (i4 == 1) {
            this.mMediaFormat = MediaFormat.createVideoFormat("video/hevc", i2, i3);
        }
        this.mMediaFormat.setInteger("HISIExt-dec-vtMode", 1);
        if (i == 1) {
            this.mMediaFormat.setInteger("vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req", 1);
            this.mMediaFormat.setInteger("vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy", -1);
        }
        Thread thread = new Thread() { // from class: com.huawei.videoengine.MediaCodecDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Looper.prepare();
                MediaCodecDecoder.this.mHandler = new Handler();
                Looper.loop();
            }
        };
        thread.setName("DecHandler");
        thread.start();
        for (int i5 = 0; i5 < 500 && this.mHandler == null; i5++) {
            try {
                Thread.sleep(2L);
            } catch (InterruptedException e) {
                Log.i(TAG, "ERR: Dead loop");
            }
        }
        if (this.mHandler == null) {
            return -1;
        }
        return startDecoder();
    }

    public void uninit() {
        Log.i(TAG, "Enter uninit");
        if (this.mUseOpenGl) {
            stopDecoder();
        } else if (this.mStarted) {
            this.mStarted = false;
            this.mIndexList.clear();
            this.mDecoder.stop();
            this.mDecoder.release();
            this.mDecoder = null;
        }
        this.mHandler.getLooper().quitSafely();
        this.mHandler = null;
        this.mIndexList = null;
        this.mMediaFormat = null;
        this.mNativeObject = 0L;
    }

    public void updateSurface(Surface surface, boolean z) {
        Log.i(TAG, "enter updateSurface " + surface + " usegl " + z);
        boolean z2 = this.mUseOpenGl;
        if (z2 != z) {
            Log.i(TAG, "egl not equal");
            if (stopDecoder(false) != 0) {
                Log.e(TAG, "resetDecoder failed in stop mDecoder");
                return;
            }
            this.mDecoderSurface = surface;
            this.mUseOpenGl = z;
            if (startDecoder() != 0) {
                Log.e(TAG, "resetDecoder failed in start mDecoder");
                return;
            }
            return;
        }
        if (z2) {
            Log.i(TAG, "egl equal");
            if (this.mDecoderSurface == surface) {
                return;
            }
            synchronized (this.mClientLock) {
                this.mDecoderSurface = surface;
                if (this.mStarted) {
                    this.mHandler.post(new Runnable() { // from class: com.huawei.videoengine.MediaCodecDecoder.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MediaCodecDecoder.this.mRenderClient != null) {
                                MediaCodecDecoder.this.mOffscreenSurface.makeCurrent();
                                MediaCodecDecoder.this.mRenderClient.destroy();
                                MediaCodecDecoder.this.mRenderClient = null;
                            }
                            if (MediaCodecDecoder.this.mDecoderSurface != null) {
                                MediaCodecDecoder mediaCodecDecoder = MediaCodecDecoder.this;
                                mediaCodecDecoder.mRenderClient = new RenderClient(mediaCodecDecoder.mDecoderSurface);
                                MediaCodecDecoder.this.mRenderClient.init(MediaCodecDecoder.this.mEglCore);
                            }
                        }
                    });
                    return;
                }
                return;
            }
        }
        Surface surface2 = this.mDecoderSurface;
        if (surface2 == surface) {
            return;
        }
        if (surface2 != null) {
            stopDecoder(false);
        }
        this.mDecoderSurface = surface;
        if (this.mDecoderSurface != null) {
            startDecoder();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAsyncCallback() {
        Log.i(TAG, "Enter addAsyncCallback.");
        this.mDecoder.setCallback(new MediaCodec.Callback() { // from class: com.huawei.videoengine.MediaCodecDecoder.3
            @Override // android.media.MediaCodec.Callback
            public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
                synchronized (MediaCodecDecoder.this.mListLock) {
                    MediaCodecDecoder.this.mIndexList.add(Integer.valueOf(i));
                }
            }

            @Override // android.media.MediaCodec.Callback
            public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
                boolean z;
                try {
                    long j = bufferInfo.presentationTimeUs / 1000;
                    long currentTimeMillis = System.currentTimeMillis();
                    long j2 = currentTimeMillis - j;
                    MediaCodecDecoder.access$708(MediaCodecDecoder.this);
                    MediaCodecDecoder.this.mInputOnlyCount = 0;
                    MediaCodecDecoder.this.mAvgDecTime = ((MediaCodecDecoder.this.mAvgDecTime * (MediaCodecDecoder.this.mOutFrameCount - 1)) / MediaCodecDecoder.this.mOutFrameCount) + (((float) j2) / MediaCodecDecoder.this.mOutFrameCount);
                    if (MediaCodecDecoder.this.mOutFrameCount == 1) {
                        MediaCodecDecoder.this.mMaxDecTime = j2;
                        MediaCodecDecoder.this.mMinDecTime = j2;
                    } else if (j2 > MediaCodecDecoder.this.mMaxDecTime) {
                        MediaCodecDecoder.this.mMaxDecTime = j2;
                    } else if (j2 < MediaCodecDecoder.this.mMinDecTime) {
                        MediaCodecDecoder.this.mMinDecTime = j2;
                    }
                    if (MediaCodecDecoder.this.mOutFrameCount % 60 == 1) {
                        Log.i(MediaCodecDecoder.TAG, "#TIMEDIF:" + j2 + ", avTs:" + String.format("%.1f", Float.valueOf(MediaCodecDecoder.this.mAvgDecTime)) + ", max:" + MediaCodecDecoder.this.mMaxDecTime + ",min:" + MediaCodecDecoder.this.mMinDecTime);
                    }
                    if (!MediaCodecDecoder.this.skipRenderList.isEmpty() && MediaCodecDecoder.this.skipRenderList.remove(Long.valueOf(bufferInfo.presentationTimeUs))) {
                        Log.i(MediaCodecDecoder.TAG, "#SKIP find ts:" + bufferInfo.presentationTimeUs);
                        z = true;
                    } else {
                        z = false;
                    }
                    if (MediaCodecDecoder.this.mCodecType == 0 && !z && currentTimeMillis - MediaCodecDecoder.this.mLastDecRelaseTime < MediaCodecDecoder.DEC_WAIT_TIME_MS) {
                        do {
                            Thread.sleep(3L);
                            currentTimeMillis = System.currentTimeMillis();
                        } while (currentTimeMillis - MediaCodecDecoder.this.mLastDecRelaseTime <= 25);
                    }
                    MediaCodecDecoder.this.mDecoder.releaseOutputBuffer(i, z ? false : true);
                    MediaCodecDecoder.this.mLastDecRelaseTime = currentTimeMillis;
                } catch (IllegalStateException e) {
                    Log.e(MediaCodecDecoder.TAG, "decode onOutputBufferAvailable IllegalStateException");
                    e.printStackTrace();
                    MediaCodecDecoder.this.resetDecoder(true);
                } catch (Exception e2) {
                    Log.e(MediaCodecDecoder.TAG, "decode onOutputBufferAvailable failed exception = " + e2.getMessage());
                    e2.printStackTrace();
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
                MediaCodecDecoder.this.mDecoderWidth = integer;
                MediaCodecDecoder.this.mDecoderHeight = integer2;
            }

            @Override // android.media.MediaCodec.Callback
            public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
                codecException.printStackTrace();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0094, code lost:
    
        java.lang.Thread.sleep(com.huawei.videoengine.MediaCodecDecoder.DEC_WAIT_TIME_MS);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0098, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0099, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0084, code lost:
    
        r2 = r16.mIndexList.remove().intValue();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int onFrame(byte[] bArr, int i, long j, int i2, int i3) {
        long j2;
        int i4;
        int intValue;
        if (!this.mStarted) {
            Log.e(TAG, "Not start yet");
            return 0;
        }
        if (i <= 0) {
            Log.e(TAG, "mDataLength=" + i);
            if (this.mNeedKeyFrame) {
                return -100;
            }
            this.mNeedKeyFrame = true;
            return -1;
        }
        if (i3 != 0) {
            Log.i(TAG, "#SKIP set true ts:" + j);
            this.skipRenderList.add(Long.valueOf(j));
        }
        if (this.mNeedKeyFrame) {
            if (i2 == 0) {
                Log.e(TAG, "onFrame Request i, but not");
                return -100;
            }
            this.mNeedKeyFrame = false;
        }
        int i5 = 0;
        while (true) {
            j2 = i5;
            if (j2 >= DEC_WAIT_COUNT) {
                i4 = INVALID_INDEX;
                break;
            }
            synchronized (this.mListLock) {
                if (this.mIndexList.size() != 0) {
                    break;
                }
            }
            i4 = intValue;
            break;
            i5++;
        }
        if (j2 >= DEC_WAIT_COUNT || i4 == INVALID_INDEX) {
            Log.e(TAG, "mIndexList is empty for:" + (j2 * DEC_WAIT_TIME_MS) + "ms");
            this.mNeedKeyFrame = true;
            return -1;
        }
        try {
            ByteBuffer inputBuffer = this.mDecoder.getInputBuffer(i4);
            inputBuffer.clear();
            inputBuffer.put(bArr, 0, i);
            this.mDecoder.queueInputBuffer(i4, 0, i, j, 0);
            this.mInputOnlyCount++;
            if (this.mInputOnlyCount <= 10) {
                return 0;
            }
            Log.e(TAG, "No output for long time");
            this.mInputOnlyCount = 0;
            this.mNeedKeyFrame = true;
            return -1;
        } catch (IllegalStateException e) {
            Log.e(TAG, "decode onFrame failed IllegalStateException");
            resetDecoder(true);
            return (i2 == 0 && this.mNeedKeyFrame) ? -100 : -1;
        } catch (Exception e2) {
            Log.e(TAG, "decode onFrame failed exception = " + e2.getMessage());
            e2.printStackTrace();
            resetDecoder();
            if (i2 == 0 && this.mNeedKeyFrame) {
                return -100;
            }
            this.mNeedKeyFrame = true;
            return -1;
        }
    }

    private int startDecoder() {
        Log.i(TAG, "startDecoder enter");
        this.mHandler.post(new Runnable() { // from class: com.huawei.videoengine.MediaCodecDecoder.4
            /* JADX WARN: Removed duplicated region for block: B:30:0x00c1 A[Catch: all -> 0x013c, TryCatch #7 {all -> 0x013c, blocks: (B:3:0x0001, B:16:0x0027, B:17:0x002d, B:21:0x0038, B:23:0x0040, B:24:0x0045, B:67:0x004d, B:28:0x00b1, B:30:0x00c1, B:33:0x00e4, B:34:0x0107, B:46:0x00e8, B:49:0x0104, B:26:0x007b, B:52:0x0083, B:55:0x0090, B:70:0x005a, B:84:0x013b, B:19:0x002e, B:20:0x0037), top: B:2:0x0001, inners: #0, #5, #6 }] */
            /* JADX WARN: Removed duplicated region for block: B:37:0x0121 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:46:0x00e8 A[Catch: all -> 0x013c, TryCatch #7 {all -> 0x013c, blocks: (B:3:0x0001, B:16:0x0027, B:17:0x002d, B:21:0x0038, B:23:0x0040, B:24:0x0045, B:67:0x004d, B:28:0x00b1, B:30:0x00c1, B:33:0x00e4, B:34:0x0107, B:46:0x00e8, B:49:0x0104, B:26:0x007b, B:52:0x0083, B:55:0x0090, B:70:0x005a, B:84:0x013b, B:19:0x002e, B:20:0x0037), top: B:2:0x0001, inners: #0, #5, #6 }] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                try {
                    if (MediaCodecDecoder.this.mStarted) {
                        synchronized (MediaCodecDecoder.this.mHandlerWaitSec) {
                            MediaCodecDecoder.this.mHandlerWaitSecNotified = true;
                            MediaCodecDecoder.this.mHandlerWaitSec.notifyAll();
                        }
                        return;
                    }
                    synchronized (MediaCodecDecoder.this.mListLock) {
                        MediaCodecDecoder.this.mIndexList.clear();
                    }
                    if (MediaCodecDecoder.this.mUseOpenGl) {
                        MediaCodecDecoder.this.eglInit();
                    }
                    if (MediaCodecDecoder.this.mCodecType == 0) {
                        try {
                            MediaCodecDecoder.this.mDecoder = MediaCodec.createDecoderByType("video/avc");
                            MediaCodecDecoder.this.addAsyncCallback();
                            int i = 2;
                            if (MediaCodecDecoder.this.mUseOpenGl) {
                                MediaCodec mediaCodec = MediaCodecDecoder.this.mDecoder;
                                MediaFormat mediaFormat = MediaCodecDecoder.this.mMediaFormat;
                                Surface surface = MediaCodecDecoder.this.mDecoderSurface;
                                if (!MediaCodecDecoder.this.mQuickOut) {
                                    i = 0;
                                }
                                mediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, i);
                            } else {
                                Log.i(MediaCodecDecoder.TAG, "Use opengl to process image");
                                MediaCodec mediaCodec2 = MediaCodecDecoder.this.mDecoder;
                                MediaFormat mediaFormat2 = MediaCodecDecoder.this.mMediaFormat;
                                Surface surface2 = MediaCodecDecoder.this.mGlSurface;
                                if (!MediaCodecDecoder.this.mQuickOut) {
                                    i = 0;
                                }
                                mediaCodec2.configure(mediaFormat2, surface2, (MediaCrypto) null, i);
                            }
                            MediaCodecDecoder.this.mDecoder.start();
                            MediaCodecDecoder.this.mStarted = true;
                            MediaCodecDecoder.this.mNeedKeyFrame = true;
                            synchronized (MediaCodecDecoder.this.mHandlerWaitSec) {
                                MediaCodecDecoder.this.mHandlerWaitSecNotified = true;
                                MediaCodecDecoder.this.mHandlerWaitSec.notifyAll();
                            }
                            return;
                        } catch (IOException e) {
                            e.printStackTrace();
                            synchronized (MediaCodecDecoder.this.mHandlerWaitSec) {
                                MediaCodecDecoder.this.mHandlerWaitSecNotified = true;
                                MediaCodecDecoder.this.mHandlerWaitSec.notifyAll();
                                return;
                            }
                        }
                    }
                    if (MediaCodecDecoder.this.mCodecType == 1) {
                        try {
                            MediaCodecDecoder.this.mDecoder = MediaCodec.createDecoderByType("video/hevc");
                        } catch (IOException e2) {
                            e2.printStackTrace();
                            synchronized (MediaCodecDecoder.this.mHandlerWaitSec) {
                                MediaCodecDecoder.this.mHandlerWaitSecNotified = true;
                                MediaCodecDecoder.this.mHandlerWaitSec.notifyAll();
                                return;
                            }
                        }
                    }
                    MediaCodecDecoder.this.addAsyncCallback();
                    int i2 = 2;
                    if (MediaCodecDecoder.this.mUseOpenGl) {
                    }
                    MediaCodecDecoder.this.mDecoder.start();
                    MediaCodecDecoder.this.mStarted = true;
                    MediaCodecDecoder.this.mNeedKeyFrame = true;
                    synchronized (MediaCodecDecoder.this.mHandlerWaitSec) {
                    }
                } catch (Throwable th) {
                    synchronized (MediaCodecDecoder.this.mHandlerWaitSec) {
                        MediaCodecDecoder.this.mHandlerWaitSecNotified = true;
                        MediaCodecDecoder.this.mHandlerWaitSec.notifyAll();
                        throw th;
                    }
                }
            }
        });
        try {
            synchronized (this.mHandlerWaitSec) {
                while (!this.mHandlerWaitSecNotified.booleanValue()) {
                    this.mHandlerWaitSec.wait(1000L);
                    this.mHandlerWaitSecNotified = true;
                }
                this.mHandlerWaitSecNotified = false;
            }
        } catch (InterruptedException e) {
            Log.e(TAG, "mHandlerWait wait failed!");
        }
        if (this.mStarted) {
            return 0;
        }
        return -1;
    }

    private int stopDecoder() {
        return stopDecoder(false);
    }

    private int stopDecoder(boolean z) {
        Log.i(TAG, "stopDecoder enter");
        this.mAbnormalState = z;
        this.mHandler.post(new Runnable() { // from class: com.huawei.videoengine.MediaCodecDecoder.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!MediaCodecDecoder.this.mStarted) {
                        Log.i(MediaCodecDecoder.TAG, "Decoder is not started");
                        synchronized (MediaCodecDecoder.this.mHandlerWait) {
                            MediaCodecDecoder.this.mHandlerWaitNotified = true;
                            MediaCodecDecoder.this.mHandlerWait.notifyAll();
                        }
                        return;
                    }
                    MediaCodecDecoder.this.mStarted = false;
                    if (!MediaCodecDecoder.this.mAbnormalState) {
                        MediaCodecDecoder.this.mDecoder.stop();
                    }
                    Log.i(MediaCodecDecoder.TAG, "stopDecoder after stop");
                    MediaCodecDecoder.this.mDecoder.release();
                    MediaCodecDecoder.this.mDecoder = null;
                    if (MediaCodecDecoder.this.mUseOpenGl) {
                        MediaCodecDecoder.this.eglUninit();
                    }
                    synchronized (MediaCodecDecoder.this.mHandlerWait) {
                        MediaCodecDecoder.this.mHandlerWaitNotified = true;
                        MediaCodecDecoder.this.mHandlerWait.notifyAll();
                    }
                } catch (Throwable th) {
                    synchronized (MediaCodecDecoder.this.mHandlerWait) {
                        MediaCodecDecoder.this.mHandlerWaitNotified = true;
                        MediaCodecDecoder.this.mHandlerWait.notifyAll();
                        throw th;
                    }
                }
            }
        });
        try {
            synchronized (this.mHandlerWait) {
                while (!this.mHandlerWaitNotified.booleanValue()) {
                    this.mHandlerWait.wait(1000L);
                    this.mHandlerWaitNotified = true;
                }
                this.mHandlerWaitNotified = false;
            }
        } catch (InterruptedException e) {
            Log.e(TAG, "mHandlerWait wait failed!");
        }
        if (this.mDecoder == null) {
            return 0;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int resetDecoder() {
        return resetDecoder(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int resetDecoder(boolean z) {
        Log.i(TAG, "enter handleProcessFunc_ResetDecoder");
        if (this.mLastRestTime != 0 && System.currentTimeMillis() - this.mLastRestTime < 500) {
            Log.e(TAG, "mLastRestTime is too close lastTime = " + this.mLastRestTime + ", now = " + System.currentTimeMillis());
            return 0;
        }
        this.mLastRestTime = System.currentTimeMillis();
        int stopDecoder = stopDecoder(z);
        if (stopDecoder != 0) {
            Log.e(TAG, "resetDecoder failed in stop mDecoder");
            return stopDecoder;
        }
        int startDecoder = startDecoder();
        if (startDecoder == 0) {
            return 0;
        }
        Log.e(TAG, "resetDecoder failed in start mDecoder");
        return startDecoder;
    }

    public int setDisplayMode(int i) {
        Log.i(TAG, "setDisplayMode mode = " + i);
        this.mAspectMode = i;
        return 0;
    }

    public int setRenderScaleRate(float f, float f2, float f3) {
        Log.i(TAG, "setRenderScaleRate rate = " + f + ", moveX = " + f2 + ", moveY = " + f3);
        this.mScaleRatio = f;
        this.mMoveWidth = f2;
        this.mMoveHeight = f3;
        return 0;
    }

    public int setDisplayOrientation(int i) {
        Log.i(TAG, "setDisplayOrientation orientation = " + i);
        this.mOrientation = i;
        return 0;
    }

    public int setDisplayMirror(int i, int i2) {
        Log.i(TAG, "setDisplayMirror mirrorX = " + i + ", mirrorY = " + i2);
        this.mMirrorX = i;
        this.mMirrorY = i2;
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eglInit() {
        Log.i(TAG, "Enter eglInit");
        this.mEglCore = new EglCore(null, 1);
        this.mOffscreenSurface = new OffscreenSurface(this.mEglCore, 180, 180);
        this.mOffscreenSurface.makeCurrent();
        Surface surface = this.mDecoderSurface;
        if (surface != null) {
            this.mRenderClient = new RenderClient(surface);
            this.mRenderClient.init(this.mEglCore);
        }
        this.mFullFrameBlit = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_EXT));
        this.mTextureId = this.mFullFrameBlit.createTextureObject();
        this.mTexture = new SurfaceTexture(this.mTextureId);
        this.mTexture.setDefaultBufferSize(1920, 1080);
        this.mTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.huawei.videoengine.MediaCodecDecoder.6
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                try {
                    System.currentTimeMillis();
                    surfaceTexture.updateTexImage();
                    synchronized (MediaCodecDecoder.this.mClientLock) {
                        if (MediaCodecDecoder.this.mRenderClient != null) {
                            MediaCodecDecoder.this.mRenderClient.processFrame();
                        }
                    }
                } catch (Exception e) {
                    Log.e(MediaCodecDecoder.TAG, "onFrameAvailable : failed message =" + e.getMessage());
                }
            }
        });
        this.mGlSurface = new Surface(this.mTexture);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eglUninit() {
        Log.i(TAG, "Enter eglUnit");
        Surface surface = this.mGlSurface;
        if (surface != null) {
            surface.release();
            this.mGlSurface = null;
        }
        SurfaceTexture surfaceTexture = this.mTexture;
        if (surfaceTexture != null) {
            surfaceTexture.release();
            this.mTexture = null;
        }
        int i = this.mTextureId;
        if (i > 0) {
            this.mFullFrameBlit.deleteTextureObject(i);
            this.mTextureId = 0;
        }
        FullFrameRect fullFrameRect = this.mFullFrameBlit;
        if (fullFrameRect != null) {
            fullFrameRect.release(true);
            this.mFullFrameBlit = null;
        }
        EglCore eglCore = this.mEglCore;
        if (eglCore != null) {
            eglCore.makeNothingCurrent();
        }
        RenderClient renderClient = this.mRenderClient;
        if (renderClient != null) {
            renderClient.destroy();
            this.mRenderClient = null;
        }
        OffscreenSurface offscreenSurface = this.mOffscreenSurface;
        if (offscreenSurface != null) {
            offscreenSurface.release();
            this.mOffscreenSurface = null;
        }
        EglCore eglCore2 = this.mEglCore;
        if (eglCore2 != null) {
            eglCore2.release();
            this.mEglCore = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public class RenderClient {
        private Surface mSurface;
        private WindowSurface mWindowSurface;
        private float[] mDisplayProjectionMatrix = new float[16];
        private float[] pM = new float[16];
        private float[] mvM = new float[16];
        private float[] tmpMatrix = new float[16];
        private float[] moveMatrix = new float[16];

        public RenderClient(Surface surface) {
            this.mSurface = surface;
        }

        public void init(EglCore eglCore) {
            this.mWindowSurface = new WindowSurface(eglCore, this.mSurface, false);
            this.mWindowSurface.makeCurrent();
        }

        public void destroy() {
            this.mWindowSurface.release();
        }

        protected void processFrame() {
            try {
                if (this.mWindowSurface != null) {
                    int width = this.mWindowSurface.getWidth();
                    int height = this.mWindowSurface.getHeight();
                    getMVP(this.mDisplayProjectionMatrix, width, height);
                    GLES20.glViewport(0, 0, width, height);
                    MediaCodecDecoder.this.mFullFrameBlit.drawFrame(MediaCodecDecoder.this.mTextureId, this.mDisplayProjectionMatrix, GlUtil.getIDENTITY_MATRIX());
                    this.mWindowSurface.swapBuffers();
                    GlUtil.checkGlError("draw done");
                }
            } catch (Exception e) {
                Log.e(MediaCodecDecoder.TAG, "onFrameAvailable : failed message =" + e.getMessage());
            }
        }

        private void getMVP(float[] fArr, int i, int i2) {
            float f;
            float f2 = i;
            float f3 = i2;
            Matrix.orthoM(this.pM, 0, 0.0f, f2, 0.0f, f3, -1.0f, 1.0f);
            Matrix.setIdentityM(this.mvM, 0);
            Matrix.translateM(this.mvM, 0, f2 / 2.0f, f3 / 2.0f, 0.0f);
            Matrix.rotateM(this.mvM, 0, 180.0f, 1.0f, 0.0f, 0.0f);
            if (MediaCodecDecoder.this.mMirrorY == 1) {
                Matrix.rotateM(this.mvM, 0, 180.0f, 0.0f, 1.0f, 0.0f);
            }
            if (MediaCodecDecoder.this.mMirrorX == 1) {
                Matrix.rotateM(this.mvM, 0, 180.0f, 1.0f, 0.0f, 0.0f);
            }
            Matrix.rotateM(this.mvM, 0, MediaCodecDecoder.this.mOrientation, 0.0f, 0.0f, 1.0f);
            if (MediaCodecDecoder.this.mDecoderWidth != 0 && MediaCodecDecoder.this.mDecoderHeight != 0) {
                int i3 = MediaCodecDecoder.this.mDecoderWidth;
                int i4 = MediaCodecDecoder.this.mDecoderHeight;
                if (MediaCodecDecoder.this.mOrientation == 90 || MediaCodecDecoder.this.mOrientation == 270) {
                    f = f3;
                    f3 = f2;
                } else {
                    f = f2;
                }
                float f4 = i3;
                float f5 = i4;
                float f6 = (f3 * f4) / f5;
                float f7 = (f5 * f) / f4;
                if (MediaCodecDecoder.this.mAspectMode == 2) {
                    if (f6 - f2 > 0.0f) {
                        Matrix.scaleM(this.mvM, 0, (f6 / 2.0f) * MediaCodecDecoder.this.mScaleRatio, (f3 / 2.0f) * MediaCodecDecoder.this.mScaleRatio, 1.0f);
                    } else {
                        Matrix.scaleM(this.mvM, 0, (f / 2.0f) * MediaCodecDecoder.this.mScaleRatio, (f7 / 2.0f) * MediaCodecDecoder.this.mScaleRatio, 1.0f);
                    }
                } else if (MediaCodecDecoder.this.mAspectMode != 1) {
                    Matrix.scaleM(this.mvM, 0, (f / 2.0f) * MediaCodecDecoder.this.mScaleRatio, (f3 / 2.0f) * MediaCodecDecoder.this.mScaleRatio, 1.0f);
                } else if (f6 - f2 > 0.0f) {
                    Matrix.scaleM(this.mvM, 0, (f / 2.0f) * MediaCodecDecoder.this.mScaleRatio, (f7 / 2.0f) * MediaCodecDecoder.this.mScaleRatio, 1.0f);
                } else {
                    Matrix.scaleM(this.mvM, 0, (f6 / 2.0f) * MediaCodecDecoder.this.mScaleRatio, (f3 / 2.0f) * MediaCodecDecoder.this.mScaleRatio, 1.0f);
                }
                Matrix.multiplyMM(this.tmpMatrix, 0, this.pM, 0, this.mvM, 0);
                Matrix.setIdentityM(this.moveMatrix, 0);
                Matrix.translateM(this.moveMatrix, 0, MediaCodecDecoder.this.mMoveWidth, MediaCodecDecoder.this.mMoveHeight, 0.0f);
                Matrix.multiplyMM(fArr, 0, this.tmpMatrix, 0, this.moveMatrix, 0);
                return;
            }
            Log.w(MediaCodecDecoder.TAG, "getMVPP mDecoderWidth or mDecoderHeight is zero");
        }
    }
}
