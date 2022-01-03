package org.codeaurora.ims;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.telephony.SubscriptionManager;
import android.telephony.ims.ImsMmTelManager;
import android.telephony.ims.stub.ImsConfigImplBase;
import com.android.ims.ImsConfigListener;
import com.android.internal.annotations.VisibleForTesting;
import com.qualcomm.ims.utils.Log;
import java.util.ArrayList;
import java.util.Iterator;
import org.codeaurora.telephony.utils.AsyncResult;
import org.codeaurora.telephony.utils.SomeArgs;

public class ImsConfigImpl extends ImsConfigImplBase {
    private static final int EVENT_ACCESS_PROVISIONED_VAL = 1;
    private static final int EVENT_SET_FEATURE_VALUE = 2;
    private final String MODIFY_PHONE_STATE = "android.permission.MODIFY_PHONE_STATE";
    private final String READ_PHONE_STATE = "android.permission.READ_PHONE_STATE";
    private final String READ_PRIVILEGED_PHONE_STATE = "android.permission.READ_PRIVILEGED_PHONE_STATE";
    private BroadcastReceiver mBroadcastReceiver = new 3(this);
    private ImsSenderRxr mCi;
    private Context mContext;
    private Handler mHandler;
    private ImsMmTelManager mImsMmTelManager = null;
    private boolean mIsCarrierConfigLoaded = false;
    private boolean mIsContentObserversRegistered = false;
    private final SubscriptionManager.OnSubscriptionsChangedListener mOnSubscriptionsChangeListener = new 4(this);
    private ImsServiceSub mServiceSub;
    private int mSubId = -1;
    private final SubscriptionManager mSubscriptionManager;
    private ContentObserver mVoWiFiModeObserver = new 1(this, new Handler(Looper.getMainLooper()));
    private ContentObserver mVoWiFiRoamingModeObserver = new 2(this, new Handler(Looper.getMainLooper()));
    private Uri mWfcModeUri;
    private Uri mWfcRoamingModeUri;

    public ImsConfigImpl(ImsServiceSub serviceSub, ImsSenderRxr senderRxr, Context context) {
        this.mServiceSub = serviceSub;
        this.mCi = senderRxr;
        this.mContext = context;
        HandlerThread handlerThread = new HandlerThread("ImsConfigImplHandler");
        handlerThread.start();
        this.mHandler = new ImsConfigImplHandler(this, handlerThread.getLooper());
        this.mSubscriptionManager = (SubscriptionManager) this.mContext.getSystemService("telephony_subscription_service");
        SubscriptionManager subscriptionManager = this.mSubscriptionManager;
        if (subscriptionManager != null) {
            subscriptionManager.addOnSubscriptionsChangedListener(this.mOnSubscriptionsChangeListener);
        } else {
            Log.e(this, "unable to listen for subscription changed due to subscriptionManager is null");
        }
        this.mContext.registerReceiver(this.mBroadcastReceiver, new IntentFilter("android.telephony.action.CARRIER_CONFIG_CHANGED"));
    }

    @VisibleForTesting
    public Handler getHandler() {
        return this.mHandler;
    }

