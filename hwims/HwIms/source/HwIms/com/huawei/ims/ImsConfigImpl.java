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

/* loaded from: ImsConfigImpl.class */
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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: ImsConfigImpl$FeatureAccessWrapper.class */
    public static final class FeatureAccessWrapper {
        private int feature;
        public ImsConfigListener listener;
        private int network;
        private int value;

        public FeatureAccessWrapper(int i, int i2, int i3, ImsConfigListener imsConfigListener) {
            this.feature = i;
            this.network = i2;
            this.listener = imsConfigListener;
            this.value = i3;
        }
    }

    /* loaded from: ImsConfigImpl$ImsConfigImplHandler.class */
    private class ImsConfigImplHandler extends Handler {
        private ImsConfigImplHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ImsConfigImpl.logd("Message received: what = " + message.what);
            AsyncResult asyncResult = (AsyncResult) message.obj;
            switch (message.what) {
                case 1:
                    ImsConfigImpl.this.onSetVideoCallQualityDone(ImsConfigImpl.this.getImsConfigListener(asyncResult), asyncResult);
                    return;
                case 2:
                    ImsConfigImpl.this.onGetVideoCallQualityDone(ImsConfigImpl.this.getImsConfigListener(asyncResult), asyncResult);
                    return;
                case 3:
                    ImsConfigImpl.this.onSetFeatureResponseDone(ImsConfigImpl.this.getImsConfigListener(asyncResult), asyncResult);
                    return;
                default:
                    ImsConfigImpl.loge("handleMessage: unhandled message");
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ImsConfigImpl() {
        Rlog.i(LOG_TAG, "ImsConfigImpl::ImsConfigImpl()");
    }

    protected static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1001 && callingUid != 1000) {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImsConfigListener getImsConfigListener(AsyncResult asyncResult) {
        if (asyncResult == null) {
            loge("AsyncResult is null.");
        } else if (asyncResult.userObj instanceof ImsConfigListener) {
            return (ImsConfigListener) asyncResult.userObj;
        } else {
            if ((asyncResult.userObj instanceof FeatureAccessWrapper) && (((FeatureAccessWrapper) asyncResult.userObj).listener instanceof ImsConfigListener)) {
                return ((FeatureAccessWrapper) asyncResult.userObj).listener;
            }
        }
        loge("getImsConfigListener returns null");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImsConfigImpl getInstance() {
        checkAccessPermission();
        if (instance == null) {
            synchronized (ImsConfigImpl.class) {
                try {
                    if (instance == null) {
                        instance = new ImsConfigImpl();
                        Rlog.i(LOG_TAG, "add ims_config service");
                        ServiceManager.addService(IMS_CONFIG_SERVICE_NAME, instance.getIImsConfig().asBinder());
                        mHwImsConfigImpl = new HwImsConfigImpl[HwImsService.getNumSubscriptions()];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            logd("instance is already exist!");
        }
        return instance;
    }

    private int getOperationStatus(boolean z) {
        return z ? 0 : 1;
    }

    private static void logUnexpectedMethodCall(String str) {
        loge("Error! " + str + "() is not supported");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logd(String str) {
        Rlog.d(LOG_TAG, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loge(String str) {
        Rlog.e(LOG_TAG, "[ERROR] " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetVideoCallQualityDone(ImsConfigListener imsConfigListener, AsyncResult asyncResult) {
        if (imsConfigListener == null) {
            loge("onGetVideoCallQualityDone listener is not valid !!!");
            return;
        }
        try {
            imsConfigListener.onGetVideoQuality(getOperationStatus(asyncResult.exception == null), asyncResult.result == null ? -1 : ((Integer) asyncResult.result).intValue());
        } catch (Throwable th) {
            loge("onGetVideoCallQualityDone failed. ");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetFeatureResponseDone(ImsConfigListener imsConfigListener, AsyncResult asyncResult) {
        if (imsConfigListener == null) {
            loge("onSetFeatureResponseDone listener is not valid !!!");
            return;
        }
        try {
            int operationStatus = getOperationStatus(asyncResult.exception == null);
            FeatureAccessWrapper featureAccessWrapper = (FeatureAccessWrapper) asyncResult.userObj;
            imsConfigListener.onSetFeatureResponse(featureAccessWrapper.feature, featureAccessWrapper.network, featureAccessWrapper.value, operationStatus);
        } catch (Throwable th) {
            loge("onSetFeatureResponseDone failed.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetVideoCallQualityDone(ImsConfigListener imsConfigListener, AsyncResult asyncResult) {
        if (imsConfigListener == null) {
            loge("onSetVideoCallQualityDone listener is not valid !!!");
            return;
        }
        try {
            imsConfigListener.onSetVideoQuality(getOperationStatus(asyncResult.exception == null));
        } catch (Throwable th) {
            loge("onSetVideoCallQualityDone failed.");
        }
    }

    boolean getBoolFromSP(String str, Context context, boolean z) {
        logUnexpectedMethodCall("getBoolFromSP");
        return false;
    }

    String getBsfAddrFromSIM() {
        logUnexpectedMethodCall("getBsfAddrFromSIM");
        return null;
    }

    int getCallWaitingMode() {
        logUnexpectedMethodCall("getCallWaitingMode");
        return -1;
    }

    HwImsConfigImpl.CALL_WAITING_SOURCE getCallWaitingSource() {
        logUnexpectedMethodCall("getCallWaitingSource");
        return null;
    }

    public HwImsConfigImpl getConfigInterface(HwImsServiceImpl hwImsServiceImpl, int i) {
        checkAccessPermission();
        if (hwImsServiceImpl == null || hwImsServiceImpl.mContext == null) {
            Rlog.e(LOG_TAG, "getConfigInterface - hwImsServiceImpl or context is null");
            return null;
        } else if (!ImsCallProviderUtils.isValidServiceSubIndex(i)) {
            Rlog.e(LOG_TAG, "getConfigInterface - subId is invalid");
            return null;
        } else if (mHwImsConfigImpl == null) {
            Rlog.e(LOG_TAG, "getConfigInterface - mHwImsConfigImpl is null");
            return null;
        } else if (mHwImsConfigImpl[i] == null) {
            mHwImsConfigImpl[i] = new HwImsConfigImpl(hwImsServiceImpl, i);
            return mHwImsConfigImpl[i];
        } else {
            Rlog.d(LOG_TAG, "getConfigInterface - mHwImsConfigImpl [ " + i + "] is already exist!");
            return mHwImsConfigImpl[i];
        }
    }

    int getContentTypeMode() {
        logUnexpectedMethodCall("getContentTypeMode");
        return 0;
    }

    int getDefaultNoReplyTimer() {
        logUnexpectedMethodCall("getDefaultNoReplyTimer");
        return -1;
    }

    String getIMSI() {
        logUnexpectedMethodCall("isMissedCallTipsDelay");
        return null;
    }

    String getImpiFromSIM() {
        logUnexpectedMethodCall("getImpiFromSIM");
        return null;
    }

    String getImpuFromSIM() {
        logUnexpectedMethodCall("getImpuFromSIM");
        return null;
    }

    public PersistableBundle getImsConfig(String str) {
        return null;
    }

    int getMissedCallTipsDelayTimer() {
        logUnexpectedMethodCall("getMissedCallTipsDelayTimer");
        return -1;
    }

    int getMissedCallTipsRingTimer() {
        logUnexpectedMethodCall("getMissedCallTipsRingTimer");
        return -1;
    }

    String getSharedPreferences(String str, Context context) {
        logUnexpectedMethodCall("getSharedPreferences");
        return null;
    }

    int getUtBsfPort() {
        logUnexpectedMethodCall("getUtBsfPort");
        return -1;
    }

    String getUtBsfSrvAddr() {
        logUnexpectedMethodCall("getUtBsfSrvAddr");
        return null;
    }

    int getUtGbaType() {
        logUnexpectedMethodCall("getUtGbaType");
        return -1;
    }

    String getUtIMPI() {
        logUnexpectedMethodCall("getUtIMPI");
        return null;
    }

    String getUtIMPU(Context context) {
        logUnexpectedMethodCall("getUtIMPU");
        return null;
    }

    String getUtIMPUFromNetwork() {
        synchronized (this) {
            logUnexpectedMethodCall("getUtIMPUFromNetwork");
        }
        return null;
    }

    int getUtNafPort() {
        logUnexpectedMethodCall("getUtNafPort");
        return -1;
    }

    String getUtNafSrvAddr() {
        logUnexpectedMethodCall("getUtNafSrvAddr");
        return null;
    }

    int getUtRetryInterval(int i) {
        logUnexpectedMethodCall("getUtRetryInterval");
        return -1;
    }

    int getUtRetryMaxCounts() {
        logUnexpectedMethodCall("getUtRetryMaxCounts");
        return -1;
    }

    int getUtUseApn() {
        logUnexpectedMethodCall("getUtUseApn");
        return -1;
    }

    String getUtX3gppIntendId() {
        logUnexpectedMethodCall("getUtX3gppIntendId");
        return null;
    }

    String getUtXcapRootUri() {
        logUnexpectedMethodCall("getUtXcapRootUri");
        return null;
    }

    boolean isCFNRcChangeWithCFNL() {
        logUnexpectedMethodCall("isCFNRcChangeWithCFNL");
        return false;
    }

    boolean isCallWaitingSyncToCs() {
        logUnexpectedMethodCall("isCallWaitingSyncToCs");
        return false;
    }

    boolean isCallWaitingSyncToImsSdk() {
        logUnexpectedMethodCall("isCallWaitingSyncToImsSdk");
        return false;
    }

    boolean isCardMccMncPreferToUseUT(String str) {
        logUnexpectedMethodCall("isCardMccMncPreferToUseUT");
        return false;
    }

    boolean isCardTypePreferToUseUT(int i) {
        logUnexpectedMethodCall("isCardTypePreferToUseUT");
        return false;
    }

    boolean isCheckServiceWhenIncomingCall() {
        logUnexpectedMethodCall("isCheckServiceWhenIncomingCall");
        return false;
    }

    boolean isHangUpWhenLostNet() {
        logUnexpectedMethodCall("isHangUpWhenLostNet");
        return false;
    }

    public boolean isHwCustCode(int i) {
        return i == 3001 || !ImsCallProviderUtils.isVowifiPropOn();
    }

    boolean isIMPUConfigured() {
        logUnexpectedMethodCall("isIMPUConfigured");
        return false;
    }

    boolean isImsSsBeUsed() {
        logUnexpectedMethodCall("isImsSsBeUsed");
        return true;
    }

    boolean isImsStateFollowVoiceDomain() {
        logUnexpectedMethodCall("isImsStateFollowVoiceDomain");
        return false;
    }

    boolean isMissedCallDisplay() {
        logUnexpectedMethodCall("isMissedCallDisplay");
        return false;
    }

    boolean isMissedCallTips() {
        logUnexpectedMethodCall("isMissedCallTips");
        return false;
    }

    boolean isMissedCallTipsDelay() {
        logUnexpectedMethodCall("isMissedCallTipsDelay");
        return false;
    }

    boolean isMissedCallTipsInternal() {
        logUnexpectedMethodCall("isMissedCallTipsInternal");
        return false;
    }

    boolean isSSForbidFallbackCS(int i) {
        logUnexpectedMethodCall("isSSForbidFallbackCS");
        return true;
    }

    boolean isSSUseCsOnly(int i) {
        logUnexpectedMethodCall("isSSUseCsOnly");
        return true;
    }

    boolean isUnSupportMMICode(String str) {
        logUnexpectedMethodCall("isUnSupportMMICode");
        return true;
    }

    boolean isUtBsfUseHttps() {
        logUnexpectedMethodCall("isUtBsfUseHttps");
        return false;
    }

    boolean isUtCSBeUsed() {
        logUnexpectedMethodCall("isUtCSBeUsed");
        return false;
    }

    boolean isUtForbiddenWhenVolteSwitchOff() {
        logUnexpectedMethodCall("isUtForbiddenWhenVolteSwitchOff");
        return true;
    }

    boolean isUtKsnafEncodedByBase64() {
        logUnexpectedMethodCall("isUtKsnafEncodedByBase64");
        return false;
    }

    boolean isUtNafUseHttps() {
        logUnexpectedMethodCall("isUtNafUseHttps");
        return false;
    }

    boolean isUtOpenHrsLog() {
        logUnexpectedMethodCall("isUtOpenHrsLog");
        return false;
    }

    boolean isUtUseNodeSelector() {
        logUnexpectedMethodCall("isUtUseNodeSelector");
        return false;
    }

    boolean isUtUseTmpi() {
        logUnexpectedMethodCall("isUtUseTmpi");
        return false;
    }

    boolean isUtUseXcapNameSpace() {
        logUnexpectedMethodCall("isUtUseXcapNameSpace");
        return false;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        boolean z;
        Rlog.d(LOG_TAG, "onTransact, code = " + i);
        if (i != 3001) {
            z = false;
        } else {
            checkAccessPermission();
            parcel.enforceInterface(DESCRIPTOR);
            int readInt = parcel.readInt();
            Rlog.d(LOG_TAG, "onTransact , subId read from data is " + readInt);
            if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
                Rlog.d(LOG_TAG, "onTransact, single ims, set subId to 0");
                readInt = 0;
            }
            z = false;
            if (mHwImsConfigImpl != null) {
                z = false;
                if (ImsCallProviderUtils.isValidServiceSubIndex(readInt)) {
                    mHwImsConfigImpl[readInt].processOnTransact(i, parcel, parcel2, i2);
                    z = true;
                }
            }
        }
        return z;
    }

    void setBoolToSP(String str, boolean z, Context context) {
        logUnexpectedMethodCall("setBoolToSP");
    }

    void setBsfAddrFromSIM(String str) {
        logUnexpectedMethodCall("setBsfAddrFromSIM");
    }

    void setCurrentImsi(String str) {
        logUnexpectedMethodCall("setCurrentImsi");
    }

    public void setFeatureValue(int i, int i2, int i3, ImsConfigListener imsConfigListener) {
    }

    void setIMSI(String str) {
        logUnexpectedMethodCall("setIMSI");
    }

    void setImpiFromSIM(String str) {
        logUnexpectedMethodCall("setImpiFromSIM");
    }

    public int setImsConfig(String str, PersistableBundle persistableBundle) {
        return 1;
    }

    void setNafAddrFromSIM(String str) {
        logUnexpectedMethodCall("setNafAddrFromSIM");
    }

    void setSharedPreferences(String str, String str2, Context context) {
        logUnexpectedMethodCall("setSharedPreferences");
    }

    void setSpliceMncMcc(String str) {
        logUnexpectedMethodCall("setSpliceMncMcc");
    }

    String spliceMncMcc() {
        logUnexpectedMethodCall("spliceMncMcc");
        return null;
    }
}
