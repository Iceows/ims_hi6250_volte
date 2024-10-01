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

/* loaded from: HwImsService.class */
public class HwImsService extends ImsService {
    private static final int DUAL_IMS_MAX_SUBSCRIPTIONS = 2;
    private static final boolean HW_VOLTE_ON = SystemProperties.getBoolean("ro.config.hw_volte_on", false);
    private static final String LOG_TAG = "HwImsService";
    private static final int SINGLE_IMS_MAX_SUBSCRIPTIONS = 1;
    private HwImsServiceImpl[] mHwImsServiceImpl;

    public static int getNumSubscriptions() {
        return ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE ? 2 : 1;
    }

    private int getRealSlot(int i) {
        int i2 = 0;
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            i2 = i;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MmTelFeature createMmTelFeature(int i) {
        if (!ImsCallProviderUtils.isValidSubId(i)) {
            Rlog.e(LOG_TAG, "createMmTelFeature: Invalid subId, subId = " + i);
            return null;
        }
        int i2 = 0;
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            i2 = i;
        }
        HwMMTelFeature hwMMTelFeature = new HwMMTelFeature(this, i, this.mHwImsServiceImpl[i2]);
        Rlog.d(LOG_TAG, "onCreateMMTelImsFeature:hwMmTelFeature = " + hwMMTelFeature + " subId = " + i + " serviceSubIndex = " + i2);
        return hwMMTelFeature;
    }

    public void disableIms(int i) {
    }

    public void enableIms(int i) {
    }

    public ImsConfigImplBase getConfig(int i) {
        Rlog.d(LOG_TAG, "getConfig: isValidSubId= " + ImsCallProviderUtils.isValidSubId(i) + " slotId = " + i);
        if (ImsCallProviderUtils.isValidSubId(i)) {
            return this.mHwImsServiceImpl[getRealSlot(i)].getConfig();
        }
        return null;
    }

    public ImsRegistrationImplBase getRegistration(int i) {
        Rlog.d(LOG_TAG, "getRegistration: isValidSubId= " + ImsCallProviderUtils.isValidSubId(i) + " slotId = " + i);
        if (ImsCallProviderUtils.isValidSubId(i)) {
            return this.mHwImsServiceImpl[getRealSlot(i)].getImsRegistrationImpl();
        }
        return null;
    }

    public IBinder onBind(Intent intent) {
        if (!HW_VOLTE_ON) {
            Rlog.i(LOG_TAG, "onBind: not support VoLTE, renturn null");
            return null;
        } else if ("android.telephony.ims.ImsService".equals(intent.getAction())) {
            Rlog.i(LOG_TAG, "HwImsService Bound.");
            return this.mImsServiceController;
        } else {
            return null;
        }
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

    public void readyForFeatureCreation() {
    }
}
