package com.huawei.ims;

import android.content.Context;
import android.os.AsyncResult;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import android.telephony.HwTelephonyManager;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsCallSessionListener;
import android.telephony.ims.ImsReasonInfo;
import android.telephony.ims.ImsStreamMediaProfile;
import android.telephony.ims.ImsSuppServiceNotification;
import android.telephony.ims.stub.ImsCallSessionImplBase;
import android.util.Pair;
import com.android.ims.internal.IImsVideoCallProvider;
import com.android.internal.telephony.HwTelephonyFactory;
import com.google.android.collect.Maps;
import com.huawei.ims.DriverImsCall;
import com.huawei.ims.ImsCallAdapter;
import com.huawei.ims.vt.ImsVTCallProviderImpl;
import com.huawei.ims.vt.VTUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: HwImsCallSessionImpl.class */
public class HwImsCallSessionImpl extends ImsCallSessionImplBase {
    private static final String CALL_COMPLETED_ELSEWHERE = "Call completed elsewhere";
    private static final int CODE_HOLD_FOR_IMS = 2001;
    private static final int CODE_RESUME_FOR_IMS = 2002;
    private static final String DESCRIPTOR = "com.huawei.ims.HwImsCallSessionImpl";
    private static final int EVENT_ACCEPT = 2;
    private static final int EVENT_ADD_PARTICIPANT = 9;
    private static final int EVENT_CLOSE_SESSION = 12;
    private static final int EVENT_CONFERENCE = 6;
    private static final int EVENT_DEFLECT = 8;
    private static final int EVENT_DIAL = 1;
    private static final int EVENT_GET_LAST_CALL_FAIL_CAUSE = 16;
    private static final int EVENT_HANGUP = 3;
    private static final int EVENT_HOLD = 4;
    private static final int EVENT_MUTE = 13;
    private static final int EVENT_REJECT = 7;
    private static final int EVENT_REMOVE_PARTICIPANT = 11;
    private static final int EVENT_RESTART_RILD = 15;
    private static final int EVENT_RESUME = 5;
    private static final int EVENT_RIL_RECOVERY = 14;
    private static final int EVENT_RINGBACK_TONE = 10;
    private static final int IMS_HANDOVER_STATE_COMPLETE_FAIL = 2;
    private static final int IMS_HANDOVER_STATE_COMPLETE_SUCCESS = 1;
    private static final int IS_IMS_Call_VOLTE = 0;
    private static final int IS_IMS_Call_VOWIFI = 1;
    private static final String LOG_TAG = "HwImsCallSessionImpl";
    private static final int MAX_END_CALL_DURATION = 35000;
    private static final String MEXTI_BACKUP_NUMBER = "nexti_backup_number";
    private static final String MEXTI_SEARCH_NUMBER = "nexti_search_number";
    private static final String NUMBERMARKINFO_NUMBER = "numbermarkinfo_number";
    private static final int RAT_TYPE_FROM_MODE_IGNORE = -1;
    private static final String REMOTE_CALL_DECLINED = "Declined";
    public static final int SUPP_NOTIFICATION_TYPE_MO = 0;
    public static final int SUPP_NOTIFICATION_TYPE_MT = 1;
    public static final int SUPP_SVC_CODE_MT_HOLD = 2;
    public static final int SUPP_SVC_CODE_MT_RESUME = 3;
    private static final String WIFI_CALL_DROP_BACKHAUL_CONGESTED = "Call is dropped due to Wi-Fi backhaul is congested";
    private static final String WIFI_CALL_DROP_SIGNAL_DEGRADED = "Call is dropped due to Wi-Fi signal is degraded";
    private boolean isMtCall;
    private boolean mAcceptPending;
    private int mCallId;
    private ImsCallProfile mCallProfile;
    private String mCallee;
    private ImsRIL mCi;
    private HwImsCallSessionImpl mConfCallSession;
    private DriverImsCall mDc;
    private int mDisconnCause;
    private Handler mHandler;
    private ImsCallAdapter mImsCallAdapter;
    private ImsVTCallProviderImpl mImsVTCallProviderImpl;
    protected boolean mIsConfInProgress;
    private boolean mIsVtGloballyAllowed;
    private ImsCallSessionListenerProxy mListenerProxy;
    private List<Listener> mListeners;
    private ImsCallProfile mLocalCallProfile;
    private ImsCallProfile mRemoteCallProfile;
    private boolean mRingbackToneRequest;
    private int mState;
    private ImsServiceCallTracker mTracker;

