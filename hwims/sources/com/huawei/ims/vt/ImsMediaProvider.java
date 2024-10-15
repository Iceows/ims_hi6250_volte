package com.huawei.ims.vt;

import android.telephony.Rlog;
import android.view.Surface;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsMediaProvider {
    private static final Object IMS_MEDIA_LOCK = new Object();
    private static final int NO_MEDIA_ID = -1;
    private static final String TAG = "ImsMediaProvider";
    private static ImsMediaProvider sInstance;
    private CameraListener mCameraListener;
    private IMediaListener mMediaListener;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public interface CameraListener {
        void onCameraConfigChanged(int i, int i2, short s, Surface surface);

        void onMediaDeinitialized();

        void onRecordingDisabled();

        void onRecordingEnabled();
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public interface IMediaListener {
        void onDataUsageChanged(int i, int i2, long j, long j2);

        void onDisplayModeEvent();

        void onPeerResolutionChanged(int i, int i2);

        void onPlayerStateChanged(int i);

        void onVideoQualityEvent(int i);
    }

    private ImsMediaProvider() {
    }

    public static ImsMediaProvider getInstance() {
        ImsMediaProvider imsMediaProvider;
        synchronized (IMS_MEDIA_LOCK) {
            if (sInstance == null) {
                sInstance = new ImsMediaProvider();
            }
            imsMediaProvider = sInstance;
        }
        return imsMediaProvider;
    }

    public void setMediaListener(IMediaListener listener) {
        this.mMediaListener = listener;
    }

    public void setCameraListener(CameraListener listener) {
        this.mCameraListener = listener;
    }

    public void vtFlowInfoReport(int subId, long dataUsage) {
        if (this.mMediaListener != null) {
            Rlog.i(TAG, "add call data=" + dataUsage + "subId=" + subId);
            this.mMediaListener.onDataUsageChanged(subId, -1, dataUsage, 0L);
        }
    }
}
