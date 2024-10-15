package com.huawei.ims;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.telephony.Rlog;
import android.telephony.ims.stub.ImsUtImplBase;
import com.android.ims.IHwImsUtManager;
import com.android.ims.internal.IImsUtListener;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsUtImpl extends ImsUtImplBase {
    private static final int ARRAY_INDEX_ONE = 1;
    private static final String IMS_UT_SERVICE_NAME = "ims_ut";
    private static final String LOG_TAG = "ImsUtImpl";
    private static final int UT_INVALID = -1;
    private Context mContext;
    private HwInnerImsUt mHwInnerService = new HwInnerImsUt(this);
    private static final String[][] DYADIC_ARRAY = {new String[]{HwImsConfigImpl.UT_FORBIDDEN_WVSO_PROP_KEY, HwImsConfigImpl.UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF}, new String[]{HwImsConfigImpl.UT_BEARER_TYPE_PROP_KEY, HwImsConfigImpl.UT_BEARER_TYPE_XML_KEY}, new String[]{HwImsConfigImpl.UT_NAF_SRV_ADDR_PROP_KEY, HwImsConfigImpl.UT_NAF_SRV_ADDR_XML_KEY}, new String[]{HwImsConfigImpl.UT_NAF_PORT_PROP_KEY, HwImsConfigImpl.UT_NAF_PORT_XML_KEY}, new String[]{HwImsConfigImpl.UT_BSF_SRV_ADDR_PROP_KEY, HwImsConfigImpl.UT_BSF_SRV_ADDR_XML_KEY}, new String[]{HwImsConfigImpl.UT_BSF_PORT_PROP_KEY, HwImsConfigImpl.UT_BSF_PORT_XML_KEY}, new String[]{HwImsConfigImpl.SS_TYPE_USE_CS_ONLY_PROP_KEY, HwImsConfigImpl.SS_TYPE_USE_CS_ONLY_XML_KEY}, new String[]{HwImsConfigImpl.CALL_WAITING_MODE_PROP_KEY, HwImsConfigImpl.CALL_WAITING_MODE_XML_KEY}, new String[]{HwImsConfigImpl.UT_XCAP_ROOT_URI_PROP_KEY, HwImsConfigImpl.UT_XCAP_ROOT_XML_KEY}, new String[]{HwImsConfigImpl.UT_PREFER_TO_USE_UT_PROP_KEY, HwImsConfigImpl.PREFER_TO_USE_UT_XML_KEY}};
    private static volatile ImsUtImpl sInstance = null;
    private static HwImsUtImpl[] sHwImsUtImpl = null;

    /* JADX INFO: Access modifiers changed from: protected */
    public ImsUtImpl() {
        Rlog.i(LOG_TAG, "ImsUtImpl::ImsUtImpl()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImsUtImpl getInstance() {
        checkAccessPermission();
        if (sInstance == null) {
            synchronized (ImsUtImpl.class) {
                if (sInstance == null) {
                    sInstance = new ImsUtImpl();
                    Rlog.i(LOG_TAG, "add ims_ut service");
                    ServiceManager.addService(IMS_UT_SERVICE_NAME, sInstance.getInterface().asBinder());
                    sHwImsUtImpl = new HwImsUtImpl[HwImsService.getNumSubscriptions()];
                }
            }
        } else {
            Rlog.i(LOG_TAG, "sInstance is already exist!");
        }
        return sInstance;
    }

    public HwImsUtImpl getUtInterface(HwImsServiceImpl hwImsServiceImpl, int slotId) {
        checkAccessPermission();
        if (hwImsServiceImpl == null) {
            Rlog.e(LOG_TAG, "getUtInterface - hwImsServiceImpl is null");
            return null;
        }
        if (!ImsCallProviderUtils.isValidServiceSubIndex(slotId)) {
            Rlog.e(LOG_TAG, "getUtInterface - slotId is invalid");
            return null;
        }
        HwImsUtImpl[] hwImsUtImplArr = sHwImsUtImpl;
        if (hwImsUtImplArr == null) {
            Rlog.e(LOG_TAG, "getUtInterface - sHwImsUtImpl is null");
            return null;
        }
        if (hwImsUtImplArr[slotId] != null) {
            Rlog.i(LOG_TAG, "getUtInterface - mImsUtImpl [ " + slotId + "] is already exist!");
            return sHwImsUtImpl[slotId];
        }
        hwImsUtImplArr[slotId] = new HwImsUtImpl(hwImsServiceImpl, slotId, this);
        return sHwImsUtImpl[slotId];
    }

    public int transact(Bundle ssInfo) {
        loge("Unsupported API transact() called.");
        return -1;
    }

    public void setListener(IImsUtListener listener) {
        logUnexpectedMethodCall("setListener");
    }

    public void close() {
        logUnexpectedMethodCall("close");
    }

    public int queryCallBarring(int cbType) {
        logUnexpectedMethodCall("queryCallBarring");
        return -1;
    }

    public int queryCallForward(int condition, String number) {
        logUnexpectedMethodCall("queryCallForward");
        return -1;
    }

    public int queryCallForwardForServiceClass(int condition, String number, int serviceClass) {
        logUnexpectedMethodCall("queryCallForwardForServiceClass");
        return -1;
    }

    public int queryCallWaiting() {
        logUnexpectedMethodCall("queryCallWaiting");
        return -1;
    }

    public int queryCLIR() {
        logUnexpectedMethodCall("queryCLIR");
        return -1;
    }

    public int queryCLIP() {
        logUnexpectedMethodCall("queryCLIP");
        return -1;
    }

    public int queryCOLR() {
        logUnexpectedMethodCall("queryCOLR");
        return -1;
    }

    public int queryCOLP() {
        logUnexpectedMethodCall("queryCOLP");
        return -1;
    }

    public int updateCallBarring(int cbType, boolean isAction, String[] barrList) {
        logUnexpectedMethodCall("updateCallBarring");
        return -1;
    }

    public int updateCallBarring(int cbType, int action, String[] barrList) {
        logUnexpectedMethodCall("updateCallBarring");
        return -1;
    }

    public int updateCallBarringOption(String password, int cbType, boolean isAction, String[] barrList) {
        logUnexpectedMethodCall("updateCallBarringOption");
        return -1;
    }

    public int updateCallForward(int action, int condition, String number, int serviceClass, int timeSeconds) {
        logUnexpectedMethodCall("updateCallForward");
        return -1;
    }

    public int updateCallForwardUncondTimer(int startHour, int startMinute, int endHour, int endMinute, int action, int condition, String number) {
        logUnexpectedMethodCall("updateCallForwardUncondTimer");
        return -1;
    }

    public int updateCallWaiting(boolean isEnable, int serviceClass) {
        logUnexpectedMethodCall("updateCallWaiting");
        return -1;
    }

    public int updateCLIR(int clirMode) {
        logUnexpectedMethodCall("updateCLIR");
        return -1;
    }

    public int updateCLIP(boolean isEnable) {
        logUnexpectedMethodCall("updateCLIP");
        return -1;
    }

    public int updateCOLR(int presentation) {
        logUnexpectedMethodCall("updateCOLR");
        return -1;
    }

    public int updateCOLP(boolean isEnable) {
        logUnexpectedMethodCall("updateCOLP");
        return -1;
    }

    public void processECT() {
        logUnexpectedMethodCall("processECT");
    }

    public String getUtIMPUFromNetwork() {
        logUnexpectedMethodCall("getUtIMPUFromNetwork");
        return null;
    }

    void queryAndSyncCallWaitingToCs() {
        logUnexpectedMethodCall("queryAndSyncCallWaitingToCs");
    }

    void queryAndSyncCallWaitingToImsSdk() {
        logUnexpectedMethodCall("queryAndSyncCallWaitingToImsSdk");
    }

    boolean isAirModeResetCwInModem() {
        logUnexpectedMethodCall("isAirModeResetCwInModem");
        return false;
    }

    void handleSimCardAbsent() {
        logUnexpectedMethodCall("handleSimCardAbsent");
    }

    void handleImsGetImpuDone(String impu) {
        logUnexpectedMethodCall("handleImsGetImpuDone");
    }

    void handleSimRecordsLoaded(String newImsi) {
        logUnexpectedMethodCall("handleSimRecordsLoaded");
    }

    public boolean isSupportCFT() {
        logUnexpectedMethodCall("isSupportCFT");
        return false;
    }

    void clear() {
        logUnexpectedMethodCall("clear");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1001 || callingUid == 1000) {
        } else {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    private void logUnexpectedMethodCall(String name) {
        loge("Error! " + name + "() is not supported");
    }

    private static void loge(String s) {
        Rlog.e(LOG_TAG, "[ERROR] " + s);
    }

    public boolean endOtherImsConnectivity(int slotId) {
        int otherSlotId = slotId == 0 ? 1 : 0;
        HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(otherSlotId);
        if (hwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "isOtherConnectivityEnd: HwImsUtImpl[" + otherSlotId + "] is null");
            return false;
        }
        return hwImsUtImpl.endCurrentImsConnectivity();
    }

    public boolean isOtherSubUtIdle(int slotId) {
        int otherSlotId = slotId == 0 ? 1 : 0;
        return isUtIdle(otherSlotId);
    }

    public boolean isUtIdle(int slotId) {
        HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(slotId);
        if (hwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "isUtIdle: HwImsUtImpl[" + slotId + "] is null");
            return true;
        }
        return hwImsUtImpl.isUtIdle();
    }

    public void broadcastUtIdle(int slotId) {
        int otherSlotId = slotId == 0 ? 1 : 0;
        HwImsUtImpl otherHwImsUtImpl = getHwImsUtImpl(otherSlotId);
        if (otherHwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "broadcastUtIdle: HwImsUtImpl[" + otherSlotId + "] is null");
            return;
        }
        otherHwImsUtImpl.receiveOtherSubUtIdle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HwImsUtImpl getHwImsUtImpl(int slotId) {
        if (!ImsCallProviderUtils.isValidServiceSubIndex(slotId)) {
            Rlog.e(LOG_TAG, "getHwImsUtImpl: slotId is invalid");
            return null;
        }
        HwImsUtImpl[] hwImsUtImplArr = sHwImsUtImpl;
        if (hwImsUtImplArr == null) {
            Rlog.e(LOG_TAG, "getHwImsUtImpl: sHwImsUtImpl is null");
            return null;
        }
        HwImsUtImpl hwImsUtImpl = hwImsUtImplArr[slotId];
        if (hwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "getHwImsUtImpl: HwImsUtImpl[" + slotId + "] is null");
        }
        return hwImsUtImpl;
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (pw == null) {
            return;
        }
        HwImsUtImpl[] hwImsUtImplArr = sHwImsUtImpl;
        if (hwImsUtImplArr != null && hwImsUtImplArr.length != 0) {
            this.mContext = hwImsUtImplArr[0].getContext();
        }
        Context context = this.mContext;
        if (context != null && context.checkCallingPermission("android.permission.DUMP") != 0) {
            pw.println("Permission Denial: can't dump ims_ut from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            Rlog.e(LOG_TAG, "dump,no permission return");
            return;
        }
        String[][] strArr = DYADIC_ARRAY;
        if (strArr != null && strArr.length != 0) {
            for (int i = 0; i < DYADIC_ARRAY.length; i++) {
                pw.println(DYADIC_ARRAY[i][1] + " = " + SystemProperties.get(DYADIC_ARRAY[i][0], (String) null));
            }
        }
    }

    public IBinder getHwInnerService() {
        return this.mHwInnerService;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public class HwInnerImsUt extends IHwImsUtManager.Stub {
        private ImsUtImpl imsUtImpl;

        HwInnerImsUt(ImsUtImpl imsUt) {
            this.imsUtImpl = imsUt;
        }

        HwImsUtImpl getHwImsUtImpl(int phoneId) {
            Rlog.i(ImsUtImpl.LOG_TAG, "phoneId is " + phoneId);
            int tmpPhoneId = phoneId;
            if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
                Rlog.i(ImsUtImpl.LOG_TAG, "single ims, set phoneId to 0  ");
                tmpPhoneId = 0;
            }
            return this.imsUtImpl.getHwImsUtImpl(tmpPhoneId);
        }

        public boolean isSupportCFT(int phoneId) {
            ImsUtImpl.checkAccessPermission();
            HwImsUtImpl hwImsUt = getHwImsUtImpl(phoneId);
            if (hwImsUt != null) {
                return hwImsUt.isSupportCFT();
            }
            return false;
        }

        public boolean isUtEnable(int phoneId) {
            ImsUtImpl.checkAccessPermission();
            HwImsUtImpl hwImsUt = getHwImsUtImpl(phoneId);
            if (hwImsUt != null) {
                return hwImsUt.isUtEnable();
            }
            return false;
        }

        public int updateCallForwardUncondTimer(int phoneId, int starthour, int startminute, int endhour, int endminute, int action, int condition, String number) {
            ImsUtImpl.checkAccessPermission();
            HwImsUtImpl hwImsUt = getHwImsUtImpl(phoneId);
            if (hwImsUt != null) {
                return hwImsUt.updateCallForwardUncondTimer(starthour, startminute, endhour, endminute, action, condition, number);
            }
            return -1;
        }

        public int updateCallBarringOption(int phoneId, String password, int cbType, boolean isEnable, int serviceClass, String[] barrList) {
            ImsUtImpl.checkAccessPermission();
            HwImsUtImpl hwImsUt = getHwImsUtImpl(phoneId);
            if (hwImsUt != null) {
                return hwImsUt.updateCallBarringOption(password, cbType, isEnable, serviceClass, barrList);
            }
            return -1;
        }

        public int queryCallForwardForServiceClass(int phoneId, int condition, String number, int serviceClass) {
            HwImsUtImpl hwImsUt = getHwImsUtImpl(phoneId);
            if (hwImsUt != null) {
                return hwImsUt.queryCallForwardForServiceClass(condition, number, serviceClass);
            }
            return -1;
        }

        public void processECT(int phoneId) {
            HwImsUtImpl hwImsUt = getHwImsUtImpl(phoneId);
            if (hwImsUt != null) {
                hwImsUt.processECT();
            }
        }

        public String getUtIMPUFromNetwork(int phoneId) {
            HwImsUtImpl hwImsUt = getHwImsUtImpl(phoneId);
            if (hwImsUt != null) {
                return hwImsUt.getUtIMPUFromNetwork();
            }
            return null;
        }
    }
}
