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
import com.huawei.ims.vt.ImsVtCallProviderImpl;
import com.huawei.ims.vt.ImsVtGlobals;
import com.huawei.ims.vt.VtUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HwImsCallSessionImpl extends ImsCallSessionImplBase {
    private static final String CALL_COMPLETED_ELSEWHERE = "Call completed elsewhere";
    private static final int CODE_HOLD_FOR_IMS = 2001;
    private static final int CODE_RESUME_FOR_IMS = 2002;
    private static final String DESCRIPTOR = "com.huawei.ims.HwImsCallSessionImpl";
    private static final int ENCRYPTED_CALL = 1;
    public static final String ENCRYPT_CALL_FLAG = "encrypt_call_flag";
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
    private static final int IS_IMS_CALL_VOLTE = 0;
    private static final int IS_IMS_CALL_VONR = 2;
    private static final int IS_IMS_CALL_VOWIFI = 1;
    private static final String LOG_TAG = "HwImsCallSessionImpl";
    private static final int MAX_END_CALL_DURATION = 35000;
    private static final String MEXTI_BACKUP_NUMBER = "nexti_backup_number";
    private static final String MEXTI_SEARCH_NUMBER = "nexti_search_number";
    private static final int NOT_ENCRYPTED_CALL = 0;
    private static final String NUMBERMARKINFO_NUMBER = "numbermarkinfo_number";
    private static final int RAT_TYPE_FROM_MODE_IGNORE = -1;
    private static final String REMOTE_CALL_DECLINED = "Declined";
    public static final int SUPP_NOTIFICATION_TYPE_MO = 0;
    public static final int SUPP_NOTIFICATION_TYPE_MT = 1;
    public static final int SUPP_SVC_CODE_MT_HOLD = 2;
    public static final int SUPP_SVC_CODE_MT_RESUME = 3;
    private static final String SYMBOL_EQUALS = "=";
    private static final String TAG_FOR_CHR = "HwIms";
    private static final String WIFI_CALL_DROP_BACKHAUL_CONGESTED = "Call is dropped due to Wi-Fi backhaul is congested";
    private static final String WIFI_CALL_DROP_SIGNAL_DEGRADED = "Call is dropped due to Wi-Fi signal is degraded";
    private int mCallId;
    private ImsCallProfile mCallProfile;
    private String mCallee;
    private ImsRIL mCi;
    private HwImsCallSessionImpl mConfCallSession;
    private DriverImsCall mDc;
    private int mDisconnCause;
    private int mEncryptFlagMo;
    private Handler mHandler;
    private ImsCallAdapter mImsCallAdapter;
    private ImsVtCallProviderImpl mImsVtCallProviderImpl;
    private boolean mIsAcceptPending;
    protected boolean mIsConfInProgress;
    private boolean mIsHangup;
    private boolean mIsMtCall;
    private boolean mIsPendingDisconnect;
    private boolean mIsRingbackToneRequest;
    private boolean mIsVtGloballyAllowed;
    private ImsCallSessionListenerProxy mListenerProxy;
    private List<Listener> mListeners;
    private ImsCallProfile mLocalCallProfile;
    private int mPendingDisconnectReason;
    private ImsCallProfile mRemoteCallProfile;
    private int mState;
    private ImsServiceCallTracker mTracker;

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public interface Listener {
        void onCallSessionHold(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z);

        void onCallSessionMerged();

        void onCallSessionResumed(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z);

        void onCallSessionStarted(HwImsCallSessionImpl hwImsCallSessionImpl);

        void onClosed(HwImsCallSessionImpl hwImsCallSessionImpl);

        void onDisconnected(HwImsCallSessionImpl hwImsCallSessionImpl);

        void onUnsolCallModify(HwImsCallSessionImpl hwImsCallSessionImpl, ImsCallAdapter.CallModify callModify);
    }

    public HwImsCallSessionImpl(ImsCallProfile profile, ImsCallSessionListener listener, ImsRIL imsRil, Context context, ImsServiceCallTracker tracker) {
        this.mIsConfInProgress = false;
        this.mDc = null;
        this.mCallId = 1;
        this.mLocalCallProfile = new ImsCallProfile(1, 2);
        this.mRemoteCallProfile = new ImsCallProfile(1, 2);
        this.mCallProfile = new ImsCallProfile();
        this.mListenerProxy = new ImsCallSessionListenerProxy();
        this.mState = 0;
        this.mHandler = new HwImsCallSessionImplHandler();
        this.mCallee = null;
        this.mDisconnCause = 0;
        this.mIsRingbackToneRequest = false;
        this.mIsAcceptPending = false;
        this.mListeners = new CopyOnWriteArrayList();
        this.mIsVtGloballyAllowed = false;
        this.mTracker = null;
        this.mConfCallSession = null;
        this.mIsMtCall = false;
        this.mEncryptFlagMo = 0;
        this.mIsHangup = false;
        this.mIsPendingDisconnect = false;
        this.mCi = imsRil;
        setListener(listener);
        this.mListenerProxy.setListener(listener);
        this.mCallProfile = profile;
        this.mTracker = tracker;
        this.mImsCallAdapter = new ImsCallAdapter(this, this.mCi);
        if (VtUtils.isVtSupported()) {
            this.mImsVtCallProviderImpl = new ImsVtCallProviderImpl(this, this.mImsCallAdapter);
            addListener(this.mImsVtCallProviderImpl);
            ImsVtGlobals.addImsVideoCallProvider(this, this.mImsVtCallProviderImpl);
        }
        this.mIsMtCall = false;
        this.mCi.registerForRingbackTone(this.mHandler, 10, null);
    }

    public HwImsCallSessionImpl(DriverImsCall call, ImsRIL imsRil, Context context, ImsServiceCallTracker tracker) {
        this.mIsConfInProgress = false;
        this.mDc = null;
        this.mCallId = 1;
        this.mLocalCallProfile = new ImsCallProfile(1, 2);
        this.mRemoteCallProfile = new ImsCallProfile(1, 2);
        this.mCallProfile = new ImsCallProfile();
        this.mListenerProxy = new ImsCallSessionListenerProxy();
        this.mState = 0;
        this.mHandler = new HwImsCallSessionImplHandler();
        this.mCallee = null;
        this.mDisconnCause = 0;
        this.mIsRingbackToneRequest = false;
        this.mIsAcceptPending = false;
        this.mListeners = new CopyOnWriteArrayList();
        this.mIsVtGloballyAllowed = false;
        this.mTracker = null;
        this.mConfCallSession = null;
        this.mIsMtCall = false;
        this.mEncryptFlagMo = 0;
        this.mIsHangup = false;
        this.mIsPendingDisconnect = false;
        this.mCi = imsRil;
        this.mDc = new DriverImsCall(call);
        this.mCallId = this.mDc.index;
        this.mTracker = tracker;
        this.mCallee = call.number;
        updateImsCallProfile(this.mDc);
        setCapabilitiesInProfiles(this.mDc);
        this.mImsCallAdapter = new ImsCallAdapter(this, this.mCi);
        if (VtUtils.isVtSupported()) {
            this.mImsVtCallProviderImpl = new ImsVtCallProviderImpl(this, this.mImsCallAdapter);
            addListener(this.mImsVtCallProviderImpl);
            ImsVtGlobals.addImsVideoCallProvider(this, this.mImsVtCallProviderImpl);
        }
        this.mIsMtCall = this.mDc.isMT;
    }

    public final void addListener(Listener listener) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        if (listener == null) {
            throw new IllegalArgumentException("listener is null.");
        }
        if (!this.mListeners.contains(listener)) {
            this.mListeners.add(listener);
            return;
        }
        loge("Duplicate listener, " + listener);
    }

    public void removeListener(Listener listener) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        if (listener == null) {
            throw new IllegalArgumentException("listener is null.");
        }
        if (this.mListeners.contains(listener)) {
            this.mListeners.remove(listener);
            return;
        }
        loge("Listener not found, " + listener);
    }

    public ImsVtCallProviderImpl getImsVtCallProviderImpl() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return null;
        }
        return this.mImsVtCallProviderImpl;
    }

    private void notifySessionDisconnected() {
        int listenersSize = this.mListeners.size();
        for (int i = 0; i < listenersSize; i++) {
            Listener listener = this.mListeners.get(i);
            listener.onDisconnected(this);
        }
    }

    private void notifySessionClosed() {
        int listenersSize = this.mListeners.size();
        for (int i = 0; i < listenersSize; i++) {
            Listener listener = this.mListeners.get(i);
            listener.onClosed(this);
        }
    }

    public void notifyUnsolCallModify(ImsCallAdapter.CallModify callModify) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        int listenersSize = this.mListeners.size();
        for (int i = 0; i < listenersSize; i++) {
            Listener listener = this.mListeners.get(i);
            listener.onUnsolCallModify(this, callModify);
        }
    }

    private void notifyCallSessionHold(boolean isMtHold) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            Listener listener = this.mListeners.get(i);
            listener.onCallSessionHold(this, isMtHold);
        }
    }

    private void notifyCallSessionResumed(boolean isMtResume) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            Listener listener = this.mListeners.get(i);
            listener.onCallSessionResumed(this, isMtResume);
        }
    }

    private void notifyCallSessionStarted() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            Listener listener = this.mListeners.get(i);
            listener.onCallSessionStarted(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCallSessionMerged() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        int size = this.mListeners.size();
        for (int i = 0; i < size; i++) {
            Listener listener = this.mListeners.get(i);
            listener.onCallSessionMerged();
        }
    }

    public ImsCallAdapter getImsCallAdapter() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return null;
        }
        return this.mImsCallAdapter;
    }

    private int getRestrictCause(int srvType, ImsServiceState[] ability) {
        if (ability == null) {
            return 0;
        }
        for (ImsServiceState srv : ability) {
            if (srv != null && srv.type == srvType && srv.accessTechStatus != null && srv.accessTechStatus.length > 0) {
                int cause = srv.accessTechStatus[0].restrictCause;
                return cause;
            }
        }
        return 0;
    }

    private boolean updateLocalDc(DriverImsCall dcUpdate) {
        boolean isChanged;
        DriverImsCall driverImsCall = this.mDc;
        if (driverImsCall == null) {
            this.mDc = new DriverImsCall(dcUpdate);
            isChanged = true;
        } else {
            isChanged = driverImsCall.update(dcUpdate);
        }
        Rlog.i(LOG_TAG, "updateLocalDc is " + isChanged);
        return isChanged;
    }

    private void fallBackToNoEncypt(DriverImsCall dcUpdate) {
        if (dcUpdate == null) {
            loge("FallBackToNoEncypt, dcUpdate is null");
            return;
        }
        boolean needBack = (this.mEncryptFlagMo != 1 || dcUpdate.imsCallProfile == null || dcUpdate.imsCallProfile.isEncrypt == 1) ? false : true;
        if (needBack) {
            VolteEncryptTelephonyServiceProxy.getInstance().fallBack();
            this.mEncryptFlagMo = 0;
        }
        Rlog.i(LOG_TAG, "fallBackToNoEncypt mEncryptFlagMo=  " + this.mEncryptFlagMo + " status = " + dcUpdate.state);
    }

    public void updateCall(DriverImsCall dcUpdate) {
        if (dcUpdate == null) {
            loge("updateCall, dcUpdate is null");
            return;
        }
        checkAccessPermission();
        Rlog.i(LOG_TAG, "updateCall for " + dcUpdate);
        if (!isSessionValid()) {
            return;
        }
        DriverImsCall driverImsCall = this.mDc;
        boolean isStatesSame = driverImsCall != null && driverImsCall.state == dcUpdate.state;
        updateImsCallProfile(dcUpdate);
        setCapabilitiesInProfiles(dcUpdate);
        if (dcUpdate.state != DriverImsCall.State.INCOMING && dcUpdate.state != DriverImsCall.State.WAITING) {
            this.mIsAcceptPending = false;
        }
        this.mImsCallAdapter.update(dcUpdate);
        switch (dcUpdate.state) {
            case ACTIVE:
                updateCallToActive(dcUpdate);
                break;
            case HOLDING:
                updateCallToHolding();
                break;
            case DIALING:
                updateCallToDialing(dcUpdate);
                break;
            case ALERTING:
                updateCallToAlerting(dcUpdate);
                break;
            case INCOMING:
            case WAITING:
                extractImsCallProfileIntoCallProfile(dcUpdate);
                break;
            case END:
                updateCallToEnd();
                break;
        }
        boolean isChanged = updateLocalDc(dcUpdate);
        boolean isCallNotEnded = dcUpdate.state != DriverImsCall.State.END;
        if (isStatesSame && isCallNotEnded && isChanged) {
            logi("Call details updated. currentImsCallProfile= " + this.mDc.imsCallProfile + " to newImsCallProfile= " + dcUpdate.imsCallProfile);
            this.mListenerProxy.callSessionUpdated(this.mCallProfile);
        }
    }

    private void updateCallToEnd() {
        cleanRilRecovery();
        this.mState = 8;
        int i = this.mDisconnCause;
        if (i == 0) {
            this.mCi.getLastCallFailCause(this.mHandler.obtainMessage(16));
        } else {
            ImsCallSessionListenerProxy imsCallSessionListenerProxy = this.mListenerProxy;
            if (imsCallSessionListenerProxy != null) {
                imsCallSessionListenerProxy.callSessionTerminated(new ImsReasonInfo(i, 0));
            }
        }
        this.mTracker.onNotifyCallResumed();
        notifySessionDisconnected();
    }

    private void updateCallToAlerting(DriverImsCall dcUpdate) {
        this.mState = 2;
        DriverImsCall driverImsCall = this.mDc;
        if (driverImsCall == null) {
            Rlog.i(LOG_TAG, "MO Alerting call!");
            this.mCallId = dcUpdate.index;
        } else if (driverImsCall.state != DriverImsCall.State.ALERTING) {
            extractImsCallProfileIntoCallProfile(dcUpdate);
            ImsStreamMediaProfile mediaProfile = new ImsStreamMediaProfile();
            if (this.mIsRingbackToneRequest) {
                mediaProfile.mAudioDirection = 0;
            }
            fallBackToNoEncypt(dcUpdate);
            this.mListenerProxy.callSessionProgressing(mediaProfile);
        }
    }

    private void updateCallToDialing(DriverImsCall dcUpdate) {
        if (this.mDc == null) {
            Rlog.i(LOG_TAG, "MO Dialing call!");
            this.mCallId = dcUpdate.index;
            this.mListenerProxy.callSessionProgressing(new ImsStreamMediaProfile());
            if (this.mIsPendingDisconnect) {
                terminate(this.mPendingDisconnectReason);
                this.mIsPendingDisconnect = false;
            }
        }
    }

    private void updateCallToHolding() {
        DriverImsCall driverImsCall = this.mDc;
        if (driverImsCall != null && driverImsCall.state != DriverImsCall.State.HOLDING) {
            Rlog.i(LOG_TAG, "Call being held.");
            if (!this.mIsConfInProgress) {
                if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                    notifyCallSessionHold(false);
                }
                this.mListenerProxy.callSessionHeld(this.mCallProfile);
            }
        }
    }

    private void updateCallToActive(DriverImsCall dcUpdate) {
        DriverImsCall driverImsCall = this.mDc;
        if (driverImsCall == null) {
            Rlog.e(LOG_TAG, "Phantom call!");
            this.mState = 4;
            this.mCallId = dcUpdate.index;
            this.mListenerProxy.callSessionStarted(this.mCallProfile);
            return;
        }
        if (driverImsCall.state == DriverImsCall.State.DIALING || this.mDc.state == DriverImsCall.State.ALERTING || this.mDc.state == DriverImsCall.State.INCOMING || this.mDc.state == DriverImsCall.State.WAITING) {
            this.mState = 4;
            this.mDc.state = DriverImsCall.State.ACTIVE;
            if (this.mCi != null && dcUpdate.isMT) {
                HwTelephonyFactory.getHwChrServiceManager().reportCallException(TAG_FOR_CHR, this.mCi.getChrReportPhoneId(), 2, "ImsRadioResponse");
            }
            fallBackToNoEncypt(dcUpdate);
            extractImsCallProfileIntoCallProfile(dcUpdate);
            if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                notifyCallSessionStarted();
            }
            this.mListenerProxy.callSessionStarted(this.mCallProfile);
            return;
        }
        if ((this.mDc.state == DriverImsCall.State.HOLDING && !this.mIsConfInProgress) || this.mIsConfInProgress) {
            Rlog.i(LOG_TAG, "Call being resumed.");
            this.mIsConfInProgress = false;
            if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                notifyCallSessionResumed(false);
            }
            this.mListenerProxy.callSessionResumed(this.mCallProfile);
            return;
        }
        if (this.mDc.imsCallProfile.getCallType() != dcUpdate.imsCallProfile.getCallType()) {
            Rlog.i(LOG_TAG, "call type changes, from " + this.mDc.imsCallProfile.getCallType() + " to " + dcUpdate.imsCallProfile.getCallType());
            this.mListenerProxy.callSessionResumed(this.mCallProfile);
            return;
        }
        Rlog.i(LOG_TAG, "Call resumed skipped, conf status = " + this.mIsConfInProgress);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void invokeCallResume(HwImsCallSessionImpl callSession, ImsCallProfile profile) {
        Rlog.i(LOG_TAG, "invokeCallResume");
        this.mListenerProxy.callSessionResumed(profile);
    }

    private void setCapabilitiesInProfiles(DriverImsCall dcUpdate) {
        ImsCallProfile imsCallProfile = this.mLocalCallProfile;
        if (imsCallProfile != null) {
            imsCallProfile.mMediaProfile = new ImsStreamMediaProfile();
            this.mLocalCallProfile.mMediaProfile.mAudioQuality = mapAudioCodecFromExtras(dcUpdate.imsCallProfile.getValueForKeyFromExtras(dcUpdate.imsCallProfile.extras, ImsCallProfiles.EXTRAS_CODEC));
            if (this.mIsVtGloballyAllowed) {
                this.mLocalCallProfile.mCallType = 4;
            } else {
                this.mLocalCallProfile.mCallType = 2;
            }
        }
        ImsCallProfile imsCallProfile2 = this.mRemoteCallProfile;
        if (imsCallProfile2 != null) {
            imsCallProfile2.mCallType = 4;
            if (dcUpdate.imsCallProfile.peerAbility != null) {
                this.mRemoteCallProfile.mMediaProfile = new ImsStreamMediaProfile();
                this.mRemoteCallProfile.mRestrictCause = getRestrictCause(this.mCallProfile.mCallType == 4 ? 3 : 0, dcUpdate.imsCallProfile.peerAbility);
            }
        }
    }

    public void updateConfSession(DriverImsCall dc) {
        checkAccessPermission();
        Rlog.i(LOG_TAG, "updateConfSession for " + dc);
        if (isSessionValid() && dc.state == DriverImsCall.State.ACTIVE && dc.isMpty) {
            this.mState = 4;
            this.mCallId = this.mDc.index;
        }
    }

    public void notifyTtyModeChange(int mode) {
        checkAccessPermission();
        Rlog.i(LOG_TAG, "TTY mode = " + mode);
        if (!isSessionValid()) {
            return;
        }
        ImsCallSessionListenerProxy imsCallSessionListenerProxy = this.mListenerProxy;
        if (imsCallSessionListenerProxy != null) {
            imsCallSessionListenerProxy.callSessionTtyModeReceived(mode);
        } else {
            Rlog.e(LOG_TAG, "notifyTtyModeChange ListenerProxy null! ");
        }
    }

    public void handleHandover(int hoType, int srcTech, int targetTech, int extraType, byte[] extraInfo, String errorCode, String errorMessage) {
        checkAccessPermission();
        Rlog.i(LOG_TAG, "hoType : " + hoType + "srcTech: " + srcTech + " targetTech: " + targetTech);
        if (!isSessionValid()) {
            return;
        }
        ImsReasonInfo reasonInfo = new ImsReasonInfo(transHandoverErrorCode(errorCode), 0, errorMessage);
        updateRate(srcTech, targetTech);
        if (this.mListenerProxy != null) {
            if (isHandleHandoveSuccess(hoType)) {
                this.mListenerProxy.callSessionHandover(srcTech, targetTech, reasonInfo);
                this.mListenerProxy.callSessionUpdated(this.mCallProfile);
            } else {
                this.mListenerProxy.callSessionHandoverFailed(srcTech, targetTech, reasonInfo);
            }
        }
    }

    private void updateRate(int srcTech, int targetTech) {
        ImsCallProfile imsCallProfile;
        if ((srcTech != targetTech || !this.mCallProfile.getCallExtra("CallRadioTech").equals(String.valueOf(targetTech))) && (imsCallProfile = this.mCallProfile) != null) {
            imsCallProfile.setCallExtra("CallRadioTech", String.valueOf(targetTech));
        }
    }

    private int transHandoverErrorCode(String errorCode) {
        return 0;
    }

    private boolean isHandleHandoveSuccess(int hoType) {
        return hoType == 1;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class HwImsCallSessionImplHandler extends Handler {
        HwImsCallSessionImplHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int causeCode;
            Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Message received: what = " + msg.what);
            if (!HwImsCallSessionImpl.this.isSessionValid()) {
                return;
            }
            switch (msg.what) {
                case 1:
                    AsyncResult ar = (AsyncResult) msg.obj;
                    if (ar != null && ar.exception != null) {
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Dial error");
                        if (HwImsCallSessionImpl.this.mCi != null) {
                            HwImsCallSessionImpl.this.mCi.getLastCallFailCause(HwImsCallSessionImpl.this.mHandler.obtainMessage(16));
                            return;
                        }
                        return;
                    }
                    return;
                case 2:
                    AsyncResult ar2 = (AsyncResult) msg.obj;
                    if (ar2 != null && ar2.exception != null) {
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Accept error: " + ar2.exception);
                        HwImsCallSessionImpl.this.mIsAcceptPending = false;
                        return;
                    }
                    return;
                case 3:
                    AsyncResult ar3 = (AsyncResult) msg.obj;
                    if (ar3 != null) {
                        if (ar3.exception != null) {
                            Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Hangup error: " + ar3.exception);
                        } else {
                            Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Hangup success");
                            HwImsCallSessionImpl.this.mIsHangup = true;
                        }
                    }
                    HwImsCallSessionImpl.this.mDisconnCause = 501;
                    return;
                case 4:
                    AsyncResult ar4 = (AsyncResult) msg.obj;
                    if (ar4 != null && ar4.exception != null) {
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Hold error");
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionHoldFailed(new ImsReasonInfo(0, 0, "Hold Failed"));
                        return;
                    }
                    return;
                case 5:
                    AsyncResult ar5 = (AsyncResult) msg.obj;
                    if (ar5 != null && ar5.exception != null) {
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Resume error");
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionResumeFailed(new ImsReasonInfo(0, 0, "Resume Failed"));
                        return;
                    }
                    return;
                case 6:
                    AsyncResult ar6 = (AsyncResult) msg.obj;
                    if (ar6 != null && ar6.exception != null) {
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Conference error");
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionMergeFailed(new ImsReasonInfo(0, 0, "Conference Failed"));
                        HwImsCallSessionImpl.this.mTracker.setConfInProgress(false);
                    } else if (ar6 != null && ar6.exception == null) {
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionMergeComplete(HwImsCallSessionImpl.this.mConfCallSession);
                        if (HwImsCallSessionImpl.this.mDc != null && HwImsCallSessionImpl.this.mDc.state == DriverImsCall.State.HOLDING) {
                            Rlog.i(HwImsCallSessionImpl.LOG_TAG, "EVENT_CONFERENCE: DriverImsCall State is HOLDING");
                        }
                        if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                            Rlog.i(HwImsCallSessionImpl.LOG_TAG, "notifyCallSessionMerged");
                            HwImsCallSessionImpl.this.notifyCallSessionMerged();
                        }
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Conference in progress");
                    } else {
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "EVENT_CONFERENCE: shouldn't reach here");
                    }
                    HwImsCallSessionImpl.this.mIsConfInProgress = false;
                    return;
                case 7:
                    if (((AsyncResult) msg.obj) != null) {
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionStartFailed(new ImsReasonInfo(143, 0, "User Rejected"));
                        HwImsCallSessionImpl.this.mDisconnCause = 143;
                        return;
                    }
                    return;
                case 8:
                    AsyncResult ar7 = (AsyncResult) msg.obj;
                    if (ar7 != null && ar7.exception != null) {
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Deflect error");
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionDeflectFailed(new ImsReasonInfo(0, 0, "Deflect Failed"));
                        return;
                    } else {
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Deflect success");
                        if (ar7 != null) {
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionDeflected();
                            return;
                        }
                        return;
                    }
                case 9:
                    AsyncResult ar8 = (AsyncResult) msg.obj;
                    if (ar8 != null && ar8.exception != null) {
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "Add Participant error");
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionInviteParticipantsRequestFailed(new ImsReasonInfo(0, 0, "Add Participant Failed"));
                        return;
                    } else {
                        if (ar8 != null) {
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionInviteParticipantsRequestDelivered();
                            return;
                        }
                        return;
                    }
                case 10:
                    AsyncResult ar9 = (AsyncResult) msg.obj;
                    if (ar9 != null) {
                        HwImsCallSessionImpl.this.mIsRingbackToneRequest = ((Boolean) ar9.result).booleanValue();
                        Rlog.i(HwImsCallSessionImpl.LOG_TAG, "EVENT_RINGBACK_TONE, playTone = " + HwImsCallSessionImpl.this.mIsRingbackToneRequest);
                        if (HwImsCallSessionImpl.this.mDc != null && HwImsCallSessionImpl.this.mDc.state == DriverImsCall.State.ALERTING) {
                            ImsStreamMediaProfile mediaProfile = new ImsStreamMediaProfile();
                            if (HwImsCallSessionImpl.this.mIsRingbackToneRequest) {
                                mediaProfile.mAudioDirection = 0;
                            }
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionProgressing(mediaProfile);
                            return;
                        }
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
                    if (HwImsCallSessionImpl.this.mIsPendingDisconnect) {
                        HwImsCallSessionImpl.this.doClose();
                        return;
                    }
                    return;
                case 15:
                    HwImsCallSessionImpl.this.initCallLists();
                    return;
                case 16:
                    int causeCode2 = 0;
                    String message = null;
                    AsyncResult ar10 = (AsyncResult) msg.obj;
                    if (ar10 != null) {
                        if (ar10.exception != null) {
                            causeCode2 = 0;
                            HwImsCallSessionImpl.this.loge("Exception during getLastCallFailCause, assuming normal disconnect");
                        } else {
                            Pair<Integer, String> failCausePair = (Pair) ar10.result;
                            if (failCausePair != null) {
                                causeCode2 = ((Integer) failCausePair.first).intValue();
                                message = (String) failCausePair.second;
                            }
                        }
                    }
                    HwTelephonyFactory.getHwVolteChrManager().setRemoteCauseCode(causeCode2);
                    HwImsCallSessionImpl.this.logi("before Fail Cause = " + causeCode2);
                    if ((causeCode2 == 18543 || causeCode2 == 18632) && HwImsCallSessionImpl.CALL_COMPLETED_ELSEWHERE.equals(message)) {
                        causeCode = 1014;
                    } else if (causeCode2 == 19035 && HwImsCallSessionImpl.REMOTE_CALL_DECLINED.equals(message)) {
                        causeCode = 1404;
                    } else {
                        causeCode = ImsCallProviderUtils.convertRilCauseCodeToImsCode(causeCode2);
                    }
                    String message2 = HwImsCallSessionImpl.this.convertMessageFromCauseCode(causeCode, message);
                    HwImsCallSessionImpl.this.logi("Last IMS Call Fail Cause = " + causeCode + "Message = " + message2);
                    ImsReasonInfo reasonInfo = new ImsReasonInfo(causeCode, 0, message2);
                    HwImsCallSessionImpl.this.mListenerProxy.callSessionTerminated(reasonInfo);
                    return;
                default:
                    Rlog.e(HwImsCallSessionImpl.LOG_TAG, "Unhandled EVENT: " + msg.what);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String convertMessageFromCauseCode(int causeCode, String originMessage) {
        if (causeCode == 1100) {
            return WIFI_CALL_DROP_SIGNAL_DEGRADED;
        }
        if (causeCode == 3001) {
            return WIFI_CALL_DROP_BACKHAUL_CONGESTED;
        }
        Rlog.i(LOG_TAG, "just use origin message.");
        return originMessage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSessionValid() {
        boolean isValid = this.mState != -1;
        if (!isValid) {
            Rlog.e(LOG_TAG, "Session is closed");
        }
        return isValid;
    }

    private boolean isImsCallSessionAlive() {
        int i = this.mState;
        return (i == 8 || i == 7 || i == 0 || i == -1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doClose() {
        ImsRIL imsRIL;
        Rlog.i(LOG_TAG, "doClose!");
        if (isImsCallSessionAlive()) {
            Rlog.i(LOG_TAG, "Received Session Close request while it is alive");
        }
        if (this.mState != -1) {
            ImsCallSessionListenerProxy imsCallSessionListenerProxy = this.mListenerProxy;
            if (imsCallSessionListenerProxy != null) {
                imsCallSessionListenerProxy.dispose();
                this.mListenerProxy = null;
            }
            DriverImsCall driverImsCall = this.mDc;
            if (driverImsCall != null && !driverImsCall.isMT && (imsRIL = this.mCi) != null) {
                imsRIL.unregisterForRingbackTone(this.mHandler);
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
            this.mImsVtCallProviderImpl = null;
            this.mImsCallAdapter = null;
            this.mCallee = null;
            ImsVtGlobals.removeImsVideoCallProvider(this);
            this.mIsPendingDisconnect = false;
        }
        Rlog.i(LOG_TAG, "doClose end");
    }

    public void close() {
        checkAccessPermission();
        if (this.mIsPendingDisconnect) {
            Rlog.i(LOG_TAG, "pending disconnect, return");
            return;
        }
        Rlog.i(LOG_TAG, "Close!");
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.obtainMessage(12).sendToTarget();
        }
    }

    public String getCallId() {
        checkAccessPermission();
        return Integer.toString(this.mCallId);
    }

    public int getMediaId() {
        DriverImsCall driverImsCall;
        checkAccessPermission();
        if (isSessionValid() && (driverImsCall = this.mDc) != null) {
            return driverImsCall.imsCallProfile.callMediaId;
        }
        return -1;
    }

    public boolean hasMediaIdValid() {
        DriverImsCall driverImsCall;
        checkAccessPermission();
        if (isSessionValid() && (driverImsCall = this.mDc) != null) {
            return driverImsCall.imsCallProfile.hasMediaIdValid();
        }
        return false;
    }

    public ImsCallProfile getCallProfile() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return null;
        }
        return this.mCallProfile;
    }

    public ImsCallProfile getLocalCallProfile() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return null;
        }
        return this.mLocalCallProfile;
    }

    public ImsCallProfile getRemoteCallProfile() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return null;
        }
        return this.mRemoteCallProfile;
    }

    public String getProperty(String name) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return null;
        }
        ImsCallProfile imsCallProfile = this.mCallProfile;
        if (imsCallProfile != null) {
            String value = imsCallProfile.getCallExtra(name);
            return value;
        }
        Rlog.e(LOG_TAG, "Call Profile null! ");
        return null;
    }

    public int getState() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return -1;
        }
        return this.mState;
    }

    public DriverImsCall getCall() {
        checkAccessPermission();
        return this.mDc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DriverImsCall.State getInternalState() {
        if (!isSessionValid()) {
            return DriverImsCall.State.END;
        }
        DriverImsCall driverImsCall = this.mDc;
        if (driverImsCall != null) {
            DriverImsCall.State state = driverImsCall.state;
            return state;
        }
        if (this.mState != 1) {
            return null;
        }
        DriverImsCall.State state2 = DriverImsCall.State.DIALING;
        return state2;
    }

    public int getInternalCallType() {
        ImsCallProfile imsCallProfile;
        checkAccessPermission();
        if (!isSessionValid()) {
            return 10;
        }
        DriverImsCall driverImsCall = this.mDc;
        if (driverImsCall != null && driverImsCall.imsCallProfile != null) {
            int callType = this.mDc.imsCallProfile.getCallType();
            return callType;
        }
        if (this.mState != 1 || (imsCallProfile = this.mCallProfile) == null) {
            return 10;
        }
        int callType2 = ImsCallProviderUtils.convertToInternalCallType(imsCallProfile.mCallType);
        return callType2;
    }

    public int getCallDomain() {
        DriverImsCall driverImsCall;
        checkAccessPermission();
        if (!isSessionValid() || (driverImsCall = this.mDc) == null || driverImsCall.imsCallProfile == null) {
            return 3;
        }
        int callDomain = this.mDc.imsCallProfile.getCallDomain();
        return callDomain;
    }

    public int getCallSubstate() {
        DriverImsCall driverImsCall;
        checkAccessPermission();
        if (!isSessionValid() || (driverImsCall = this.mDc) == null || driverImsCall.imsCallProfile == null) {
            return 0;
        }
        int callSubstate = this.mDc.imsCallProfile.callsubstate;
        return callSubstate;
    }

    public boolean isMultipartyCall() {
        DriverImsCall driverImsCall;
        checkAccessPermission();
        if (isSessionValid() && (driverImsCall = this.mDc) != null) {
            return driverImsCall.isMpty;
        }
        return false;
    }

    public String getCallee() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return null;
        }
        return this.mCallee;
    }

    public DriverImsCall.State getDriverCallState() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return DriverImsCall.State.END;
        }
        return this.mDc.state;
    }

    public boolean isMultiparty() {
        DriverImsCall driverImsCall;
        checkAccessPermission();
        if (isSessionValid() && (driverImsCall = this.mDc) != null) {
            return driverImsCall.isMpty;
        }
        return false;
    }

    public boolean isInCall() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return false;
        }
        switch (this.mDc.state) {
            case ACTIVE:
            case HOLDING:
            case DIALING:
            case ALERTING:
            case INCOMING:
            case WAITING:
                return true;
            default:
                return false;
        }
    }

    public final void setListener(ImsCallSessionListener listener) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        this.mListenerProxy.setListener(listener);
    }

    public void setMute(boolean isMuted) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        this.mCi.setMute(isMuted, this.mHandler.obtainMessage(13));
    }

    public void reportNewConferenceCallSession(HwImsCallSessionImpl confCallSession) {
        checkAccessPermission();
        if (confCallSession != null) {
            Rlog.i(LOG_TAG, "Calling callSessionMergeStarted");
            this.mConfCallSession = confCallSession;
            this.mListenerProxy.callSessionMergeStarted(confCallSession.getServiceImpl(), confCallSession.getCallProfile());
            return;
        }
        Rlog.e(LOG_TAG, "Null confCallSession! Not calling callSessionMergeStarted");
    }

    private void extractImsCallProfileIntoCallProfile(DriverImsCall dcUpdate) {
        String key;
        if (dcUpdate == null) {
            Rlog.e(LOG_TAG, "Null dcUpdate in extractImsCallProfileIntoCallProfile");
            return;
        }
        updateImsCallProfile(dcUpdate);
        if (dcUpdate.imsCallProfile.extras == null || dcUpdate.imsCallProfile.extras.length <= 0) {
            return;
        }
        for (int i = 0; i < dcUpdate.imsCallProfile.extras.length; i++) {
            if (dcUpdate.imsCallProfile.extras[i] == null) {
                Rlog.e(LOG_TAG, "Element " + i + " is null in ImsCallProfiles Extras!");
                return;
            }
            String[] keyAndValue = dcUpdate.imsCallProfile.extras[i].split(SYMBOL_EQUALS);
            if (keyAndValue[0] == null) {
                Rlog.e(LOG_TAG, "Bad extra string from lower layers!");
                return;
            }
            if (keyAndValue[0].contains(":")) {
                String[] namespaceAndKey = keyAndValue[0].split(":");
                key = namespaceAndKey[1];
            } else {
                key = keyAndValue[0];
            }
            Rlog.i(LOG_TAG, "ImsCallProfiles Extra key: " + key);
            this.mCallProfile.setCallExtra(key, keyAndValue[1]);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0053, code lost:
    
        if (r4.equals("QCELP13K") != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int mapAudioCodecFromExtras(String codec) {
        int audioQuality = 0;
        char c = 0;
        if (codec == null) {
            return 0;
        }
        switch (codec.hashCode()) {
            case -646829946:
                if (codec.equals("EVRC_NW")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -646829688:
                if (codec.equals("EVRC_WB")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 2140834:
                if (codec.equals("EVRC")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 814951890:
                break;
            case 1038481267:
                if (codec.equals("GSM_EFR")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1934542573:
                if (codec.equals("AMR_NB")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1934542852:
                if (codec.equals("AMR_WB")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 2057344485:
                if (codec.equals("EVRC_B")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 2111709418:
                if (codec.equals("GSM_FR")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 2111709480:
                if (codec.equals("GSM_HR")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                audioQuality = 3;
                break;
            case 1:
                audioQuality = 4;
                break;
            case 2:
                audioQuality = 5;
                break;
            case 3:
                audioQuality = 6;
                break;
            case 4:
                audioQuality = 7;
                break;
            case 5:
                audioQuality = 1;
                break;
            case 6:
                audioQuality = 2;
                break;
            case 7:
                audioQuality = 8;
                break;
            case '\b':
                audioQuality = 9;
                break;
            case '\t':
                audioQuality = 10;
                break;
            default:
                Rlog.e(LOG_TAG, "Unsupported codec " + codec);
                break;
        }
        Rlog.i(LOG_TAG, "AudioQuality is " + audioQuality);
        return audioQuality;
    }

    private int mapCallTypeFromProfile(int callType) {
        if (callType == 1) {
            return 10;
        }
        if (callType == 2) {
            return 0;
        }
        if (callType == 4) {
            return 3;
        }
        if (callType == 5) {
            return 1;
        }
        if (callType == 6) {
            return 2;
        }
        if (callType == 7) {
            return 4;
        }
        Rlog.e(LOG_TAG, "Unsupported callType " + callType);
        return 0;
    }

    private void updateImsCallProfile(DriverImsCall dc) {
        if (dc == null) {
            loge("updateImsCallProfile called with dc null");
            return;
        }
        if (this.mCallProfile == null) {
            this.mCallProfile = new ImsCallProfile();
        }
        this.mCallProfile.setCallExtra("oi", dc.number);
        this.mCallProfile.setCallExtra("cna", dc.name);
        this.mCallProfile.setCallExtraInt("oir", ImsCallProfile.presentationToOIR(dc.numberPresentation));
        this.mCallProfile.setCallExtraInt("cnap", ImsCallProfile.presentationToOIR(dc.namePresentation));
        this.mCallProfile.setCallExtraInt("remote_vt_capability", dc.peerVideoSupport);
        int ratTypeFromModem = dc.radioTechFromRilImsCall;
        if (ratTypeFromModem != -1) {
            this.mCallProfile.setCallExtra("CallRadioTech", getRadioTechFromDriverCall(ratTypeFromModem));
        } else {
            HwTelephonyManager hwTelephonyManager = HwTelephonyManager.getDefault();
            if (hwTelephonyManager != null) {
                int default4gSlotId = hwTelephonyManager.getDefault4GSlotId();
                int imsRegDomain = hwTelephonyManager.getImsDomain(default4gSlotId);
                this.mCallProfile.setCallExtra("CallRadioTech", getRadioTechFromDriverCall(imsRegDomain));
                Rlog.i(LOG_TAG, "imsRegDomain = " + imsRegDomain + ", default4gSlotId = " + default4gSlotId);
            }
        }
        this.mCallProfile.setCallExtra("redirect_number", dc.redirectNumber);
        this.mCallProfile.setCallExtraInt("redirect_number_presentation", ImsCallProfile.presentationToOIR(dc.redirectNumberPresentation));
        int callType = dc.imsCallProfile.getCallType();
        if (callType == 0) {
            ImsCallProfile imsCallProfile = this.mCallProfile;
            imsCallProfile.mCallType = 2;
            imsCallProfile.mMediaProfile.mVideoDirection = -1;
            return;
        }
        if (callType == 1) {
            ImsCallProfile imsCallProfile2 = this.mCallProfile;
            imsCallProfile2.mCallType = 5;
            imsCallProfile2.mMediaProfile.mVideoDirection = 2;
            return;
        }
        if (callType == 2) {
            ImsCallProfile imsCallProfile3 = this.mCallProfile;
            imsCallProfile3.mCallType = 6;
            imsCallProfile3.mMediaProfile.mVideoDirection = 1;
        } else if (callType == 3) {
            ImsCallProfile imsCallProfile4 = this.mCallProfile;
            imsCallProfile4.mCallType = 4;
            imsCallProfile4.mMediaProfile.mVideoDirection = 3;
        } else if (callType == 4) {
            this.mCallProfile.mMediaProfile.mVideoDirection = 0;
        } else if (callType == 10) {
            ImsCallProfile imsCallProfile5 = this.mCallProfile;
            imsCallProfile5.mCallType = 1;
            imsCallProfile5.mMediaProfile.mVideoDirection = -1;
        }
    }

    public boolean isConfInProgress() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return false;
        }
        return this.mIsConfInProgress;
    }

    public void setNewSession(HwImsCallSessionImpl session) {
        checkAccessPermission();
        if (!isSessionValid()) {
        }
    }

    public void start(String callee, ImsCallProfile profile) {
        if (profile == null) {
            return;
        }
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        HwTelephonyFactory.getHwChrServiceManager().reportCallException(TAG_FOR_CHR, this.mCi.getChrReportPhoneId(), 0, "ImsRIL");
        this.mCallProfile.mCallType = profile.mCallType;
        this.mCallProfile.mMediaProfile = profile.mMediaProfile;
        this.mState = 1;
        this.mCallee = callee;
        ImsCallProfiles details = new ImsCallProfiles(mapCallTypeFromProfile(profile.mCallType), 3, null);
        extractProfileExtrasIntoImsCallProfile(profile, details);
        Bundle callExtras = profile.mCallExtras.getBundle("OemCallExtras");
        if (callExtras != null) {
            details.isEncrypt = callExtras.getInt(ENCRYPT_CALL_FLAG, 0);
            this.mEncryptFlagMo = details.isEncrypt;
        }
        Rlog.i(LOG_TAG, "START isEncrypt = " + this.mEncryptFlagMo);
        int clir = profile.getCallExtraInt("oir");
        this.mCi.dial(callee, clir, details, this.mHandler.obtainMessage(1));
    }

    private void extractProfileExtrasIntoImsCallProfile(ImsCallProfile profile, ImsCallProfiles details) {
        Bundle callExtras = profile.mCallExtras.getBundle("OemCallExtras");
        if (callExtras != null) {
            String[] extras = new String[callExtras.size()];
            int i = 0;
            for (String key : callExtras.keySet()) {
                String value = callExtras.get(key) == null ? "" : callExtras.get(key).toString();
                String extraString = key + SYMBOL_EQUALS + value;
                if (key.equals(NUMBERMARKINFO_NUMBER) || key.equals(MEXTI_SEARCH_NUMBER) || key.equals(MEXTI_BACKUP_NUMBER)) {
                    String str = key + SYMBOL_EQUALS + HiddenPrivacyInfo.putMosaic(value, 0);
                }
                extras[i] = extraString;
                i++;
            }
            details.setExtras(extras);
            return;
        }
        Rlog.i(LOG_TAG, "No extras in ImsCallProfile to map into ImsCallProfile.");
    }

    public void startConference(String[] participants, ImsCallProfile profile) {
        checkAccessPermission();
        if (!isSessionValid() || participants == null || profile == null) {
            return;
        }
        this.mCallProfile = profile;
        this.mState = 1;
        this.mCallee = participants[0];
        Map<String, String> extrasMap = Maps.newHashMap();
        extrasMap.put(ImsCallProfiles.EXTRAS_IS_CONFERENCE_URI, Boolean.toString(true));
        String[] mMoExtras = ImsCallProfiles.getExtrasFromMap(extrasMap);
        ImsCallProfiles details = new ImsCallProfiles(mapCallTypeFromProfile(profile.mCallType), 3, mMoExtras);
        this.mCi.dial(participants[0], 0, details, this.mHandler.obtainMessage(1));
    }

    public void accept(int callType, ImsStreamMediaProfile profile) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        if (this.mIsAcceptPending) {
            Rlog.i(LOG_TAG, "this call is being accepted...");
            HwTelephonyFactory.getHwChrServiceManager().reportCallException(TAG_FOR_CHR, this.mCi.getChrReportPhoneId(), 2, "AP_FLOW_SUC");
        } else {
            this.mIsAcceptPending = true;
            this.mCi.acceptCall(this.mHandler.obtainMessage(2), mapCallTypeFromProfile(callType));
        }
    }

    public void deflect(String deflectNumber) {
        checkAccessPermission();
        if (!isSessionValid()) {
        }
    }

    public void reject(int reason) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        Rlog.i(LOG_TAG, "reject " + reason);
        int cause = ImsCallProviderUtils.getImsCallRejectCause(reason);
        Rlog.i(LOG_TAG, "reject cause" + cause);
        if (cause != -1) {
            this.mCi.rejectImsCallForCause(this.mCallId, cause, this.mHandler.obtainMessage(7));
        } else {
            this.mCi.hangupConnection(this.mCallId, this.mHandler.obtainMessage(3));
        }
        triggerRilRecoveryDelayed();
    }

    public boolean isCallActive() {
        checkAccessPermission();
        return isSessionValid() && getInternalState() == DriverImsCall.State.ACTIVE;
    }

    public void terminate(int reason) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        Rlog.i(LOG_TAG, "terminate " + reason);
        if (!this.mIsPendingDisconnect && this.mDc == null && this.mTracker.getPendingSessionList() != null && this.mTracker.getPendingSessionList().size() > 0) {
            Rlog.i(LOG_TAG, "terminate: Pending M0, wait for correct call id ");
            this.mIsPendingDisconnect = true;
            this.mPendingDisconnectReason = reason;
        } else {
            this.mCi.hangupConnection(this.mCallId, this.mHandler.obtainMessage(3));
        }
        triggerRilRecoveryDelayed();
    }

    public void hangupForegroundResumeBackground(int reason) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        Rlog.i(LOG_TAG, "hangupForegroundResumeBackground " + reason);
        this.mCi.hangupForegroundResumeBackground(this.mHandler.obtainMessage(3));
        triggerRilRecoveryDelayed();
    }

    public void hangupWaitingOrBackground(int reason) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        Rlog.i(LOG_TAG, "hangupWaitingOrBackground " + reason);
        this.mCi.hangupWaitingOrBackground(this.mHandler.obtainMessage(3));
        triggerRilRecoveryDelayed();
    }

    private void triggerRilRecoveryDelayed() {
        if (this.mState == 8) {
            loge("Call Session terminated. Don't trigger ril recovery.");
            return;
        }
        logi("triggerRilRecoveryDelayed");
        if (!this.mHandler.hasMessages(14)) {
            Handler handler = this.mHandler;
            handler.sendMessageDelayed(handler.obtainMessage(14), 35000L);
        }
    }

    private void cleanRilRecovery() {
        logi("cleanRilRecovery");
        this.mHandler.removeMessages(14);
    }

    public void hold(ImsStreamMediaProfile profile) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        Rlog.i(LOG_TAG, "hold requested.");
        this.mCi.switchWaitingOrHoldingAndActive(this.mHandler.obtainMessage(4));
    }

    public void resume(ImsStreamMediaProfile profile) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        Rlog.i(LOG_TAG, "resume requested.");
        this.mCi.switchWaitingOrHoldingAndActive(this.mHandler.obtainMessage(5));
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        if (data == null || reply == null) {
            return false;
        }
        checkAccessPermission();
        Rlog.i(LOG_TAG, "HwImsCallSessionImpl onTransact code:" + code);
        if (code == 2001) {
            data.enforceInterface(DESCRIPTOR);
            int callType = data.readInt();
            this.mCi.switchWaitingOrHoldingAndActiveForIms(mapCallTypeFromProfile(callType), this.mHandler.obtainMessage(4));
            return true;
        }
        if (code == 2002) {
            data.enforceInterface(DESCRIPTOR);
            int callType2 = data.readInt();
            this.mCi.switchWaitingOrHoldingAndActiveForIms(mapCallTypeFromProfile(callType2), this.mHandler.obtainMessage(5));
            return true;
        }
        Rlog.e(LOG_TAG, "HwImsCallSessionImpl can not support the code:" + code);
        return true;
    }

    public boolean isHwCustCode(int code) {
        if (code == 2001 || code == 2002) {
            return true;
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

    public void update(int callType, ImsStreamMediaProfile profile) {
        checkAccessPermission();
        if (!isSessionValid()) {
        }
    }

    public void extendToConference(String[] participants) {
        checkAccessPermission();
        if (!isSessionValid()) {
        }
    }

    public void inviteParticipants(String[] participants) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        this.mCallee = participants[0];
    }

    public void removeParticipants(String[] participants) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        this.mCallee = participants[0];
        Rlog.i(LOG_TAG, "removeParticipants user: " + this.mCallee);
    }

    public void sendDtmf(char chr, Message result) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        this.mCi.sendDtmf(chr, result);
    }

    public void startDtmf(char chr) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        this.mCi.startDtmf(chr, null);
    }

    public void stopDtmf() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return;
        }
        this.mCi.stopDtmf(null);
    }

    public IImsVideoCallProvider getVideoCallProvider() {
        checkAccessPermission();
        if (isSessionValid() && VtUtils.isVtSupported()) {
            return this.mImsVtCallProviderImpl.getInterface();
        }
        return null;
    }

    public void sendUssd(String ussdMessage) {
        checkAccessPermission();
        if (!isSessionValid()) {
        }
    }

    public void notifyConfInfo(byte[] confInfoBytes) {
        checkAccessPermission();
        if (!isSessionValid()) {
        }
    }

    public void updateVtGlobalCapability(boolean isVtEnabled) {
        checkAccessPermission();
        logi("updateVtGlobalCapability " + isVtEnabled);
        if (isSessionValid() && this.mIsVtGloballyAllowed != isVtEnabled) {
            this.mIsVtGloballyAllowed = isVtEnabled;
            DriverImsCall driverImsCall = this.mDc;
            if (driverImsCall != null && driverImsCall.state != DriverImsCall.State.END) {
                setCapabilitiesInProfiles(this.mDc);
                this.mListenerProxy.callSessionUpdated(this.mCallProfile);
            }
        }
    }

    public ImsCallProfiles getImsCallProfile() {
        checkAccessPermission();
        DriverImsCall driverImsCall = this.mDc;
        if (driverImsCall == null) {
            return null;
        }
        return driverImsCall.imsCallProfile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCallLists() {
        logi("initCallLists");
        ArrayList<DriverImsCall> mmTelList = new ArrayList<>();
        ImsServiceCallTracker imsServiceCallTracker = this.mTracker;
        if (imsServiceCallTracker != null) {
            imsServiceCallTracker.handleCalls(mmTelList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateSuppServiceInfo(ImsSuppServiceNotification suppSvcNotification, boolean isStartOnHoldLocalTone) {
        logi("updateSuppSvcInfo: suppSvcNotification= " + suppSvcNotification + " isStartOnHoldLocalTone = " + isStartOnHoldLocalTone);
        if (!isSessionValid()) {
            return;
        }
        if (suppSvcNotification.notificationType == 0) {
            this.mListenerProxy.callSessionSuppServiceReceived(suppSvcNotification);
            return;
        }
        if (suppSvcNotification.notificationType == 1) {
            int i = suppSvcNotification.code;
            if (i == 2) {
                logi("updateSuppServiceInfo SUPP_SVC_CODE_MT_HOLD");
                if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                    notifyCallSessionHold(true);
                }
                this.mListenerProxy.callSessionHoldReceived(this.mCallProfile);
                return;
            }
            if (i == 3) {
                logi("updateSuppServiceInfo SUPP_SVC_CODE_MT_RESUME");
                if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                    notifyCallSessionResumed(true);
                }
                this.mListenerProxy.callSessionResumeReceived(this.mCallProfile);
                return;
            }
            logi("Non-Hold/Resume supp svc code received.");
        }
    }

    public void handleOnHoldTone(boolean isStartOnHoldLocalTone) {
        logi("onHoldTone: isStartOnHoldLocalTone = " + isStartOnHoldLocalTone);
        if (!isSessionValid() || this.mCallProfile == null) {
            return;
        }
        if (getInternalState() != DriverImsCall.State.ACTIVE && getInternalState() != DriverImsCall.State.HOLDING) {
            loge("onHoldTone: current call state is not active or holding, ignore");
            return;
        }
        if (isStartOnHoldLocalTone) {
            this.mCallProfile.mMediaProfile.mAudioDirection = 0;
            this.mListenerProxy.callSessionHoldReceived(this.mCallProfile);
        } else if (this.mCallProfile.mMediaProfile.mAudioDirection == 0) {
            this.mCallProfile.mMediaProfile.mAudioDirection = 3;
            this.mListenerProxy.callSessionResumeReceived(this.mCallProfile);
        }
    }

    public String toString() {
        checkAccessPermission();
        return " callid= " + this.mCallId + " mediaId=" + getMediaId() + " mState= " + this.mState + " mDc=" + this.mDc;
    }

    public String toSimpleString() {
        checkAccessPermission();
        return super/*java.lang.Object*/.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logi(String msg) {
        Rlog.i(LOG_TAG, msg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String msg) {
        Rlog.e(LOG_TAG, msg);
    }

    private static void checkAccessPermission() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1001 || callingUid == 1000) {
        } else {
            throw new SecurityException("Only Phone is able to call this API");
        }
    }

    public boolean isMtCall() {
        return this.mIsMtCall;
    }

    private String getRadioTechFromDriverCall(int imsDomain) {
        int radioTech = 0;
        if (imsDomain == 0) {
            radioTech = 14;
        } else if (imsDomain == 1) {
            radioTech = 18;
        } else if (imsDomain == 2) {
            radioTech = 20;
        }
        logi("getRadioTechFromDriverCall " + radioTech + " ,imsDomain " + imsDomain);
        return Integer.toString(radioTech);
    }

    public boolean isHangup() {
        return this.mIsHangup;
    }

    public void registerForRingbackTone() {
        logi("registerForRingbackTone");
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null) {
            imsRIL.registerForRingbackTone(this.mHandler, 10, null);
        }
    }

    public boolean getHasPendingDisconnect() {
        return this.mIsPendingDisconnect;
    }
}
