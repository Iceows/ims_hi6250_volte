package com.huawei.ims.feature;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.telephony.Rlog;
import android.telephony.TelephonyManager;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.feature.CapabilityChangeRequest;
import android.telephony.ims.feature.ImsFeature;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsCallSessionImplBase;
import android.telephony.ims.stub.ImsEcbmImplBase;
import android.telephony.ims.stub.ImsMultiEndpointImplBase;
import android.telephony.ims.stub.ImsUtImplBase;
import com.android.ims.internal.IImsCallSession;
import com.android.internal.telephony.uicc.UiccController;
import com.huawei.ims.HwImsCallSessionImpl;
import com.huawei.ims.HwImsServiceImpl;
import com.huawei.ims.ImsCallProviderUtils;
import com.huawei.ims.ImsServiceCallTracker;
import com.huawei.telephony.HuaweiTelephonyManager;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class HwMMTelFeature extends MmTelFeature {
    private static final int EVENT_SIM_STATE_CHANGED = 2;
    private static final int LAST_CALL_TYPE_UNKNOWN = -1;
    private static final String LOG_TAG = "HwMMTelFeature";
    private Handler mHandler;
    private HwImsServiceImpl mHwImsServiceImpl;
    private int mImsPhoneId;
    private int mSubId;
    private UiccController mUiccController;
    private InCallListener incomingListener = new InCallListener();
    private CapabilitiesStatusListener featureCapabilitesChangedListener = new CapabilitiesStatusListener();

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public class InCallListener implements ImsServiceCallTracker.InComingListener {
        public InCallListener() {
            HwMMTelFeature.this = this$0;
        }

        @Override // com.huawei.ims.ImsServiceCallTracker.InComingListener
        public final void notifyIncomingCall(ImsCallSessionImplBase c, Bundle extras) {
            synchronized (MmTelFeature.class) {
                HwMMTelFeature.this.notifyIncomingCall(c, extras);
            }
        }

        @Override // com.huawei.ims.ImsServiceCallTracker.InComingListener
        public final void notifyIncomingCallSession(IImsCallSession c, Bundle extras) {
            synchronized (MmTelFeature.class) {
                HwMMTelFeature.this.notifyIncomingCallSession(c, extras);
            }
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public class CapabilitiesStatusListener implements ImsServiceCallTracker.FeatureCapatilityListener {
        private CapabilitiesStatusListener() {
            HwMMTelFeature.this = r1;
        }

        @Override // com.huawei.ims.ImsServiceCallTracker.FeatureCapatilityListener
        public final void notifyCapabilitiesStatusChanged(MmTelFeature.MmTelCapabilities c) {
            HwMMTelFeature.this.notifyCapabilitiesStatusChanged(c);
        }
    }

    public HwMMTelFeature(Context context, int slotId, HwImsServiceImpl hwImsServiceImpl) {
        this.mImsPhoneId = 0;
        this.mSubId = -1;
        initialize(context, slotId);
        this.mHwImsServiceImpl = hwImsServiceImpl;
        this.mSubId = slotId;
        logd("HwMMTelFeature constructor: mSubId = " + this.mSubId);
        boolean isMultiSims = TelephonyManager.getDefault().isMultiSimEnabled();
        logd("HwMMTelFeature constructor: isMultiSims = " + isMultiSims + ", isDualIms = " + ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE);
        if (isMultiSims && !ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            this.mImsPhoneId = HuaweiTelephonyManager.getDefault().getDefault4GSlotId();
            if (this.mSubId == this.mImsPhoneId) {
                setFeatureState(2);
                logd("HwMMTelFeature constructor: setFeatureState ready! mImsPhoneId = " + this.mImsPhoneId);
            }
        } else {
            setFeatureState(2);
            logd("HwMMTelFeature constructor: setFeatureState ready!");
        }
        initSubscriptionStatus();
    }

    private void createHandler() {
        this.mHandler = new Handler() { // from class: com.huawei.ims.feature.HwMMTelFeature.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                HwMMTelFeature.this.handleMessage(msg);
            }
        };
    }

    void handleMessage(Message msg) {
        if (msg.what == 2) {
            logd("Received event: EVENT_SIM_STATE_CHANGED");
            handleSimStateChanged(msg);
            return;
        }
        logd("Unknown msg!");
    }

    private void initSubscriptionStatus() {
        if (TelephonyManager.getDefault().isMultiSimEnabled() && !ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            createHandler();
            try {
                this.mUiccController = UiccController.getInstance();
                this.mUiccController.registerForIccChanged(this.mHandler, 2, (Object) null);
            } catch (RuntimeException e) {
                loge("UiccController getInstance Exception!");
            }
            logd("initSubscriptionStatus: registered for EVENT_SIM_STATE_CHANGED");
            return;
        }
        logd("initSubscriptionStatus: Not multi-sim...");
        this.mUiccController = null;
        this.mHandler = null;
    }

    private void handleSimStateChanged(Message msg) {
        int mNumPhones = TelephonyManager.getDefault().getPhoneCount();
        boolean mPhoneChanged = false;
        logd("handleSimStateChanged: NumPhones:" + mNumPhones + " Ims PhoneID:" + this.mImsPhoneId);
        int default4GSlotId = HuaweiTelephonyManager.getDefault().getDefault4GSlotId();
        if (this.mImsPhoneId != default4GSlotId) {
            this.mImsPhoneId = default4GSlotId;
            mPhoneChanged = true;
        }
        logd("handleSimStateChanged: mPhoneChanged = " + mPhoneChanged);
        if (mPhoneChanged) {
            this.mHwImsServiceImpl.registerForPhoneId(this.mImsPhoneId);
            if (this.mSubId != this.mImsPhoneId) {
                setFeatureState(0);
            } else {
                setFeatureState(2);
            }
        }
    }

    public ImsCallProfile createCallProfile(int callSessionType, int callType) {
        if (this.mHwImsServiceImpl == null) {
            loge("mHwImsServiceImpl = null");
            return null;
        }
        return this.mHwImsServiceImpl.createCallProfile(callSessionType, callType);
    }

    public HwImsCallSessionImpl createCallSession(ImsCallProfile profile) {
        if (this.mHwImsServiceImpl == null) {
            loge("mHwImsServiceImpl = null");
            return null;
        }
        return this.mHwImsServiceImpl.createCallSession(1, profile);
    }

    public void setUiTtyMode(int uiTtyMode, Message onComplete) {
        if (this.mHwImsServiceImpl == null) {
            loge("SetUiTTYMode:: mHwImsServiceImpl is null.");
            return;
        }
        logd("setUiTTYMode");
        this.mHwImsServiceImpl.setUiTTYMode(0, uiTtyMode, onComplete);
    }

    public void changeEnabledCapabilities(CapabilityChangeRequest request, ImsFeature.CapabilityCallbackProxy c) {
        if (request == null) {
            return;
        }
        for (CapabilityChangeRequest.CapabilityPair cap : request.getCapabilitiesToDisable()) {
            HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
            HwImsServiceImpl hwImsServiceImpl2 = this.mHwImsServiceImpl;
            hwImsServiceImpl.changeFeatureValue(cap, 0);
        }
        for (CapabilityChangeRequest.CapabilityPair cap2 : request.getCapabilitiesToEnable()) {
            HwImsServiceImpl hwImsServiceImpl3 = this.mHwImsServiceImpl;
            HwImsServiceImpl hwImsServiceImpl4 = this.mHwImsServiceImpl;
            hwImsServiceImpl3.changeFeatureValue(cap2, 1);
        }
    }

    public ImsUtImplBase getUt() {
        return this.mHwImsServiceImpl.getUt();
    }

    public ImsEcbmImplBase getEcbm() {
        return this.mHwImsServiceImpl.getEcbm();
    }

    public ImsMultiEndpointImplBase getMultiEndpoint() {
        return null;
    }

    public void onFeatureReady() {
        this.mHwImsServiceImpl.createImsServiceCallTracker(1, this.incomingListener, this.featureCapabilitesChangedListener);
    }

    public void onFeatureRemoved() {
        this.mHwImsServiceImpl.removeImsServiceCallTracker(1);
    }

    public int getLastCallType(int slotId) {
        if (this.mHwImsServiceImpl == null) {
            loge("GetLastCallType:: mHwImsServiceImpl is null.");
            return -1;
        } else if (slotId != this.mSubId) {
            logd("getLastCallType:: slotId does not equal to mSubId.");
            return -1;
        } else {
            return this.mHwImsServiceImpl.getLastCallType();
        }
    }

    private void logd(String s) {
        Rlog.d("HwMMTelFeature[" + this.mSubId + "]", s);
    }

    private void loge(String s) {
        Rlog.e("HwMMTelFeature[" + this.mSubId + "]", "[ERROR] " + s);
    }
}
