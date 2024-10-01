package com.huawei.ims;

import android.content.Context;
import android.os.AsyncResult;
import android.os.Binder;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.telephony.Rlog;
import android.telephony.ims.stub.ImsConfigImplBase;
import com.android.ims.ImsConfigListener;
import com.huawei.ims.HwImsConfigImpl;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class ImsConfigImpl extends ImsConfigImplBase {
    protected static final int CODE_IS_UNSUPPORT_MMI_CODE = 3001;
    private static final boolean DEBUG = false;
    private static final String DESCRIPTOR = "com.android.ims.internal.IImsConfig";
    private static final int EVENT_QUERY_VT_CALL_QUALITY = 2;
    private static final int EVENT_SET_FEATURE_VALUE = 3;
    private static final int EVENT_SET_VT_CALL_QUALITY = 1;
    private static final String IMS_CONFIG_SERVICE_NAME = "ims_config";
    private static final String LOG_TAG = "ImsConfigImpl";
    private static final Object mLock = new Object();
    private static volatile ImsConfigImpl instance = null;
    private static HwImsConfigImpl[] mHwImsConfigImpl = null;

    public ImsConfigImpl() {
        Rlog.i(LOG_TAG, "ImsConfigImpl::ImsConfigImpl()");
    }

    public static ImsConfigImpl getInstance() {
        checkAccessPermission();
        if (instance == null) {
            synchronized (ImsConfigImpl.class) {
                if (instance == null) {
                    instance = new ImsConfigImpl();
                    Rlog.i(LOG_TAG, "add ims_config service");
                    ServiceManager.addService(IMS_CONFIG_SERVICE_NAME, instance.getIImsConfig().asBinder());
                    mHwImsConfigImpl = new HwImsConfigImpl[HwImsService.getNumSubscriptions()];
                }
            }
        } else {
            logd("instance is already exist!");
        }
        return instance;
    }

    public HwImsConfigImpl getConfigInterface(HwImsServiceImpl hwImsServiceImpl, int subId) {
        checkAccessPermission();
        if (hwImsServiceImpl == null || hwImsServiceImpl.mContext == null) {
            Rlog.e(LOG_TAG, "getConfigInterface - hwImsServiceImpl or context is null");
            return null;
        } else if (!ImsCallProviderUtils.isValidServiceSubIndex(subId)) {
            Rlog.e(LOG_TAG, "getConfigInterface - subId is invalid");
            return null;
        } else if (mHwImsConfigImpl == null) {
            Rlog.e(LOG_TAG, "getConfigInterface - mHwImsConfigImpl is null");
            return null;
        } else if (mHwImsConfigImpl[subId] != null) {
            Rlog.d(LOG_TAG, "getConfigInterface - mHwImsConfigImpl [ " + subId + "] is already exist!");
            return mHwImsConfigImpl[subId];
        } else {
            mHwImsConfigImpl[subId] = new HwImsConfigImpl(hwImsServiceImpl, subId);
            return mHwImsConfigImpl[subId];
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static final class FeatureAccessWrapper {
        private int feature;
        public ImsConfigListener listener;
        private int network;
        private int value;

        public FeatureAccessWrapper(int feature, int network, int value, ImsConfigListener listener) {
            this.feature = feature;
            this.network = network;
            this.listener = listener;
            this.value = value;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    private class ImsConfigImplHandler extends Handler {
        private ImsConfigImplHandler() {
            ImsConfigImpl.this = r1;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            ImsConfigImpl.logd("Message received: what = " + msg.what);
            AsyncResult ar = (AsyncResult) msg.obj;
            switch (msg.what) {
                case 1:
                    ImsConfigImpl.this.onSetVideoCallQualityDone(ImsConfigImpl.this.getImsConfigListener(ar), ar);
                    return;
                case 2:
                    ImsConfigImpl.this.onGetVideoCallQualityDone(ImsConfigImpl.this.getImsConfigListener(ar), ar);
                    return;
                case 3:
                    ImsConfigImpl.this.onSetFeatureResponseDone(ImsConfigImpl.this.getImsConfigListener(ar), ar);
                    return;
                default:
                    ImsConfigImpl.loge("handleMessage: unhandled message");
                    return;
            }
        }
    }

    public void onGetVideoCallQualityDone(ImsConfigListener imsConfigListener, AsyncResult ar) {
        int result;
        if (imsConfigListener != null) {
            try {
                int status = getOperationStatus(ar.exception == null);
                if (ar.result == null) {
                    result = -1;
                } else {
                    result = ((Integer) ar.result).intValue();
                }
                imsConfigListener.onGetVideoQuality(status, result);
                return;
            } catch (Throwable th) {
                loge("onGetVideoCallQualityDone failed. ");
                return;
            }
        }
        loge("onGetVideoCallQualityDone listener is not valid !!!");
    }

    public void onSetVideoCallQualityDone(ImsConfigListener imsConfigListener, AsyncResult ar) {
        if (imsConfigListener != null) {
            try {
                int status = getOperationStatus(ar.exception == null);
                imsConfigListener.onSetVideoQuality(status);
                return;
            } catch (Throwable th) {
                loge("onSetVideoCallQualityDone failed.");
                return;
            }
        }
        loge("onSetVideoCallQualityDone listener is not valid !!!");
    }

    public void onSetFeatureResponseDone(ImsConfigListener imsConfigListener, AsyncResult ar) {
        if (imsConfigListener != null) {
            try {
                int status = getOperationStatus(ar.exception == null);
                FeatureAccessWrapper f = (FeatureAccessWrapper) ar.userObj;
                imsConfigListener.onSetFeatureResponse(f.feature, f.network, f.value, status);
                return;
            } catch (Throwable th) {
                loge("onSetFeatureResponseDone failed.");
                return;
            }
        }
        loge("onSetFeatureResponseDone listener is not valid !!!");
    }

    private int getOperationStatus(boolean status) {
        return status ? 0 : 1;
    }

    public ImsConfigListener getImsConfigListener(AsyncResult ar) {
        if (ar == null) {
            loge("AsyncResult is null.");
        } else if (ar.userObj instanceof ImsConfigListener) {
            return (ImsConfigListener) ar.userObj;
        } else {
            if ((ar.userObj instanceof FeatureAccessWrapper) && (((FeatureAccessWrapper) ar.userObj).listener instanceof ImsConfigListener)) {
                return ((FeatureAccessWrapper) ar.userObj).listener;
            }
        }
        loge("getImsConfigListener returns null");
        return null;
    }

    public void setFeatureValue(int feature, int network, int value, ImsConfigListener listener) {
    }

    public int setImsConfig(String configKey, PersistableBundle configValue) {
        return 1;
    }

    public PersistableBundle getImsConfig(String configKey) {
        return null;
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        Rlog.d(LOG_TAG, "onTransact, code = " + code);
        if (code != 3001) {
            return false;
        }
        checkAccessPermission();
        data.enforceInterface(DESCRIPTOR);
        int subId = data.readInt();
        Rlog.d(LOG_TAG, "onTransact , subId read from data is " + subId);
        if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            Rlog.d(LOG_TAG, "onTransact, single ims, set subId to 0");
            subId = 0;
        }
        if (mHwImsConfigImpl == null || !ImsCallProviderUtils.isValidServiceSubIndex(subId)) {
            return false;
        }
        mHwImsConfigImpl[subId].processOnTransact(code, data, reply, flags);
        return true;
    }

    public boolean isHwCustCode(int code) {
        if (code != 3001 && ImsCallProviderUtils.isVowifiPropOn()) {
            return false;
        }
        return true;
    }

    boolean isUnSupportMMICode(String MMIcode) {
        logUnexpectedMethodCall("isUnSupportMMICode");
        return true;
    }

    boolean isMissedCallTipsInternal() {
        logUnexpectedMethodCall("isMissedCallTipsInternal");
        return false;
    }

    boolean isMissedCallDisplay() {
        logUnexpectedMethodCall("isMissedCallDisplay");
        return false;
    }

    boolean isMissedCallTipsDelay() {
        logUnexpectedMethodCall("isMissedCallTipsDelay");
        return false;
    }

    int getMissedCallTipsRingTimer() {
        logUnexpectedMethodCall("getMissedCallTipsRingTimer");
        return -1;
    }

    int getMissedCallTipsDelayTimer() {
        logUnexpectedMethodCall("getMissedCallTipsDelayTimer");
        return -1;
    }

    boolean isCheckServiceWhenIncomingCall() {
        logUnexpectedMethodCall("isCheckServiceWhenIncomingCall");
        return false;
    }

    boolean isImsSsBeUsed() {
        logUnexpectedMethodCall("isImsSsBeUsed");
        return true;
    }

    boolean isUtForbiddenWhenVolteSwitchOff() {
        logUnexpectedMethodCall("isUtForbiddenWhenVolteSwitchOff");
        return true;
    }

    boolean isCardTypePreferToUseUT(int cardType) {
        logUnexpectedMethodCall("isCardTypePreferToUseUT");
        return false;
    }

    boolean isCardMccMncPreferToUseUT(String cardMccMnc) {
        logUnexpectedMethodCall("isCardMccMncPreferToUseUT");
        return false;
    }

    boolean isSSUseCsOnly(int ssType) {
        logUnexpectedMethodCall("isSSUseCsOnly");
        return true;
    }

    boolean isSSForbidFallbackCS(int ssType) {
        logUnexpectedMethodCall("isSSForbidFallbackCS");
        return true;
    }

    int getUtUseApn() {
        logUnexpectedMethodCall("getUtUseApn");
        return -1;
    }

    boolean isCFNRcChangeWithCFNL() {
        logUnexpectedMethodCall("isCFNRcChangeWithCFNL");
        return false;
    }

    int getDefaultNoReplyTimer() {
        logUnexpectedMethodCall("getDefaultNoReplyTimer");
        return -1;
    }

    int getContentTypeMode() {
        logUnexpectedMethodCall("getContentTypeMode");
        return 0;
    }

    boolean isImsStateFollowVoiceDomain() {
        logUnexpectedMethodCall("isImsStateFollowVoiceDomain");
        return false;
    }

    boolean isMissedCallTips() {
        logUnexpectedMethodCall("isMissedCallTips");
        return false;
    }

    boolean isUtNafUseHttps() {
        logUnexpectedMethodCall("isUtNafUseHttps");
        return false;
    }

    boolean isUtBsfUseHttps() {
        logUnexpectedMethodCall("isUtBsfUseHttps");
        return false;
    }

    boolean isUtCSBeUsed() {
        logUnexpectedMethodCall("isUtCSBeUsed");
        return false;
    }

    boolean isUtUseNodeSelector() {
        logUnexpectedMethodCall("isUtUseNodeSelector");
        return false;
    }

    boolean isUtUseXcapNameSpace() {
        logUnexpectedMethodCall("isUtUseXcapNameSpace");
        return false;
    }

    boolean isUtOpenHrsLog() {
        logUnexpectedMethodCall("isUtOpenHrsLog");
        return false;
    }

    boolean isUtUseTmpi() {
        logUnexpectedMethodCall("isUtUseTmpi");
        return false;
    }

    boolean isUtKsnafEncodedByBase64() {
        logUnexpectedMethodCall("isUtKsnafEncodedByBase64");
        return false;
    }

    int getCallWaitingMode() {
        logUnexpectedMethodCall("getCallWaitingMode");
        return -1;
    }

    int getUtNafPort() {
        logUnexpectedMethodCall("getUtNafPort");
        return -1;
    }

    int getUtBsfPort() {
        logUnexpectedMethodCall("getUtBsfPort");
        return -1;
    }

    int getUtGbaType() {
        logUnexpectedMethodCall("getUtGbaType");
        return -1;
    }

    String getUtNafSrvAddr() {
        logUnexpectedMethodCall("getUtNafSrvAddr");
        return null;
    }

    String getUtBsfSrvAddr() {
        logUnexpectedMethodCall("getUtBsfSrvAddr");
        return null;
    }

    String getUtXcapRootUri() {
        logUnexpectedMethodCall("getUtXcapRootUri");
        return null;
    }

    synchronized String getUtIMPUFromNetwork() {
        logUnexpectedMethodCall("getUtIMPUFromNetwork");
        return null;
    }

    String getUtIMPU(Context context) {
        logUnexpectedMethodCall("getUtIMPU");
        return null;
    }

    String getUtIMPI() {
        logUnexpectedMethodCall("getUtIMPI");
        return null;
    }

    String getUtX3gppIntendId() {
        logUnexpectedMethodCall("getUtX3gppIntendId");
        return null;
    }

    String getIMSI() {
        logUnexpectedMethodCall("isMissedCallTipsDelay");
        return null;
    }

    void setIMSI(String imsi) {
        logUnexpectedMethodCall("setIMSI");
    }

    boolean isIMPUConfigured() {
        logUnexpectedMethodCall("isIMPUConfigured");
        return false;
    }

    void setCurrentImsi(String imsi) {
        logUnexpectedMethodCall("setCurrentImsi");
    }

    void setSpliceMncMcc(String spliceMncMcc) {
        logUnexpectedMethodCall("setSpliceMncMcc");
    }

    void setImpiFromSIM(String impi) {
        logUnexpectedMethodCall("setImpiFromSIM");
    }

    void setBsfAddrFromSIM(String bsfAddr) {
        logUnexpectedMethodCall("setBsfAddrFromSIM");
    }

    void setNafAddrFromSIM(String nsfAddr) {
        logUnexpectedMethodCall("setNafAddrFromSIM");
    }

    String spliceMncMcc() {
        logUnexpectedMethodCall("spliceMncMcc");
        return null;
    }

    String getImpuFromSIM() {
        logUnexpectedMethodCall("getImpuFromSIM");
        return null;
    }

    String getImpiFromSIM() {
        logUnexpectedMethodCall("getImpiFromSIM");
        return null;
    }

    String getBsfAddrFromSIM() {
        logUnexpectedMethodCall("getBsfAddrFromSIM");
        return null;
    }

    boolean isCallWaitingSyncToImsSdk() {
        logUnexpectedMethodCall("isCallWaitingSyncToImsSdk");
        return false;
    }

    boolean isCallWaitingSyncToCs() {
        logUnexpectedMethodCall("isCallWaitingSyncToCs");
        return false;
    }

    HwImsConfigImpl.CALL_WAITING_SOURCE getCallWaitingSource() {
        logUnexpectedMethodCall("getCallWaitingSource");
        return null;
    }

    int getUtRetryMaxCounts() {
        logUnexpectedMethodCall("getUtRetryMaxCounts");
        return -1;
    }

    int getUtRetryInterval(int index) {
        logUnexpectedMethodCall("getUtRetryInterval");
        return -1;
    }

    String getSharedPreferences(String spKey, Context context) {
        logUnexpectedMethodCall("getSharedPreferences");
        return null;
    }

    void setSharedPreferences(String spKey, String spValue, Context context) {
        logUnexpectedMethodCall("setSharedPreferences");
    }

    boolean getBoolFromSP(String spKey, Context context, boolean defValue) {
        logUnexpectedMethodCall("getBoolFromSP");
        return false;
    }

    void setBoolToSP(String spKey, boolean spValue, Context context) {
        logUnexpectedMethodCall("setBoolToSP");
    }

    boolean isHangUpWhenLostNet() {
        logUnexpectedMethodCall("isHangUpWhenLostNet");
        return false;
    }

    protected static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1001 || callingUid == 1000) {
            return;
        }
        throw new SecurityException("Only Phone is able to call this API");
    }

    private static void logUnexpectedMethodCall(String name) {
        loge("Error! " + name + "() is not supported");
    }

    public static void logd(String s) {
        Rlog.d(LOG_TAG, s);
    }

    public static void loge(String s) {
        Rlog.e(LOG_TAG, "[ERROR] " + s);
    }
}
