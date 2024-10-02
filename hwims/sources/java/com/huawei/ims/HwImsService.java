package com.huawei.ims;

import android.content.Intent;
import android.os.IBinder;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.telephony.ims.ImsService;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsConfigImplBase;
import android.telephony.ims.stub.ImsRegistrationImplBase;
import com.huawei.ims.feature.HwMMTelFeature;
import com.huawei.ims.vt.ImsVTGlobals;
import com.huawei.ims.vt.VTUtils;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class HwImsService extends ImsService {
    private static final int DUAL_IMS_MAX_SUBSCRIPTIONS = 2;
    private static final boolean HW_VOLTE_ON = SystemProperties.getBoolean("ro.config.hw_volte_on", false);
    private static final String LOG_TAG = "HwImsService";
    private static final int SINGLE_IMS_MAX_SUBSCRIPTIONS = 1;
    private HwImsServiceImpl[] mHwImsServiceImpl;

    public static int getNumSubscriptions() {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            return 2;
        }
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate() {
        super.onCreate();
        Rlog.d(LOG_TAG, "HwImsService created!");
        if (HW_VOLTE_ON) {
            this.mHwImsServiceImpl = new HwImsServiceImpl[getNumSubscriptions()];
            int numSubscriptions = getNumSubscriptions();
            for (int i = 0; i < numSubscriptions; i++) {
                this.mHwImsServiceImpl[i] = new HwImsServiceImpl(i, this);
            }
            if (VTUtils.isVTSupported()) {
                ImsVTGlobals.init(this);
                if (VTUtils.isVtFlowInfo()) {
                    ImsVTGlobals.setHwImsServiceImpl(this.mHwImsServiceImpl);
                }
            }
        } else {
            Rlog.i(LOG_TAG, "onCreate: not support VoLTE");
        }
        Rlog.d(LOG_TAG, "HwImsService onCreate done");
    }

    public void onDestroy() {
        Rlog.d(LOG_TAG, "Ims Service Destroyed Successfully...");
        if (HW_VOLTE_ON && VTUtils.isVTSupported()) {
            ImsVTGlobals.deInit();
        }
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        if (!HW_VOLTE_ON) {
            Rlog.i(LOG_TAG, "onBind: not support VoLTE, renturn null");
            return null;
        }
        if (!"android.telephony.ims.ImsService".equals(intent.getAction())) {
            return null;
        }
        Rlog.i(LOG_TAG, "HwImsService Bound.");
        return this.mImsServiceController;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MmTelFeature createMmTelFeature(int subId) {
        if (!ImsCallProviderUtils.isValidSubId(subId)) {
            Rlog.e(LOG_TAG, "createMmTelFeature: Invalid subId, subId = " + subId);
            return null;
        }
        int serviceSubIndex = 0;
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            serviceSubIndex = subId;
        }
        MmTelFeature hwMmTelFeature = new HwMMTelFeature(this, subId, this.mHwImsServiceImpl[serviceSubIndex]);
        Rlog.d(LOG_TAG, "onCreateMMTelImsFeature:hwMmTelFeature = " + hwMmTelFeature + " subId = " + subId + " serviceSubIndex = " + serviceSubIndex);
        return hwMmTelFeature;
    }

    public void readyForFeatureCreation() {
    }

    public void enableIms(int slotId) {
    }

    public void disableIms(int slotId) {
    }

    public ImsConfigImplBase getConfig(int slotId) {
        Rlog.d(LOG_TAG, "getConfig: isValidSubId= " + ImsCallProviderUtils.isValidSubId(slotId) + " slotId = " + slotId);
        if (!ImsCallProviderUtils.isValidSubId(slotId)) {
            return null;
        }
        return this.mHwImsServiceImpl[getRealSlot(slotId)].getConfig();
    }

    public ImsRegistrationImplBase getRegistration(int slotId) {
        Rlog.d(LOG_TAG, "getRegistration: isValidSubId= " + ImsCallProviderUtils.isValidSubId(slotId) + " slotId = " + slotId);
        if (!ImsCallProviderUtils.isValidSubId(slotId)) {
            return null;
        }
        return this.mHwImsServiceImpl[getRealSlot(slotId)].getImsRegistrationImpl();
    }

    private int getRealSlot(int slotId) {
        if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            return 0;
        }
        return slotId;
    }
}
