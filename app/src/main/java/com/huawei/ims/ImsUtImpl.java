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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class ImsUtImpl extends ImsUtImplBase {
    private static final int ARRAY_INDEX_ONE = 1;
    private static final boolean DEBUG = false;
    private static final String IMS_UT_SERVICE_NAME = "ims_ut";
    private static final String LOG_TAG = "ImsUtImpl";
    private static final int UT_INVALID = -1;
    private Context mContext;
    HwInnerImsUt mHwInnerService = new HwInnerImsUt(this);
    private static volatile ImsUtImpl instance = null;
    private static HwImsUtImpl[] mHwImsUtImpl = null;
    private static final String[][] DYADIC_ARRAY = {new String[]{HwImsConfigImpl.UT_FORBIDDEN_WVSO_PROP_KEY, HwImsConfigImpl.UT_FORBIDDEN_WHEN_VOLTE_SWITCH_OFF}, new String[]{HwImsConfigImpl.UT_BEARER_TYPE_PROP_KEY, HwImsConfigImpl.UT_BEARER_TYPE_XML_KEY}, new String[]{HwImsConfigImpl.UT_NAF_SRV_ADDR_PROP_KEY, HwImsConfigImpl.UT_NAF_SRV_ADDR_XML_KEY}, new String[]{HwImsConfigImpl.UT_NAF_PORT_PROP_KEY, HwImsConfigImpl.UT_NAF_PORT_XML_KEY}, new String[]{HwImsConfigImpl.UT_BSF_SRV_ADDR_PROP_KEY, HwImsConfigImpl.UT_BSF_SRV_ADDR_XML_KEY}, new String[]{HwImsConfigImpl.UT_BSF_PORT_PROP_KEY, HwImsConfigImpl.UT_BSF_PORT_XML_KEY}, new String[]{HwImsConfigImpl.SS_TYPE_USE_CS_ONLY_PROP_KEY, HwImsConfigImpl.SS_TYPE_USE_CS_ONLY_XML_KEY}, new String[]{HwImsConfigImpl.CALL_WAITING_MODE_PROP_KEY, HwImsConfigImpl.CALL_WAITING_MODE_XML_KEY}, new String[]{HwImsConfigImpl.UT_XCAP_ROOT_URI_PROP_KEY, HwImsConfigImpl.UT_XCAP_ROOT_XML_KEY}, new String[]{HwImsConfigImpl.UT_PREFER_TO_USE_UT_PROP_KEY, HwImsConfigImpl.PREFER_TO_USE_UT_XML_KEY}};

    public ImsUtImpl() {
        Rlog.i(LOG_TAG, "ImsUtImpl::ImsUtImpl()");
    }

    public static ImsUtImpl getInstance() {
        checkAccessPermission();
        if (instance == null) {
            synchronized (ImsUtImpl.class) {
                if (instance == null) {
                    instance = new ImsUtImpl();
                    Rlog.i(LOG_TAG, "add ims_ut service");
                    ServiceManager.addService(IMS_UT_SERVICE_NAME, instance.getInterface().asBinder());
                    mHwImsUtImpl = new HwImsUtImpl[HwImsService.getNumSubscriptions()];
                }
            }
        } else {
            Rlog.d(LOG_TAG, "instance is already exist!");
        }
        return instance;
    }

    public HwImsUtImpl getUtInterface(HwImsServiceImpl hwImsServiceImpl, int subId) {
        checkAccessPermission();
        if (hwImsServiceImpl == null) {
            Rlog.e(LOG_TAG, "getUtInterface - hwImsServiceImpl is null");
            return null;
        } else if (!ImsCallProviderUtils.isValidServiceSubIndex(subId)) {
            Rlog.e(LOG_TAG, "getUtInterface - subId is invalid");
            return null;
        } else if (mHwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "getUtInterface - mHwImsUtImpl is null");
            return null;
        } else if (mHwImsUtImpl[subId] != null) {
            Rlog.d(LOG_TAG, "getUtInterface - mImsUtImpl [ " + subId + "] is already exist!");
            return mHwImsUtImpl[subId];
        } else {
            mHwImsUtImpl[subId] = new HwImsUtImpl(hwImsServiceImpl, subId, this);
            return mHwImsUtImpl[subId];
        }
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

    public int updateCallBarring(int cbType, boolean action, String[] barrList) {
        logUnexpectedMethodCall("updateCallBarring");
        return -1;
    }

    public int updateCallBarring(int cbType, int action, String[] barrList) {
        logUnexpectedMethodCall("updateCallBarring");
        return -1;
    }

    public int updateCallBarringOption(String password, int cbType, boolean action, String[] barrList) {
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

    public int updateCallWaiting(boolean enable, int serviceClass) {
        logUnexpectedMethodCall("updateCallWaiting");
        return -1;
    }

    public int updateCLIR(int clirMode) {
        logUnexpectedMethodCall("updateCLIR");
        return -1;
    }

    public int updateCLIP(boolean enable) {
        logUnexpectedMethodCall("updateCLIP");
        return -1;
    }

    public int updateCOLR(int presentation) {
        logUnexpectedMethodCall("updateCOLR");
        return -1;
    }

    public int updateCOLP(boolean enable) {
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

    boolean isAirModeResetCWInModem() {
        logUnexpectedMethodCall("isAirModeResetCWInModem");
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

    public static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1001 || callingUid == 1000) {
            return;
        }
        throw new SecurityException("Only Phone is able to call this API");
    }

    private void logUnexpectedMethodCall(String name) {
        loge("Error! " + name + "() is not supported");
    }

    private static void loge(String s) {
        Rlog.e(LOG_TAG, "[ERROR] " + s);
    }

    public boolean isOtherSubUtIdle(int subId) {
        int otherSubId = subId == 0 ? 1 : 0;
        return isUtIdle(otherSubId);
    }

    public boolean isUtIdle(int subId) {
        HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(subId);
        if (hwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "isUtIdle: HwImsUtImpl[" + subId + "] is null");
            return true;
        }
        return hwImsUtImpl.isUtIdle();
    }

    public void broadcastUtIdle(int subId) {
        int otherSubId = subId == 0 ? 1 : 0;
        HwImsUtImpl otherHwImsUtImpl = getHwImsUtImpl(otherSubId);
        if (otherHwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "broadcastUtIdle: HwImsUtImpl[" + otherSubId + "] is null");
            return;
        }
        otherHwImsUtImpl.receiveOtherSubUtIdle();
    }

    public HwImsUtImpl getHwImsUtImpl(int subId) {
        if (!ImsCallProviderUtils.isValidServiceSubIndex(subId)) {
            Rlog.e(LOG_TAG, "getHwImsUtImpl: subId is invalid");
            return null;
        } else if (mHwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "getHwImsUtImpl: mHwImsUtImpl is null");
            return null;
        } else {
            HwImsUtImpl hwImsUtImpl = mHwImsUtImpl[subId];
            if (hwImsUtImpl == null) {
                Rlog.e(LOG_TAG, "getHwImsUtImpl: HwImsUtImpl[" + subId + "] is null");
            }
            return hwImsUtImpl;
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (mHwImsUtImpl != null && mHwImsUtImpl.length != 0) {
            this.mContext = mHwImsUtImpl[0].getContext();
        }
        if (this.mContext != null && this.mContext.checkCallingPermission("android.permission.DUMP") != 0) {
            pw.println("Permission Denial: can't dump ims_ut from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            Rlog.e(LOG_TAG, "dump,no permission return");
        } else if (DYADIC_ARRAY != null && DYADIC_ARRAY.length != 0) {
            for (int i = 0; i < DYADIC_ARRAY.length; i++) {
                pw.println(DYADIC_ARRAY[i][1] + " = " + SystemProperties.get(DYADIC_ARRAY[i][0], (String) null));
            }
        }
    }

    public IBinder getHwInnerService() {
        return this.mHwInnerService;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public class HwInnerImsUt extends IHwImsUtManager.Stub {
        private ImsUtImpl imsUtImpl;

        HwInnerImsUt(ImsUtImpl imsUt) {
            ImsUtImpl.this = this$0;
            this.imsUtImpl = imsUt;
        }

        HwImsUtImpl getHwImsUtImpl(int phoneId) {
            Rlog.d(ImsUtImpl.LOG_TAG, "phoneId is " + phoneId);
            if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
                Rlog.d(ImsUtImpl.LOG_TAG, "single ims, set phoneId to 0  ");
                phoneId = 0;
            }
            return this.imsUtImpl.getHwImsUtImpl(phoneId);
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

        public int updateCallBarringOption(int phoneId, String password, int cbType, boolean enable, int serviceClass, String[] barrList) {
            ImsUtImpl.checkAccessPermission();
            HwImsUtImpl hwImsUt = getHwImsUtImpl(phoneId);
            if (hwImsUt != null) {
                return hwImsUt.updateCallBarringOption(password, cbType, enable, serviceClass, barrList);
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
