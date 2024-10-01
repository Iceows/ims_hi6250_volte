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
import com.huawei.ims.vt.ImsVTCallProviderImpl;
import com.huawei.ims.vt.VTUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import vendor.huawei.hardware.radio.ims.V1_0.RILImsHandover;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class ImsServiceCallTracker implements HwImsCallSessionImpl.Listener {
    private static final String ACTION_IMS_INCOMING_CALL = "com.android.ims.volte.incoming_call";
    public static final String CONF_URI_DC_NUMBER = "Conference Call";
    private static final int DEFAULT_INCOMING_CALL_SIZE = 1;
    public static final String EXTRA_SERVICE_ID = "android:imsServiceId";
    public static final String EXTRA_USSD = "android:ussd";
    private static final String LOG_TAG = "ImsServiceCallTracker";
    private static int currentMaxServiceId = 0;
    private ImsRIL mCi;
    private Context mContext;
    public FeatureCapatilityListener mFeatureCapabilityListener;
    public InComingListener mIncomingCallListener;
    public IImsRegistrationListener mRegListener;
    private int mServiceClass;
    private boolean mIsVtSupportedGlobally = false;
    private int mServiceId = createServiceId();
    private Map<String, HwImsCallSessionImpl> mCallList = new HashMap();
    private ArrayList<HwImsCallSessionImpl> mPendingSessionList = new ArrayList<>();
    private List<IImsCallListListener> mImsCallListListeners = new CopyOnWriteArrayList();

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public interface FeatureCapatilityListener {
        void notifyCapabilitiesStatusChanged(MmTelFeature.MmTelCapabilities mmTelCapabilities);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public interface InComingListener {
        void notifyIncomingCall(ImsCallSessionImplBase imsCallSessionImplBase, Bundle bundle);

        void notifyIncomingCallSession(IImsCallSession iImsCallSession, Bundle bundle);
    }

    public ImsServiceCallTracker(int serviceClass, IImsRegistrationListener listener, ImsRIL ci, Context context) {
        this.mCi = null;
        this.mServiceClass = serviceClass;
        this.mRegListener = listener;
        this.mCi = ci;
        this.mContext = context;
        CameraManager cameraManager = CameraManager.getInstance();
        if (VTUtils.isVTSupported() && cameraManager != null) {
            addListener(cameraManager);
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public static class HandoverInfo {
        protected String mErrorCode;
        protected String mErrorMessage;
        protected byte[] mExtraInfo;
        protected int mExtraType;
        protected int mSrcTech;
        protected int mTargetTech;
        protected int mType;

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

    private static int createServiceId() {
        int i = currentMaxServiceId + 1;
        currentMaxServiceId = i;
        return i;
    }

    public int getServiceId() {
        return this.mServiceId;
    }

    public int getServiceClass() {
        return this.mServiceClass;
    }

    public void updateVtCapability(boolean isVtEnabled) {
        log("updateVtCapability " + isVtEnabled);
        this.mIsVtSupportedGlobally = isVtEnabled;
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> e : this.mCallList.entrySet()) {
                HwImsCallSessionImpl session = e.getValue();
                session.updateVtGlobalCapability(isVtEnabled);
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:403:0x0183 -> B:404:0x0184). Please submit an issue!!! */
    public void handleCalls(ArrayList<DriverImsCall> dcList) {
        HwImsCallSessionImpl callSession;
        Map<String, DriverImsCall> dcMap = new HashMap<>();
        int dcListSize = 0;
        if (dcList != null) {
            dcListSize = dcList.size();
        }
        int dcListSize2 = dcListSize;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= dcListSize2) {
                break;
            }
            DriverImsCall dc = dcList.get(i2);
            if (this.mCi != null && dc.isMT && dc.state == DriverImsCall.State.ACTIVE) {
                HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", this.mCi.getCHRReportPhoneId(), 2, "ImsRadioResponse");
            }
            if (this.mPendingSessionList != null) {
                synchronized (this.mPendingSessionList) {
                    Iterator<HwImsCallSessionImpl> it = this.mPendingSessionList.iterator();
                    while (it.hasNext()) {
                        HwImsCallSessionImpl s = it.next();
                        if (dc.state == DriverImsCall.State.DIALING) {
                            Rlog.d(LOG_TAG, "Found match dialing call session in temp list, s = " + s);
                            Rlog.d(LOG_TAG, "Index in call list is " + dc.index);
                            addCall(Integer.valueOf(dc.index), s);
                            it.remove();
                        }
                    }
                }
            }
            synchronized (this.mCallList) {
                callSession = this.mCallList.get(Integer.toString(dc.index));
            }
            if (callSession != null) {
                callSession.updateCall(dc);
            } else {
                boolean isUnknown = false;
                if (dc.state == DriverImsCall.State.END) {
                    continue;
                    i = i2 + 1;
                } else {
                    HwImsCallSessionImpl callSession2 = new HwImsCallSessionImpl(dc, this.mCi, this.mContext, this);
                    callSession2.addListener(this);
                    callSession2.updateVtGlobalCapability(this.mIsVtSupportedGlobally);
                    if (dc.isMT) {
                        if (dc.state == DriverImsCall.State.INCOMING || dc.state == DriverImsCall.State.WAITING) {
                            if (this.mCi != null) {
                                HwTelephonyFactory.getHwChrServiceManager().reportCallException("HwIms", this.mCi.getCHRReportPhoneId(), 1, LOG_TAG);
                            }
                            Rlog.d(LOG_TAG, "MT Call creating a new call session");
                            sendIncomingCallIntent(callSession2, dc.index, false, dc.state, dc.number);
                        }
                    } else if (dc.isMpty && dc.state == DriverImsCall.State.DIALING) {
                        Rlog.d(LOG_TAG, "Conference Call creating a new call session");
                        boolean isUnknown2 = true;
                        synchronized (this.mCallList) {
                            try {
                                Iterator<Map.Entry<String, HwImsCallSessionImpl>> it2 = this.mCallList.entrySet().iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    HwImsCallSessionImpl oldSession = it2.next().getValue();
                                    if (oldSession.isConfInProgress()) {
                                        Rlog.d(LOG_TAG, "Set New Session as Id " + callSession2.getCallId());
                                        oldSession.setNewSession(callSession2);
                                        oldSession.reportNewConferenceCallSession(callSession2);
                                        isUnknown2 = false;
                                        break;
                                    }
                                }
                                isUnknown = isUnknown2;
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                        }
                        addCall(Integer.valueOf(dc.index), callSession2);
                        callSession2.updateConfSession(dc);
                        if (isUnknown) {
                            Rlog.d(LOG_TAG, "Phantom conference call Scenario");
                        }
                    } else if (dc.state != DriverImsCall.State.END) {
                        Rlog.d(LOG_TAG, "MO phantom Call Scenario. State = " + dc.state);
                        if (this.mPendingSessionList != null && this.mPendingSessionList.size() > 0) {
                            synchronized (this.mPendingSessionList) {
                                Iterator<HwImsCallSessionImpl> it3 = this.mPendingSessionList.iterator();
                                addCall(Integer.valueOf(dc.index), it3.next());
                                it3.remove();
                            }
                            synchronized (this.mCallList) {
                                callSession2 = this.mCallList.get(Integer.toString(dc.index));
                            }
                            if (callSession2 != null) {
                                callSession2.updateCall(dc);
                            }
                            Rlog.d(LOG_TAG, "MO phantom Call matched.");
                        } else {
                            isUnknown = true;
                        }
                    }
                    if (isUnknown) {
                        sendIncomingCallIntent(callSession2, dc.index, true, dc.state, dc.number);
                    }
                }
            }
            if (dc.state != DriverImsCall.State.END) {
                dcMap.put(Integer.toString(dc.index), dc);
            }
            i = i2 + 1;
        }
        if (this.mPendingSessionList != null && dcList != null && dcList.size() == 0) {
            synchronized (this.mPendingSessionList) {
                Iterator<HwImsCallSessionImpl> it4 = this.mPendingSessionList.iterator();
                while (it4.hasNext()) {
                    HwImsCallSessionImpl s2 = it4.next();
                    Rlog.d(LOG_TAG, "Found match end call session in temp list, s = " + s2);
                    Rlog.d(LOG_TAG, "Index in call list is " + s2.getCallId());
                    addCall(Integer.valueOf(s2.getCallId()), s2);
                    it4.remove();
                }
            }
        }
        processDialingAndIncomingConflict(dcList);
        synchronized (this.mCallList) {
            Rlog.d(LOG_TAG, "handleCalls ,mCallList = " + this.mCallList);
            Iterator<Map.Entry<String, HwImsCallSessionImpl>> it5 = this.mCallList.entrySet().iterator();
            while (it5.hasNext()) {
                Map.Entry<String, HwImsCallSessionImpl> e = it5.next();
                Rlog.d(LOG_TAG, "dcMap.get(e.getValue().getCallId() =  " + dcMap.get(e.getValue().getCallId()));
                if (dcMap.get(e.getValue().getCallId()) == null) {
                    Rlog.d(LOG_TAG, "end call handle");
                    endCallSession(this.mCallList.get(e.getValue().getCallId()));
                    it5.remove();
                    notifyCallRemoved(e.getValue());
                }
            }
        }
    }

    private void processDialingAndIncomingConflict(ArrayList<DriverImsCall> dcList) {
        if (this.mPendingSessionList != null && hasIncomingCall(dcList)) {
            synchronized (this.mPendingSessionList) {
                int size = this.mPendingSessionList.size();
                for (int i = 0; i < size; i++) {
                    HwImsCallSessionImpl session = this.mPendingSessionList.get(i);
                    Rlog.d(LOG_TAG, "Found incoming call when dialing, end dialing call, session = " + session);
                    endCallSession(session);
                }
                this.mPendingSessionList.clear();
            }
        }
    }

    private boolean hasIncomingCall(ArrayList<DriverImsCall> dcList) {
        DriverImsCall dc;
        if (dcList == null || 1 != dcList.size() || (dc = dcList.get(0)) == null || DriverImsCall.State.INCOMING != dc.state) {
            return false;
        }
        Rlog.d(LOG_TAG, "has incoming call");
        return true;
    }

    private void endCallSession(HwImsCallSessionImpl callSession) {
        if (callSession != null) {
            Rlog.d(LOG_TAG, "callSession = " + callSession);
            DriverImsCall dc_end = new DriverImsCall();
            dc_end.state = DriverImsCall.State.END;
            dc_end.imsCallProfile = callSession.getImsCallProfile();
            if (dc_end.imsCallProfile == null) {
                dc_end.imsCallProfile = new ImsCallProfiles();
            }
            log("call_type  = " + dc_end.imsCallProfile.call_type);
            ImsCallProfile imsCallProfile = callSession.getCallProfile();
            if (imsCallProfile != null) {
                dc_end.number = imsCallProfile.getCallExtra("oi");
                dc_end.name = imsCallProfile.getCallExtra("cna");
                dc_end.numberPresentation = ImsCallProfile.OIRToPresentation(imsCallProfile.getCallExtraInt("oir"));
                dc_end.namePresentation = imsCallProfile.getCallExtraInt("cnap");
            }
            DriverImsCall dc_source = callSession.getCall();
            if (dc_source != null) {
                dc_end.radioTechFromRilImsCall = dc_source.radioTechFromRilImsCall;
            }
            callSession.updateCall(dc_end);
        }
    }

    public void onNotifyCallResumed() {
        Rlog.d(LOG_TAG, "onNotifyCallResumed");
        HwImsCallSessionImpl callSession = getMptySession();
        if (callSession != null && callSession.mIsConfInProgress) {
            callSession.invokeCallResume(callSession, callSession.getCallProfile());
        }
        setConfInProgress(false);
    }

    public void setConfInProgress(boolean value) {
        Rlog.d(LOG_TAG, "setConfInProgress value = " + value);
        HwImsCallSessionImpl callSession = getMptySession();
        if (callSession != null) {
            callSession.mIsConfInProgress = value;
        }
    }

    private HwImsCallSessionImpl getMptySession() {
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> e : this.mCallList.entrySet()) {
                HwImsCallSessionImpl callSession = e.getValue();
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
        Rlog.d(LOG_TAG, "onClosed for session " + session);
        if (this.mCallList != null) {
            synchronized (this.mCallList) {
                Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, HwImsCallSessionImpl> e = it.next();
                    Rlog.d(LOG_TAG, "List is " + e.getValue() + " session is " + session);
                    if (e.getValue() == session) {
                        Rlog.d(LOG_TAG, "Removing session on close " + session);
                        if (session.getInternalState() != DriverImsCall.State.END) {
                            DriverImsCall dc_end = session.getCall();
                            dc_end.state = DriverImsCall.State.END;
                            log("call_type  = " + dc_end.imsCallProfile.call_type);
                            session.updateCall(dc_end);
                        }
                        it.remove();
                        notifyCallRemoved(e.getValue());
                    }
                }
            }
        }
        if (this.mPendingSessionList != null) {
            synchronized (this.mPendingSessionList) {
                Iterator<HwImsCallSessionImpl> it2 = this.mPendingSessionList.iterator();
                while (it2.hasNext()) {
                    HwImsCallSessionImpl s = it2.next();
                    if (s == session) {
                        Rlog.d(LOG_TAG, "Removing session on close " + session);
                        it2.remove();
                        notifyCallRemoved(s);
                    }
                }
            }
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onUnsolCallModify(HwImsCallSessionImpl session, ImsCallAdapter.CallModify callModify) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionHold(HwImsCallSessionImpl session, boolean mtHold) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionResumed(HwImsCallSessionImpl session, boolean mtResume) {
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
                callSession = this.mCallList.get(Integer.toString(cm.call_index));
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
            Rlog.d(LOG_TAG, "invalid params when handleModifyCallResult");
            return;
        }
        synchronized (this.mCallList) {
            callSession = this.mCallList.get(Integer.toString(modifyResult[0]));
        }
        if (callSession == null) {
            Rlog.e(LOG_TAG, "handleModifyCallResult error: callsession is null");
        } else if (-1 == callSession.getState()) {
            Rlog.e(LOG_TAG, "handleModifyCallResult error: callsession State.INVALID");
        } else {
            DriverImsCall.State currentCallState = callSession.getInternalState();
            if (modifyResult[1] != 0) {
                Rlog.d(LOG_TAG, "modify failed!");
                callSession.getImsCallAdapter().clearPendingModify();
            } else if (this.mCi != null && this.mCi.isSupportVideoRingTones() && (DriverImsCall.State.DIALING == currentCallState || DriverImsCall.State.ALERTING == currentCallState)) {
                Rlog.d(LOG_TAG, "ims video ring tones, clear pendingModify!");
                callSession.getImsCallAdapter().clearPendingModify();
            }
            ImsVTCallProviderImpl imsVTCallProviderImpl = callSession.getImsVTCallProviderImpl();
            if (imsVTCallProviderImpl != null) {
                imsVTCallProviderImpl.handleModifyCallResult(modifyResult[1]);
            }
        }
    }

    public HwImsCallSessionImpl createCallSession(ImsCallProfile profile) {
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
                Map.Entry<String, HwImsCallSessionImpl> e = it.next();
                if (e.getValue().getState() == 4) {
                    callSession = e.getValue();
                    callSession.notifyTtyModeChange(mode);
                    break;
                }
            }
        }
        if (callSession == null) {
            Rlog.e(LOG_TAG, "No Active call session found for TTY mode change");
        }
    }

    public List<HwImsCallSessionImpl> getCallSessionByState(DriverImsCall.State state) {
        List<HwImsCallSessionImpl> sessionList = new ArrayList<>();
        if (state == null) {
            return sessionList;
        }
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> e : this.mCallList.entrySet()) {
                HwImsCallSessionImpl session = e.getValue();
                if (session.getInternalState() == state) {
                    sessionList.add(session);
                }
            }
        }
        return sessionList;
    }

    public HwImsCallSessionImpl findSessionByMediaId(int mediaId) {
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> e : this.mCallList.entrySet()) {
                HwImsCallSessionImpl session = e.getValue();
                if (session.getMediaId() == mediaId) {
                    return session;
                }
            }
            return null;
        }
    }

    public void handleSuppSvcUnsol(HwImsSuppServiceNotification info) {
        if (info == null) {
            Rlog.d(LOG_TAG, "handleSuppSvcUnsol info == null.");
            return;
        }
        Rlog.d(LOG_TAG, "handleSuppSvcUnsol callId= " + info.callId);
        synchronized (this.mCallList) {
            HwImsCallSessionImpl callSession = this.mCallList.get(Integer.toString(info.callId));
            if (callSession == null && info.notificationType == 1) {
                Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, HwImsCallSessionImpl> e = it.next();
                    if (e.getValue() != null) {
                        callSession = e.getValue();
                        break;
                    }
                }
            }
            if (callSession != null) {
                ImsSuppServiceNotification suppServiceInfo = new ImsSuppServiceNotification(info.notificationType, info.code, info.index, 0, info.number, new String[]{info.number});
                Rlog.d(LOG_TAG, "handleSuppSvcUnsol suppNotification= " + suppServiceInfo + " startOnHoldLocalTone = false");
                callSession.updateSuppServiceInfo(suppServiceInfo, false);
            } else {
                Rlog.e(LOG_TAG, "No call session found for number: ");
            }
        }
    }

    public void handleOnHoldTone(boolean startOnHoldLocalTone) {
        Rlog.d(LOG_TAG, "handleOnHoldTone startOnHoldLocalTone= " + startOnHoldLocalTone);
        HwImsCallSessionImpl callSession = null;
        if (this.mCallList == null) {
            return;
        }
        synchronized (this.mCallList) {
            Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, HwImsCallSessionImpl> e = it.next();
                if (e.getValue() != null) {
                    callSession = e.getValue();
                    callSession.handleOnHoldTone(startOnHoldLocalTone);
                    break;
                }
            }
        }
        if (callSession == null) {
            Rlog.e(LOG_TAG, "No call session found for number: ");
        }
    }

    public void handleHandover(HandoverInfo handover) {
        Rlog.d(LOG_TAG, "in handleHandover");
        HandoverInfo response = new HandoverInfo();
        response.mType = handover.mType;
        response.mSrcTech = handover.mSrcTech;
        response.mTargetTech = handover.mTargetTech;
        response.mErrorCode = handover.mErrorCode;
        response.mErrorMessage = handover.mErrorMessage;
        Rlog.d(LOG_TAG, "hoState: " + response.mType + " srcTech: " + response.mSrcTech + " tarTech: " + response.mTargetTech + " extraType: " + response.mExtraType + " ErrorCode: " + response.mErrorCode);
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> e : this.mCallList.entrySet()) {
                HwImsCallSessionImpl callSession = e.getValue();
                if (callSession != null) {
                    callSession.handleHandover(response.mType, response.mSrcTech, response.mTargetTech, response.mExtraType, response.mExtraInfo, response.mErrorCode, response.mErrorMessage);
                } else {
                    Rlog.d(LOG_TAG, "No more call sessions found");
                }
            }
        }
    }

    public void addListener(IImsCallListListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("addListener error: listener is null.");
        }
        if (!this.mImsCallListListeners.contains(listener)) {
            this.mImsCallListListeners.add(listener);
            return;
        }
        loge("addListener error: Duplicate listener, " + listener);
    }

    public void removeListener(IImsCallListListener listener) {
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
        synchronized (this.mCallList) {
            HwImsCallSessionImpl current_callSession = this.mCallList.get(Integer.toString(id.intValue()));
            if (current_callSession != null) {
                Rlog.d(LOG_TAG, "Ims dial exception, end phantom call first.");
                endCallSession(current_callSession);
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
        Rlog.d(LOG_TAG, "sendIncomingCallIntent, mIncomingCallListener=" + this.mIncomingCallListener);
        if (this.mIncomingCallListener == null) {
            Rlog.d(LOG_TAG, "mIncomingCallListener = null");
            return;
        }
        Bundle bundle = createInComingBundle(Integer.toString(index), false, isUnknown, state);
        this.mIncomingCallListener.notifyIncomingCall(session, bundle);
        addCall(Integer.valueOf(index), session);
    }

    private Bundle createInComingBundle(String callId, boolean isUssd, boolean isUnknown, DriverImsCall.State state) {
        Bundle bundle = new Bundle();
        bundle.putString("android:imsCallID", callId);
        bundle.putBoolean(EXTRA_USSD, isUssd);
        bundle.putBoolean("android:isUnknown", isUnknown);
        return bundle;
    }

    private static void log(String msg) {
        Rlog.d(LOG_TAG, msg);
    }

    private static void loge(String msg) {
        Rlog.e(LOG_TAG, msg);
    }
}