    /* access modifiers changed from: private */
    public void clearSubscriptionCache() {
        this.mIsCarrierConfigLoaded = false;
        this.mSubId = -1;
        if (this.mIsContentObserversRegistered) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mVoWiFiModeObserver);
            this.mContext.getContentResolver().unregisterContentObserver(this.mVoWiFiRoamingModeObserver);
            this.mIsContentObserversRegistered = false;
        }
        this.mImsMmTelManager = null;
        this.mWfcModeUri = null;
        this.mWfcRoamingModeUri = null;
    }

    public void updateWfcModeConfigurationsToModem() {
        Log.d(this, "updateWfcModeConfigurationsToModem: mIsCarrierConfigLoaded = " + this.mIsCarrierConfigLoaded);
        if (this.mServiceSub.IsWfcRoamingConfigurationSupportedByModem() && this.mImsMmTelManager != null && this.mIsCarrierConfigLoaded) {
            updateWFCMode(false);
            updateWFCMode(true);
        }
    }

    @VisibleForTesting
    public int updateWFCMode(boolean isRoamingMode) {
        int value;
        int item;
        Log.d(this, "updateWFCMode: sub = " + this.mSubId + " isRoamingMode = " + isRoamingMode);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE", "updateWFCMode");
        enforceReadPhoneState("updateWFCMode");
        try {
            if (this.mSubscriptionManager != null) {
                if (this.mSubscriptionManager.isActiveSubscriptionId(this.mSubId)) {
                    if (this.mImsMmTelManager == null) {
                        Log.w(this, "updateWFCMode: mImsMmTelManager null");
                        return EVENT_ACCESS_PROVISIONED_VAL;
                    } else if (!this.mServiceSub.IsWfcRoamingConfigurationSupportedByModem()) {
                        Log.i(this, "Modem do not support WFC roaming config");
                        return EVENT_ACCESS_PROVISIONED_VAL;
                    } else {
                        if (isRoamingMode) {
                            item = 69;
                            value = this.mImsMmTelManager.getVoWiFiRoamingModeSetting();
                        } else {
                            item = 27;
                            value = this.mImsMmTelManager.getVoWiFiModeSetting();
                        }
                        sendSetConfigRequestAsync(item, value);
                        return -1;
                    }
                }
            }
            Log.w(this, "updateWFCMode: invalid sub = " + this.mSubId);
            return EVENT_ACCESS_PROVISIONED_VAL;
        } catch (Exception e) {
            Log.w(this, "Could not update WFCMode: invalid sub = " + this.mSubId);
            return EVENT_ACCESS_PROVISIONED_VAL;
        }
    }

    /* access modifiers changed from: private */
    public void onAccessProvisionedValDone(AsyncResult ar, int accessType) {
        SomeArgs response = (SomeArgs) ar.userObj;
        response.arg2 = Integer.valueOf(getOperationStatus(ar.exception == null));
        response.arg3 = ar.result;
        synchronized (response) {
            Log.i(this, "Notifyall");
            response.notifyAll();
        }
    }

    /* access modifiers changed from: private */
    public void onSetFeatureResponseDone(AsyncResult ar) {
        if (ar == null) {
            Log.e(this, "onSetFeatureResponseDone :: AsyncResult is null.");
            return;
        }
        SetCapabilityValueListener listener = null;
        ArrayList<CapabilityStatus> capabilityStatusList = null;
        try {
            capabilityStatusList = (ArrayList) ar.result;
            listener = (SetCapabilityValueListener) ar.userObj;
        } catch (ClassCastException ex) {
            Log.e(this, "onSetFeatureResponseDone :: Exception " + ex);
        }
        if (listener == null) {
            Log.i(this, "onSetFeatureResponseDone :: listener is null");
        } else if (capabilityStatusList == null) {
            Log.i(this, "onSetFeatureResponseDone :: capabilityStatusList is null");
        } else {
            Iterator<CapabilityStatus> it = capabilityStatusList.iterator();
            while (it.hasNext()) {
                CapabilityStatus capabilityStatus = it.next();
                if (ar.exception == null) {
                    listener.onSetCapabilityValueSuccess(capabilityStatus.getCapability(), capabilityStatus.getRadioTech(), capabilityStatus.getStatus());
                } else {
                    listener.onSetCapabilityValueFailure(capabilityStatus.getCapability(), capabilityStatus.getRadioTech(), SetCapabilityFailCause.ERROR_GENERIC);
                }
            }
        }
    }

    private int getOperationStatus(boolean status) {
        if (status) {
            return 0;
        }
        return EVENT_ACCESS_PROVISIONED_VAL;
    }

    private ImsConfigListener getImsConfigListener(AsyncResult ar) {
        if (ar == null) {
            Log.e(this, "AsyncResult is null.");
        } else if (ar.userObj instanceof ImsConfigListener) {
            return (ImsConfigListener) ar.userObj;
        } else {
            if ((ar.userObj instanceof FeatureAccessWrapper) && (((FeatureAccessWrapper) ar.userObj).listener instanceof ImsConfigListener)) {
                return ((FeatureAccessWrapper) ar.userObj).listener;
            }
        }
        Log.e(this, "getImsConfigListener returns null");
        return null;
    }

    private void enforceReadPhoneState(String fn) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.READ_PRIVILEGED_PHONE_STATE") != 0 && this.mContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.READ_PHONE_STATE", fn);
        }
    }

    /* access modifiers changed from: protected */
    public Object sendRequest(int requestType, int item, int event, boolean boolVal, int intVal, String strVal) {
        SomeArgs request = SomeArgs.obtain();
        try {
            request.arg1 = Integer.valueOf(item);
            try {
                this.mCi.sendConfigRequest(requestType, ImsCallUtils.convertImsConfigToImsConfigItem(item), boolVal, intVal, strVal, 0, this.mHandler.obtainMessage(event, request));
                synchronized (request) {
                    while (request.arg2 == null) {
                        try {
                            request.wait();
                        } catch (InterruptedException e) {
                        }
                    }
                }
                return request;
            } catch (IllegalArgumentException e2) {
                try {
                    request.arg2 = -1;
                    return request;
                } catch (Throwable th) {
                    return request;
                }
            }
        } catch (IllegalArgumentException e3) {
            request.arg2 = -1;
            return request;
        } catch (Throwable th2) {
            return request;
        }
    }

    public int getConfigInt(int item) {
        Log.d(this, "getConfigInt :: item=" + item);
        enforceReadPhoneState("getConfigInt");
        int retVal = -1;
        if (!ImsCallUtils.isConfigRequestValid(item, (int) EVENT_ACCESS_PROVISIONED_VAL)) {
            Log.e(this, "Invalid API request for item");
            return -1;
        }
        SomeArgs result = (SomeArgs) sendRequest(45, item, EVENT_ACCESS_PROVISIONED_VAL, false, 0, null);
        if (((Integer) result.arg2).intValue() == 0) {
            retVal = ((Integer) result.arg3).intValue();
        }
        result.recycle();
        return retVal;
    }

    public String getConfigString(int item) {
        Log.d(this, "getConfigString :: item=" + item);
        enforceReadPhoneState("getConfigString");
        String retVal = null;
        if (!ImsCallUtils.isConfigRequestValid(item, (int) EVENT_SET_FEATURE_VALUE)) {
            Log.e(this, "Invalid API request for item");
            return null;
        }
        SomeArgs result = (SomeArgs) sendRequest(45, item, EVENT_ACCESS_PROVISIONED_VAL, false, 0, null);
        if (((Integer) result.arg2).intValue() == 0) {
            retVal = (String) result.arg3;
        }
        result.recycle();
        return retVal;
    }

    private int sendSetConfigRequest(int item, int value) {
        SomeArgs result = (SomeArgs) sendRequest(44, item, EVENT_ACCESS_PROVISIONED_VAL, false, value, null);
        int retVal = ((Integer) result.arg2).intValue();
        result.recycle();
        return getImsConfigImplBaseOperationConstant(retVal);
    }

    /* access modifiers changed from: protected */
    public void sendSetConfigRequestAsync(int item, int value) {
        Log.d(this, "sendSetConfigRequestAsync :: item=" + item + " value=" + value);
        this.mCi.sendConfigRequest(44, ImsCallUtils.convertImsConfigToImsConfigItem(item), false, value, (String) null, 0, (Message) null);
    }

    public int setConfig(int item, int value) {
        Log.d(this, "setConfig :: item=" + item + " value=" + value);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE", "setConfig");
        if (item == 26) {
            Log.w(this, "Ignore VoWiFi Roaming enable/disable");
            return EVENT_ACCESS_PROVISIONED_VAL;
        } else if (!ImsCallUtils.isConfigRequestValid(item, (int) EVENT_ACCESS_PROVISIONED_VAL)) {
            Log.e(this, "Invalid API request for item");
            return EVENT_ACCESS_PROVISIONED_VAL;
        } else if (item != 27 || !this.mServiceSub.IsWfcRoamingConfigurationSupportedByModem()) {
            return sendSetConfigRequest(item, value);
        } else {
            Log.w(this, "VoWiFi mode: config update is done only when mode preference is changed or when sim is loaded");
            return EVENT_ACCESS_PROVISIONED_VAL;
        }
    }

    public int setConfig(int item, String value) {
        Log.d(this, "setConfig :: item=" + item + " value=" + value);
        this.mContext.enforceCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE", "setConfig");
        if (!ImsCallUtils.isConfigRequestValid(item, (int) EVENT_SET_FEATURE_VALUE)) {
            Log.e(this, "Invalid API request for item");
            return EVENT_ACCESS_PROVISIONED_VAL;
        }
        SomeArgs result = (SomeArgs) sendRequest(44, item, EVENT_ACCESS_PROVISIONED_VAL, false, 0, value);
        int retVal = ((Integer) result.arg2).intValue();
        result.recycle();
        return getImsConfigImplBaseOperationConstant(retVal);
    }

    public void setCapabilityValue(ArrayList<CapabilityStatus> capabilityStatusList, SetCapabilityValueListener listener) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE", "setCapabilityValue");
        this.mCi.setServiceStatus(this.mHandler.obtainMessage(EVENT_SET_FEATURE_VALUE, listener), capabilityStatusList, 0);
    }

    private static int getImsConfigImplBaseOperationConstant(int imsConfigOpConst) {
        if (imsConfigOpConst == 0) {
            return 0;
        }
        if (imsConfigOpConst != EVENT_ACCESS_PROVISIONED_VAL) {
            return -1;
        }
        return EVENT_ACCESS_PROVISIONED_VAL;
    }

    @VisibleForTesting
    public SubscriptionManager.OnSubscriptionsChangedListener getSubscriptionsChangeListener() {
        return this.mOnSubscriptionsChangeListener;
    }
}
