package com.huawei.ims.feature;

import android.content.Context;
import android.content.Intent;
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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HwMmTelFeature extends MmTelFeature {
    private static final int EVENT_SIM_STATE_CHANGED = 2;
    private static final int LAST_CALL_TYPE_UNKNOWN = -1;
    private static final String LOG_TAG = "HwMmTelFeature";
    private Handler mHandler;
    private HwImsServiceImpl mHwImsServiceImpl;
    private int mImsPhoneId;
    private int mSubId;
    private UiccController mUiccController;
    private InCallListener incomingListener = new InCallListener();
    private CapabilitiesStatusListener featureCapabilitesChangedListener = new CapabilitiesStatusListener();

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public class InCallListener implements ImsServiceCallTracker.InComingListener {
        public InCallListener() {
        }

        @Override // com.huawei.ims.ImsServiceCallTracker.InComingListener
        public final void notifyIncomingCall(ImsCallSessionImplBase c, Bundle extras) {
            synchronized (MmTelFeature.class) {
                HwMmTelFeature.this.notifyIncomingCall(c, extras);
            }
        }

        @Override // com.huawei.ims.ImsServiceCallTracker.InComingListener
        public final void notifyIncomingCallSession(IImsCallSession c, Bundle extras) {
            synchronized (MmTelFeature.class) {
                HwMmTelFeature.this.notifyIncomingCallSession(c, extras);
            }
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class CapabilitiesStatusListener implements ImsServiceCallTracker.FeatureCapabilityListener {
        private CapabilitiesStatusListener() {
        }

        @Override // com.huawei.ims.ImsServiceCallTracker.FeatureCapabilityListener
        public final void notifyCapabilitiesStatusChanged(MmTelFeature.MmTelCapabilities c) {
            HwMmTelFeature.this.notifyCapabilitiesStatusChanged(c);
        }
    }

    public HwMmTelFeature(Context context, int slotId, HwImsServiceImpl hwImsServiceImpl) {
        this.mImsPhoneId = 0;
        this.mSubId = -1;
        initialize(context, slotId);
        this.mHwImsServiceImpl = hwImsServiceImpl;
        this.mSubId = slotId;
        logi("HwMmTelFeature constructor: mSubId = " + this.mSubId);
        boolean isMultiSims = TelephonyManager.getDefault().isMultiSimEnabled();
        logi("HwMmTelFeature constructor: isMultiSims = " + isMultiSims + ", isDualIms = " + ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE);
        if (isMultiSims && !ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            this.mImsPhoneId = HuaweiTelephonyManager.getDefault().getDefault4GSlotId();
            if (this.mSubId == this.mImsPhoneId) {
                setFeatureState(2);
                logi("HwMmTelFeature constructor: setFeatureState ready! mImsPhoneId = " + this.mImsPhoneId);
            }
        } else {
            setFeatureState(2);
            logi("HwMmTelFeature constructor: setFeatureState ready!");
        }
        initSubscriptionStatus();
    }

    private void createHandler() {
        this.mHandler = new Handler() { // from class: com.huawei.ims.feature.HwMmTelFeature.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                HwMmTelFeature.this.handleMessage(msg);
            }
        };
    }

    void handleMessage(Message msg) {
        if (msg.what == 2) {
            logi("Received event: EVENT_SIM_STATE_CHANGED");
            handleSimStateChanged(msg);
        } else {
            logi("Unknown msg!");
        }
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
            logi("initSubscriptionStatus: registered for EVENT_SIM_STATE_CHANGED");
            return;
        }
        logi("initSubscriptionStatus: Not multi-sim...");
        this.mUiccController = null;
        this.mHandler = null;
    }

    private void handleSimStateChanged(Message msg) {
        int mNumPhones = TelephonyManager.getDefault().getPhoneCount();
        boolean isPhoneChanged = false;
        logi("handleSimStateChanged: NumPhones:" + mNumPhones + " Ims PhoneID:" + this.mImsPhoneId);
        int mainSlotId = HuaweiTelephonyManager.getDefault().getDefault4GSlotId();
        if (this.mImsPhoneId != mainSlotId) {
            this.mImsPhoneId = mainSlotId;
            isPhoneChanged = true;
        }
        logi("handleSimStateChanged: mPhoneChanged = " + isPhoneChanged);
        if (isPhoneChanged) {
            this.mHwImsServiceImpl.registerForPhoneId(this.mImsPhoneId);
            if (this.mSubId != this.mImsPhoneId) {
                setFeatureStateHw(0);
            } else {
                setFeatureStateHw(2);
            }
        }
    }

    public ImsCallProfile createCallProfile(int callSessionType, int callType) {
        HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
        if (hwImsServiceImpl == null) {
            loge("createCallProfile: mHwImsServiceImpl = null");
            return null;
        }
        return hwImsServiceImpl.createCallProfile(callSessionType, callType);
    }

    public HwImsCallSessionImpl createCallSession(ImsCallProfile profile) {
        HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
        if (hwImsServiceImpl == null) {
            loge("createCallSession: mHwImsServiceImpl = null");
            return null;
        }
        return hwImsServiceImpl.createCallSession(1, profile);
    }

    public void setUiTtyMode(int uiTtyMode, Message onComplete) {
        if (this.mHwImsServiceImpl == null) {
            loge("setUiTtyMode: mHwImsServiceImpl is null");
        } else {
            logi("setUiTtyMode");
            this.mHwImsServiceImpl.setUiTtyMode(0, uiTtyMode, onComplete);
        }
    }

    public void changeEnabledCapabilities(CapabilityChangeRequest request, ImsFeature.CapabilityCallbackProxy proxy) {
        if (request == null) {
            return;
        }
        for (CapabilityChangeRequest.CapabilityPair cap : request.getCapabilitiesToDisable()) {
            this.mHwImsServiceImpl.changeFeatureValue(cap, 0);
        }
        for (CapabilityChangeRequest.CapabilityPair cap2 : request.getCapabilitiesToEnable()) {
            this.mHwImsServiceImpl.changeFeatureValue(cap2, 1);
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
        this.mHwImsServiceImpl.createImsServiceCallTracker(this.incomingListener, this.featureCapabilitesChangedListener);
    }

    public void onFeatureRemoved() {
        this.mHwImsServiceImpl.removeImsServiceCallTracker();
    }

    public int getLastCallType(int slotId) {
        HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
        if (hwImsServiceImpl == null) {
            loge("getLastCallType: mHwImsServiceImpl is null.");
            return -1;
        }
        if (slotId != this.mSubId) {
            logi("getLastCallType: slotId does not equal to mSubId.");
            return -1;
        }
        return hwImsServiceImpl.getLastCallType();
    }

    private void setFeatureStateHw(int state) {
        setFeatureState(state);
        sendImsServiceStateIntent(state);
    }

    private void sendImsServiceStateIntent(int state) {
        Intent intent;
        if (this.mContext == null || this.mSubId == -1) {
            return;
        }
        if (state == 0 || state == 1) {
            intent = new Intent("com.android.ims.IMS_SERVICE_DOWN");
        } else if (state == 2) {
            intent = new Intent("com.android.ims.IMS_SERVICE_UP");
        } else {
            intent = new Intent("com.android.ims.IMS_SERVICE_DOWN");
        }
        intent.putExtra("android:phone_id", this.mSubId);
        this.mContext.sendBroadcast(intent);
        logi("broadcast ims service state");
    }

    private void logi(String string) {
        Rlog.i("HwMmTelFeature[" + this.mSubId + "]", string);
    }

    private void loge(String string) {
        Rlog.e("HwMmTelFeature[" + this.mSubId + "]", "[ERROR] " + string);
    }
}
