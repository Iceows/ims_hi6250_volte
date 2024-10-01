package com.huawei.ims.vt;

import android.telephony.Rlog;
import android.view.Surface;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class ImsMediaProvider {
    private static final int NO_MEDIA_ID = -1;
    private static final String TAG = "ImsMediaProvider";
    private static ImsMediaProvider mInstance;
    private static final Object mLock = new Object();
    private CameraListener mCameraListener;
    private IMediaListener mMediaListener;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public interface CameraListener {
        void onCameraConfigChanged(int i, int i2, short s, Surface surface);

        void onMediaDeinitialized();

        void onRecordingDisabled();

        void onRecordingEnabled();
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public interface IMediaListener {
        void onDataUsageChanged(int i, int i2, long j, long j2);

        void onDisplayModeEvent();

        void onPeerResolutionChanged(int i, int i2);

        void onPlayerStateChanged(int i);

        void onVideoQualityEvent(int i);
    }

    public static ImsMediaProvider getInstance() {
        ImsMediaProvider imsMediaProvider;
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new ImsMediaProvider();
            }
            imsMediaProvider = mInstance;
        }
        return imsMediaProvider;
    }

    private ImsMediaProvider() {
    }

    public void setMediaListener(IMediaListener listener) {
        this.mMediaListener = listener;
    }

    public void setCameraListener(CameraListener listener) {
        this.mCameraListener = listener;
    }

    public void vtFlowInfoReport(int subId, long dataUsage) {
        if (this.mMediaListener != null) {
            Rlog.d(TAG, "add call data=" + dataUsage + "subId=" + subId);
            this.mMediaListener.onDataUsageChanged(subId, -1, dataUsage, 0L);
        }
    }
}
