package com.huawei.ims;

import android.content.Intent;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemProperties;
import android.provider.Settings;
import android.telephony.HwTelephonyManager;
import android.telephony.HwTelephonyManagerInner;
import android.telephony.Rlog;
import android.telephony.ims.ImsService;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsConfigImplBase;
import android.telephony.ims.stub.ImsRegistrationImplBase;
import com.huawei.ims.feature.HwMmTelFeature;
import com.huawei.ims.vt.ImsVtGlobals;
import com.huawei.ims.vt.VtUtils;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HwImsService extends ImsService {
    private static final int DEFAULT_VONR_SWITCH_DB = 0;
    private static final int DUAL_IMS_MAX_SUBSCRIPTIONS = 2;
    private static final String LOG_TAG = "HwImsService";
    private static final int SINGLE_IMS_MAX_SUBSCRIPTIONS = 1;
    private static final int SLOT_0 = 0;
    private static final String UPDATE_SIM_IMSI_INFO_SETTINGS_0 = "update_sim_imsi_info_settings_0";
    private static final String UPDATE_SIM_IMSI_INFO_SETTINGS_1 = "update_sim_imsi_info_settings_1";
    private static final String VONR_SWITCH_DB = "vonr_hd_call";
    private HwImsServiceImpl[] mHwImsServiceImpls;
    private VoNrSwitchObserver mVoNrSwitchObserver = null;
    private static final boolean IS_HW_VOLTE_ON = SystemProperties.getBoolean("ro.config.hw_volte_on", false);
    private static final boolean IS_SUPPORT_CMCC_ENCRYPT = SystemProperties.getBoolean("ro.config.cmcc.volteencrypt", false);
    private static final boolean IS_JP = "jp".equals(SystemProperties.get("ro.hw.country"));

    public static int getNumSubscriptions() {
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            return 2;
        }
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate() {
        super.onCreate();
        Rlog.i(LOG_TAG, "HwImsService created!");
        if (!IS_HW_VOLTE_ON) {
            Rlog.i(LOG_TAG, "onCreate: not support VoLTE");
        } else {
            this.mHwImsServiceImpls = new HwImsServiceImpl[getNumSubscriptions()];
            int numSubscriptions = getNumSubscriptions();
            for (int i = 0; i < numSubscriptions; i++) {
                this.mHwImsServiceImpls[i] = new HwImsServiceImpl(i, this);
            }
            if (VtUtils.isVtSupported()) {
                ImsVtGlobals.init(this);
                if (VtUtils.isVtFlowInfo()) {
                    ImsVtGlobals.setHwImsServiceImpl(this.mHwImsServiceImpls);
                }
            }
            if (IS_SUPPORT_CMCC_ENCRYPT) {
                HemihuaLoaderManager mLoaderManager = HemihuaLoaderManager.getInstance(this);
                mLoaderManager.startHemihuaLoader();
            }
            if (HwTelephonyManager.getDefault().isNrSupported()) {
                this.mVoNrSwitchObserver = new VoNrSwitchObserver(new Handler());
                getContentResolver().registerContentObserver(Settings.System.getUriFor(VONR_SWITCH_DB), true, this.mVoNrSwitchObserver);
            }
            Rlog.i(LOG_TAG, "onCreate: isDeviceProvisioned IS_JP " + IS_JP);
            if (IS_JP && !isDeviceProvisioned()) {
                Rlog.i(LOG_TAG, "onCreate: isDeviceProvisioned");
                for (int i2 = 0; i2 < numSubscriptions; i2++) {
                    setDbValue(i2, 1);
                }
            }
        }
        Rlog.i(LOG_TAG, "HwImsService onCreate done");
    }

    public void onDestroy() {
        Rlog.i(LOG_TAG, "Ims Service Destroyed Successfully...");
        if (IS_HW_VOLTE_ON && VtUtils.isVtSupported()) {
            ImsVtGlobals.deInit();
        }
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        if (!IS_HW_VOLTE_ON) {
            Rlog.i(LOG_TAG, "onBind: not support VoLTE, renturn null");
            return null;
        }
        if (intent == null || intent.getAction() == null) {
            Rlog.i(LOG_TAG, "onBind: intent or intent.getAction() is null");
            return null;
        }
        if (!"android.telephony.ims.ImsService".equals(intent.getAction())) {
            return null;
        }
        Rlog.i(LOG_TAG, "HwImsService Bound.");
        return this.mImsServiceController;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MmTelFeature createMmTelFeature(int slotId) {
        if (!ImsCallProviderUtils.isValidSlotId(slotId)) {
            Rlog.e(LOG_TAG, "createMmTelFeature: Invalid slotId, slotId = " + slotId);
            return null;
        }
        int serviceSubIndex = 0;
        if (ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            serviceSubIndex = slotId;
        }
        MmTelFeature hwMmTelFeature = new HwMmTelFeature(this, slotId, this.mHwImsServiceImpls[serviceSubIndex]);
        Rlog.i(LOG_TAG, "onCreateMMTelImsFeature:hwMmTelFeature = " + hwMmTelFeature + " slotId = " + slotId + " serviceSubIndex = " + serviceSubIndex);
        return hwMmTelFeature;
    }

    public void readyForFeatureCreation() {
    }

    public void enableIms(int slotId) {
    }

    public void disableIms(int slotId) {
    }

    public ImsConfigImplBase getConfig(int slotId) {
        Rlog.i(LOG_TAG, "getConfig: isValidSlotId= " + ImsCallProviderUtils.isValidSlotId(slotId) + " slotId = " + slotId);
        if (!ImsCallProviderUtils.isValidSlotId(slotId)) {
            return null;
        }
        return this.mHwImsServiceImpls[getRealSlot(slotId)].getConfig();
    }

    public ImsRegistrationImplBase getRegistration(int slotId) {
        Rlog.i(LOG_TAG, "getRegistration: isValidSlotId= " + ImsCallProviderUtils.isValidSlotId(slotId) + " slotId = " + slotId);
        if (!ImsCallProviderUtils.isValidSlotId(slotId)) {
            return null;
        }
        return this.mHwImsServiceImpls[getRealSlot(slotId)].getImsRegistrationImpl();
    }

    private int getRealSlot(int slotId) {
        if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            return 0;
        }
        return slotId;
    }

    private boolean isDeviceProvisioned() {
        return Settings.Global.getInt(getContentResolver(), "device_provisioned", 0) == 1;
    }

    private void setDbValue(int slotId, int value) {
        if (slotId == 0) {
            Settings.Secure.putInt(getContentResolver(), UPDATE_SIM_IMSI_INFO_SETTINGS_0, value);
        } else {
            Settings.Secure.putInt(getContentResolver(), UPDATE_SIM_IMSI_INFO_SETTINGS_1, value);
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class VoNrSwitchObserver extends ContentObserver {
        VoNrSwitchObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean isSelfChange) {
            int defaultSlotId = HwTelephonyManagerInner.getDefault().getDefault4GSlotId();
            if (!ImsCallProviderUtils.isValidSlotId(defaultSlotId)) {
                Rlog.e(HwImsService.LOG_TAG, "setVoNrSwitch: Invalid slotId, slotId = " + defaultSlotId);
                return;
            }
            int vonrSwitch = Settings.System.getInt(HwImsService.this.getContentResolver(), HwImsService.VONR_SWITCH_DB, 0);
            Rlog.i(HwImsService.LOG_TAG, "vonr switch changed to " + vonrSwitch);
            HwImsService.this.mHwImsServiceImpls[defaultSlotId].setVoNrSwitch(vonrSwitch);
        }
    }
}
