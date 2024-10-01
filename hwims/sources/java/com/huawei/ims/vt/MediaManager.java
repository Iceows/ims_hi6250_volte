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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
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
        public void onCallStateChanged(int state, String incomingNumber) {
            if (state == 0) {
                Rlog.d(MediaManager.TAG, "Call state is IDLE");
                VTUtils.setPreCallDataUsage(0L);
                VTUtils.setTotalCallDataUsage(0L);
            }
            super.onCallStateChanged(state, incomingNumber);
        }
    };

    public void cleanPreStatus() {
        this.mPreSetSurface = null;
        if (CameraManager.getInstance() != null && CameraManager.getInstance().isCurrentHaveVideoCall()) {
            String str = TAG;
            Rlog.i(str, "There is still a video call, do not clean mSurface : " + this.mSurface);
            return;
        }
        this.mSurface = null;
    }

    public static void init(Context context, ImsMediaProvider media) {
        synchronized (mLock) {
            if (sInstance == null) {
                sInstance = new MediaManager(context, media);
            }
        }
    }

    public static MediaManager getInstance() {
        MediaManager mediaManager;
        synchronized (mLock) {
            mediaManager = sInstance;
        }
        return mediaManager;
    }

    private MediaManager(Context context, ImsMediaProvider media) {
        this.mMedia = media;
        this.mMedia.setMediaListener(this);
        if (VTUtils.isVtFlowInfo()) {
            this.mTelephonyManager = (TelephonyManager) context.getSystemService("phone");
            this.mTelephonyManager.listen(this.mPhoneStateListener, 32);
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

    public void setDeviceOrientation(int orientation) {
        boolean isLand = SystemProperties.getBoolean("ro.config.phoneland", false);
        if (!isLand) {
            ImsThinClient.setDeviceOrientation(orientation, false);
        } else {
            boolean isVtSelfAdapter = SystemProperties.getBoolean("persist.sys.vt.self_adpater", true);
            boolean needFixLayout = !isVtSelfAdapter;
            Rlog.d(TAG, "set orientation need fix layout:" + needFixLayout);
            if (ImsCallProviderUtils.IS_TABLET) {
                needFixLayout = true;
                Rlog.d(TAG, "fix layout when device is tablet");
            }
            ImsThinClient.setDeviceOrientation(orientation, needFixLayout);
        }
        boolean isVtSelfAdapter2 = VTUtils.isDocomo();
        if (isVtSelfAdapter2) {
            ImsThinClient.setRmtVideoOrientation(0);
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
        ArrayList<ImsVTCallProviderImpl> videoProviderList = ImsVTGlobals.getCallVideoProvider(subId);
        if (videoProviderList == null) {
            Rlog.d(TAG, "onDataUsageChanged: Call session video provider is null.");
            return;
        }
        int i = 0;
        this.isAlreadyExist = false;
        int callNum = videoProviderList.size();
        if (callNum > 0) {
            int i2 = 0;
            while (true) {
                if (i2 >= callNum) {
                    break;
                } else if (videoProviderList.get(i2) == null || !videoProviderList.get(i2).getCallSession().getCallId().equals(this.mCallId)) {
                    i2++;
                } else {
                    videoProviderList.get(i2).onCallDataUsageChanged(uplink);
                    this.isAlreadyExist = true;
                    break;
                }
            }
        } else {
            Rlog.d(TAG, "callsession is null");
        }
        if (!this.isAlreadyExist) {
            this.mCallId = DEFAULT_CALL_ID;
            while (true) {
                if (i < callNum) {
                    if (videoProviderList.get(i) == null) {
                        i++;
                    } else {
                        this.mCallId = videoProviderList.get(i).getCallSession().getCallId();
                        videoProviderList.get(i).onCallDataUsageChanged(uplink);
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (this.mCallId.equals(DEFAULT_CALL_ID)) {
            Rlog.d(TAG, "callsession is null");
        }
    }
}
