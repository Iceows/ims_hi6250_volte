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
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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
        this.mCi = imsRil;
        setListener(listener);
        this.mListenerProxy.mListener = listener;
        this.mCallProfile = profile;
        this.mTracker = tracker;
        this.mImsCallAdapter = new ImsCallAdapter(this, this.mCi);
        if (VTUtils.isVTSupported()) {
            this.mImsVTCallProviderImpl = new ImsVTCallProviderImpl(this, this.mImsCallAdapter);
            addListener(this.mImsVTCallProviderImpl);
        }
        this.isMtCall = false;
        this.mCi.registerForRingbackTone(this.mHandler, 10, null);
    }

    public HwImsCallSessionImpl(DriverImsCall call, ImsRIL imsRil, Context context, ImsServiceCallTracker tracker) {
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
        this.mCi = imsRil;
        this.mDc = new DriverImsCall(call);
        this.mCallId = this.mDc.index;
        this.mTracker = tracker;
        this.mCallee = call.number;
        updateImsCallProfile(this.mDc);
        setCapabilitiesInProfiles(this.mDc);
        this.mImsCallAdapter = new ImsCallAdapter(this, this.mCi);
        if (VTUtils.isVTSupported()) {
            this.mImsVTCallProviderImpl = new ImsVTCallProviderImpl(this, this.mImsCallAdapter);
            addListener(this.mImsVTCallProviderImpl);
        }
        this.isMtCall = this.mDc.isMT;
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

    public ImsVTCallProviderImpl getImsVTCallProviderImpl() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mImsVTCallProviderImpl;
        }
        return null;
    }

    private void notifySessionDisconnected() {
        int mListenersSize = this.mListeners.size();
        for (int i = 0; i < mListenersSize; i++) {
            Listener l = this.mListeners.get(i);
            l.onDisconnected(this);
        }
    }

    private void notifySessionClosed() {
        int mListenersSize = this.mListeners.size();
        for (int i = 0; i < mListenersSize; i++) {
            Listener l = this.mListeners.get(i);
            l.onClosed(this);
        }
    }

    public void notifyUnsolCallModify(ImsCallAdapter.CallModify callModify) {
        checkAccessPermission();
        if (isSessionValid()) {
            int mListenersSize = this.mListeners.size();
            for (int i = 0; i < mListenersSize; i++) {
                Listener l = this.mListeners.get(i);
                l.onUnsolCallModify(this, callModify);
            }
        }
    }

    private void notifyCallSessionHold(boolean mtHold) {
        checkAccessPermission();
        if (isSessionValid()) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                Listener listener = this.mListeners.get(i);
                listener.onCallSessionHold(this, mtHold);
            }
        }
    }

    private void notifyCallSessionResumed(boolean mtResume) {
        checkAccessPermission();
        if (isSessionValid()) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                Listener listener = this.mListeners.get(i);
                listener.onCallSessionResumed(this, mtResume);
            }
        }
    }

    private void notifyCallSessionStarted() {
        checkAccessPermission();
        if (isSessionValid()) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                Listener listener = this.mListeners.get(i);
                listener.onCallSessionStarted(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyCallSessionMerged() {
        checkAccessPermission();
        if (isSessionValid()) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                Listener listener = this.mListeners.get(i);
                listener.onCallSessionMerged();
            }
        }
    }

    public ImsCallAdapter getImsCallAdapter() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mImsCallAdapter;
        }
        return null;
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
        boolean hasChanged;
        if (this.mDc == null) {
            this.mDc = new DriverImsCall(dcUpdate);
            hasChanged = true;
        } else {
            hasChanged = this.mDc.update(dcUpdate);
        }
        Rlog.d(LOG_TAG, "updateLocalDc is " + hasChanged);
        return hasChanged;
    }

    public void updateCall(DriverImsCall dcUpdate) {
        if (dcUpdate == null) {
            loge("updateCall, dcUpdate is null");
            return;
        }
        checkAccessPermission();
        Rlog.d(LOG_TAG, "updateCall for " + dcUpdate);
        if (isSessionValid()) {
            boolean areStatesSame = this.mDc != null && this.mDc.state == dcUpdate.state;
            updateImsCallProfile(dcUpdate);
            setCapabilitiesInProfiles(dcUpdate);
            if (dcUpdate.state != DriverImsCall.State.INCOMING && dcUpdate.state != DriverImsCall.State.WAITING) {
                this.mAcceptPending = false;
            }
            this.mImsCallAdapter.update(dcUpdate);
            switch (dcUpdate.state) {
                case ACTIVE:
                    if (this.mDc == null) {
                        Rlog.e(LOG_TAG, "Phantom call!");
                        this.mState = 4;
                        this.mCallId = dcUpdate.index;
                        this.mListenerProxy.callSessionStarted(this.mCallProfile);
                        break;
                    } else if (this.mDc.state == DriverImsCall.State.DIALING || this.mDc.state == DriverImsCall.State.ALERTING || this.mDc.state == DriverImsCall.State.INCOMING || this.mDc.state == DriverImsCall.State.WAITING) {
                        this.mState = 4;
                        this.mDc.state = DriverImsCall.State.ACTIVE;
                        extractImsCallProfileIntoCallProfile(dcUpdate);
                        if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                            notifyCallSessionStarted();
                        }
                        this.mListenerProxy.callSessionStarted(this.mCallProfile);
                        break;
                    } else if ((this.mDc.state == DriverImsCall.State.HOLDING && !this.mIsConfInProgress) || this.mIsConfInProgress) {
                        Rlog.d(LOG_TAG, "Call being resumed.");
                        this.mIsConfInProgress = false;
                        if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                            notifyCallSessionResumed(false);
                        }
                        this.mListenerProxy.callSessionResumed(this.mCallProfile);
                        break;
                    } else if (this.mDc.imsCallProfile.call_type != dcUpdate.imsCallProfile.call_type) {
                        Rlog.d(LOG_TAG, "call type changes, from " + this.mDc.imsCallProfile.call_type + " to " + dcUpdate.imsCallProfile.call_type);
                        this.mListenerProxy.callSessionResumed(this.mCallProfile);
                        break;
                    } else {
                        Rlog.d(LOG_TAG, "Call resumed skipped, conf status = " + this.mIsConfInProgress);
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
                        this.mCallId = dcUpdate.index;
                        this.mListenerProxy.callSessionProgressing(new ImsStreamMediaProfile());
                        break;
                    }
                    break;
                case ALERTING:
                    this.mState = 2;
                    if (this.mDc == null) {
                        Rlog.d(LOG_TAG, "MO Alerting call!");
                        this.mCallId = dcUpdate.index;
                        break;
                    } else if (this.mDc.state != DriverImsCall.State.ALERTING) {
                        extractImsCallProfileIntoCallProfile(dcUpdate);
                        ImsStreamMediaProfile mediaProfile = new ImsStreamMediaProfile();
                        if (this.mRingbackToneRequest) {
                            mediaProfile.mAudioDirection = 0;
                        }
                        this.mListenerProxy.callSessionProgressing(mediaProfile);
                        break;
                    }
                    break;
                case INCOMING:
                case WAITING:
                    extractImsCallProfileIntoCallProfile(dcUpdate);
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
            boolean hasChanged = updateLocalDc(dcUpdate);
            boolean isCallNotEnded = dcUpdate.state != DriverImsCall.State.END;
            if (areStatesSame && isCallNotEnded && hasChanged) {
                log("Call details updated. currentImsCallProfile= " + this.mDc.imsCallProfile + " to newImsCallProfile= " + dcUpdate.imsCallProfile);
                this.mListenerProxy.callSessionUpdated(this.mCallProfile);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void invokeCallResume(HwImsCallSessionImpl callSession, ImsCallProfile profile) {
        Rlog.d(LOG_TAG, "invokeCallResume");
        this.mListenerProxy.callSessionResumed(profile);
    }

    private void setCapabilitiesInProfiles(DriverImsCall dcUpdate) {
        if (this.mLocalCallProfile != null) {
            this.mLocalCallProfile.mMediaProfile = new ImsStreamMediaProfile();
            this.mLocalCallProfile.mMediaProfile.mAudioQuality = mapAudioCodecFromExtras(dcUpdate.imsCallProfile.getValueForKeyFromExtras(dcUpdate.imsCallProfile.extras, ImsCallProfiles.EXTRAS_CODEC));
            if (this.mIsVtGloballyAllowed) {
                this.mLocalCallProfile.mCallType = 4;
            } else {
                this.mLocalCallProfile.mCallType = 2;
            }
        }
        if (this.mRemoteCallProfile != null) {
            this.mRemoteCallProfile.mCallType = 4;
            if (dcUpdate.imsCallProfile.peerAbility != null) {
                this.mRemoteCallProfile.mMediaProfile = new ImsStreamMediaProfile();
                this.mRemoteCallProfile.mRestrictCause = getRestrictCause(this.mCallProfile.mCallType == 4 ? 3 : 0, dcUpdate.imsCallProfile.peerAbility);
            }
        }
    }

    public void updateConfSession(DriverImsCall dc) {
        checkAccessPermission();
        Rlog.d(LOG_TAG, "updateConfSession for " + dc);
        if (isSessionValid() && dc.state == DriverImsCall.State.ACTIVE && dc.isMpty) {
            this.mState = 4;
            this.mCallId = this.mDc.index;
        }
    }

    public void notifyTtyModeChange(int mode) {
        checkAccessPermission();
        Rlog.d(LOG_TAG, "TTY mode = " + mode);
        if (isSessionValid()) {
            if (this.mListenerProxy != null) {
                this.mListenerProxy.callSessionTtyModeReceived(mode);
            } else {
                Rlog.e(LOG_TAG, "notifyTtyModeChange ListenerProxy null! ");
            }
        }
    }

    public void handleHandover(int hoType, int srcTech, int targetTech, int extraType, byte[] extraInfo, String errorCode, String errorMessage) {
        checkAccessPermission();
        Rlog.d(LOG_TAG, "hoType : " + hoType + "srcTech: " + srcTech + " targetTech: " + targetTech);
        if (isSessionValid()) {
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
    }

    private void updateRate(int srcTech, int targetTech) {
        if ((srcTech != targetTech || !this.mCallProfile.getCallExtra("CallRadioTech").equals(String.valueOf(targetTech))) && this.mCallProfile != null) {
            this.mCallProfile.setCallExtra("CallRadioTech", String.valueOf(targetTech));
        }
    }

    private int transHandoverErrorCode(String errorCode) {
        return 0;
    }

    private boolean isHandleHandoveSuccess(int hoType) {
        return hoType == 1;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    private class HwImsCallSessionImplHandler extends Handler {
        HwImsCallSessionImplHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int causeCode;
            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Message received: what = " + msg.what);
            if (HwImsCallSessionImpl.this.isSessionValid()) {
                switch (msg.what) {
                    case 1:
                        AsyncResult ar = (AsyncResult) msg.obj;
                        if (ar != null && ar.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Dial error");
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
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Accept error: " + ar2.exception);
                            HwImsCallSessionImpl.this.mAcceptPending = false;
                            return;
                        }
                        return;
                    case 3:
                        AsyncResult ar3 = (AsyncResult) msg.obj;
                        if (ar3 != null && ar3.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Hangup error: " + ar3.exception);
                        }
                        HwImsCallSessionImpl.this.mDisconnCause = 501;
                        return;
                    case 4:
                        AsyncResult ar4 = (AsyncResult) msg.obj;
                        if (ar4 != null && ar4.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Hold error");
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionHoldFailed(new ImsReasonInfo(0, 0, "Hold Failed"));
                            return;
                        }
                        return;
                    case 5:
                        AsyncResult ar5 = (AsyncResult) msg.obj;
                        if (ar5 != null && ar5.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Resume error");
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionResumeFailed(new ImsReasonInfo(0, 0, "Resume Failed"));
                            return;
                        }
                        return;
                    case 6:
                        AsyncResult ar6 = (AsyncResult) msg.obj;
                        if (ar6 != null && ar6.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Conference error");
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionMergeFailed(new ImsReasonInfo(0, 0, "Conference Failed"));
                            HwImsCallSessionImpl.this.mTracker.setConfInProgress(false);
                        } else if (ar6 != null && ar6.exception == null) {
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionMergeComplete(HwImsCallSessionImpl.this.mConfCallSession);
                            if (HwImsCallSessionImpl.this.mDc != null && HwImsCallSessionImpl.this.mDc.state == DriverImsCall.State.HOLDING) {
                                Rlog.d(HwImsCallSessionImpl.LOG_TAG, "EVENT_CONFERENCE: DriverImsCall State is HOLDING");
                            }
                            if (ImsCallProviderUtils.isVilteEnhancementSupported()) {
                                Rlog.d(HwImsCallSessionImpl.LOG_TAG, "notifyCallSessionMerged");
                                HwImsCallSessionImpl.this.notifyCallSessionMerged();
                            }
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Conference in progress");
                        } else {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "EVENT_CONFERENCE: shouldn't reach here");
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
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Deflect error");
                            HwImsCallSessionImpl.this.mListenerProxy.callSessionDeflectFailed(new ImsReasonInfo(0, 0, "Deflect Failed"));
                            return;
                        } else {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Deflect success");
                            if (ar7 != null) {
                                HwImsCallSessionImpl.this.mListenerProxy.callSessionDeflected();
                                return;
                            }
                            return;
                        }
                    case 9:
                        AsyncResult ar8 = (AsyncResult) msg.obj;
                        if (ar8 != null && ar8.exception != null) {
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "Add Participant error");
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
                            HwImsCallSessionImpl.this.mRingbackToneRequest = ((Boolean) ar9.result).booleanValue();
                            Rlog.d(HwImsCallSessionImpl.LOG_TAG, "EVENT_RINGBACK_TONE, playTone = " + HwImsCallSessionImpl.this.mRingbackToneRequest);
                            if (HwImsCallSessionImpl.this.mDc != null && HwImsCallSessionImpl.this.mDc.state == DriverImsCall.State.ALERTING) {
                                ImsStreamMediaProfile mediaProfile = new ImsStreamMediaProfile();
                                if (HwImsCallSessionImpl.this.mRingbackToneRequest) {
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
                        HwImsCallSessionImpl.this.log("before Fail Cause = " + causeCode2);
                        if ((causeCode2 == 18543 || causeCode2 == 18632) && HwImsCallSessionImpl.CALL_COMPLETED_ELSEWHERE.equals(message)) {
                            causeCode = 1014;
                        } else if (causeCode2 == 19035 && HwImsCallSessionImpl.REMOTE_CALL_DECLINED.equals(message)) {
                            causeCode = 1404;
                        } else {
                            causeCode = ImsCallProviderUtils.convertRilCauseCodeToImsCode(causeCode2);
                        }
                        String message2 = HwImsCallSessionImpl.this.convertMessageFromCauseCode(causeCode, message);
                        HwImsCallSessionImpl.this.log("Last IMS Call Fail Cause = " + causeCode + "Message = " + message2);
                        ImsReasonInfo reasonInfo = new ImsReasonInfo(causeCode, 0, message2);
                        HwImsCallSessionImpl.this.mListenerProxy.callSessionTerminated(reasonInfo);
                        return;
                    default:
                        Rlog.e(HwImsCallSessionImpl.LOG_TAG, "Unhandled EVENT: " + msg.what);
                        return;
                }
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
        Rlog.d(LOG_TAG, "just use origin message.");
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
        return (this.mState == 8 || this.mState == 7 || this.mState == 0 || this.mState == -1) ? false : true;
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

    public void close() {
        checkAccessPermission();
        Rlog.d(LOG_TAG, "Close!");
        if (this.mHandler != null) {
            this.mHandler.obtainMessage(12).sendToTarget();
        }
    }

    public String getCallId() {
        checkAccessPermission();
        return Integer.toString(this.mCallId);
    }

    public int getMediaId() {
        checkAccessPermission();
        if (isSessionValid() && this.mDc != null) {
            return this.mDc.imsCallProfile.callMediaId;
        }
        return -1;
    }

    public boolean hasMediaIdValid() {
        checkAccessPermission();
        if (isSessionValid() && this.mDc != null) {
            return this.mDc.imsCallProfile.hasMediaIdValid();
        }
        return false;
    }

    public ImsCallProfile getCallProfile() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mCallProfile;
        }
        return null;
    }

    public ImsCallProfile getLocalCallProfile() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mLocalCallProfile;
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

    public String getProperty(String name) {
        checkAccessPermission();
        if (!isSessionValid()) {
            return null;
        }
        if (this.mCallProfile != null) {
            String value = this.mCallProfile.getCallExtra(name);
            return value;
        }
        Rlog.e(LOG_TAG, "Call Profile null! ");
        return null;
    }

    public int getState() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mState;
        }
        return -1;
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
        if (this.mDc != null) {
            DriverImsCall.State state = this.mDc.state;
            return state;
        }
        if (this.mState != 1) {
            return null;
        }
        DriverImsCall.State state2 = DriverImsCall.State.DIALING;
        return state2;
    }

    public int getInternalCallType() {
        checkAccessPermission();
        if (!isSessionValid()) {
            return 10;
        }
        if (this.mDc != null && this.mDc.imsCallProfile != null) {
            int callType = this.mDc.imsCallProfile.call_type;
            return callType;
        }
        if (this.mState != 1 || this.mCallProfile == null) {
            return 10;
        }
        int callType2 = ImsCallProviderUtils.convertToInternalCallType(this.mCallProfile.mCallType);
        return callType2;
    }

    public int getCallDomain() {
        checkAccessPermission();
        if (!isSessionValid() || this.mDc == null || this.mDc.imsCallProfile == null) {
            return 3;
        }
        int callDomain = this.mDc.imsCallProfile.call_domain;
        return callDomain;
    }

    public int getCallSubstate() {
        checkAccessPermission();
        if (!isSessionValid() || this.mDc == null || this.mDc.imsCallProfile == null) {
            return 0;
        }
        int callSubstate = this.mDc.imsCallProfile.callsubstate;
        return callSubstate;
    }

    public boolean isMultipartyCall() {
        checkAccessPermission();
        if (isSessionValid() && this.mDc != null) {
            return this.mDc.isMpty;
        }
        return false;
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

    public boolean isMultiparty() {
        checkAccessPermission();
        if (isSessionValid() && this.mDc != null) {
            return this.mDc.isMpty;
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
        if (isSessionValid()) {
            this.mListenerProxy.mListener = listener;
        }
    }

    public void setMute(boolean muted) {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mCi.setMute(muted, this.mHandler.obtainMessage(13));
        }
    }

    public void reportNewConferenceCallSession(HwImsCallSessionImpl confCallSession) {
        checkAccessPermission();
        if (confCallSession != null) {
            Rlog.d(LOG_TAG, "Calling callSessionMergeStarted");
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
        if (dcUpdate.imsCallProfile.extras != null && dcUpdate.imsCallProfile.extras.length > 0) {
            for (int i = 0; i < dcUpdate.imsCallProfile.extras.length; i++) {
                if (dcUpdate.imsCallProfile.extras[i] != null) {
                    String[] keyAndValue = dcUpdate.imsCallProfile.extras[i].split("=");
                    if (keyAndValue[0] != null) {
                        if (keyAndValue[0].contains(":")) {
                            String[] namespaceAndKey = keyAndValue[0].split(":");
                            key = namespaceAndKey[1];
                        } else {
                            key = keyAndValue[0];
                        }
                        Rlog.d(LOG_TAG, "ImsCallProfiles Extra key= " + key + " value= " + keyAndValue[1]);
                        this.mCallProfile.setCallExtra(key, keyAndValue[1]);
                    } else {
                        Rlog.e(LOG_TAG, "Bad extra string from lower layers!");
                        return;
                    }
                } else {
                    Rlog.e(LOG_TAG, "Element " + i + " is null in ImsCallProfiles Extras!");
                    return;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0053, code lost:
    
        if (r4.equals("QCELP13K") != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int mapAudioCodecFromExtras(java.lang.String r4) {
        /*
            r0 = 0
            r1 = 0
            if (r4 != 0) goto L5
            return r1
        L5:
            r2 = -1
            int r3 = r4.hashCode()
            switch(r3) {
                case -646829946: goto L6a;
                case -646829688: goto L60;
                case 2140834: goto L56;
                case 814951890: goto L4d;
                case 1038481267: goto L43;
                case 1934542573: goto L39;
                case 1934542852: goto L2f;
                case 2057344485: goto L25;
                case 2111709418: goto L1a;
                case 2111709480: goto Lf;
                default: goto Ld;
            }
        Ld:
            goto L74
        Lf:
            java.lang.String r1 = "GSM_HR"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L74
            r1 = 9
            goto L75
        L1a:
            java.lang.String r1 = "GSM_FR"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L74
            r1 = 8
            goto L75
        L25:
            java.lang.String r1 = "EVRC_B"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L74
            r1 = 2
            goto L75
        L2f:
            java.lang.String r1 = "AMR_WB"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L74
            r1 = 6
            goto L75
        L39:
            java.lang.String r1 = "AMR_NB"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L74
            r1 = 5
            goto L75
        L43:
            java.lang.String r1 = "GSM_EFR"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L74
            r1 = 7
            goto L75
        L4d:
            java.lang.String r3 = "QCELP13K"
            boolean r3 = r4.equals(r3)
            if (r3 == 0) goto L74
            goto L75
        L56:
            java.lang.String r1 = "EVRC"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L74
            r1 = 1
            goto L75
        L60:
            java.lang.String r1 = "EVRC_WB"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L74
            r1 = 3
            goto L75
        L6a:
            java.lang.String r1 = "EVRC_NW"
            boolean r1 = r4.equals(r1)
            if (r1 == 0) goto L74
            r1 = 4
            goto L75
        L74:
            r1 = r2
        L75:
            switch(r1) {
                case 0: goto La4;
                case 1: goto La2;
                case 2: goto La0;
                case 3: goto L9e;
                case 4: goto L9c;
                case 5: goto L9a;
                case 6: goto L98;
                case 7: goto L95;
                case 8: goto L92;
                case 9: goto L8f;
                default: goto L78;
            }
        L78:
            java.lang.String r1 = "HwImsCallSessionImpl"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unsupported codec "
            r2.append(r3)
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            android.telephony.Rlog.e(r1, r2)
            goto La6
        L8f:
            r0 = 10
            goto La6
        L92:
            r0 = 9
            goto La6
        L95:
            r0 = 8
            goto La6
        L98:
            r0 = 2
            goto La6
        L9a:
            r0 = 1
            goto La6
        L9c:
            r0 = 7
            goto La6
        L9e:
            r0 = 6
            goto La6
        La0:
            r0 = 5
            goto La6
        La2:
            r0 = 4
            goto La6
        La4:
            r0 = 3
        La6:
            java.lang.String r1 = "HwImsCallSessionImpl"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "AudioQuality is "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            android.telephony.Rlog.d(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.HwImsCallSessionImpl.mapAudioCodecFromExtras(java.lang.String):int");
    }

    private int mapCallTypeFromProfile(int callType) {
        switch (callType) {
            case 1:
                return 10;
            case 2:
                return 0;
            case 3:
            default:
                Rlog.e(LOG_TAG, "Unsupported callType " + callType);
                return 0;
            case 4:
                return 3;
            case 5:
                return 1;
            case 6:
                return 2;
            case 7:
                return 4;
        }
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
                int default4GSlotId = hwTelephonyManager.getDefault4GSlotId();
                int imsRegDomain = hwTelephonyManager.getImsDomain(default4GSlotId);
                this.mCallProfile.setCallExtra("CallRadioTech", getRadioTechFromDriverCall(imsRegDomain));
                Rlog.d(LOG_TAG, "imsRegDomain = " + imsRegDomain + " ,default4GSlotId = " + default4GSlotId);
            }
        }
        this.mCallProfile.setCallExtra("redirect_number", dc.redirectNumber);
        this.mCallProfile.setCallExtraInt("redirect_number_presentation", ImsCallProfile.presentationToOIR(dc.redirectNumberPresentation));
        int i = dc.imsCallProfile.call_type;
        if (i == 10) {
            this.mCallProfile.mCallType = 1;
            this.mCallProfile.mMediaProfile.mVideoDirection = -1;
            return;
        }
        switch (i) {
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

    public boolean isConfInProgress() {
        checkAccessPermission();
        if (isSessionValid()) {
            return this.mIsConfInProgress;
        }
        return false;
    }

    public void setNewSession(HwImsCallSessionImpl session) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public void start(String callee, ImsCallProfile profile) {
        checkAccessPermission();
        if (isSessionValid()) {
            HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", this.mCi.getCHRReportPhoneId(), 0, "ImsRIL");
            this.mCallProfile.mCallType = profile.mCallType;
            this.mCallProfile.mMediaProfile = profile.mMediaProfile;
            this.mState = 1;
            this.mCallee = callee;
            int clir = profile.getCallExtraInt("oir");
            ImsCallProfiles details = new ImsCallProfiles(mapCallTypeFromProfile(profile.mCallType), 3, null);
            extractProfileExtrasIntoImsCallProfile(profile, details);
            this.mCi.dial(callee, clir, details, this.mHandler.obtainMessage(1));
        }
    }

    private void extractProfileExtrasIntoImsCallProfile(ImsCallProfile profile, ImsCallProfiles details) {
        Bundle callExtras = profile.mCallExtras.getBundle("OemCallExtras");
        if (callExtras != null) {
            String[] extras = new String[callExtras.size()];
            int i = 0;
            for (String key : callExtras.keySet()) {
                String value = callExtras.get(key) == null ? HwImsConfigImpl.NULL_STRING_VALUE : callExtras.get(key).toString();
                String extraString = key + "=" + value;
                String extraStringForOutput = extraString;
                if (key.equals(NUMBERMARKINFO_NUMBER) || key.equals(MEXTI_SEARCH_NUMBER) || key.equals(MEXTI_BACKUP_NUMBER)) {
                    String value2 = HiddenPrivacyInfo.putMosaic(callExtras.get(key).toString(), 0);
                    extraStringForOutput = key + "=" + value2;
                }
                Rlog.d(LOG_TAG, "Packing extra string: " + extraStringForOutput);
                extras[i] = extraString;
                i++;
            }
            details.setExtras(extras);
            return;
        }
        Rlog.d(LOG_TAG, "No extras in ImsCallProfile to map into ImsCallProfiles.");
    }

    public void startConference(String[] participants, ImsCallProfile profile) {
        checkAccessPermission();
        if (!isSessionValid() || participants == null) {
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
        if (isSessionValid()) {
            if (this.mAcceptPending) {
                Rlog.d(LOG_TAG, "this call is being accepted...");
            } else {
                this.mAcceptPending = true;
                this.mCi.acceptCall(this.mHandler.obtainMessage(2), mapCallTypeFromProfile(callType));
            }
        }
    }

    public void deflect(String deflectNumber) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public void reject(int reason) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "reject " + reason);
            int cause = ImsCallProviderUtils.getImsCallRejectCause(reason);
            Rlog.d(LOG_TAG, "reject cause" + cause);
            if (cause != -1) {
                this.mCi.rejectImsCallForCause(this.mCallId, cause, this.mHandler.obtainMessage(7));
            } else {
                this.mCi.hangupConnection(this.mCallId, this.mHandler.obtainMessage(3));
            }
            triggerRilRecoveryDelayed();
        }
    }

    public boolean isCallActive() {
        checkAccessPermission();
        return isSessionValid() && getInternalState() == DriverImsCall.State.ACTIVE;
    }

    public void terminate(int reason) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "terminate " + reason);
            this.mCi.hangupConnection(this.mCallId, this.mHandler.obtainMessage(3));
            triggerRilRecoveryDelayed();
        }
    }

    public void hangupForegroundResumeBackground(int reason) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "hangupForegroundResumeBackground " + reason);
            this.mCi.hangupForegroundResumeBackground(this.mHandler.obtainMessage(3));
            triggerRilRecoveryDelayed();
        }
    }

    public void hangupWaitingOrBackground(int reason) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "hangupWaitingOrBackground " + reason);
            this.mCi.hangupWaitingOrBackground(this.mHandler.obtainMessage(3));
            triggerRilRecoveryDelayed();
        }
    }

    private void triggerRilRecoveryDelayed() {
        if (this.mState == 8) {
            log("Call Session terminated. Don't trigger ril recovery.");
            return;
        }
        log("triggerRilRecoveryDelayed");
        if (!this.mHandler.hasMessages(14)) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(14), 35000L);
        }
    }

    private void cleanRilRecovery() {
        log("cleanRilRecovery");
        this.mHandler.removeMessages(14);
    }

    public void hold(ImsStreamMediaProfile profile) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "hold requested.");
            this.mCi.switchWaitingOrHoldingAndActive(this.mHandler.obtainMessage(4));
        }
    }

    public void resume(ImsStreamMediaProfile profile) {
        checkAccessPermission();
        if (isSessionValid()) {
            Rlog.d(LOG_TAG, "resume requested.");
            this.mCi.switchWaitingOrHoldingAndActive(this.mHandler.obtainMessage(5));
        }
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        checkAccessPermission();
        Rlog.d(LOG_TAG, "HwImsCallSessionImpl onTransact code:" + code);
        switch (code) {
            case 2001:
                data.enforceInterface(DESCRIPTOR);
                int callType = data.readInt();
                this.mCi.switchWaitingOrHoldingAndActiveForIms(mapCallTypeFromProfile(callType), this.mHandler.obtainMessage(4));
                return true;
            case 2002:
                data.enforceInterface(DESCRIPTOR);
                int callType2 = data.readInt();
                this.mCi.switchWaitingOrHoldingAndActiveForIms(mapCallTypeFromProfile(callType2), this.mHandler.obtainMessage(5));
                return true;
            default:
                Rlog.e(LOG_TAG, "HwImsCallSessionImpl can not support the code:" + code);
                return true;
        }
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
        if (isSessionValid()) {
        }
    }

    public void extendToConference(String[] participants) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public void inviteParticipants(String[] participants) {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mCallee = participants[0];
        }
    }

    public void removeParticipants(String[] participants) {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mCallee = participants[0];
            Rlog.d(LOG_TAG, "removeParticipants user: " + this.mCallee);
        }
    }

    public void sendDtmf(char c, Message result) {
        checkAccessPermission();
        if (isSessionValid()) {
            this.mCi.sendDtmf(c, result);
        }
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

    public IImsVideoCallProvider getVideoCallProvider() {
        checkAccessPermission();
        if (isSessionValid() && VTUtils.isVTSupported()) {
            return this.mImsVTCallProviderImpl.getInterface();
        }
        return null;
    }

    public void sendUssd(String ussdMessage) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public void notifyConfInfo(byte[] confInfoBytes) {
        checkAccessPermission();
        if (isSessionValid()) {
        }
    }

    public void updateVtGlobalCapability(boolean isVtEnabled) {
        checkAccessPermission();
        log("updateVtGlobalCapability " + isVtEnabled);
        if (isSessionValid() && this.mIsVtGloballyAllowed != isVtEnabled) {
            this.mIsVtGloballyAllowed = isVtEnabled;
            if (this.mDc != null && this.mDc.state != DriverImsCall.State.END) {
                setCapabilitiesInProfiles(this.mDc);
                this.mListenerProxy.callSessionUpdated(this.mCallProfile);
            }
        }
    }

    public ImsCallProfiles getImsCallProfile() {
        checkAccessPermission();
        if (this.mDc == null) {
            return null;
        }
        return this.mDc.imsCallProfile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCallLists() {
        log("initCallLists");
        ArrayList<DriverImsCall> mmTelList = new ArrayList<>();
        if (this.mTracker != null) {
            this.mTracker.handleCalls(mmTelList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateSuppServiceInfo(ImsSuppServiceNotification suppSvcNotification, boolean startOnHoldLocalTone) {
        log("updateSuppSvcInfo: suppSvcNotification= " + suppSvcNotification + " startOnHoldLocalTone = " + startOnHoldLocalTone);
        if (isSessionValid()) {
            if (suppSvcNotification.notificationType == 0) {
                this.mListenerProxy.callSessionSuppServiceReceived(suppSvcNotification);
                return;
            }
            if (suppSvcNotification.notificationType == 1) {
                switch (suppSvcNotification.code) {
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

    public void handleOnHoldTone(boolean startOnHoldLocalTone) {
        log("onHoldTone: startOnHoldLocalTone = " + startOnHoldLocalTone);
        if (isSessionValid() && this.mCallProfile != null) {
            if (getInternalState() != DriverImsCall.State.ACTIVE && getInternalState() != DriverImsCall.State.HOLDING) {
                log("onHoldTone: current call state is not active or holding, ignore");
                return;
            }
            if (startOnHoldLocalTone) {
                this.mCallProfile.mMediaProfile.mAudioDirection = 0;
                this.mListenerProxy.callSessionHoldReceived(this.mCallProfile);
            } else if (this.mCallProfile.mMediaProfile.mAudioDirection == 0) {
                this.mCallProfile.mMediaProfile.mAudioDirection = 3;
                this.mListenerProxy.callSessionResumeReceived(this.mCallProfile);
            }
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
    public void log(String msg) {
        Rlog.d(LOG_TAG, msg);
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

    public boolean isMT() {
        return this.isMtCall;
    }

    private String getRadioTechFromDriverCall(int imsDomain) {
        int radioTech = 0;
        switch (imsDomain) {
            case 0:
                radioTech = 14;
                break;
            case 1:
                radioTech = 18;
                break;
        }
        log("getRadioTechFromDriverCall " + radioTech + " ,imsDomain " + imsDomain);
        return Integer.toString(radioTech);
    }
}
