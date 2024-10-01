package com.huawei.ims.vt;

import android.content.Context;
import android.os.SystemProperties;
import android.telephony.PhoneStateListener;
import android.telephony.Rlog;
import android.telephony.TelephonyManager;
import android.view.Surface;
import com.huawei.ims.ImsCallProviderUtils;
import com.huawei.ims.vt.ImsMediaProvider;
import com.huawei.vtproxy.ImsThinClient;
import java.util.ArrayList;

/* loaded from: MediaManager.class */
public class MediaManager implements ImsMediaProvider.IMediaListener {
    private static final String DEFAULT_CALL_ID = "-1";
    private static MediaManager sInstance;
    private ImsMediaProvider mMedia;
    private Surface mPreSetSurface;
    private Surface mSurface;
    private TelephonyManager mTelephonyManager;
    private static String TAG = "MediaManager";
    private static final String HW_CMCCIOT_ON = "ro.config.hw_cmcciot";
    private static boolean mIsCmccIOT = SystemProperties.getBoolean(HW_CMCCIOT_ON, false);
    private static final Object mLock = new Object();
    private String mCallId = DEFAULT_CALL_ID;
    private boolean isAlreadyExist = false;
    private PhoneStateListener mPhoneStateListener = new PhoneStateListener() { // from class: com.huawei.ims.vt.MediaManager.1
        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            if (i == 0) {
                Rlog.d(MediaManager.TAG, "Call state is IDLE");
                VTUtils.setPreCallDataUsage(0L);
                VTUtils.setTotalCallDataUsage(0L);
            }
            super.onCallStateChanged(i, str);
        }
    };

    private MediaManager(Context context, ImsMediaProvider imsMediaProvider) {
        this.mMedia = imsMediaProvider;
        this.mMedia.setMediaListener(this);
        if (VTUtils.isVtFlowInfo()) {
            this.mTelephonyManager = (TelephonyManager) context.getSystemService("phone");
            this.mTelephonyManager.listen(this.mPhoneStateListener, 32);
        }
    }

    public static MediaManager getInstance() {
        MediaManager mediaManager;
        synchronized (mLock) {
            mediaManager = sInstance;
        }
        return mediaManager;
    }

    public static void init(Context context, ImsMediaProvider imsMediaProvider) {
        synchronized (mLock) {
            if (sInstance == null) {
                sInstance = new MediaManager(context, imsMediaProvider);
            }
        }
    }

    private void setInitBitRate() {
        if (mIsCmccIOT) {
            Rlog.d(TAG, "setInitMaxBitRate true");
            ImsThinClient.setInitMaxBitRate(true);
            return;
        }
        Rlog.d(TAG, "setInitMaxBitRate false");
        ImsThinClient.setInitMaxBitRate(false);
    }

    public void cleanPreStatus() {
        this.mPreSetSurface = null;
        if (CameraManager.getInstance() == null || !CameraManager.getInstance().isCurrentHaveVideoCall()) {
            this.mSurface = null;
            return;
        }
        String str = TAG;
        Rlog.i(str, "There is still a video call, do not clean mSurface : " + this.mSurface);
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.IMediaListener
    public void onDataUsageChanged(int i, int i2, long j, long j2) {
        ArrayList<ImsVTCallProviderImpl> callVideoProvider = ImsVTGlobals.getCallVideoProvider(i);
        if (callVideoProvider == null) {
            Rlog.d(TAG, "onDataUsageChanged: Call session video provider is null.");
            return;
        }
        this.isAlreadyExist = false;
        int size = callVideoProvider.size();
        if (size > 0) {
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    break;
                } else if (callVideoProvider.get(i3) != null && callVideoProvider.get(i3).getCallSession().getCallId().equals(this.mCallId)) {
                    callVideoProvider.get(i3).onCallDataUsageChanged(j);
                    this.isAlreadyExist = true;
                    break;
                } else {
                    i3++;
                }
            }
        } else {
            Rlog.d(TAG, "callsession is null");
        }
        if (!this.isAlreadyExist) {
            this.mCallId = DEFAULT_CALL_ID;
            int i4 = 0;
            while (true) {
                if (i4 < size) {
                    if (callVideoProvider.get(i4) != null) {
                        this.mCallId = callVideoProvider.get(i4).getCallSession().getCallId();
                        callVideoProvider.get(i4).onCallDataUsageChanged(j);
                        break;
                    }
                    i4++;
                } else {
                    break;
                }
            }
        }
        if (this.mCallId.equals(DEFAULT_CALL_ID)) {
            Rlog.d(TAG, "callsession is null");
        }
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.IMediaListener
    public void onDisplayModeEvent() {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.IMediaListener
    public void onPeerResolutionChanged(int i, int i2) {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.IMediaListener
    public void onPlayerStateChanged(int i) {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.IMediaListener
    public void onVideoQualityEvent(int i) {
    }

    public void setDeviceOrientation(int i) {
        if (SystemProperties.getBoolean("ro.config.phoneland", false)) {
            boolean z = !SystemProperties.getBoolean("persist.sys.vt.self_adpater", true);
            Rlog.d(TAG, "set orientation need fix layout:" + z);
            if (ImsCallProviderUtils.IS_TABLET) {
                z = true;
                Rlog.d(TAG, "fix layout when device is tablet");
            }
            ImsThinClient.setDeviceOrientation(i, z);
        } else {
            ImsThinClient.setDeviceOrientation(i, false);
        }
        if (VTUtils.isDocomo()) {
            ImsThinClient.setRmtVideoOrientation(0);
        }
    }

    public boolean setDisplaySurface() {
        Rlog.d(TAG, "setDisplaySurface after params ready");
        if (this.mSurface == null) {
            Rlog.d(TAG, "mSurface is null when setDisplaySurface after params ready");
            return false;
        } else if (this.mSurface != this.mPreSetSurface) {
            Rlog.d(TAG, "start to setFarEndSurface and startRemotePreview");
            this.mPreSetSurface = this.mSurface;
            ImsThinClient.setFarEndSurface(this.mSurface);
            setInitBitRate();
            ImsThinClient.showRmtVideo();
            return true;
        } else {
            return false;
        }
    }

    public boolean setDisplaySurface(Surface surface) {
        Rlog.d(TAG, "setDisplaySurface");
        if (surface == null) {
            Rlog.d(TAG, "hideRmtVideo");
            ImsThinClient.hideRmtVideo();
            this.mSurface = null;
            this.mPreSetSurface = null;
            return false;
        }
        this.mSurface = surface;
        if (surface == this.mPreSetSurface || !CameraManager.getInstance().isParamReady()) {
            return false;
        }
        Rlog.d(TAG, "start to setFarEndSurface and startRemotePreview");
        this.mPreSetSurface = surface;
        ImsThinClient.setFarEndSurface(surface);
        setInitBitRate();
        ImsThinClient.showRmtVideo();
        return true;
    }
}
