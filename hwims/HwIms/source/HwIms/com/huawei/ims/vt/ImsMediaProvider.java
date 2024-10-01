package com.huawei.ims.vt;

import android.telephony.Rlog;
import android.view.Surface;

/* loaded from: ImsMediaProvider.class */
public class ImsMediaProvider {
    private static final int NO_MEDIA_ID = -1;
    private static final String TAG = "ImsMediaProvider";
    private static ImsMediaProvider mInstance;
    private static final Object mLock = new Object();
    private CameraListener mCameraListener;
    private IMediaListener mMediaListener;

    /* loaded from: ImsMediaProvider$CameraListener.class */
    public interface CameraListener {
        void onCameraConfigChanged(int i, int i2, short s, Surface surface);

        void onMediaDeinitialized();

        void onRecordingDisabled();

        void onRecordingEnabled();
    }

    /* loaded from: ImsMediaProvider$IMediaListener.class */
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
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new ImsMediaProvider();
            }
            imsMediaProvider = mInstance;
        }
        return imsMediaProvider;
    }

    public void setCameraListener(CameraListener cameraListener) {
        this.mCameraListener = cameraListener;
    }

    public void setMediaListener(IMediaListener iMediaListener) {
        this.mMediaListener = iMediaListener;
    }

    public void vtFlowInfoReport(int i, long j) {
        if (this.mMediaListener != null) {
            Rlog.d(TAG, "add call data=" + j + "subId=" + i);
            this.mMediaListener.onDataUsageChanged(i, -1, j, 0L);
        }
    }
}
