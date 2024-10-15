package com.huawei.ims;

import android.content.Context;
import android.os.Bundle;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsSuppServiceNotification;
import android.telephony.ims.feature.MmTelFeature;
import android.telephony.ims.stub.ImsCallSessionImplBase;
import com.android.ims.internal.IImsCallSession;
import com.android.ims.internal.IImsRegistrationListener;
import com.android.internal.telephony.HwTelephonyFactory;
import com.huawei.ims.DriverImsCall;
import com.huawei.ims.HwImsCallSessionImpl;
import com.huawei.ims.ImsCallAdapter;
import com.huawei.ims.vt.CameraManager;
import com.huawei.ims.vt.ImsVtCallProviderImpl;
import com.huawei.ims.vt.VtUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import vendor.huawei.hardware.radio.ims.V2_0.RILImsHandover;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsServiceCallTracker implements HwImsCallSessionImpl.Listener {
    private static final String ACTION_IMS_INCOMING_CALL = "com.android.ims.volte.incoming_call";
    private static final int CALL_MODIFY_RESULT_ARRAY_SIZE = 2;
    private static final int DEFAULT_INCOMING_CALL_SIZE = 1;
    public static final String EXTRA_SERVICE_ID = "android:imsServiceId";
    public static final String EXTRA_USSD = "android:ussd";
    private static final String IS_MT_ENCRYPT_CALL = "encrypt_call_flag";
    private static final String LOG_TAG = "ImsServiceCallTracker";
    private ImsRIL mCi;
    private Context mContext;
    private FeatureCapabilityListener mFeatureCapabilityListener;
    private InComingListener mIncomingCallListener;
    private IImsRegistrationListener mRegListener;
    private boolean mIsVtSupportedGlobally = false;
    private final Map<String, HwImsCallSessionImpl> mCallList = new HashMap();
    private final ArrayList<HwImsCallSessionImpl> mPendingSessionList = new ArrayList<>();
    private List<IImsCallListListener> mImsCallListListeners = new CopyOnWriteArrayList();

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public interface FeatureCapabilityListener {
        void notifyCapabilitiesStatusChanged(MmTelFeature.MmTelCapabilities mmTelCapabilities);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public interface InComingListener {
        void notifyIncomingCall(ImsCallSessionImplBase imsCallSessionImplBase, Bundle bundle);

        void notifyIncomingCallSession(IImsCallSession iImsCallSession, Bundle bundle);
    }

    public ImsServiceCallTracker(IImsRegistrationListener listener, ImsRIL ci, Context context) {
        this.mCi = null;
        this.mRegListener = listener;
        this.mCi = ci;
        this.mContext = context;
        CameraManager cameraManager = CameraManager.getInstance();
        if (VtUtils.isVtSupported() && cameraManager != null) {
            addListener(cameraManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class HandoverInfo {
        protected String mErrorCode;
        protected String mErrorMessage;
        protected byte[] mExtraInfo;
        protected int mExtraType;
        protected int mSrcTech;
        protected int mTargetTech;
        protected int mType;

        /* JADX INFO: Access modifiers changed from: package-private */
        public HandoverInfo(RILImsHandover handoverInfo) {
            this.mType = 0;
            this.mSrcTech = 0;
            this.mTargetTech = 0;
            this.mExtraType = 0;
            this.mExtraInfo = null;
            this.mErrorCode = null;
            this.mErrorMessage = null;
            if (handoverInfo != null) {
                this.mType = handoverInfo.hoType;
                this.mSrcTech = handoverInfo.srcTech;
                this.mTargetTech = handoverInfo.dstTech;
                this.mExtraType = handoverInfo.hoExtra.extraType;
                this.mErrorCode = Integer.toString(handoverInfo.errorCode);
            }
        }

        HandoverInfo() {
            this.mType = 0;
            this.mSrcTech = 0;
            this.mTargetTech = 0;
            this.mExtraType = 0;
            this.mExtraInfo = null;
            this.mErrorCode = null;
            this.mErrorMessage = null;
        }
    }

    public void updateVtCapability(boolean isVtEnabled) {
        log("updateVtCapability " + isVtEnabled);
        this.mIsVtSupportedGlobally = isVtEnabled;
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> entry : this.mCallList.entrySet()) {
                HwImsCallSessionImpl session = entry.getValue();
                session.updateVtGlobalCapability(isVtEnabled);
            }
        }
    }

    public void handleCalls(ArrayList<DriverImsCall> dcList) {
        HwImsCallSessionImpl callSession;
        int dcListSize = 0;
        if (dcList != null) {
            dcListSize = dcList.size();
        }
        Map<String, DriverImsCall> dcMap = new HashMap<>(dcListSize);
        for (int i = 0; i < dcListSize; i++) {
            DriverImsCall dc = dcList.get(i);
            updatePendingCallSessionByDriverCall(dc);
            synchronized (this.mCallList) {
                callSession = this.mCallList.get(Integer.toString(dc.index));
            }
            if (callSession != null && callSession.isHangup()) {
                Rlog.e(LOG_TAG, "Hangup exception");
                callSession = null;
            }
            if (callSession != null) {
                callSession.updateCall(dc);
            } else if (dc.state != DriverImsCall.State.END) {
                processNewCallSession(dc);
            }
            if (dc.state != DriverImsCall.State.END) {
                dcMap.put(Integer.toString(dc.index), dc);
            }
        }
        if (this.mPendingSessionList != null && dcList != null && dcList.size() == 0) {
            updatePendingCallSession();
        }
        processDialingAndIncomingConflict(dcList);
        removeNotPresentCall(dcMap);
    }

    private void updatePendingCallSessionByDriverCall(DriverImsCall dc) {
        ArrayList<HwImsCallSessionImpl> arrayList = this.mPendingSessionList;
        if (arrayList == null) {
            return;
        }
        synchronized (arrayList) {
            Iterator<HwImsCallSessionImpl> it = this.mPendingSessionList.iterator();
            while (it.hasNext()) {
                HwImsCallSessionImpl callSessionImpl = it.next();
                if (dc.state == DriverImsCall.State.DIALING) {
                    Rlog.i(LOG_TAG, "Found match dialing call session in temp list, callSessionImpl = " + callSessionImpl + " index is " + dc.index);
                    addCall(Integer.valueOf(dc.index), callSessionImpl);
                    it.remove();
                }
            }
        }
    }

    private void updatePendingCallSession() {
        synchronized (this.mPendingSessionList) {
            Iterator<HwImsCallSessionImpl> it = this.mPendingSessionList.iterator();
            while (it.hasNext()) {
                HwImsCallSessionImpl callSessionImpl = it.next();
                Rlog.i(LOG_TAG, "Found match end call session in temp list, callSessionImpl = " + callSessionImpl + " index is " + callSessionImpl.getCallId());
                try {
                    addCall(Integer.valueOf(callSessionImpl.getCallId()), callSessionImpl);
                } catch (NumberFormatException e) {
                    Rlog.e(LOG_TAG, "Invalid call id.");
                }
                it.remove();
            }
        }
    }

    private void processNewCallSession(DriverImsCall dc) {
        HwImsCallSessionImpl callSession;
        HwImsCallSessionImpl callSession2;
        boolean isUnknown = false;
        HwImsCallSessionImpl callSession3 = new HwImsCallSessionImpl(dc, this.mCi, this.mContext, this);
        callSession3.addListener(this);
        callSession3.updateVtGlobalCapability(this.mIsVtSupportedGlobally);
        if (dc.isMT) {
            if (dc.state == DriverImsCall.State.INCOMING || dc.state == DriverImsCall.State.WAITING) {
                reportChrCallIncomming();
                Rlog.i(LOG_TAG, "MT Call creating a new call session");
                sendIncomingCallIntent(callSession3, dc.index, false, dc.state, dc.number);
            }
            callSession = callSession3;
        } else if (dc.isMpty && dc.state == DriverImsCall.State.DIALING) {
            Rlog.i(LOG_TAG, "Conference Call creating a new call session");
            isUnknown = updateConfSession(callSession3);
            addCall(Integer.valueOf(dc.index), callSession3);
            callSession3.updateConfSession(dc);
            callSession = callSession3;
        } else {
            Rlog.i(LOG_TAG, "MO phantom Call Scenario. State = " + dc.state);
            ArrayList<HwImsCallSessionImpl> arrayList = this.mPendingSessionList;
            if (arrayList != null && arrayList.size() > 0) {
                synchronized (this.mPendingSessionList) {
                    Iterator<HwImsCallSessionImpl> it = this.mPendingSessionList.iterator();
                    HwImsCallSessionImpl callSessionImpl = it.next();
                    addCall(Integer.valueOf(dc.index), callSessionImpl);
                    it.remove();
                }
                synchronized (this.mCallList) {
                    callSession2 = this.mCallList.get(Integer.toString(dc.index));
                }
                if (callSession2 != null) {
                    callSession2.updateCall(dc);
                }
                Rlog.i(LOG_TAG, "MO phantom Call matched.");
                callSession = callSession2;
            } else {
                isUnknown = true;
                callSession = callSession3;
            }
        }
        if (isUnknown) {
            sendIncomingCallIntent(callSession, dc.index, true, dc.state, dc.number);
            if (callSession != null) {
                callSession.registerForRingbackTone();
            }
        }
    }

    private boolean updateConfSession(HwImsCallSessionImpl callSession) {
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> entry : this.mCallList.entrySet()) {
                HwImsCallSessionImpl oldSession = entry.getValue();
                if (oldSession.isConfInProgress()) {
                    Rlog.i(LOG_TAG, "Set New Session as Id " + callSession.getCallId());
                    oldSession.setNewSession(callSession);
                    oldSession.reportNewConferenceCallSession(callSession);
                    return false;
                }
            }
            Rlog.i(LOG_TAG, "Phantom conference call Scenario");
            return true;
        }
    }

    private void removeNotPresentCall(Map<String, DriverImsCall> dcMap) {
        synchronized (this.mCallList) {
            Rlog.i(LOG_TAG, "handleCalls ,mCallList = " + this.mCallList);
            Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, HwImsCallSessionImpl> entry = it.next();
                Rlog.i(LOG_TAG, "dcMap.get(entry.getValue().getCallId() =  " + dcMap.get(entry.getValue().getCallId()));
                if (dcMap.get(entry.getValue().getCallId()) == null) {
                    Rlog.i(LOG_TAG, "end call handle");
                    endCallSession(this.mCallList.get(entry.getValue().getCallId()));
                    it.remove();
                    notifyCallRemoved(entry.getValue());
                }
            }
        }
    }

    private void reportChrCallIncomming() {
        if (this.mCi != null) {
            HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", this.mCi.getChrReportPhoneId(), 1, LOG_TAG);
        }
    }

    private void processDialingAndIncomingConflict(ArrayList<DriverImsCall> dcList) {
        if (this.mPendingSessionList != null && hasIncomingCall(dcList)) {
            synchronized (this.mPendingSessionList) {
                int size = this.mPendingSessionList.size();
                for (int i = 0; i < size; i++) {
                    HwImsCallSessionImpl session = this.mPendingSessionList.get(i);
                    Rlog.i(LOG_TAG, "Found incoming call when dialing, end dialing call, session = " + session);
                    endCallSession(session);
                }
                this.mPendingSessionList.clear();
            }
        }
    }

    private boolean hasIncomingCall(ArrayList<DriverImsCall> dcList) {
        DriverImsCall dc;
        if (dcList == null || dcList.size() != 1 || (dc = dcList.get(0)) == null || dc.state != DriverImsCall.State.INCOMING) {
            return false;
        }
        Rlog.i(LOG_TAG, "has incoming call");
        return true;
    }

    private void endCallSession(HwImsCallSessionImpl callSession) {
        if (callSession != null) {
            Rlog.i(LOG_TAG, "callSession = " + callSession);
            DriverImsCall dcEnd = new DriverImsCall();
            dcEnd.state = DriverImsCall.State.END;
            dcEnd.imsCallProfile = callSession.getImsCallProfile();
            if (dcEnd.imsCallProfile == null) {
                dcEnd.imsCallProfile = new ImsCallProfiles();
            }
            log("callType = " + dcEnd.imsCallProfile.getCallType());
            ImsCallProfile imsCallProfile = callSession.getCallProfile();
            if (imsCallProfile != null) {
                dcEnd.number = imsCallProfile.getCallExtra("oi");
                dcEnd.name = imsCallProfile.getCallExtra("cna");
                dcEnd.numberPresentation = ImsCallProfile.OIRToPresentation(imsCallProfile.getCallExtraInt("oir"));
                dcEnd.namePresentation = imsCallProfile.getCallExtraInt("cnap");
            }
            DriverImsCall dcSource = callSession.getCall();
            if (dcSource != null) {
                dcEnd.radioTechFromRilImsCall = dcSource.radioTechFromRilImsCall;
            }
            callSession.updateCall(dcEnd);
        }
    }

    public void onNotifyCallResumed() {
        Rlog.i(LOG_TAG, "onNotifyCallResumed");
        HwImsCallSessionImpl callSession = getMptySession();
        if (callSession != null && callSession.mIsConfInProgress) {
            callSession.invokeCallResume(callSession, callSession.getCallProfile());
        }
        setConfInProgress(false);
    }

    public void setConfInProgress(boolean isConfInProgress) {
        Rlog.i(LOG_TAG, "setConfInProgress value = " + isConfInProgress);
        HwImsCallSessionImpl callSession = getMptySession();
        if (callSession != null) {
            callSession.mIsConfInProgress = isConfInProgress;
        }
    }

    private HwImsCallSessionImpl getMptySession() {
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> entry : this.mCallList.entrySet()) {
                HwImsCallSessionImpl callSession = entry.getValue();
                if (callSession.isMultiparty()) {
                    return callSession;
                }
            }
            return null;
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onDisconnected(HwImsCallSessionImpl session) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onClosed(HwImsCallSessionImpl session) {
        Rlog.i(LOG_TAG, "onClosed for session " + session);
        if (session == null) {
            return;
        }
        Map<String, HwImsCallSessionImpl> map = this.mCallList;
        if (map != null) {
            synchronized (map) {
                Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, HwImsCallSessionImpl> entry = it.next();
                    Rlog.i(LOG_TAG, "List is " + entry.getValue() + " session is " + session);
                    if (entry.getValue() == session) {
                        Rlog.i(LOG_TAG, "Removing session on close " + session);
                        if (session.getInternalState() != DriverImsCall.State.END) {
                            DriverImsCall dcEnd = session.getCall();
                            dcEnd.state = DriverImsCall.State.END;
                            log("callType = " + dcEnd.imsCallProfile.getCallType());
                            session.updateCall(dcEnd);
                        }
                        it.remove();
                        notifyCallRemoved(entry.getValue());
                    }
                }
            }
        }
        ArrayList<HwImsCallSessionImpl> arrayList = this.mPendingSessionList;
        if (arrayList != null) {
            synchronized (arrayList) {
                Iterator<HwImsCallSessionImpl> it2 = this.mPendingSessionList.iterator();
                while (it2.hasNext()) {
                    HwImsCallSessionImpl callSessionImpl = it2.next();
                    if (callSessionImpl == session) {
                        Rlog.i(LOG_TAG, "Removing session on close " + session);
                        it2.remove();
                        notifyCallRemoved(callSessionImpl);
                    }
                }
            }
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onUnsolCallModify(HwImsCallSessionImpl session, ImsCallAdapter.CallModify callModify) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionHold(HwImsCallSessionImpl session, boolean isMtHold) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionResumed(HwImsCallSessionImpl session, boolean isMtResume) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionStarted(HwImsCallSessionImpl session) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionMerged() {
    }

    public void handleModifyCallRequest(ImsCallAdapter.CallModify cm) {
        HwImsCallSessionImpl callSession;
        if (cm != null) {
            synchronized (this.mCallList) {
                callSession = this.mCallList.get(Integer.toString(cm.getCallIndex()));
            }
            if (callSession != null) {
                callSession.getImsCallAdapter().onReceivedModifyCall(cm);
                return;
            } else {
                loge("handleModifyCallRequest Error: callSession is null");
                return;
            }
        }
        loge("handleModifyCallRequest Error: Null Call Modify request ");
    }

    public void handleModifyCallResult(int[] modifyResult) {
        HwImsCallSessionImpl callSession;
        if (modifyResult == null || modifyResult.length != 2) {
            Rlog.e(LOG_TAG, "invalid params when handleModifyCallResult");
            return;
        }
        synchronized (this.mCallList) {
            callSession = this.mCallList.get(Integer.toString(modifyResult[0]));
        }
        if (callSession == null) {
            Rlog.e(LOG_TAG, "handleModifyCallResult error: callsession is null");
            return;
        }
        if (callSession.getState() == -1) {
            Rlog.e(LOG_TAG, "handleModifyCallResult error: callsession State.INVALID");
            return;
        }
        DriverImsCall.State currentCallState = callSession.getInternalState();
        if (modifyResult[1] != 0) {
            Rlog.i(LOG_TAG, "modify failed!");
            callSession.getImsCallAdapter().clearPendingModify();
        } else if (this.mCi != null && (currentCallState == DriverImsCall.State.DIALING || currentCallState == DriverImsCall.State.ALERTING)) {
            Rlog.i(LOG_TAG, "ims video ring tones, clear pendingModify!");
            callSession.getImsCallAdapter().clearPendingModify();
        } else {
            Rlog.e(LOG_TAG, "handleModifyCallResult error branch.");
        }
        ImsVtCallProviderImpl imsVideoCallProviderImpl = callSession.getImsVtCallProviderImpl();
        if (imsVideoCallProviderImpl != null) {
            imsVideoCallProviderImpl.handleModifyCallResult(modifyResult[1]);
        }
    }

    public HwImsCallSessionImpl createCallSession(ImsCallProfile profile) {
        if (profile == null) {
            Rlog.i(LOG_TAG, "profile is null!");
        }
        HwImsCallSessionImpl session = new HwImsCallSessionImpl(profile, null, this.mCi, this.mContext, this);
        session.addListener(this);
        session.updateVtGlobalCapability(this.mIsVtSupportedGlobally);
        synchronized (this.mPendingSessionList) {
            this.mPendingSessionList.add(session);
        }
        return session;
    }

    public HwImsCallSessionImpl getCallSession(String callId) {
        HwImsCallSessionImpl session;
        synchronized (this.mCallList) {
            session = this.mCallList.get(callId);
        }
        return session;
    }

    public void handleTtyModeChangeUnsol(int mode) {
        HwImsCallSessionImpl callSession = null;
        synchronized (this.mCallList) {
            Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, HwImsCallSessionImpl> entry = it.next();
                if (entry.getValue().getState() == 4) {
                    callSession = entry.getValue();
                    callSession.notifyTtyModeChange(mode);
                    break;
                }
            }
        }
        if (callSession == null) {
            Rlog.e(LOG_TAG, "No Active call session found for TTY mode change");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<HwImsCallSessionImpl> getCallSessionByState(DriverImsCall.State state) {
        List<HwImsCallSessionImpl> sessionList = new ArrayList<>();
        if (state == null) {
            return sessionList;
        }
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> entry : this.mCallList.entrySet()) {
                HwImsCallSessionImpl session = entry.getValue();
                if (session.getInternalState() == state) {
                    sessionList.add(session);
                }
            }
        }
        return sessionList;
    }

    public void handleSuppSvcUnsol(HwImsSuppServiceNotification info) {
        if (info == null) {
            Rlog.e(LOG_TAG, "handleSuppSvcUnsol info == null.");
            return;
        }
        Rlog.i(LOG_TAG, "handleSuppSvcUnsol callId= " + info.getCallId());
        synchronized (this.mCallList) {
            HwImsCallSessionImpl callSession = this.mCallList.get(Integer.toString(info.getCallId()));
            if (callSession == null && info.notificationType == 1) {
                Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, HwImsCallSessionImpl> entry = it.next();
                    if (entry.getValue() != null) {
                        callSession = entry.getValue();
                        break;
                    }
                }
            }
            if (callSession != null) {
                ImsSuppServiceNotification suppServiceInfo = new ImsSuppServiceNotification(info.notificationType, info.code, info.index, 0, info.number, new String[]{info.number});
                Rlog.i(LOG_TAG, "handleSuppSvcUnsol suppNotification= " + suppServiceInfo + " isOnHoldLocalTone = false");
                callSession.updateSuppServiceInfo(suppServiceInfo, false);
            } else {
                Rlog.e(LOG_TAG, "No call session found for number: ");
            }
        }
    }

    public void handleOnHoldTone(boolean isOnHoldLocalTone) {
        Rlog.i(LOG_TAG, "handleOnHoldTone isOnHoldLocalTone= " + isOnHoldLocalTone);
        HwImsCallSessionImpl callSession = null;
        Map<String, HwImsCallSessionImpl> map = this.mCallList;
        if (map == null) {
            return;
        }
        synchronized (map) {
            Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, HwImsCallSessionImpl> entry = it.next();
                if (entry.getValue() != null) {
                    callSession = entry.getValue();
                    callSession.handleOnHoldTone(isOnHoldLocalTone);
                    break;
                }
            }
        }
        if (callSession == null) {
            Rlog.e(LOG_TAG, "No call session found for number: ");
        }
    }

    public void handleHandover(HandoverInfo handover) {
        HwImsCallSessionImpl callSession;
        if (handover == null) {
            return;
        }
        Rlog.i(LOG_TAG, "in handleHandover");
        HandoverInfo response = new HandoverInfo();
        response.mType = handover.mType;
        response.mSrcTech = handover.mSrcTech;
        response.mTargetTech = handover.mTargetTech;
        response.mErrorCode = handover.mErrorCode;
        response.mErrorMessage = handover.mErrorMessage;
        Rlog.i(LOG_TAG, "hoState: " + response.mType + " srcTech: " + response.mSrcTech + " tarTech: " + response.mTargetTech + " extraType: " + response.mExtraType + " ErrorCode: " + response.mErrorCode);
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> entry : this.mCallList.entrySet()) {
                if (!(entry.getValue() instanceof HwImsCallSessionImpl)) {
                    callSession = null;
                } else {
                    HwImsCallSessionImpl callSession2 = entry.getValue();
                    callSession = callSession2;
                }
                if (callSession != null) {
                    callSession.handleHandover(response.mType, response.mSrcTech, response.mTargetTech, response.mExtraType, response.mExtraInfo, response.mErrorCode, response.mErrorMessage);
                } else {
                    Rlog.i(LOG_TAG, "No more call sessions found");
                }
            }
        }
    }

    private void addListener(IImsCallListListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("addListener error: listener is null.");
        }
        if (!this.mImsCallListListeners.contains(listener)) {
            this.mImsCallListListeners.add(listener);
            return;
        }
        loge("addListener error: Duplicate listener, " + listener);
    }

    private void removeListener(IImsCallListListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("removeListener error: listener is null.");
        }
        if (this.mImsCallListListeners.contains(listener)) {
            this.mImsCallListListeners.remove(listener);
            return;
        }
        loge("removeListener error: Listener not found, " + listener);
    }

    private void notifyCallAdded(HwImsCallSessionImpl session) {
        int mImsCallListListenersSize = this.mImsCallListListeners.size();
        for (int i = 0; i < mImsCallListListenersSize; i++) {
            IImsCallListListener listener = this.mImsCallListListeners.get(i);
            listener.onImsCallSessionAdded(session);
        }
    }

    public void addCall(Integer id, HwImsCallSessionImpl session) {
        if (id == null || session == null) {
            return;
        }
        synchronized (this.mCallList) {
            HwImsCallSessionImpl currentCallSession = this.mCallList.get(Integer.toString(id.intValue()));
            if (currentCallSession != null) {
                Rlog.i(LOG_TAG, "Ims dial exception, end phantom call first.");
                endCallSession(currentCallSession);
            }
            this.mCallList.put(id.toString(), session);
        }
        notifyCallAdded(session);
    }

    private void notifyCallRemoved(HwImsCallSessionImpl session) {
        int mImsCallListListenersSize = this.mImsCallListListeners.size();
        for (int i = 0; i < mImsCallListListenersSize; i++) {
            IImsCallListListener listener = this.mImsCallListListeners.get(i);
            listener.onImsCallSessionRemoved(session);
        }
    }

    public boolean haveCall() {
        synchronized (this.mCallList) {
            if (this.mPendingSessionList == null || this.mPendingSessionList.size() != 0) {
                return false;
            }
            return this.mCallList.size() > 0;
        }
    }

    public void sendIncomingCallIntent(HwImsCallSessionImpl session, int index, boolean isUnknown, DriverImsCall.State state, String number) {
        if (session == null) {
            Rlog.e(LOG_TAG, "call session is null");
            return;
        }
        Rlog.i(LOG_TAG, "sendIncomingCallIntent, mIncomingCallListener=" + this.mIncomingCallListener);
        if (this.mIncomingCallListener == null) {
            return;
        }
        int encryptFlag = session.getCall() == null ? 0 : session.getCall().imsCallProfile.isEncrypt;
        log("createIncomingCallIntent encrypt flag = " + encryptFlag);
        Bundle bundle = createInComingBundle(Integer.toString(index), false, isUnknown, state, encryptFlag);
        this.mIncomingCallListener.notifyIncomingCall(session, bundle);
        addCall(Integer.valueOf(index), session);
    }

    private Bundle createInComingBundle(String callId, boolean isUssd, boolean isUnknown, DriverImsCall.State state, int isEncrypt) {
        Bundle bundle = new Bundle();
        bundle.putString("android:imsCallID", callId);
        bundle.putBoolean(EXTRA_USSD, isUssd);
        bundle.putBoolean("android:isUnknown", isUnknown);
        bundle.putInt("encrypt_call_flag", isEncrypt);
        return bundle;
    }

    private static void log(String msg) {
        Rlog.i(LOG_TAG, msg);
    }

    private static void loge(String msg) {
        Rlog.e(LOG_TAG, msg);
    }

    public void setIncomingCallListener(InComingListener listener) {
        this.mIncomingCallListener = listener;
    }

    public void setFeatureCapabilityListener(FeatureCapabilityListener listener) {
        this.mFeatureCapabilityListener = listener;
    }

    public FeatureCapabilityListener getFeatureCapabilityListener() {
        return this.mFeatureCapabilityListener;
    }

    public ArrayList getPendingSessionList() {
        return this.mPendingSessionList;
    }

    public void processPendingSessionList(ArrayList<DriverImsCall> dcList) {
        if (dcList == null) {
            return;
        }
        int dcListSize = dcList.size();
        for (int i = 0; i < dcListSize; i++) {
            DriverImsCall driverImsCall = dcList.get(i);
            if (driverImsCall != null && driverImsCall.state == DriverImsCall.State.DIALING) {
                updatePendingCallSessionByDriverCsCall(driverImsCall);
                return;
            }
        }
    }

    private void updatePendingCallSessionByDriverCsCall(DriverImsCall driverImsCall) {
        HwImsCallSessionImpl callSessionImpl = null;
        synchronized (this.mPendingSessionList) {
            int pendingSessionSize = this.mPendingSessionList.size();
            int i = 0;
            while (true) {
                if (i < pendingSessionSize) {
                    HwImsCallSessionImpl pendingSession = this.mPendingSessionList.get(i);
                    if (pendingSession == null || !pendingSession.getHasPendingDisconnect()) {
                        i++;
                    } else {
                        callSessionImpl = pendingSession;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (callSessionImpl != null) {
            callSessionImpl.updateCall(driverImsCall);
            Rlog.i(LOG_TAG, "cs dialing call terminate");
            callSessionImpl.close();
        }
    }
}
