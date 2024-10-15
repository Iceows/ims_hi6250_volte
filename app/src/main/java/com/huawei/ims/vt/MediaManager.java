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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class MediaManager implements ImsMediaProvider.IMediaListener {
    private static final String DEFAULT_CALL_ID = "-1";
    private static final String TAG = "MediaManager";
    private static MediaManager sInstance;
    private ImsMediaProvider mMedia;
    private Surface mPreSetSurface;
    private Surface mSurface;
    private TelephonyManager mTelephonyManager;
    private static final Object MEDIA_CONTROLLER_LOCK = new Object();
    private static final String HW_CMCCIOT_ON = "ro.config.hw_cmcciot";
    private static boolean sIsCmccIOT = SystemProperties.getBoolean(HW_CMCCIOT_ON, false);
    private String mCallId = DEFAULT_CALL_ID;
    private boolean isAlreadyExist = false;
    private PhoneStateListener mPhoneStateListener = new PhoneStateListener() { // from class: com.huawei.ims.vt.MediaManager.1
        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int state, String incomingNumber) {
            if (state == 0) {
                Rlog.i(MediaManager.TAG, "Call state is IDLE");
                VtUtils.setPreCallDataUsage(0L);
                VtUtils.setTotalCallDataUsage(0L);
            }
            super.onCallStateChanged(state, incomingNumber);
        }
    };

    private MediaManager(Context context, ImsMediaProvider media) {
        this.mMedia = media;
        this.mMedia.setMediaListener(this);
        if (VtUtils.isVtFlowInfo() && (context.getSystemService("phone") instanceof TelephonyManager)) {
            this.mTelephonyManager = (TelephonyManager) context.getSystemService("phone");
            this.mTelephonyManager.listen(this.mPhoneStateListener, 32);
        }
    }

    public void cleanPreStatus() {
        this.mPreSetSurface = null;
        if (CameraManager.getInstance() != null && CameraManager.getInstance().isCurrentHaveVideoCall()) {
            Rlog.i(TAG, "There is still a video call, do not clean mSurface : " + this.mSurface);
            return;
        }
        this.mSurface = null;
    }

    public static void init(Context context, ImsMediaProvider media) {
        synchronized (MEDIA_CONTROLLER_LOCK) {
            if (sInstance == null) {
                sInstance = new MediaManager(context, media);
            }
        }
    }

    public static MediaManager getInstance() {
        MediaManager mediaManager;
        synchronized (MEDIA_CONTROLLER_LOCK) {
            mediaManager = sInstance;
        }
        return mediaManager;
    }

    public boolean isSetDisplaySurface(Surface surface) {
        Rlog.i(TAG, "isSetDisplaySurface");
        if (surface == null) {
            Rlog.i(TAG, "hideRmtVideo");
            ImsThinClient.hideRmtVideo();
            this.mSurface = null;
            this.mPreSetSurface = null;
            return false;
        }
        this.mSurface = surface;
        if (surface != this.mPreSetSurface && CameraManager.getInstance().isParamReady()) {
            Rlog.i(TAG, "start to setFarEndSurface and startRemotePreview");
            this.mPreSetSurface = surface;
            ImsThinClient.setFarEndSurface(surface);
            setInitBitRate();
            ImsThinClient.showRmtVideo();
            return true;
        }
        return false;
    }

    public boolean isSetDisplaySurface() {
        Rlog.i(TAG, "isSetDisplaySurface after params ready");
        Surface surface = this.mSurface;
        if (surface == null) {
            Rlog.i(TAG, "mSurface is null when isSetDisplaySurface after params ready");
            return false;
        }
        if (surface == this.mPreSetSurface) {
            return false;
        }
        Rlog.i(TAG, "start to setFarEndSurface and startRemotePreview");
        Surface surface2 = this.mSurface;
        this.mPreSetSurface = surface2;
        ImsThinClient.setFarEndSurface(surface2);
        setInitBitRate();
        ImsThinClient.showRmtVideo();
        return true;
    }

    public void setDeviceOrientation(int orientation) {
        boolean isLand = SystemProperties.getBoolean("ro.config.phoneland", false);
        if (!isLand) {
            ImsThinClient.setDeviceOrientation(orientation, false);
        } else {
            boolean isVtSelfAdapter = SystemProperties.getBoolean("persist.sys.vt.self_adpater", true);
            boolean isFixLayout = !isVtSelfAdapter;
            Rlog.i(TAG, "set orientation is fix layout:" + isFixLayout);
            if (ImsCallProviderUtils.IS_TABLET) {
                isFixLayout = true;
                Rlog.i(TAG, "fix layout when device is tablet");
            }
            ImsThinClient.setDeviceOrientation(orientation, isFixLayout);
        }
        boolean isVtSelfAdapter2 = VtUtils.isDocomo();
        if (isVtSelfAdapter2) {
            ImsThinClient.setRmtVideoOrientation(0);
        }
    }

    private void setInitBitRate() {
        if (sIsCmccIOT) {
            Rlog.i(TAG, "setInitMaxBitRate true");
            ImsThinClient.setInitMaxBitRate(true);
        } else {
            Rlog.i(TAG, "setInitMaxBitRate false");
            ImsThinClient.setInitMaxBitRate(false);
        }
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.IMediaListener
    public void onDisplayModeEvent() {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.IMediaListener
    public void onPeerResolutionChanged(int width, int height) {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.IMediaListener
    public void onPlayerStateChanged(int state) {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.IMediaListener
    public void onVideoQualityEvent(int videoQuality) {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.IMediaListener
    public void onDataUsageChanged(int subId, int mediaId, long uplink, long downlink) {
        ArrayList<ImsVtCallProviderImpl> videoProviderList = ImsVtGlobals.getCallVideoProvider(subId);
        if (videoProviderList == null) {
            Rlog.e(TAG, "onDataUsageChanged: Call session video provider is null.");
            return;
        }
        this.isAlreadyExist = false;
        int callNum = videoProviderList.size();
        if (callNum > 0) {
            int i = 0;
            while (true) {
                if (i >= callNum) {
                    break;
                }
                if (videoProviderList.get(i) == null || !videoProviderList.get(i).getCallSession().getCallId().equals(this.mCallId)) {
                    i++;
                } else {
                    videoProviderList.get(i).onCallDataUsageChanged(uplink);
                    this.isAlreadyExist = true;
                    break;
                }
            }
        } else {
            Rlog.i(TAG, "callsession is null");
        }
        if (!this.isAlreadyExist) {
            this.mCallId = DEFAULT_CALL_ID;
            int i2 = 0;
            while (true) {
                if (i2 < callNum) {
                    if (videoProviderList.get(i2) == null) {
                        i2++;
                    } else {
                        this.mCallId = videoProviderList.get(i2).getCallSession().getCallId();
                        videoProviderList.get(i2).onCallDataUsageChanged(uplink);
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (this.mCallId.equals(DEFAULT_CALL_ID)) {
            Rlog.i(TAG, "callsession is null");
        }
    }
}
