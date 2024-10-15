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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsConfigImpl extends ImsConfigImplBase {
    protected static final int CODE_IS_UNSUPPORT_MMI_CODE = 3001;
    private static final String DESCRIPTOR = "com.android.ims.internal.IImsConfig";
    private static final int EVENT_QUERY_VT_CALL_QUALITY = 2;
    private static final int EVENT_SET_FEATURE_VALUE = 3;
    private static final int EVENT_SET_VT_CALL_QUALITY = 1;
    private static final String IMS_CONFIG_SERVICE_NAME = "ims_config";
    private static final int INVALID_VALUE = -1;
    private static final String LOG_TAG = "ImsConfigImpl";
    private static volatile ImsConfigImpl instance = null;
    private static HwImsConfigImpl[] sHwImsConfigImpls = null;

    /* JADX INFO: Access modifiers changed from: protected */
    public ImsConfigImpl() {
        Rlog.i(LOG_TAG, "ImsConfigImpl::ImsConfigImpl()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImsConfigImpl getInstance() {
        checkAccessPermission();
        if (instance == null) {
            synchronized (ImsConfigImpl.class) {
                if (instance == null) {
                    instance = new ImsConfigImpl();
                    Rlog.i(LOG_TAG, "add ims_config service");
                    ServiceManager.addService(IMS_CONFIG_SERVICE_NAME, instance.getIImsConfig().asBinder());
                    sHwImsConfigImpls = new HwImsConfigImpl[HwImsService.getNumSubscriptions()];
                }
            }
        } else {
            logi("instance is already exist!");
        }
        return instance;
    }

    public HwImsConfigImpl getConfigInterface(HwImsServiceImpl hwImsServiceImpl, int slotId) {
        checkAccessPermission();
        if (hwImsServiceImpl == null || hwImsServiceImpl.mContext == null) {
            Rlog.e(LOG_TAG, "getConfigInterface - hwImsServiceImpl or context is null");
            return null;
        }
        if (!ImsCallProviderUtils.isValidServiceSubIndex(slotId)) {
            Rlog.e(LOG_TAG, "getConfigInterface - slotId is invalid");
            return null;
        }
        HwImsConfigImpl[] hwImsConfigImplArr = sHwImsConfigImpls;
        if (hwImsConfigImplArr == null) {
            Rlog.e(LOG_TAG, "getConfigInterface - sHwImsConfigImpls is null");
            return null;
        }
        if (hwImsConfigImplArr[slotId] != null) {
            Rlog.i(LOG_TAG, "getConfigInterface - sHwImsConfigImpls [ " + slotId + "] is already exist!");
            return sHwImsConfigImpls[slotId];
        }
        hwImsConfigImplArr[slotId] = new HwImsConfigImpl(hwImsServiceImpl, slotId);
        return sHwImsConfigImpls[slotId];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static final class FeatureAccessWrapper {
        private int mFeature;
        private ImsConfigListener mListener;
        private int mNetwork;
        private int mValue;

        FeatureAccessWrapper(int feature, int network, int value, ImsConfigListener listener) {
            this.mFeature = feature;
            this.mNetwork = network;
            this.mListener = listener;
            this.mValue = value;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class ImsConfigImplHandler extends Handler {
        private ImsConfigImplHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            ImsConfigImpl.logi("Message received: what = " + msg.what);
            AsyncResult ar = null;
            if (msg.obj instanceof AsyncResult) {
                ar = (AsyncResult) msg.obj;
            }
            int i = msg.what;
            if (i == 1) {
                ImsConfigImpl imsConfigImpl = ImsConfigImpl.this;
                imsConfigImpl.onSetVideoCallQualityDone(imsConfigImpl.getImsConfigListener(ar), ar);
            } else if (i == 2) {
                ImsConfigImpl imsConfigImpl2 = ImsConfigImpl.this;
                imsConfigImpl2.onGetVideoCallQualityDone(imsConfigImpl2.getImsConfigListener(ar), ar);
            } else if (i != 3) {
                ImsConfigImpl.loge("handleMessage: unhandled message");
            } else {
                ImsConfigImpl imsConfigImpl3 = ImsConfigImpl.this;
                imsConfigImpl3.onSetFeatureResponseDone(imsConfigImpl3.getImsConfigListener(ar), ar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetVideoCallQualityDone(ImsConfigListener imsConfigListener, AsyncResult ar) {
        int result;
        if (imsConfigListener != null && ar != null) {
            try {
                int status = getOperationStatus(ar.exception == null);
                if (ar.result == null) {
                    result = -1;
                } else {
                    result = ((Integer) ar.result).intValue();
                }
                imsConfigListener.onGetVideoQuality(status, result);
                return;
            } catch (RemoteException e) {
                loge("onGetVideoCallQualityDone failed.");
                return;
            }
        }
        loge("onGetVideoCallQualityDone listener is not valid !!!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetVideoCallQualityDone(ImsConfigListener imsConfigListener, AsyncResult ar) {
        if (imsConfigListener != null && ar != null) {
            try {
                int status = getOperationStatus(ar.exception == null);
                imsConfigListener.onSetVideoQuality(status);
                return;
            } catch (RemoteException e) {
                loge("onSetVideoCallQualityDone failed.");
                return;
            }
        }
        loge("onSetVideoCallQualityDone listener is not valid !!!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSetFeatureResponseDone(ImsConfigListener imsConfigListener, AsyncResult ar) {
        if (imsConfigListener != null && ar != null) {
            try {
                int status = getOperationStatus(ar.exception == null);
                FeatureAccessWrapper wrapper = null;
                if (ar.userObj instanceof FeatureAccessWrapper) {
                    wrapper = (FeatureAccessWrapper) ar.userObj;
                }
                if (wrapper != null) {
                    imsConfigListener.onSetFeatureResponse(wrapper.mFeature, wrapper.mNetwork, wrapper.mValue, status);
                    return;
                }
                return;
            } catch (RemoteException e) {
                loge("onSetFeatureResponseDone failed.");
                return;
            }
        }
        loge("onSetFeatureResponseDone listener is not valid !!!");
    }

    private int getOperationStatus(boolean isOperationSuccess) {
        return isOperationSuccess ? 0 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImsConfigListener getImsConfigListener(AsyncResult ar) {
        if (ar == null) {
            loge("AsyncResult is null.");
        } else {
            if (ar.userObj instanceof ImsConfigListener) {
                return (ImsConfigListener) ar.userObj;
            }
            if (ar.userObj instanceof FeatureAccessWrapper) {
                FeatureAccessWrapper featureAccessWrapper = (FeatureAccessWrapper) ar.userObj;
                return featureAccessWrapper.mListener;
            }
            logi("getImsConfigListener just skip.");
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
        Rlog.i(LOG_TAG, "onTransact, code = " + code);
        if (data == null || reply == null || code != 3001) {
            return false;
        }
        checkAccessPermission();
        data.enforceInterface(DESCRIPTOR);
        int slotId = data.readInt();
        Rlog.i(LOG_TAG, "onTransact, slotId read from data is " + slotId);
        if (!ImsCallProviderUtils.IS_DUAL_IMS_AVAILABLE) {
            Rlog.i(LOG_TAG, "onTransact, single ims, set subId to 0");
            slotId = 0;
        }
        if (sHwImsConfigImpls == null || !ImsCallProviderUtils.isValidServiceSubIndex(slotId)) {
            return false;
        }
        sHwImsConfigImpls[slotId].processOnTransact(code, data, reply, flags);
        return true;
    }

    public boolean isHwCustCode(int code) {
        if (code != 3001 && ImsCallProviderUtils.isVowifiPropOn()) {
            return false;
        }
        return true;
    }

    boolean isUnSupportMmiCode(String mmiCode) {
        logUnexpectedMethodCall("isUnSupportMmiCode");
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

    boolean isCardTypePreferToUseUt(int cardType) {
        logUnexpectedMethodCall("isCardTypePreferToUseUt");
        return false;
    }

    boolean isCardMccMncPreferToUseUt(String cardMccMnc) {
        logUnexpectedMethodCall("isCardMccMncPreferToUseUt");
        return false;
    }

    boolean isSsUseCsOnly(int ssType) {
        logUnexpectedMethodCall("isSsUseCsOnly");
        return true;
    }

    boolean isSsForbidFallbackCs(int ssType) {
        logUnexpectedMethodCall("isSsForbidFallbackCs");
        return true;
    }

    int getUtUseApn() {
        logUnexpectedMethodCall("getUtUseApn");
        return -1;
    }

    boolean isCfnrcChangeWithCfnl() {
        logUnexpectedMethodCall("isCfnrcChangeWithCfnl");
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

    boolean isUtCsBeUsed() {
        logUnexpectedMethodCall("isUtCsBeUsed");
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

    String getUtImpu(Context context) {
        logUnexpectedMethodCall("getUtImpu");
        return null;
    }

    String getUtImpi() {
        logUnexpectedMethodCall("getUtImpi");
        return null;
    }

    String getUtX3gppIntendId() {
        logUnexpectedMethodCall("getUtX3gppIntendId");
        return null;
    }

    String getImsi() {
        logUnexpectedMethodCall("isMissedCallTipsDelay");
        return null;
    }

    void setImsi(String imsi) {
        logUnexpectedMethodCall("setIMSI");
    }

    boolean isImpuConfigured() {
        logUnexpectedMethodCall("isImpuConfigured");
        return false;
    }

    void setCurrentImsi(String imsi) {
        logUnexpectedMethodCall("setCurrentImsi");
    }

    void setSpliceMncMcc(String spliceMncMcc) {
        logUnexpectedMethodCall("setSpliceMncMcc");
    }

    void setImpiFromSim(String impi) {
        logUnexpectedMethodCall("setImpiFromSim");
    }

    void setBsfAddrFromSim(String bsfAddr) {
        logUnexpectedMethodCall("setBsfAddrFromSim");
    }

    void setNafAddrFromSim(String nsfAddr) {
        logUnexpectedMethodCall("setNafAddrFromSim");
    }

    String spliceMncMcc() {
        logUnexpectedMethodCall("spliceMncMcc");
        return null;
    }

    String getImpuFromSim() {
        logUnexpectedMethodCall("getImpuFromSim");
        return null;
    }

    String getImpiFromSim() {
        logUnexpectedMethodCall("getImpiFromSim");
        return null;
    }

    String getBsfAddrFromSim() {
        logUnexpectedMethodCall("getBsfAddrFromSim");
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

    HwImsConfigImpl.CallWaitingSource getCallWaitingSource() {
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

    boolean getBoolFromSp(String spKey, Context context, boolean isDefValue) {
        logUnexpectedMethodCall("getBoolFromSp");
        return false;
    }

    void setBoolToSp(String spKey, boolean isSpValue, Context context) {
        logUnexpectedMethodCall("setBoolToSp");
    }

    boolean isHangUpWhenLostNet() {
        logUnexpectedMethodCall("isHangUpWhenLostNet");
        return false;
    }

    protected static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1001 || callingUid == 1000) {
        } else {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    private static void logUnexpectedMethodCall(String name) {
        loge("Error! " + name + "() is not supported");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logi(String s) {
        Rlog.i(LOG_TAG, s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loge(String s) {
        Rlog.e(LOG_TAG, "[ERROR] " + s);
    }
}
