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

/* loaded from: HwMMTelFeature.class */
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

    /* loaded from: HwMMTelFeature$CapabilitiesStatusListener.class */
    private class CapabilitiesStatusListener implements ImsServiceCallTracker.FeatureCapatilityListener {
        private CapabilitiesStatusListener() {
        }

        @Override // com.huawei.ims.ImsServiceCallTracker.FeatureCapatilityListener
        public final void notifyCapabilitiesStatusChanged(MmTelFeature.MmTelCapabilities mmTelCapabilities) {
            HwMMTelFeature.this.notifyCapabilitiesStatusChanged(mmTelCapabilities);
        }
    }

    /* loaded from: HwMMTelFeature$InCallListener.class */
    public class InCallListener implements ImsServiceCallTracker.InComingListener {
        public InCallListener() {
        }

        @Override // com.huawei.ims.ImsServiceCallTracker.InComingListener
        public final void notifyIncomingCall(ImsCallSessionImplBase imsCallSessionImplBase, Bundle bundle) {
            synchronized (MmTelFeature.class) {
                try {
                    HwMMTelFeature.this.notifyIncomingCall(imsCallSessionImplBase, bundle);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.huawei.ims.ImsServiceCallTracker.InComingListener
        public final void notifyIncomingCallSession(IImsCallSession iImsCallSession, Bundle bundle) {
            synchronized (MmTelFeature.class) {
                try {
                    HwMMTelFeature.this.notifyIncomingCallSession(iImsCallSession, bundle);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public HwMMTelFeature(Context context, int i, HwImsServiceImpl hwImsServiceImpl) {
        this.mImsPhoneId = 0;
        this.mSubId = -1;
        initialize(context, i);
        this.mHwImsServiceImpl = hwImsServiceImpl;
        this.mSubId = i;
        logd("HwMMTelFeature constructor: mSubId = " + this.mSubId);
        boolean isMultiSimEnabled = TelephonyManager.getDefault().isMultiSimEnabled();
        logd("HwMMTelFeature constructor: isMultiSims = " + isMultiSimEnabled + ", isDualIms = " + ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE);
        if (!isMultiSimEnabled || ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            setFeatureState(2);
            logd("HwMMTelFeature constructor: setFeatureState ready!");
        } else {
            this.mImsPhoneId = HuaweiTelephonyManager.getDefault().getDefault4GSlotId();
            if (this.mSubId == this.mImsPhoneId) {
                setFeatureState(2);
                logd("HwMMTelFeature constructor: setFeatureState ready! mImsPhoneId = " + this.mImsPhoneId);
            }
        }
        initSubscriptionStatus();
    }

    private void createHandler() {
        this.mHandler = new Handler() { // from class: com.huawei.ims.feature.HwMMTelFeature.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                HwMMTelFeature.this.handleMessage(message);
            }
        };
    }

    private void handleSimStateChanged(Message message) {
        boolean z = false;
        logd("handleSimStateChanged: NumPhones:" + TelephonyManager.getDefault().getPhoneCount() + " Ims PhoneID:" + this.mImsPhoneId);
        int default4GSlotId = HuaweiTelephonyManager.getDefault().getDefault4GSlotId();
        if (this.mImsPhoneId != default4GSlotId) {
            this.mImsPhoneId = default4GSlotId;
            z = true;
        }
        logd("handleSimStateChanged: mPhoneChanged = " + z);
        if (z) {
            this.mHwImsServiceImpl.registerForPhoneId(this.mImsPhoneId);
            if (this.mSubId != this.mImsPhoneId) {
                setFeatureState(0);
            } else {
                setFeatureState(2);
            }
        }
    }

    private void initSubscriptionStatus() {
        if (!TelephonyManager.getDefault().isMultiSimEnabled() || ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            logd("initSubscriptionStatus: Not multi-sim...");
            this.mUiccController = null;
            this.mHandler = null;
            return;
        }
        createHandler();
        try {
            this.mUiccController = UiccController.getInstance();
            this.mUiccController.registerForIccChanged(this.mHandler, 2, (Object) null);
        } catch (RuntimeException e) {
            loge("UiccController getInstance Exception!");
        }
        logd("initSubscriptionStatus: registered for EVENT_SIM_STATE_CHANGED");
    }

    private void logd(String str) {
        Rlog.d("HwMMTelFeature[" + this.mSubId + "]", str);
    }

    private void loge(String str) {
        Rlog.e("HwMMTelFeature[" + this.mSubId + "]", "[ERROR] " + str);
    }

    public void changeEnabledCapabilities(CapabilityChangeRequest capabilityChangeRequest, ImsFeature.CapabilityCallbackProxy capabilityCallbackProxy) {
        if (capabilityChangeRequest == null) {
            return;
        }
        for (CapabilityChangeRequest.CapabilityPair capabilityPair : capabilityChangeRequest.getCapabilitiesToDisable()) {
            HwImsServiceImpl hwImsServiceImpl = this.mHwImsServiceImpl;
            HwImsServiceImpl hwImsServiceImpl2 = this.mHwImsServiceImpl;
            hwImsServiceImpl.changeFeatureValue(capabilityPair, 0);
        }
        for (CapabilityChangeRequest.CapabilityPair capabilityPair2 : capabilityChangeRequest.getCapabilitiesToEnable()) {
            HwImsServiceImpl hwImsServiceImpl3 = this.mHwImsServiceImpl;
            HwImsServiceImpl hwImsServiceImpl4 = this.mHwImsServiceImpl;
            hwImsServiceImpl3.changeFeatureValue(capabilityPair2, 1);
        }
    }

    public ImsCallProfile createCallProfile(int i, int i2) {
        if (this.mHwImsServiceImpl == null) {
            loge("mHwImsServiceImpl = null");
            return null;
        }
        return this.mHwImsServiceImpl.createCallProfile(i, i2);
    }

    public HwImsCallSessionImpl createCallSession(ImsCallProfile imsCallProfile) {
        if (this.mHwImsServiceImpl == null) {
            loge("mHwImsServiceImpl = null");
            return null;
        }
        return this.mHwImsServiceImpl.createCallSession(1, imsCallProfile);
    }

    public ImsEcbmImplBase getEcbm() {
        return this.mHwImsServiceImpl.getEcbm();
    }

    public int getLastCallType(int i) {
        if (this.mHwImsServiceImpl == null) {
            loge("GetLastCallType:: mHwImsServiceImpl is null.");
            return -1;
        } else if (i != this.mSubId) {
            logd("getLastCallType:: slotId does not equal to mSubId.");
            return -1;
        } else {
            return this.mHwImsServiceImpl.getLastCallType();
        }
    }

    public ImsMultiEndpointImplBase getMultiEndpoint() {
        return null;
    }

    public ImsUtImplBase getUt() {
        return this.mHwImsServiceImpl.getUt();
    }

    void handleMessage(Message message) {
        if (message.what != 2) {
            logd("Unknown msg!");
            return;
        }
        logd("Received event: EVENT_SIM_STATE_CHANGED");
        handleSimStateChanged(message);
    }

    public void onFeatureReady() {
        this.mHwImsServiceImpl.createImsServiceCallTracker(1, this.incomingListener, this.featureCapabilitesChangedListener);
    }

    public void onFeatureRemoved() {
        this.mHwImsServiceImpl.removeImsServiceCallTracker(1);
    }

    public void setUiTtyMode(int i, Message message) {
        if (this.mHwImsServiceImpl == null) {
            loge("SetUiTTYMode:: mHwImsServiceImpl is null.");
            return;
        }
        logd("setUiTTYMode");
        this.mHwImsServiceImpl.setUiTTYMode(0, i, message);
    }
}
