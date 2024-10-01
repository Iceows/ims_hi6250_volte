package com.huawei.videoengine;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import com.huawei.ims.HwImsConfigImpl;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.concurrent.locks.ReentrantLock;
import vendor.huawei.hardware.radio.ims.V1_0.LastCallFailCause;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class KirinMediaCodecEncoder {
    private static final String TAG = "hme_engine_KMC";
    private static final String VENDOR_KEY_CAPTURESTATUS = "vendor.hisi.CaptureStatus";
    private static final String VENDOR_KEY_CROPBOTTOM = "vendor.hisi.CropBottom";
    private static final String VENDOR_KEY_CROPLFT = "vendor.hisi.CropLeft";
    private static final String VENDOR_KEY_CROPRIGHT = "vendor.hisi.CropRight";
    private static final String VENDOR_KEY_CROPTOP = "vendor.hisi.CropTop";
    private static final String VENDOR_KEY_ENABLECROPPING = "vendor.hisi.EnableCropping";
    private static final String VENDOR_KEY_ENABLESCALING = "vendor.hisi.EnableScaling";
    private static final String VENDOR_KEY_FPS = "vendor.hisi.FrameRate";
    private static final String VENDOR_KEY_LTRPARAMS = "vendor.hisi.LTRParams";
    private static final String VENDOR_KEY_MAXQP = "vendor.hisi.MaxQP";
    private static final String VENDOR_KEY_MINQP = "vendor.hisi.MinQP";
    private static final String VENDOR_KEY_NONREFFRAMENUM = "vendor.hisi.NoneRefFrameNum";
    private static final String VENDOR_KEY_ROI_BREGIONEN0_NUMBER = "vendor.hisi.EnableROIRegionenNumber";
    private static final String VENDOR_KEY_ROI_PARAMS0 = "vendor.hisi.ROIParams0";
    private static final String VENDOR_KEY_ROI_PARAMS1 = "vendor.hisi.ROIParams1";
    private static final String VENDOR_KEY_ROI_PARAMS2 = "vendor.hisi.ROIParams2";
    private static final String VENDOR_KEY_ROI_PARAMS3 = "vendor.hisi.ROIParams3";
    private static final String VENDOR_KEY_ROI_PARAMS4 = "vendor.hisi.ROIParams4";
    private static final String VENDOR_KEY_ROI_PARAMS5 = "vendor.hisi.ROIParams5";
    private static final String VENDOR_KEY_ROI_PARAMS6 = "vendor.hisi.ROIParams6";
    private static final String VENDOR_KEY_ROI_PARAMS7 = "vendor.hisi.ROIParams7";
    private static final String VENDOR_KEY_ROI_TIMESTAMP = "vendor.hisi.ROI-timestamp";
    private static final String VENDOR_KEY_SCALEHEIGHT = "vendor.hisi.ScaledHeight";
    private static final String VENDOR_KEY_SCALEWIDTH = "vendor.hisi.ScaledWidth";
    private static final String VENDOR_KEY_SETMAXLTRFFRAMENUM = "vendor.hisi.SetLTRFrameNum";
    private static final String VENDOR_KEY_VTMODE = "vendor.hisi.SceneMode";
    private int dataLength;
    private int encKeyFrame;
    private MediaCodec encoder;
    private ReentrantLock encoderLock;
    private LinkedList<Integer> indexList;
    private ReentrantLock listLock;
    private long lnativeObject;
    private int mBitrate;
    private int mChannelID;
    private int mCodecPNum;
    private Handler mEncCBHandler;
    private HandlerThread mEncCallBackThread;
    private FpsStatistic mEncOutFps;
    private EncType mEncType;
    private int mFps;
    private int mHeightIn;
    private int mHeightOut;
    private int mKeyFrameInterval;
    private long mLastTimeForKeyFrame;
    private Surface mMCSurface;
    private MCType mMCType;
    private int mProfile;
    private ByteBuffer mSPSPPS;
    private VideoCapture2Android mVc2a;
    private int mWidthIn;
    private int mWidthOut;
    private MediaFormat mediaFormat;
    private boolean menableROI;
    private Object objSPS;
    private long renderTime;
    private boolean started;
    private ByteBuffer streamBuffer;
    private ByteBuffer yuvBuffer;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum EncType {
        eH264,
        eH265
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum MCType {
        eData,
        eSurface
    }

    public native void nSetReinitflag(long j);

    public native void nSetSPS(long j, ByteBuffer byteBuffer, int i);

    public native void procEncodedStream(long j, int i, int i2, int i3, boolean z);

    public KirinMediaCodecEncoder() {
        this.encoder = null;
        this.mediaFormat = null;
        this.yuvBuffer = null;
        this.streamBuffer = null;
        this.mSPSPPS = null;
        this.objSPS = new Object();
        this.started = false;
        this.lnativeObject = 0L;
        this.mLastTimeForKeyFrame = 0L;
        this.indexList = null;
        this.listLock = new ReentrantLock();
        this.encoderLock = new ReentrantLock();
        this.mEncType = EncType.eH265;
        this.mMCType = MCType.eSurface;
        this.mEncCBHandler = null;
        this.mEncCallBackThread = null;
        this.mMCSurface = null;
        this.mVc2a = null;
        this.mChannelID = -1;
        this.mWidthIn = 0;
        this.mHeightIn = 0;
        this.mWidthOut = 0;
        this.mHeightOut = 0;
        this.mEncOutFps = null;
        this.menableROI = false;
        Log.i(TAG, "Enter KirinMediaCodecEncoder.");
    }

    public KirinMediaCodecEncoder(int i) {
        this.encoder = null;
        this.mediaFormat = null;
        this.yuvBuffer = null;
        this.streamBuffer = null;
        this.mSPSPPS = null;
        this.objSPS = new Object();
        this.started = false;
        this.lnativeObject = 0L;
        this.mLastTimeForKeyFrame = 0L;
        this.indexList = null;
        this.listLock = new ReentrantLock();
        this.encoderLock = new ReentrantLock();
        this.mEncType = EncType.eH265;
        this.mMCType = MCType.eSurface;
        this.mEncCBHandler = null;
        this.mEncCallBackThread = null;
        this.mMCSurface = null;
        this.mVc2a = null;
        this.mChannelID = -1;
        this.mWidthIn = 0;
        this.mHeightIn = 0;
        this.mWidthOut = 0;
        this.mHeightOut = 0;
        this.mEncOutFps = null;
        this.menableROI = false;
        Log.i(TAG, "Enter KirinMediaCodecEncoder. mcType:" + i);
        if (i == 0) {
            this.mMCType = MCType.eData;
        } else {
            this.mMCType = MCType.eSurface;
        }
        this.mEncOutFps = new FpsStatistic("Enc Out", 33);
    }

    public int init(long j, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        Log.i(TAG, "Enter init. width " + i2 + "  height " + i3 + " bitrate " + i4 + " fps " + i5 + " profile " + i6 + " pNum " + i7 + " enableROI " + z);
        this.encoderLock.lock();
        try {
            if (this.started) {
                return 0;
            }
            if (createEncCBThread() != 0) {
                return -1;
            }
            if (initBuffer() != 0) {
                return -1;
            }
            if (saveParams(j, i8, i, i2, i3, i4, i5, i6, i7, z) != 0) {
                return -1;
            }
            if (createCodec() != 0) {
                return -1;
            }
            if (this.mVc2a != null) {
                this.mVc2a.updateEncSf(this.mMCSurface, this.mChannelID);
            }
            return 0;
        } finally {
            this.encoderLock.unlock();
        }
    }

    public int reinit(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        Log.i(TAG, "Enter reinit. width " + i2 + "  height " + i3 + " bitrate " + i4 + " fps " + i5 + " profile " + i6 + " pNum " + i7 + " enableROI " + z);
        if (saveParams(i, i2, i3, i4, i5, i6, i7, z) != 0) {
            return -1;
        }
        return reinit();
    }

    public void uninit() {
        Log.i(TAG, "Enter uninit");
        if (this.mVc2a != null) {
            this.mVc2a.updateEncSf(null, this.mChannelID);
        }
        if (this.mEncCallBackThread != null) {
            this.mEncCallBackThread.quitSafely();
            try {
                this.mEncCallBackThread.join();
                this.mEncCallBackThread = null;
                this.mEncCBHandler = null;
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        releaseEncoder();
    }

    public void addAsyncCallback() {
        Log.i(TAG, "Enter addAsyncCallback.");
        this.encoder.setCallback(new MediaCodec.Callback() { // from class: com.huawei.videoengine.KirinMediaCodecEncoder.1
            {
                KirinMediaCodecEncoder.this = this;
            }

            @Override // android.media.MediaCodec.Callback
            public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
                KirinMediaCodecEncoder.this.listLock.lock();
                try {
                    if (KirinMediaCodecEncoder.this.encoder != null) {
                        KirinMediaCodecEncoder.this.indexList.add(Integer.valueOf(i));
                    }
                } finally {
                    KirinMediaCodecEncoder.this.listLock.unlock();
                }
            }

            @Override // android.media.MediaCodec.Callback
            public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
                KirinMediaCodecEncoder.this.encoderLock.lock();
                if (KirinMediaCodecEncoder.this.encoder == null) {
                    KirinMediaCodecEncoder.this.encoderLock.unlock();
                    return;
                }
                try {
                    ByteBuffer outputBuffer = KirinMediaCodecEncoder.this.encoder.getOutputBuffer(i);
                    if (bufferInfo.flags == 2) {
                        KirinMediaCodecEncoder.this.nSetSPS(KirinMediaCodecEncoder.this.lnativeObject, outputBuffer, bufferInfo.size);
                        KirinMediaCodecEncoder.this.streamBuffer.rewind();
                        KirinMediaCodecEncoder.this.streamBuffer.put(outputBuffer);
                        KirinMediaCodecEncoder.this.encoder.releaseOutputBuffer(i, false);
                        KirinMediaCodecEncoder.this.encoderLock.unlock();
                        return;
                    }
                    boolean z = bufferInfo.flags == 1;
                    if (KirinMediaCodecEncoder.this.mEncOutFps != null) {
                        KirinMediaCodecEncoder.this.mEncOutFps.add();
                    }
                    MediaFormat outputFormat = KirinMediaCodecEncoder.this.encoder.getOutputFormat(i);
                    int integer = outputFormat.getInteger("width");
                    int integer2 = outputFormat.getInteger("height");
                    KirinMediaCodecEncoder.this.streamBuffer.put(outputBuffer);
                    KirinMediaCodecEncoder.this.encoder.releaseOutputBuffer(i, false);
                    KirinMediaCodecEncoder.this.encoderLock.unlock();
                    KirinMediaCodecEncoder.this.procEncodedStream(KirinMediaCodecEncoder.this.lnativeObject, integer, integer2, KirinMediaCodecEncoder.this.streamBuffer.position(), z);
                    KirinMediaCodecEncoder.this.streamBuffer.rewind();
                    long currentTimeMillis = System.currentTimeMillis();
                    if (currentTimeMillis - KirinMediaCodecEncoder.this.mLastTimeForKeyFrame > KirinMediaCodecEncoder.this.mKeyFrameInterval * 1000) {
                        if (KirinMediaCodecEncoder.this.mLastTimeForKeyFrame == 0) {
                            KirinMediaCodecEncoder.this.mLastTimeForKeyFrame = System.currentTimeMillis();
                            return;
                        }
                        KirinMediaCodecEncoder.this.mLastTimeForKeyFrame = currentTimeMillis;
                        KirinMediaCodecEncoder.this.requestIDRFrame();
                    }
                } catch (Exception e) {
                    Log.e(KirinMediaCodecEncoder.TAG, "getOutputBuffer err");
                    e.printStackTrace();
                    KirinMediaCodecEncoder.this.encoderLock.unlock();
                }
            }

            @Override // android.media.MediaCodec.Callback
            public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
            }

            @Override // android.media.MediaCodec.Callback
            public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
                codecException.printStackTrace();
            }
        }, this.mEncCBHandler);
    }

    void setRate(int i, int i2) {
        this.encoderLock.lock();
        try {
            if (this.encoder != null && this.started) {
                Bundle bundle = new Bundle();
                bundle.putInt("video-bitrate", i * LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE);
                bundle.putInt(VENDOR_KEY_FPS, i2);
                this.encoder.setParameters(bundle);
            }
        } finally {
            this.encoderLock.unlock();
        }
    }

    public void setDynamicIpPMode(int i) {
        this.encoderLock.lock();
        try {
            if (this.encoder != null && this.started) {
                Bundle bundle = new Bundle();
                Log.i(TAG, "lxm_test,setDynamicIpPMode: " + i);
                bundle.putInt(VENDOR_KEY_NONREFFRAMENUM, i);
                this.encoder.setParameters(bundle);
            }
        } finally {
            this.encoderLock.unlock();
        }
    }

    public void setLTRFFrameNum(int i) {
        this.encoderLock.lock();
        try {
            if (this.encoder != null && this.started) {
                Bundle bundle = new Bundle();
                Log.i(TAG, "lxm_test,setLTRFFrameNum: " + i);
                bundle.putInt(VENDOR_KEY_SETMAXLTRFFRAMENUM, i);
                this.encoder.setParameters(bundle);
            }
        } finally {
            this.encoderLock.unlock();
        }
    }

    public void markoruseLTRFrame(boolean z, boolean z2, int i) {
        this.encoderLock.lock();
        try {
            if (this.encoder != null && this.started) {
                int i2 = 1;
                int i3 = z ? 1 : 0;
                if (!z2) {
                    i = 0;
                    i2 = 0;
                }
                Bundle bundle = new Bundle();
                bundle.putInt(VENDOR_KEY_LTRPARAMS, (i3 * 16777216) + (i2 * 65536) + i);
                this.encoder.setParameters(bundle);
            }
        } finally {
            this.encoderLock.unlock();
        }
    }

    public void setSpecEvent(int i) {
        this.encoderLock.lock();
        try {
            if (this.encoder != null && this.started) {
                Bundle bundle = new Bundle();
                Log.i(TAG, "lxm_test,setSpecEvent: " + i);
                bundle.putInt(VENDOR_KEY_CAPTURESTATUS, i);
                this.encoder.setParameters(bundle);
            }
        } finally {
            this.encoderLock.unlock();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void setRoiCoordinate(int i, int[] iArr, long j) {
        int i2 = i;
        if (!this.menableROI) {
            return;
        }
        this.encoderLock.lock();
        try {
            if (this.encoder != null && this.started && i2 != 0) {
                Bundle bundle = new Bundle();
                if (i2 > 8) {
                    i2 = 8;
                }
                bundle.putInt(VENDOR_KEY_ROI_BREGIONEN0_NUMBER, i2);
                switch (i2) {
                    case 1:
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS0, ((long) (iArr[3] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[2] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[1] * Math.pow(2.0d, 16.0d))) + iArr[0]);
                        break;
                    case 2:
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS1, ((long) (iArr[7] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[6] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[5] * Math.pow(2.0d, 16.0d))) + iArr[4]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS0, ((long) (iArr[3] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[2] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[1] * Math.pow(2.0d, 16.0d))) + iArr[0]);
                        break;
                    case 3:
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS2, ((long) (iArr[11] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[10] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[9] * Math.pow(2.0d, 16.0d))) + iArr[8]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS1, ((long) (iArr[7] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[6] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[5] * Math.pow(2.0d, 16.0d))) + iArr[4]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS0, ((long) (iArr[3] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[2] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[1] * Math.pow(2.0d, 16.0d))) + iArr[0]);
                        break;
                    case 4:
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS3, ((long) (iArr[15] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[14] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[13] * Math.pow(2.0d, 16.0d))) + iArr[12]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS2, ((long) (iArr[11] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[10] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[9] * Math.pow(2.0d, 16.0d))) + iArr[8]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS1, ((long) (iArr[7] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[6] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[5] * Math.pow(2.0d, 16.0d))) + iArr[4]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS0, ((long) (iArr[3] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[2] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[1] * Math.pow(2.0d, 16.0d))) + iArr[0]);
                        break;
                    case 5:
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS4, ((long) (iArr[19] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[18] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[17] * Math.pow(2.0d, 16.0d))) + iArr[16]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS3, ((long) (iArr[15] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[14] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[13] * Math.pow(2.0d, 16.0d))) + iArr[12]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS2, ((long) (iArr[11] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[10] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[9] * Math.pow(2.0d, 16.0d))) + iArr[8]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS1, ((long) (iArr[7] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[6] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[5] * Math.pow(2.0d, 16.0d))) + iArr[4]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS0, ((long) (iArr[3] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[2] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[1] * Math.pow(2.0d, 16.0d))) + iArr[0]);
                        break;
                    case 6:
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS5, ((long) (iArr[23] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[22] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[21] * Math.pow(2.0d, 16.0d))) + iArr[20]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS4, ((long) (iArr[19] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[18] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[17] * Math.pow(2.0d, 16.0d))) + iArr[16]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS3, ((long) (iArr[15] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[14] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[13] * Math.pow(2.0d, 16.0d))) + iArr[12]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS2, ((long) (iArr[11] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[10] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[9] * Math.pow(2.0d, 16.0d))) + iArr[8]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS1, ((long) (iArr[7] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[6] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[5] * Math.pow(2.0d, 16.0d))) + iArr[4]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS0, ((long) (iArr[3] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[2] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[1] * Math.pow(2.0d, 16.0d))) + iArr[0]);
                        break;
                    case 7:
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS6, ((long) (iArr[27] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[26] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[25] * Math.pow(2.0d, 16.0d))) + iArr[24]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS5, ((long) (iArr[23] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[22] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[21] * Math.pow(2.0d, 16.0d))) + iArr[20]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS4, ((long) (iArr[19] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[18] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[17] * Math.pow(2.0d, 16.0d))) + iArr[16]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS3, ((long) (iArr[15] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[14] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[13] * Math.pow(2.0d, 16.0d))) + iArr[12]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS2, ((long) (iArr[11] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[10] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[9] * Math.pow(2.0d, 16.0d))) + iArr[8]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS1, ((long) (iArr[7] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[6] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[5] * Math.pow(2.0d, 16.0d))) + iArr[4]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS0, ((long) (iArr[3] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[2] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[1] * Math.pow(2.0d, 16.0d))) + iArr[0]);
                        break;
                    case 8:
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS7, ((long) (iArr[31] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[30] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[29] * Math.pow(2.0d, 16.0d))) + iArr[28]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS6, ((long) (iArr[27] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[26] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[25] * Math.pow(2.0d, 16.0d))) + iArr[24]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS5, ((long) (iArr[23] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[22] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[21] * Math.pow(2.0d, 16.0d))) + iArr[20]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS4, ((long) (iArr[19] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[18] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[17] * Math.pow(2.0d, 16.0d))) + iArr[16]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS3, ((long) (iArr[15] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[14] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[13] * Math.pow(2.0d, 16.0d))) + iArr[12]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS2, ((long) (iArr[11] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[10] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[9] * Math.pow(2.0d, 16.0d))) + iArr[8]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS1, ((long) (iArr[7] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[6] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[5] * Math.pow(2.0d, 16.0d))) + iArr[4]);
                        bundle.putLong(VENDOR_KEY_ROI_PARAMS0, ((long) (iArr[3] * Math.pow(2.0d, 48.0d))) + ((long) (iArr[2] * Math.pow(2.0d, 32.0d))) + ((long) (iArr[1] * Math.pow(2.0d, 16.0d))) + iArr[0]);
                        break;
                }
                bundle.putLong(VENDOR_KEY_ROI_TIMESTAMP, j);
                this.encoder.setParameters(bundle);
            }
        } finally {
            this.encoderLock.unlock();
        }
    }

    public void setFrameInfo(int i, long j, int i2) {
        this.dataLength = i;
        this.renderTime = j;
        this.encKeyFrame = i2;
    }

    public int requestIDRFrame() {
        this.encoderLock.lock();
        try {
            if (this.encoder != null && this.started) {
                Bundle bundle = new Bundle();
                bundle.putInt("request-sync", 0);
                this.encoder.setParameters(bundle);
                return 0;
            }
            return -1;
        } finally {
            this.encoderLock.unlock();
        }
    }

    public int onFrame() {
        return 0;
    }

    public int setCapSource(VideoCapture2Android videoCapture2Android) {
        Log.i(TAG, "setCapSource vc2a:" + videoCapture2Android);
        if (this.mVc2a != null) {
            this.mVc2a.updateEncSf(null, this.mChannelID);
        }
        this.mVc2a = videoCapture2Android;
        if (videoCapture2Android == null) {
            this.mWidthIn = 0;
            this.mHeightIn = 0;
            return 0;
        }
        int widthAfterRendering = videoCapture2Android.getWidthAfterRendering();
        int heighAftertRendering = videoCapture2Android.getHeighAftertRendering();
        if (widthAfterRendering != this.mWidthIn && widthAfterRendering != this.mHeightIn) {
            this.mWidthIn = widthAfterRendering;
            this.mHeightIn = heighAftertRendering;
            if (this.encoder != null) {
                reinit();
                nSetReinitflag(this.lnativeObject);
            }
        } else if (this.mMCSurface != null) {
            videoCapture2Android.updateEncSf(this.mMCSurface, this.mChannelID);
        } else {
            Log.e(TAG, "codec has not init, but connect");
        }
        return 0;
    }

    private void updateEncoderSize(int i, int i2) {
        if (i < i2) {
            this.mWidthOut = i;
            this.mHeightOut = i2;
            return;
        }
        this.mWidthOut = i2;
        this.mHeightOut = i;
    }

    public int setResolutionOut(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (this.mWidthOut == 0) {
            this.mWidthOut = i;
            this.mHeightOut = i2;
            return 0;
        } else if (this.mWidthOut == i && this.mHeightOut == i2) {
            return 0;
        } else {
            updateEncoderSize(i, i2);
            int i9 = this.mWidthOut;
            int i10 = this.mHeightOut;
            int i11 = (int) ((this.mHeightIn / this.mHeightOut) * this.mWidthOut);
            int i12 = (this.mWidthIn - i11) / 2;
            if (this.mHeightIn > 0 && this.mWidthIn > 0) {
                if (i12 >= 0) {
                    if (i12 % 2 != 0) {
                        i5 = i12 + 1;
                    } else {
                        i5 = i12;
                    }
                    i6 = this.mWidthIn - i5;
                    if (i6 % 2 == 0) {
                        i6--;
                    }
                    i7 = this.mHeightIn % 2 == 0 ? this.mHeightIn - 1 : this.mHeightIn;
                    Log.i(TAG, "#resolution# ui16CropLeft: " + i5 + " ui16CropRight:" + i6 + " ui16CropTop:0 ui16CropBottom:" + i7 + " cropW:" + i11 + " diff:" + i12 + " iIsEnableScaling:1 iIsEnableCropping:1");
                    i3 = 0;
                } else if (i12 < 0) {
                    int i13 = (int) ((this.mWidthIn / this.mWidthOut) * this.mHeightOut);
                    int i14 = (this.mHeightIn - i13) / 2;
                    if (i14 % 2 != 0) {
                        i8 = i14 + 1;
                    } else {
                        i8 = i14;
                    }
                    i6 = this.mWidthIn % 2 == 0 ? this.mWidthIn - 1 : this.mWidthIn;
                    i7 = this.mHeightIn - i8;
                    if (i7 % 2 == 0) {
                        i7--;
                    }
                    Log.i(TAG, "#resolution# ui16CropLeft: 0 ui16CropRight:" + i6 + " ui16CropTop:" + i8 + " ui16CropBottom:" + i7 + " cropH:" + i13 + " diff:" + i14 + " iIsEnableScaling:1 iIsEnableCropping:1");
                    i3 = i8;
                    i4 = 1;
                    i5 = 0;
                } else {
                    i3 = 0;
                    i5 = 0;
                    i6 = 0;
                    i7 = 0;
                }
                i4 = 1;
            } else {
                Log.i(TAG, "unenable crop,mHeightIn:" + this.mHeightIn + " mWidthIn:" + this.mWidthIn);
                i3 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 0;
            }
            Bundle bundle = new Bundle();
            bundle.putInt(VENDOR_KEY_CROPLFT, i5);
            bundle.putInt(VENDOR_KEY_CROPRIGHT, i6);
            bundle.putInt(VENDOR_KEY_CROPTOP, i3);
            bundle.putInt(VENDOR_KEY_CROPBOTTOM, i7);
            bundle.putInt(VENDOR_KEY_SCALEWIDTH, i9);
            bundle.putInt(VENDOR_KEY_SCALEHEIGHT, i10);
            bundle.putInt(VENDOR_KEY_ENABLESCALING, 1);
            bundle.putInt(VENDOR_KEY_ENABLECROPPING, i4);
            this.encoderLock.lock();
            try {
                if (this.encoder != null) {
                    this.encoder.setParameters(bundle);
                }
                return 0;
            } finally {
                this.encoderLock.unlock();
            }
        }
    }

    private int reinit() {
        Log.i(TAG, "Enter reinit(none), mVc2a:" + this.mVc2a);
        releaseEncoder();
        this.streamBuffer.rewind();
        this.encoderLock.lock();
        try {
            if (createCodec() == 0) {
                if (this.mVc2a != null) {
                    this.mVc2a.updateEncSf(this.mMCSurface, this.mChannelID);
                }
                this.encoderLock.unlock();
                return 0;
            }
            return -1;
        } finally {
            this.encoderLock.unlock();
        }
    }

    private void releaseEncoder() {
        this.encoderLock.lock();
        try {
            this.started = false;
            if (this.encoder != null) {
                this.encoder.stop();
                this.encoder.release();
                this.encoder = null;
            }
            this.encoderLock.unlock();
            this.mediaFormat = null;
            this.listLock.lock();
            try {
                this.indexList.clear();
            } finally {
                this.listLock.unlock();
            }
        } catch (Throwable th) {
            this.encoderLock.unlock();
            throw th;
        }
    }

    private int createEncCBThread() {
        if (this.mEncCallBackThread == null) {
            this.mEncCallBackThread = new HandlerThread("encCbThread");
            this.mEncCallBackThread.start();
            Looper looper = this.mEncCallBackThread.getLooper();
            if (looper == null) {
                Log.e(TAG, "looper is null");
                return -1;
            }
            this.mEncCBHandler = new Handler(looper);
            return 0;
        }
        return 0;
    }

    private int initBuffer() {
        try {
            this.streamBuffer = ByteBuffer.allocateDirect(4147200);
            this.indexList = new LinkedList<>();
            this.streamBuffer.rewind();
            return 0;
        } catch (Exception e) {
            Log.e(TAG, "Allocate buffer failed");
            this.yuvBuffer = null;
            return -1;
        }
    }

    private int createCodec() {
        int i = this.mWidthOut;
        int i2 = this.mHeightOut;
        if (this.mWidthIn != 0) {
            i = this.mWidthIn;
            i2 = this.mHeightIn;
        }
        if (this.mEncType == EncType.eH264) {
            this.mediaFormat = MediaFormat.createVideoFormat("video/avc", i, i2);
            if (this.mProfile == 66) {
                this.mediaFormat.setInteger("profile", 1);
            } else if (this.mProfile == 77) {
                this.mediaFormat.setInteger("profile", 2);
            } else if (this.mProfile == 100) {
                this.mediaFormat.setInteger("profile", 8);
            }
            this.mediaFormat.setInteger("level", 1);
            try {
                this.encoder = MediaCodec.createEncoderByType("video/avc");
            } catch (IOException e) {
                Log.i(TAG, "reinit. createEncoderByType failed");
                e.printStackTrace();
                return -1;
            }
        } else {
            this.mediaFormat = MediaFormat.createVideoFormat("video/hevc", i, i2);
            this.mediaFormat.setInteger("profile", 1);
            this.mediaFormat.setInteger("level", 1);
            try {
                this.encoder = MediaCodec.createEncoderByType("video/hevc");
            } catch (IOException e2) {
                Log.i(TAG, "reinit. createEncoderByType failed");
                e2.printStackTrace();
                return -1;
            }
        }
        if (i != this.mWidthOut) {
            this.mediaFormat.setInteger(VENDOR_KEY_SCALEWIDTH, this.mWidthOut);
            this.mediaFormat.setInteger(VENDOR_KEY_SCALEHEIGHT, this.mHeightOut);
            this.mediaFormat.setInteger(VENDOR_KEY_ENABLESCALING, 1);
        }
        this.mediaFormat.setInteger(VENDOR_KEY_VTMODE, 1);
        this.mediaFormat.setInteger("bitrate-mode", 2);
        this.mediaFormat.setInteger("bitrate", this.mBitrate * LastCallFailCause.CDMA_LOCKED_UNTIL_POWER_CYCLE);
        this.mediaFormat.setInteger("frame-rate", this.mFps);
        if (this.mMCType == MCType.eSurface) {
            this.mediaFormat.setInteger("color-format", 2130708361);
        } else {
            this.mediaFormat.setInteger("color-format", 2135033992);
        }
        this.mediaFormat.setInteger("i-frame-interval", 10800);
        Log.i(TAG, "Format:[" + this.mWidthIn + HwImsConfigImpl.SEPARATOR_TAG + this.mHeightIn + "]->[" + this.mWidthOut + HwImsConfigImpl.SEPARATOR_TAG + this.mHeightOut + "]");
        addAsyncCallback();
        this.encoder.configure(this.mediaFormat, (Surface) null, (MediaCrypto) null, 1);
        if (this.mMCType == MCType.eSurface) {
            this.mMCSurface = this.encoder.createInputSurface();
            if (this.mMCSurface == null) {
                Log.e(TAG, "createInputSurface failed");
                return -1;
            }
        }
        this.encoder.start();
        if (this.yuvBuffer != null) {
            this.yuvBuffer.rewind();
        }
        this.started = true;
        return 0;
    }

    private int saveParams(long j, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        this.lnativeObject = j;
        this.mKeyFrameInterval = i;
        return saveParams(i2, i3, i4, i5, i6, i7, i8, z);
    }

    private int saveParams(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        if (i2 > i3) {
            i3 = i2;
            i2 = i3;
        }
        this.mWidthOut = i2;
        this.mHeightOut = i3;
        this.mBitrate = i4;
        this.mFps = i5;
        this.mProfile = i6;
        this.mCodecPNum = i7;
        this.menableROI = z;
        if (i == 0) {
            this.mEncType = EncType.eH264;
            return 0;
        } else if (i == 1) {
            this.mEncType = EncType.eH265;
            return 0;
        } else {
            Log.e(TAG, "the codec type is invailed");
            return -1;
        }
    }
}
