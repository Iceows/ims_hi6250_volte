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

/* loaded from: ImsUtImpl.class */
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

    /* loaded from: ImsUtImpl$HwInnerImsUt.class */
    public class HwInnerImsUt extends IHwImsUtManager.Stub {
        private ImsUtImpl imsUtImpl;

        HwInnerImsUt(ImsUtImpl imsUtImpl) {
            this.imsUtImpl = imsUtImpl;
        }

        HwImsUtImpl getHwImsUtImpl(int i) {
            Rlog.d(ImsUtImpl.LOG_TAG, "phoneId is " + i);
            if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
                Rlog.d(ImsUtImpl.LOG_TAG, "single ims, set phoneId to 0  ");
                i = 0;
            }
            return this.imsUtImpl.getHwImsUtImpl(i);
        }

        public String getUtIMPUFromNetwork(int i) {
            HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(i);
            if (hwImsUtImpl != null) {
                return hwImsUtImpl.getUtIMPUFromNetwork();
            }
            return null;
        }

        public boolean isSupportCFT(int i) {
            ImsUtImpl.checkAccessPermission();
            HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(i);
            if (hwImsUtImpl != null) {
                return hwImsUtImpl.isSupportCFT();
            }
            return false;
        }

        public boolean isUtEnable(int i) {
            ImsUtImpl.checkAccessPermission();
            HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(i);
            if (hwImsUtImpl != null) {
                return hwImsUtImpl.isUtEnable();
            }
            return false;
        }

        public void processECT(int i) {
            HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(i);
            if (hwImsUtImpl != null) {
                hwImsUtImpl.processECT();
            }
        }

        public int queryCallForwardForServiceClass(int i, int i2, String str, int i3) {
            HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(i);
            if (hwImsUtImpl != null) {
                return hwImsUtImpl.queryCallForwardForServiceClass(i2, str, i3);
            }
            return -1;
        }

        public int updateCallBarringOption(int i, String str, int i2, boolean z, int i3, String[] strArr) {
            ImsUtImpl.checkAccessPermission();
            HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(i);
            if (hwImsUtImpl != null) {
                return hwImsUtImpl.updateCallBarringOption(str, i2, z, i3, strArr);
            }
            return -1;
        }

        public int updateCallForwardUncondTimer(int i, int i2, int i3, int i4, int i5, int i6, int i7, String str) {
            ImsUtImpl.checkAccessPermission();
            HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(i);
            if (hwImsUtImpl != null) {
                return hwImsUtImpl.updateCallForwardUncondTimer(i2, i3, i4, i5, i6, i7, str);
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImsUtImpl() {
        Rlog.i(LOG_TAG, "ImsUtImpl::ImsUtImpl()");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1001 && callingUid != 1000) {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HwImsUtImpl getHwImsUtImpl(int i) {
        if (!ImsCallProviderUtils.isValidServiceSubIndex(i)) {
            Rlog.e(LOG_TAG, "getHwImsUtImpl: subId is invalid");
            return null;
        } else if (mHwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "getHwImsUtImpl: mHwImsUtImpl is null");
            return null;
        } else {
            HwImsUtImpl hwImsUtImpl = mHwImsUtImpl[i];
            if (hwImsUtImpl == null) {
                Rlog.e(LOG_TAG, "getHwImsUtImpl: HwImsUtImpl[" + i + "] is null");
            }
            return hwImsUtImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImsUtImpl getInstance() {
        checkAccessPermission();
        if (instance == null) {
            synchronized (ImsUtImpl.class) {
                try {
                    if (instance == null) {
                        instance = new ImsUtImpl();
                        Rlog.i(LOG_TAG, "add ims_ut service");
                        ServiceManager.addService(IMS_UT_SERVICE_NAME, instance.getInterface().asBinder());
                        mHwImsUtImpl = new HwImsUtImpl[HwImsService.getNumSubscriptions()];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            Rlog.d(LOG_TAG, "instance is already exist!");
        }
        return instance;
    }

    private void logUnexpectedMethodCall(String str) {
        loge("Error! " + str + "() is not supported");
    }

    private static void loge(String str) {
        Rlog.e(LOG_TAG, "[ERROR] " + str);
    }

    public void broadcastUtIdle(int i) {
        int i2 = i == 0 ? 1 : 0;
        HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(i2);
        if (hwImsUtImpl != null) {
            hwImsUtImpl.receiveOtherSubUtIdle();
            return;
        }
        Rlog.e(LOG_TAG, "broadcastUtIdle: HwImsUtImpl[" + i2 + "] is null");
    }

    void clear() {
        logUnexpectedMethodCall("clear");
    }

    public void close() {
        logUnexpectedMethodCall("close");
    }

    protected void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (mHwImsUtImpl != null && mHwImsUtImpl.length != 0) {
            this.mContext = mHwImsUtImpl[0].getContext();
        }
        if (this.mContext != null && this.mContext.checkCallingPermission("android.permission.DUMP") != 0) {
            printWriter.println("Permission Denial: can't dump ims_ut from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            Rlog.e(LOG_TAG, "dump,no permission return");
        } else if (DYADIC_ARRAY != null && DYADIC_ARRAY.length != 0) {
            for (int i = 0; i < DYADIC_ARRAY.length; i++) {
                printWriter.println(DYADIC_ARRAY[i][1] + " = " + SystemProperties.get(DYADIC_ARRAY[i][0], (String) null));
            }
        }
    }

    public IBinder getHwInnerService() {
        return this.mHwInnerService;
    }

    public String getUtIMPUFromNetwork() {
        logUnexpectedMethodCall("getUtIMPUFromNetwork");
        return null;
    }

    public HwImsUtImpl getUtInterface(HwImsServiceImpl hwImsServiceImpl, int i) {
        checkAccessPermission();
        if (hwImsServiceImpl == null) {
            Rlog.e(LOG_TAG, "getUtInterface - hwImsServiceImpl is null");
            return null;
        } else if (!ImsCallProviderUtils.isValidServiceSubIndex(i)) {
            Rlog.e(LOG_TAG, "getUtInterface - subId is invalid");
            return null;
        } else if (mHwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "getUtInterface - mHwImsUtImpl is null");
            return null;
        } else if (mHwImsUtImpl[i] == null) {
            mHwImsUtImpl[i] = new HwImsUtImpl(hwImsServiceImpl, i, this);
            return mHwImsUtImpl[i];
        } else {
            Rlog.d(LOG_TAG, "getUtInterface - mImsUtImpl [ " + i + "] is already exist!");
            return mHwImsUtImpl[i];
        }
    }

    void handleImsGetImpuDone(String str) {
        logUnexpectedMethodCall("handleImsGetImpuDone");
    }

    void handleSimCardAbsent() {
        logUnexpectedMethodCall("handleSimCardAbsent");
    }

    void handleSimRecordsLoaded(String str) {
        logUnexpectedMethodCall("handleSimRecordsLoaded");
    }

    boolean isAirModeResetCWInModem() {
        logUnexpectedMethodCall("isAirModeResetCWInModem");
        return false;
    }

    public boolean isOtherSubUtIdle(int i) {
        return isUtIdle(i == 0 ? 1 : 0);
    }

    public boolean isSupportCFT() {
        logUnexpectedMethodCall("isSupportCFT");
        return false;
    }

    public boolean isUtIdle(int i) {
        HwImsUtImpl hwImsUtImpl = getHwImsUtImpl(i);
        if (hwImsUtImpl == null) {
            Rlog.e(LOG_TAG, "isUtIdle: HwImsUtImpl[" + i + "] is null");
            return true;
        }
        return hwImsUtImpl.isUtIdle();
    }

    public void processECT() {
        logUnexpectedMethodCall("processECT");
    }

    void queryAndSyncCallWaitingToCs() {
        logUnexpectedMethodCall("queryAndSyncCallWaitingToCs");
    }

    void queryAndSyncCallWaitingToImsSdk() {
        logUnexpectedMethodCall("queryAndSyncCallWaitingToImsSdk");
    }

    public int queryCLIP() {
        logUnexpectedMethodCall("queryCLIP");
        return -1;
    }

    public int queryCLIR() {
        logUnexpectedMethodCall("queryCLIR");
        return -1;
    }

    public int queryCOLP() {
        logUnexpectedMethodCall("queryCOLP");
        return -1;
    }

    public int queryCOLR() {
        logUnexpectedMethodCall("queryCOLR");
        return -1;
    }

    public int queryCallBarring(int i) {
        logUnexpectedMethodCall("queryCallBarring");
        return -1;
    }

    public int queryCallForward(int i, String str) {
        logUnexpectedMethodCall("queryCallForward");
        return -1;
    }

    public int queryCallForwardForServiceClass(int i, String str, int i2) {
        logUnexpectedMethodCall("queryCallForwardForServiceClass");
        return -1;
    }

    public int queryCallWaiting() {
        logUnexpectedMethodCall("queryCallWaiting");
        return -1;
    }

    public void setListener(IImsUtListener iImsUtListener) {
        logUnexpectedMethodCall("setListener");
    }

    public int transact(Bundle bundle) {
        loge("Unsupported API transact() called.");
        return -1;
    }

    public int updateCLIP(boolean z) {
        logUnexpectedMethodCall("updateCLIP");
        return -1;
    }

    public int updateCLIR(int i) {
        logUnexpectedMethodCall("updateCLIR");
        return -1;
    }

    public int updateCOLP(boolean z) {
        logUnexpectedMethodCall("updateCOLP");
        return -1;
    }

    public int updateCOLR(int i) {
        logUnexpectedMethodCall("updateCOLR");
        return -1;
    }

    public int updateCallBarring(int i, int i2, String[] strArr) {
        logUnexpectedMethodCall("updateCallBarring");
        return -1;
    }

    public int updateCallBarring(int i, boolean z, String[] strArr) {
        logUnexpectedMethodCall("updateCallBarring");
        return -1;
    }

    public int updateCallBarringOption(String str, int i, boolean z, String[] strArr) {
        logUnexpectedMethodCall("updateCallBarringOption");
        return -1;
    }

    public int updateCallForward(int i, int i2, String str, int i3, int i4) {
        logUnexpectedMethodCall("updateCallForward");
        return -1;
    }

    public int updateCallForwardUncondTimer(int i, int i2, int i3, int i4, int i5, int i6, String str) {
        logUnexpectedMethodCall("updateCallForwardUncondTimer");
        return -1;
    }

    public int updateCallWaiting(boolean z, int i) {
        logUnexpectedMethodCall("updateCallWaiting");
        return -1;
    }
}