    /* loaded from: HwImsCallSessionImpl$HwImsCallSessionImplHandler.class */
    private class HwImsCallSessionImplHandler extends Handler {
        HwImsCallSessionImplHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Message received: what = " + message.what);
            if (HwImsCallSessionImpl.this.isSessionValid()) {
                switch (message.what) {
                    case 1:
                        AsyncResult asyncResult = (AsyncResult) message.obj;
                        if (asyncResult == null || asyncResult.exception == null) {
                            return;
                        }
                        Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Dial error");
                        if (HwImsCallSessionImpl.this.mCi != null) {
                            HwImsCallSessionImpl.this.mCi.getLastCallFailCause(HwImsCallSessionImpl.this.mHandler.obtainMessage(16));
                            return;
                        }
                        return;
                    case 2:
                        AsyncResult asyncResult2 = (AsyncResult) message.obj;
                        if (asyncResult2 == null || asyncResult2.exception == null) {
                            return;
                        }
                        Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Accept error: " + asyncResult2.exception);
                        HwImsCallSessionImpl.this.mAcceptPending = false;
                        return;
                    case 3:
                        AsyncResult asyncResult3 = (AsyncResult) message.obj;
                        if (asyncResult3 != null && asyncResult3.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Hangup error: " + asyncResult3.exception);
                        }
                        HwImsCallSessionImpl.this.mDisconnCause = 501;
                        return;
                    case 4:
                        AsyncResult asyncResult4 = (AsyncResult) message.obj;
                        if (asyncResult4 == null || asyncResult4.exception == null) {
                            return;
                        }
                        Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Hold error");
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionHoldFailed(new ImsReasonInfo(0, 0, "Hold Failed"));
                        return;
                    case 5:
                        AsyncResult asyncResult5 = (AsyncResult) message.obj;
                        if (asyncResult5 == null || asyncResult5.exception == null) {
                            return;
                        }
                        Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Resume error");
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionResumeFailed(new ImsReasonInfo(0, 0, "Resume Failed"));
                        return;
                    case 6:
                        AsyncResult asyncResult6 = (AsyncResult) message.obj;
                        if (asyncResult6 != null && asyncResult6.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Conference error");
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionMergeFailed(new ImsReasonInfo(0, 0, "Conference Failed"));
                            HwImsCallSessionImpl.this.mTracker.setConfInProgress(false);
                        } else if (asyncResult6 == null || asyncResult6.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "EVENT_CONFERENCE: shouldn't reach here");
                        } else {
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionMergeComplete(HwImsCallSessionImpl.this.mConfCallSession);
                            if (HwImsCallSessionImpl.this.mDc != null && HwImsCallSessionImpl.this.mDc.state == DriverImsCall.State.HOLDING) {
                                Rlog.d(HwImsCallSessionImpl.LOG_TAG, "EVENT_CONFERENCE: DriverImsCall State is HOLDING");
                            }
                            if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                                Rlog.d(HwImsCallSessionImpl.LOG_TAG, "notifyCallSessionMerged");
                                HwImsCallSessionImpl.this.notifyCallSessionMerged();
                            }
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Conference in progress");
                        }
                        HwImsCallSessionImpl.this.mIsConfInProgress = false;
                        return;
                    case 7:
                        if (((AsyncResult) message.obj) != null) {
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionStartFailed(new ImsReasonInfo(143, 0, "User Rejected"));
                            HwImsCallSessionImpl.this.mDisconnCause = 143;
                            return;
                        }
                        return;
                    case 8:
                        AsyncResult asyncResult7 = (AsyncResult) message.obj;
                        if (asyncResult7 != null && asyncResult7.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Deflect error");
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionDeflectFailed(new ImsReasonInfo(0, 0, "Deflect Failed"));
                            return;
                        }
                        Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Deflect success");
                        if (asyncResult7 != null) {
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionDeflected();
                            return;
                        }
                        return;
                    case 9:
                        AsyncResult asyncResult8 = (AsyncResult) message.obj;
                        if (asyncResult8 != null && asyncResult8.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Add Participant error");
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionInviteParticipantsRequestFailed(new ImsReasonInfo(0, 0, "Add Participant Failed"));
                            return;
                        } else if (asyncResult8 != null) {
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionInviteParticipantsRequestDelivered();
                            return;
                        } else {
                            return;
                        }
                    case 10:
                        AsyncResult asyncResult9 = (AsyncResult) message.obj;
                        if (asyncResult9 != null) {
                            HwImsCallSessionImpl.this.mRingbackToneRequest = ((Boolean) asyncResult9.result).booleanValue();
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "EVENT_RINGBACK_TONE, playTone = " + HwImsCallSessionImpl.this.mRingbackToneRequest);
                            if (HwImsCallSessionImpl.this.mDc == null || HwImsCallSessionImpl.this.mDc.state != DriverImsCall.State.ALERTING) {
                                return;
                            }
                            ImsStreamMediaProfile imsStreamMediaProfile = new ImsStreamMediaProfile();
                            if (HwImsCallSessionImpl.this.mRingbackToneRequest) {
                                imsStreamMediaProfile.mAudioDirection = 0;
                            }
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionProgressing(imsStreamMediaProfile);
                            return;
                        }
                        return;
                    case 11:
                    case 13:
                        return;
                    case 12:
                        HwImsCallSessionImpl.this.doClose();
                        return;
                    case 14:
                        HwImsCallSessionImpl.this.mCi.restartRild(HwImsCallSessionImpl.this.mHandler.obtainMessage(15));
                        HwTelephonyFactory.getHwVolteChrManager().triggerHangupFailedEvent();
                        return;
                    case 15:
                        HwImsCallSessionImpl.this.initCallLists();
                        return;
                    case 16:
                        AsyncResult asyncResult10 = (AsyncResult) message.obj;
                        int i = 0;
                        String str = null;
                        if (asyncResult10 != null) {
                            if (asyncResult10.exception != null) {
                                i = 0;
                                HwImsCallSessionImpl.this.loge("Exception during getLastCallFailCause, assuming normal disconnect");
                                str = null;
                            } else {
                                Pair pair = (Pair) asyncResult10.result;
                                i = 0;
                                str = null;
                                if (pair != null) {
                                    i = ((Integer) pair.first).intValue();
                                    str = (String) pair.second;
                                }
                            }
                        }
                        HwTelephonyFactory.getHwVolteChrManager().setRemoteCauseCode(i);
                        HwImsCallSessionImpl.this.log("before Fail Cause = " + i);
                        int convertRilCauseCodeToImsCode = ((i == 18543 || i == 18632) && HwImsCallSessionImpl.CALL_COMPLETED_ELSEWHERE.equals(str)) ? 1014 : (i == 19035 && HwImsCallSessionImpl.REMOTE_CALL_DECLINED.equals(str)) ? 1404 : ImsCallProviderUtils.convertRilCauseCodeToImsCode(i);
                        String convertMessageFromCauseCode = HwImsCallSessionImpl.this.convertMessageFromCauseCode(convertRilCauseCodeToImsCode, str);
                        HwImsCallSessionImpl.this.log("Last IMS Call Fail Cause = " + convertRilCauseCodeToImsCode + "Message = " + convertMessageFromCauseCode);
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionTerminated(new ImsReasonInfo(convertRilCauseCodeToImsCode, 0, convertMessageFromCauseCode));
                        return;
                    default:
                        Rlog.e(HwImsCallSessionImpl.LOG_TAG, "Unhandled EVENT: " + message.what);
                        return;
                }
            }
        }
    }

    /* loaded from: HwImsCallSessionImpl$Listener.class */
    public interface Listener {
        void onCallSessionHold(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z);

        void onCallSessionMerged();

        void onCallSessionResumed(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z);

        void onCallSessionStarted(HwImsCallSessionImpl hwImsCallSessionImpl);

        void onClosed(HwImsCallSessionImpl hwImsCallSessionImpl);

        void onDisconnected(HwImsCallSessionImpl hwImsCallSessionImpl);

        void onUnsolCallModify(HwImsCallSessionImpl hwImsCallSessionImpl, ImsCallAdapter.CallModify callModify);
    }

    public HwImsCallSessionImpl(ImsCallProfile imsCallProfile, ImsCallSessionListener imsCallSessionListener, ImsRIL imsRIL, Context context, ImsServiceCallTracker imsServiceCallTracker) {
        this.mDc = null;
        this.mCallId = 1;
        this.mLocalCallProfile = new ImsCallProfile(1, 2);
        this.mRemoteCallProfile = new ImsCallProfile(1, 2);
        this.mCallProfile = new ImsCallProfile();
        this.mListenerProxy = new ImsCallSessionListenerProxy();
        this.mState = 0;
        this.mHandler = new HwImsCallSessionImplHandler();
        this.mCallee = null;
        this.mIsConfInProgress = false;
        this.mDisconnCause = 0;
        this.mRingbackToneRequest = false;
        this.mAcceptPending = false;
        this.mListeners = new CopyOnWriteArrayList();
        this.mIsVtGloballyAllowed = false;
        this.mTracker = null;
        this.mConfCallSession = null;
        this.isMtCall = false;
        this.mCi = imsRIL;
        setListener(imsCallSessionListener);
        this.mListenerProxy.mListener = imsCallSessionListener;
        this.mCallProfile = imsCallProfile;
        this.mTracker = imsServiceCallTracker;
        this.mImsCallAdapter = new ImsCallAdapter(this, this.mCi);
        if (VTUtils.isVTSupported()) {
            this.mImsVTCallProviderImpl = new ImsVTCallProviderImpl(this, this.mImsCallAdapter);
            addListener(this.mImsVTCallProviderImpl);
        }
        this.isMtCall = false;
        this.mCi.registerForRingbackTone(this.mHandler, 10, null);
    }

    public HwImsCallSessionImpl(DriverImsCall driverImsCall, ImsRIL imsRIL, Context context, ImsServiceCallTracker imsServiceCallTracker) {
        this.mDc = null;
        this.mCallId = 1;
        this.mLocalCallProfile = new ImsCallProfile(1, 2);
        this.mRemoteCallProfile = new ImsCallProfile(1, 2);
        this.mCallProfile = new ImsCallProfile();
        this.mListenerProxy = new ImsCallSessionListenerProxy();
        this.mState = 0;
        this.mHandler = new HwImsCallSessionImplHandler();
        this.mCallee = null;
        this.mIsConfInProgress = false;
        this.mDisconnCause = 0;
        this.mRingbackToneRequest = false;
        this.mAcceptPending = false;
        this.mListeners = new CopyOnWriteArrayList();
        this.mIsVtGloballyAllowed = false;
        this.mTracker = null;
        this.mConfCallSession = null;
        this.isMtCall = false;
        this.mCi = imsRIL;
        this.mDc = new DriverImsCall(driverImsCall);
        this.mCallId = this.mDc.index;
        this.mTracker = imsServiceCallTracker;
        this.mCallee = driverImsCall.number;
        updateImsCallProfile(this.mDc);
        setCapabilitiesInProfiles(this.mDc);
        this.mImsCallAdapter = new ImsCallAdapter(this, this.mCi);
        if (VTUtils.isVTSupported()) {
            this.mImsVTCallProviderImpl = new ImsVTCallProviderImpl(this, this.mImsCallAdapter);
            addListener(this.mImsVTCallProviderImpl);
        }
        this.isMtCall = this.mDc.isMT;
    }

    private static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1001 && callingUid != 1000) {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    private void cleanRilRecovery() {
        log("cleanRilRecovery");
        this.mHandler.removeMessages(14);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String convertMessageFromCauseCode(int i, String str) {
        if (i == 1100) {
            str = WIFI_CALL_DROP_SIGNAL_DEGRADED;
        } else if (i != 3001) {
            Rlog.d(LOG_TAG, "just use origin message.");
        } else {
            str = WIFI_CALL_DROP_BACKHAUL_CONGESTED;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doClose() {
        Rlog.d(LOG_TAG, "doClose!");
        if (isImsCallSessionAlive()) {
            Rlog.d(LOG_TAG, "Received Session Close request while it is alive");
        }
        if (this.mState != -1) {
            if (this.mListenerProxy != null) {
                this.mListenerProxy.dispose();
                this.mListenerProxy = null;
            }
            if (this.mDc != null && !this.mDc.isMT && this.mCi != null) {
                this.mCi.unregisterForRingbackTone(this.mHandler);
            }
            notifySessionClosed();
            this.mListeners.clear();
            this.mCi = null;
            this.mDc = null;
            this.mCallId = 0;
            this.mLocalCallProfile = null;
            this.mRemoteCallProfile = null;
            this.mCallProfile = null;
            this.mState = -1;
            this.mHandler = null;
            this.mIsConfInProgress = false;
            this.mImsVTCallProviderImpl = null;
            this.mImsCallAdapter = null;
            this.mCallee = null;
        }
        Rlog.d(LOG_TAG, "doClose end");
    }

    private void extractImsCallProfileIntoCallProfile(DriverImsCall driverImsCall) {
        if (driverImsCall == null) {
            Rlog.e(LOG_TAG, "Null dcUpdate in extractImsCallProfileIntoCallProfile");
            return;
        }
        updateImsCallProfile(driverImsCall);
        if (driverImsCall.imsCallProfile.extras == null || driverImsCall.imsCallProfile.extras.length <= 0) {
            return;
        }
        for (int i = 0; i < driverImsCall.imsCallProfile.extras.length; i++) {
            if (driverImsCall.imsCallProfile.extras[i] == null) {
                Rlog.e(LOG_TAG, "Element " + i + " is null in ImsCallProfiles Extras!");
                return;
            }
            String[] split = driverImsCall.imsCallProfile.extras[i].split("=");
            if (split[0] == null) {
                Rlog.e(LOG_TAG, "Bad extra string from lower layers!");
                return;
            }
            String str = split[0].contains(":") ? split[0].split(":")[1] : split[0];
            Rlog.d(LOG_TAG, "ImsCallProfiles Extra key= " + str + " value= " + split[1]);
            this.mCallProfile.setCallExtra(str, split[1]);
        }
    }

    private void extractProfileExtrasIntoImsCallProfile(ImsCallProfile imsCallProfile, ImsCallProfiles imsCallProfiles) {
        Bundle bundle = imsCallProfile.mCallExtras.getBundle("OemCallExtras");
        if (bundle == null) {
            Rlog.d(LOG_TAG, "No extras in ImsCallProfile to map into ImsCallProfiles.");
            return;
        }
        String[] strArr = new String[bundle.size()];
        int i = 0;
        for (String str : bundle.keySet()) {
            String str2 = str + "=" + (bundle.get(str) == null ? HwImsConfigImpl.NULL_STRING_VALUE : bundle.get(str).toString());
            String str3 = str2;
            if (str.equals(NUMBERMARKINFO_NUMBER) || str.equals(MEXTI_SEARCH_NUMBER) || str.equals(MEXTI_BACKUP_NUMBER)) {
                str3 = str + "=" + HiddenPrivacyInfo.putMosaic(bundle.get(str).toString(), 0);
            }
            Rlog.d(LOG_TAG, "Packing extra string: " + str3);
            strArr[i] = str2;
            i++;
        }
        imsCallProfiles.setExtras(strArr);
    }

    private String getRadioTechFromDriverCall(int i) {
        int i2 = 0;
        switch (i) {
            case 0:
                i2 = 14;
                break;
            case 1:
                i2 = 18;
                break;
        }
        log("getRadioTechFromDriverCall " + i2 + " ,imsDomain " + i);
        return Integer.toString(i2);
    }

    private int getRestrictCause(int i, ImsServiceState[] imsServiceStateArr) {
        int i2 = 0;
        if (imsServiceStateArr != null) {
            int length = imsServiceStateArr.length;
            int i3 = 0;
            while (true) {
                i2 = 0;
                if (i3 < length) {
                    ImsServiceState imsServiceState = imsServiceStateArr[i3];
                    if (imsServiceState != null && imsServiceState.type == i && imsServiceState.accessTechStatus != null && imsServiceState.accessTechStatus.length > 0) {
                        i2 = imsServiceState.accessTechStatus[0].restrictCause;
                        break;
                    }
                    i3++;
                } else {
                    break;
                }
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCallLists() {
        log("initCallLists");
        ArrayList<DriverImsCall> arrayList = new ArrayList<>();
        if (this.mTracker != null) {
            this.mTracker.handleCalls(arrayList);
        }
    }

    private boolean isHandleHandoveSuccess(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        return z;
    }

    private boolean isImsCallSessionAlive() {
        return (this.mState == 8 || this.mState == 7 || this.mState == 0 || this.mState == -1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSessionValid() {
        boolean z = this.mState != -1;
        if (!z) {
            Rlog.e(LOG_TAG, "Session is closed");
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String str) {
        Rlog.d(LOG_TAG, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String str) {
        Rlog.e(LOG_TAG, str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d0, code lost:
        if (r3.equals("QCELP13K") != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int mapAudioCodecFromExtras(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.HwImsCallSessionImpl.mapAudioCodecFromExtras(java.lang.String):int");
    }

    private int mapCallTypeFromProfile(int i) {
        int i2;
        switch (i) {
            case 1:
                i2 = 10;
                break;
            case 2:
                i2 = 0;
                break;
            case 3:
            default:
                Rlog.e(LOG_TAG, "Unsupported callType " + i);
                i2 = 0;
                break;
            case 4:
                i2 = 3;
                break;
            case 5:
                i2 = 1;
                break;
            case 6:
                i2 = 2;
                break;
            case 7:
                i2 = 4;
                break;
        }
        return i2;
    }

    private void notifyCallSessionHold(boolean z) {
        checkAccessPermission();
        if (isSessionValid()) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                this.mListeners.get(i).onCallSessionHold(this, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCallSessionMerged() {
        checkAccessPermission();
        if (isSessionValid()) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                this.mListeners.get(i).onCallSessionMerged();
            }
        }
    }

    private void notifyCallSessionResumed(boolean z) {
        checkAccessPermission();
        if (isSessionValid()) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                this.mListeners.get(i).onCallSessionResumed(this, z);
            }
        }
    }

    private void notifyCallSessionStarted() {
        checkAccessPermission();
        if (isSessionValid()) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                this.mListeners.get(i).onCallSessionStarted(this);
            }
        }
    }

    private void notifySessionClosed() {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            this.mListeners.get(i).onClosed(this);
        }
    }

    private void notifySessionDisconnected() {
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            this.mListeners.get(i).onDisconnected(this);
        }
    }

    private void setCapabilitiesInProfiles(DriverImsCall driverImsCall) {
        if (this.mLocalCallProfile != null) {
            this.mLocalCallProfile.mMediaProfile = new ImsStreamMediaProfile();
            this.mLocalCallProfile.mMediaProfile.mAudioQuality = mapAudioCodecFromExtras(driverImsCall.imsCallProfile.getValueForKeyFromExtras(driverImsCall.imsCallProfile.extras, ImsCallProfiles.EXTRAS_CODEC));
            if (this.mIsVtGloballyAllowed) {
                this.mLocalCallProfile.mCallType = 4;
            } else {
                this.mLocalCallProfile.mCallType = 2;
            }
        }
        if (this.mRemoteCallProfile != null) {
            this.mRemoteCallProfile.mCallType = 4;
            if (driverImsCall.imsCallProfile.peerAbility != null) {
                this.mRemoteCallProfile.mMediaProfile = new ImsStreamMediaProfile();
                this.mRemoteCallProfile.mRestrictCause = getRestrictCause(this.mCallProfile.mCallType == 4 ? 3 : 0, driverImsCall.imsCallProfile.peerAbility);
            }
        }
    }

    private int transHandoverErrorCode(String str) {
        return 0;
    }

    private void triggerRilRecoveryDelayed() {
        if (this.mState == 8) {
            log("Call Session terminated. Don't trigger ril recovery.");
            return;
        }
        log("triggerRilRecoveryDelayed");
        if (this.mHandler.hasMessages(14)) {
            return;
        }
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(14), 35000L);
    }

    private void updateImsCallProfile(DriverImsCall driverImsCall) {
        if (driverImsCall == null) {
            loge("updateImsCallProfile called with dc null");
            return;
        }
        if (this.mCallProfile == null) {
            this.mCallProfile = new ImsCallProfile();
        }
        this.mCallProfile.setCallExtra("oi", driverImsCall.number);
        this.mCallProfile.setCallExtra("cna", driverImsCall.name);
        this.mCallProfile.setCallExtraInt("oir", ImsCallProfile.presentationToOIR(driverImsCall.numberPresentation));
        this.mCallProfile.setCallExtraInt("cnap", ImsCallProfile.presentationToOIR(driverImsCall.namePresentation));
        this.mCallProfile.setCallExtraInt("remote_vt_capability", driverImsCall.peerVideoSupport);
        int i = driverImsCall.radioTechFromRilImsCall;
        if (i != -1) {
            this.mCallProfile.setCallExtra("CallRadioTech", getRadioTechFromDriverCall(i));
        } else {
            HwTelephonyManager hwTelephonyManager = HwTelephonyManager.getDefault();
            if (hwTelephonyManager != null) {
                int default4GSlotId = hwTelephonyManager.getDefault4GSlotId();
                int imsDomain = hwTelephonyManager.getImsDomain(default4GSlotId);
                this.mCallProfile.setCallExtra("CallRadioTech", getRadioTechFromDriverCall(imsDomain));
                Rlog.d(LOG_TAG, "imsRegDomain = " + imsDomain + " ,default4GSlotId = " + default4GSlotId);
            }
        }
        this.mCallProfile.setCallExtra("redirect_number", driverImsCall.redirectNumber);
        this.mCallProfile.setCallExtraInt("redirect_number_presentation", ImsCallProfile.presentationToOIR(driverImsCall.redirectNumberPresentation));
        int i2 = driverImsCall.imsCallProfile.call_type;
        if (i2 == 10) {
            this.mCallProfile.mCallType = 1;
            this.mCallProfile.mMediaProfile.mVideoDirection = -1;
            return;
        }
        switch (i2) {
            case 0:
                this.mCallProfile.mCallType = 2;
                this.mCallProfile.mMediaProfile.mVideoDirection = -1;
                return;
            case 1:
                this.mCallProfile.mCallType = 5;
                this.mCallProfile.mMediaProfile.mVideoDirection = 2;
                return;
            case 2:
                this.mCallProfile.mCallType = 6;
                this.mCallProfile.mMediaProfile.mVideoDirection = 1;
                return;
            case 3:
                this.mCallProfile.mCallType = 4;
                this.mCallProfile.mMediaProfile.mVideoDirection = 3;
                return;
            case 4:
                this.mCallProfile.mMediaProfile.mVideoDirection = 0;
                return;
            default:
                return;
        }
    }

    private boolean updateLocalDc(DriverImsCall driverImsCall) {
        boolean update;
        if (this.mDc == null) {
            this.mDc = new DriverImsCall(driverImsCall);
            update = true;
        } else {
            update = this.mDc.update(driverImsCall);
        }
        Rlog.d(LOG_TAG, "updateLocalDc is " + update);
        return update;
    }

    private void updateRate(int i, int i2) {
        if ((i == i2 && this.mCallProfile.getCallExtra("CallRadioTech").equals(String.valueOf(i2))) || this.mCallProfile == null) {
            return;
        }
        this.mCallProfile.setCallExtra("CallRadioTech", String.valueOf(i2));
    }

    public void accept(int i, ImsStreamMediaProfile imsStreamMediaProfile) {
        checkAccessPermission();
        if (isSessionValid()) {
            if (this.mAcceptPending) {
                Rlog.d(LOG_TAG, "this call is being accepted...");
                return;
            }
            this.mAcceptPending = true;
            this.mCi.acceptCall(this.mHandler.obtainMessage(2), mapCallTypeFromProfile(i));
        }
    }

    public final void addListener(Listener listener) {
        checkAccessPermission();
        if (isSessionValid()) {
            if (listener == null) {
                throw new IllegalArgumentException("listener is null.");
            }
            if (!this.mListeners.contains(listener)) {
                this.mListeners.add(listener);
                return;
            }
            loge("Duplicate listener, " + listener);
        }
    }

    public void close() {
        checkAccessPermission();
        Rlog.d(LOG_TAG, "Close!");
        if (this.mHandler != null) {
            this.mHandler.obtainMessage(12).sendToTarget();
        }
    }

    public void deflect(String str) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public void extendToConference(String[] strArr) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public DriverImsCall getCall() {
        checkAccessPermission();
        return this.mDc;
    }

    public int getCallDomain() {
        checkAccessPermission();
        if (isSessionValid()) {
            int i = 3;
            if (this.mDc != null) {
                i = 3;
                if (this.mDc.imsCallProfile != null) {
                    i = this.mDc.imsCallProfile.call_domain;
                }
            }
            return i;
        }
        return 3;
    }

    public String getCallId() {
        checkAccessPermission();
        return Integer.toString(this.mCallId);
    }

    public ImsCallProfile getCallProfile() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mCallProfile;
        }
        return null;
    }

    public int getCallSubstate() {
        checkAccessPermission();
        if (isSessionValid()) {
            int i = 0;
            if (this.mDc != null) {
                i = 0;
                if (this.mDc.imsCallProfile != null) {
                    i = this.mDc.imsCallProfile.callsubstate;
                }
            }
            return i;
        }
        return 0;
    }

    public String getCallee() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mCallee;
        }
        return null;
    }

    public DriverImsCall.State getDriverCallState() {
        checkAccessPermission();
        return !isSessionValid() ? DriverImsCall.State.END : this.mDc.state;
    }

    public ImsCallAdapter getImsCallAdapter() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mImsCallAdapter;
        }
        return null;
    }

    public ImsCallProfiles getImsCallProfile() {
        checkAccessPermission();
        if (this.mDc == null) {
            return null;
        }
        return this.mDc.imsCallProfile;
    }

    public ImsVTCallProviderImpl getImsVTCallProviderImpl() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mImsVTCallProviderImpl;
        }
        return null;
    }

    public int getInternalCallType() {
        int i;
        checkAccessPermission();
        if (isSessionValid()) {
            if (this.mDc == null || this.mDc.imsCallProfile == null) {
                i = 10;
                if (this.mState == 1) {
                    i = 10;
                    if (this.mCallProfile != null) {
                        i = ImsCallProviderUtils.convertToInternalCallType(this.mCallProfile.mCallType);
                    }
                }
            } else {
                i = this.mDc.imsCallProfile.call_type;
            }
            return i;
        }
        return 10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DriverImsCall.State getInternalState() {
        if (isSessionValid()) {
            DriverImsCall.State state = null;
            if (this.mDc != null) {
                state = this.mDc.state;
            } else if (this.mState == 1) {
                state = DriverImsCall.State.DIALING;
            }
            return state;
        }
        return DriverImsCall.State.END;
    }

    public ImsCallProfile getLocalCallProfile() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mLocalCallProfile;
        }
        return null;
    }

    public int getMediaId() {
        checkAccessPermission();
        int i = -1;
        if (isSessionValid()) {
            if (this.mDc != null) {
                i = this.mDc.imsCallProfile.callMediaId;
            }
            return i;
        }
        return -1;
    }

    public String getProperty(String str) {
        String str2;
        checkAccessPermission();
        if (isSessionValid()) {
            if (this.mCallProfile != null) {
                str2 = this.mCallProfile.getCallExtra(str);
            } else {
                Rlog.e(LOG_TAG, "Call Profile null! ");
                str2 = null;
            }
            return str2;
        }
        return null;
    }

    public ImsCallProfile getRemoteCallProfile() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mRemoteCallProfile;
        }
        return null;
    }

    public int getState() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mState;
        }
        return -1;
    }

    public IImsVideoCallProvider getVideoCallProvider() {
        checkAccessPermission();
        if (isSessionValid() && VTUtils.isVTSupported()) {
            return this.mImsVTCallProviderImpl.getInterface();
        }
        return null;
    }

    public void handleHandover(int i, int i2, int i3, int i4, byte[] bArr, String str, String str2) {
        checkAccessPermission();
        Rlog.d(LOG_TAG, "hoType : " + i + "srcTech: " + i2 + " targetTech: " + i3);
        if (isSessionValid()) {
            ImsReasonInfo imsReasonInfo = new ImsReasonInfo(transHandoverErrorCode(str), 0, str2);
            updateRate(i2, i3);
            if (this.mListenerProxy != null) {
                if (!isHandleHandoveSuccess(i)) {
                    this.mListenerProxy.callSessionHandoverFailed(i2, i3, imsReasonInfo);
                    return;
                }
                this.mListenerProxy.callSessionHandover(i2, i3, imsReasonInfo);
                this.mListenerProxy.callSessionUpdated(this.mCallProfile);
            }
        }
    }

    public void handleOnHoldTone(boolean z) {
        log("onHoldTone: startOnHoldLocalTone = " + z);
        if (isSessionValid() && this.mCallProfile != null) {
            if (getInternalState() != DriverImsCall.State.ACTIVE && getInternalState() != DriverImsCall.State.HOLDING) {
                log("onHoldTone: current call state is not active or holding, ignore");
            } else if (z) {
                this.mCallProfile.mMediaProfile.mAudioDirection = 0;
                this.mListenerProxy.callSessionHoldReceived(this.mCallProfile);
            } else if (this.mCallProfile.mMediaProfile.mAudioDirection == 0) {
                this.mCallProfile.mMediaProfile.mAudioDirection = 3;
                this.mListenerProxy.callSessionResumeReceived(this.mCallProfile);
            }
        }
    }

    public void hangupForegroundResumeBackground(int i) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "hangupForegroundResumeBackground " + i);
            this.mCi.hangupForegroundResumeBackground(this.mHandler.obtainMessage(3));
            triggerRilRecoveryDelayed();
        }
    }

    public void hangupWaitingOrBackground(int i) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "hangupWaitingOrBackground " + i);
            this.mCi.hangupWaitingOrBackground(this.mHandler.obtainMessage(3));
            triggerRilRecoveryDelayed();
        }
    }

    public boolean hasMediaIdValid() {
        checkAccessPermission();
        boolean z = false;
        if (isSessionValid()) {
            if (this.mDc != null) {
                z = this.mDc.imsCallProfile.hasMediaIdValid();
            }
            return z;
        }
        return false;
    }

    public void hold(ImsStreamMediaProfile imsStreamMediaProfile) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "hold requested.");
            this.mCi.switchWaitingOrHoldingAndActive(this.mHandler.obtainMessage(4));
        }
    }

    public void inviteParticipants(String[] strArr) {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mCallee = strArr[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void invokeCallResume(HwImsCallSessionImpl hwImsCallSessionImpl, ImsCallProfile imsCallProfile) {
        Rlog.d(LOG_TAG, "invokeCallResume");
        this.mListenerProxy.callSessionResumed(imsCallProfile);
    }

    public boolean isCallActive() {
        checkAccessPermission();
        boolean z = false;
        if (isSessionValid()) {
            if (getInternalState() == DriverImsCall.State.ACTIVE) {
                z = true;
            }
            return z;
        }
        return false;
    }

    public boolean isConfInProgress() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mIsConfInProgress;
        }
        return false;
    }

    public boolean isHwCustCode(int i) {
        return i == 2001 || i == 2002;
    }

    public boolean isInCall() {
        checkAccessPermission();
        if (isSessionValid()) {
            boolean z = false;
            switch (this.mDc.state) {
                case ACTIVE:
                case HOLDING:
                case DIALING:
                case ALERTING:
                case INCOMING:
                case WAITING:
                    z = true;
                    break;
            }
            return z;
        }
        return false;
    }

    public boolean isMT() {
        return this.isMtCall;
    }

    public boolean isMultiparty() {
        checkAccessPermission();
        if (isSessionValid() && this.mDc != null) {
            return this.mDc.isMpty;
        }
        return false;
    }

    public boolean isMultipartyCall() {
        checkAccessPermission();
        boolean z = false;
        if (isSessionValid()) {
            if (this.mDc != null) {
                z = this.mDc.isMpty;
            }
            return z;
        }
        return false;
    }

    public void merge() {
        checkAccessPermission();
        if (!isSessionValid() || this.mIsConfInProgress) {
            return;
        }
        this.mIsConfInProgress = true;
        this.mTracker.setConfInProgress(true);
        this.mCi.conference(this.mHandler.obtainMessage(6));
    }

    public void notifyConfInfo(byte[] bArr) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public void notifyTtyModeChange(int i) {
        checkAccessPermission();
        Rlog.d(LOG_TAG, "TTY mode = " + i);
        if (isSessionValid()) {
            if (this.mListenerProxy != null) {
                this.mListenerProxy.callSessionTtyModeReceived(i);
            } else {
                Rlog.e(LOG_TAG, "notifyTtyModeChange ListenerProxy null! ");
            }
        }
    }

    public void notifyUnsolCallModify(ImsCallAdapter.CallModify callModify) {
        checkAccessPermission();
        if (isSessionValid()) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                this.mListeners.get(i).onUnsolCallModify(this, callModify);
            }
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        checkAccessPermission();
        Rlog.d(LOG_TAG, "HwImsCallSessionImpl onTransact code:" + i);
        switch (i) {
            case 2001:
                parcel.enforceInterface(DESCRIPTOR);
                this.mCi.switchWaitingOrHoldingAndActiveForIms(mapCallTypeFromProfile(parcel.readInt()), this.mHandler.obtainMessage(4));
                return true;
            case 2002:
                parcel.enforceInterface(DESCRIPTOR);
                this.mCi.switchWaitingOrHoldingAndActiveForIms(mapCallTypeFromProfile(parcel.readInt()), this.mHandler.obtainMessage(5));
                return true;
            default:
                Rlog.e(LOG_TAG, "HwImsCallSessionImpl can not support the code:" + i);
                return true;
        }
    }

    public void reject(int i) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "reject " + i);
            int imsCallRejectCause = ImsCallProviderUtils.getImsCallRejectCause(i);
            Rlog.d(LOG_TAG, "reject cause" + imsCallRejectCause);
            if (imsCallRejectCause != -1) {
                this.mCi.rejectImsCallForCause(this.mCallId, imsCallRejectCause, this.mHandler.obtainMessage(7));
            } else {
                this.mCi.hangupConnection(this.mCallId, this.mHandler.obtainMessage(3));
            }
            triggerRilRecoveryDelayed();
        }
    }

    public void removeListener(Listener listener) {
        checkAccessPermission();
        if (isSessionValid()) {
            if (listener == null) {
                throw new IllegalArgumentException("listener is null.");
            }
            if (this.mListeners.contains(listener)) {
                this.mListeners.remove(listener);
                return;
            }
            loge("Listener not found, " + listener);
        }
    }

    public void removeParticipants(String[] strArr) {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mCallee = strArr[0];
            Rlog.d(LOG_TAG, "removeParticipants user: " + this.mCallee);
        }
    }

    public void reportNewConferenceCallSession(HwImsCallSessionImpl hwImsCallSessionImpl) {
        checkAccessPermission();
        if (hwImsCallSessionImpl == null) {
            Rlog.e(LOG_TAG, "Null confCallSession! Not calling callSessionMergeStarted");
            return;
        }
        Rlog.d(LOG_TAG, "Calling callSessionMergeStarted");
        this.mConfCallSession = hwImsCallSessionImpl;
        this.mListenerProxy.callSessionMergeStarted(hwImsCallSessionImpl.getServiceImpl(), hwImsCallSessionImpl.getCallProfile());
    }

    public void resume(ImsStreamMediaProfile imsStreamMediaProfile) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "resume requested.");
            this.mCi.switchWaitingOrHoldingAndActive(this.mHandler.obtainMessage(5));
        }
    }

    public void sendDtmf(char c, Message message) {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mCi.sendDtmf(c, message);
        }
    }

    public void sendUssd(String str) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public final void setListener(ImsCallSessionListener imsCallSessionListener) {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mListenerProxy.mListener = imsCallSessionListener;
        }
    }

    public void setMute(boolean z) {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mCi.setMute(z, this.mHandler.obtainMessage(13));
        }
    }

    public void setNewSession(HwImsCallSessionImpl hwImsCallSessionImpl) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public void start(String str, ImsCallProfile imsCallProfile) {
        checkAccessPermission();
        if (isSessionValid()) {
            HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", this.mCi.getCHRReportPhoneId(), 0, "ImsRIL");
            this.mCallProfile.mCallType = imsCallProfile.mCallType;
            this.mCallProfile.mMediaProfile = imsCallProfile.mMediaProfile;
            this.mState = 1;
            this.mCallee = str;
            int callExtraInt = imsCallProfile.getCallExtraInt("oir");
            ImsCallProfiles imsCallProfiles = new ImsCallProfiles(mapCallTypeFromProfile(imsCallProfile.mCallType), 3, null);
            extractProfileExtrasIntoImsCallProfile(imsCallProfile, imsCallProfiles);
            this.mCi.dial(str, callExtraInt, imsCallProfiles, this.mHandler.obtainMessage(1));
        }
    }

    public void startConference(String[] strArr, ImsCallProfile imsCallProfile) {
        checkAccessPermission();
        if (!isSessionValid() || strArr == null) {
            return;
        }
        this.mCallProfile = imsCallProfile;
        this.mState = 1;
        this.mCallee = strArr[0];
        HashMap newHashMap = Maps.newHashMap();
        newHashMap.put(ImsCallProfiles.EXTRAS_IS_CONFERENCE_URI, Boolean.toString(true));
        this.mCi.dial(strArr[0], 0, new ImsCallProfiles(mapCallTypeFromProfile(imsCallProfile.mCallType), 3, ImsCallProfiles.getExtrasFromMap(newHashMap)), this.mHandler.obtainMessage(1));
    }

    public void startDtmf(char c) {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mCi.startDtmf(c, null);
        }
    }

    public void stopDtmf() {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mCi.stopDtmf(null);
        }
    }

    public void terminate(int i) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "terminate " + i);
            this.mCi.hangupConnection(this.mCallId, this.mHandler.obtainMessage(3));
            triggerRilRecoveryDelayed();
        }
    }

    public String toSimpleString() {
        checkAccessPermission();
        return super/*java.lang.Object*/.toString();
    }

    public String toString() {
        checkAccessPermission();
        return " callid= " + this.mCallId + " mediaId=" + getMediaId() + " mState= " + this.mState + " mDc=" + this.mDc;
    }

    public void update(int i, ImsStreamMediaProfile imsStreamMediaProfile) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public void updateCall(DriverImsCall driverImsCall) {
        if (driverImsCall == null) {
            loge("updateCall, dcUpdate is null");
            return;
        }
        checkAccessPermission();
        Rlog.d(LOG_TAG, "updateCall for " + driverImsCall);
        if (isSessionValid()) {
            boolean z = true;
            boolean z2 = this.mDc != null && this.mDc.state == driverImsCall.state;
            updateImsCallProfile(driverImsCall);
            setCapabilitiesInProfiles(driverImsCall);
            if (driverImsCall.state != DriverImsCall.State.INCOMING && driverImsCall.state != DriverImsCall.State.WAITING) {
                this.mAcceptPending = false;
            }
            this.mImsCallAdapter.update(driverImsCall);
            switch (driverImsCall.state) {
                case ACTIVE:
                    if (this.mDc != null) {
                        if (this.mDc.state != DriverImsCall.State.DIALING && this.mDc.state != DriverImsCall.State.ALERTING && this.mDc.state != DriverImsCall.State.INCOMING && this.mDc.state != DriverImsCall.State.WAITING) {
                            if ((this.mDc.state == DriverImsCall.State.HOLDING && !this.mIsConfInProgress) || this.mIsConfInProgress) {
                                Rlog.d(LOG_TAG, "Call being resumed.");
                                this.mIsConfInProgress = false;
                                if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                                    notifyCallSessionResumed(false);
                                }
                                this.mListenerProxy.callSessionResumed(this.mCallProfile);
                                break;
                            } else if (this.mDc.imsCallProfile.call_type == driverImsCall.imsCallProfile.call_type) {
                                Rlog.d(LOG_TAG, "Call resumed skipped, conf status = " + this.mIsConfInProgress);
                                break;
                            } else {
                                Rlog.d(LOG_TAG, "call type changes, from " + this.mDc.imsCallProfile.call_type + " to " + driverImsCall.imsCallProfile.call_type);
                                this.mListenerProxy.callSessionResumed(this.mCallProfile);
                                break;
                            }
                        } else {
                            this.mState = 4;
                            this.mDc.state = DriverImsCall.State.ACTIVE;
                            extractImsCallProfileIntoCallProfile(driverImsCall);
                            if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                                notifyCallSessionStarted();
                            }
                            this.mListenerProxy.callSessionStarted(this.mCallProfile);
                            break;
                        }
                    } else {
                        Rlog.e(LOG_TAG, "Phantom call!");
                        this.mState = 4;
                        this.mCallId = driverImsCall.index;
                        this.mListenerProxy.callSessionStarted(this.mCallProfile);
                        break;
                    }
                    break;
                case HOLDING:
                    if (this.mDc != null && this.mDc.state != DriverImsCall.State.HOLDING) {
                        Rlog.d(LOG_TAG, "Call being held.");
                        if (!this.mIsConfInProgress) {
                            if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                                notifyCallSessionHold(false);
                            }
                            this.mListenerProxy.callSessionHeld(this.mCallProfile);
                            break;
                        }
                    }
                    break;
                case DIALING:
                    if (this.mDc == null) {
                        Rlog.d(LOG_TAG, "MO Dialing call!");
                        this.mCallId = driverImsCall.index;
                        this.mListenerProxy.callSessionProgressing(new ImsStreamMediaProfile());
                        break;
                    }
                    break;
                case ALERTING:
                    this.mState = 2;
                    if (this.mDc != null) {
                        if (this.mDc.state != DriverImsCall.State.ALERTING) {
                            extractImsCallProfileIntoCallProfile(driverImsCall);
                            ImsStreamMediaProfile imsStreamMediaProfile = new ImsStreamMediaProfile();
                            if (this.mRingbackToneRequest) {
                                imsStreamMediaProfile.mAudioDirection = 0;
                            }
                            this.mListenerProxy.callSessionProgressing(imsStreamMediaProfile);
                            break;
                        }
                    } else {
                        Rlog.d(LOG_TAG, "MO Alerting call!");
                        this.mCallId = driverImsCall.index;
                        break;
                    }
                    break;
                case INCOMING:
                case WAITING:
                    extractImsCallProfileIntoCallProfile(driverImsCall);
                    break;
                case END:
                    cleanRilRecovery();
                    this.mState = 8;
                    if (this.mDisconnCause == 0) {
                        this.mCi.getLastCallFailCause(this.mHandler.obtainMessage(16));
                    } else if (this.mListenerProxy != null) {
                        this.mListenerProxy.callSessionTerminated(new ImsReasonInfo(this.mDisconnCause, 0));
                    }
                    this.mTracker.onNotifyCallResumed();
                    notifySessionDisconnected();
                    break;
            }
            boolean updateLocalDc = updateLocalDc(driverImsCall);
            if (driverImsCall.state == DriverImsCall.State.END) {
                z = false;
            }
            if (z2 && z && updateLocalDc) {
                log("Call details updated. currentImsCallProfile= " + this.mDc.imsCallProfile + " to newImsCallProfile= " + driverImsCall.imsCallProfile);
                this.mListenerProxy.callSessionUpdated(this.mCallProfile);
            }
        }
    }

    public void updateConfSession(DriverImsCall driverImsCall) {
        checkAccessPermission();
        Rlog.d(LOG_TAG, "updateConfSession for " + driverImsCall);
        if (isSessionValid() && driverImsCall.state == DriverImsCall.State.ACTIVE && driverImsCall.isMpty) {
            this.mState = 4;
            this.mCallId = this.mDc.index;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateSuppServiceInfo(ImsSuppServiceNotification imsSuppServiceNotification, boolean z) {
        log("updateSuppSvcInfo: suppSvcNotification= " + imsSuppServiceNotification + " startOnHoldLocalTone = " + z);
        if (isSessionValid()) {
            if (imsSuppServiceNotification.notificationType == 0) {
                this.mListenerProxy.callSessionSuppServiceReceived(imsSuppServiceNotification);
            } else if (imsSuppServiceNotification.notificationType == 1) {
                switch (imsSuppServiceNotification.code) {
                    case 2:
                        log("updateSuppServiceInfo SUPP_SVC_CODE_MT_HOLD");
                        if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                            notifyCallSessionHold(true);
                        }
                        this.mListenerProxy.callSessionHoldReceived(this.mCallProfile);
                        return;
                    case 3:
                        log("updateSuppServiceInfo SUPP_SVC_CODE_MT_RESUME");
                        if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                            notifyCallSessionResumed(true);
                        }
                        this.mListenerProxy.callSessionResumeReceived(this.mCallProfile);
                        return;
                    default:
                        log("Non-Hold/Resume supp svc code received.");
                        return;
                }
            }
        }
    }

    public void updateVtGlobalCapability(boolean z) {
        checkAccessPermission();
        log("updateVtGlobalCapability " + z);
        if (isSessionValid() && this.mIsVtGloballyAllowed != z) {
            this.mIsVtGloballyAllowed = z;
            if (this.mDc == null || this.mDc.state == DriverImsCall.State.END) {
                return;
            }
            setCapabilitiesInProfiles(this.mDc);
            this.mListenerProxy.callSessionUpdated(this.mCallProfile);
        }
    }
}
