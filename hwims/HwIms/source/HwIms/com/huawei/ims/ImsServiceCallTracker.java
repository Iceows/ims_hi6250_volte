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

/* loaded from: ImsServiceCallTracker.class */
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

    /* loaded from: ImsServiceCallTracker$FeatureCapatilityListener.class */
    public interface FeatureCapatilityListener {
        void notifyCapabilitiesStatusChanged(MmTelFeature.MmTelCapabilities mmTelCapabilities);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: ImsServiceCallTracker$HandoverInfo.class */
    public static class HandoverInfo {
        protected String mErrorCode;
        protected String mErrorMessage;
        protected byte[] mExtraInfo;
        protected int mExtraType;
        protected int mSrcTech;
        protected int mTargetTech;
        protected int mType;

        HandoverInfo() {
            this.mType = 0;
            this.mSrcTech = 0;
            this.mTargetTech = 0;
            this.mExtraType = 0;
            this.mExtraInfo = null;
            this.mErrorCode = null;
            this.mErrorMessage = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public HandoverInfo(RILImsHandover rILImsHandover) {
            this.mType = 0;
            this.mSrcTech = 0;
            this.mTargetTech = 0;
            this.mExtraType = 0;
            this.mExtraInfo = null;
            this.mErrorCode = null;
            this.mErrorMessage = null;
            if (rILImsHandover != null) {
                this.mType = rILImsHandover.hoType;
                this.mSrcTech = rILImsHandover.srcTech;
                this.mTargetTech = rILImsHandover.dstTech;
                this.mExtraType = rILImsHandover.hoExtra.extraType;
                this.mErrorCode = Integer.toString(rILImsHandover.errorCode);
            }
        }
    }

    /* loaded from: ImsServiceCallTracker$InComingListener.class */
    public interface InComingListener {
        void notifyIncomingCall(ImsCallSessionImplBase imsCallSessionImplBase, Bundle bundle);

        void notifyIncomingCallSession(IImsCallSession iImsCallSession, Bundle bundle);
    }

    public ImsServiceCallTracker(int i, IImsRegistrationListener iImsRegistrationListener, ImsRIL imsRIL, Context context) {
        this.mCi = null;
        this.mServiceClass = i;
        this.mRegListener = iImsRegistrationListener;
        this.mCi = imsRIL;
        this.mContext = context;
        CameraManager cameraManager = CameraManager.getInstance();
        if (!VTUtils.isVTSupported() || cameraManager == null) {
            return;
        }
        addListener(cameraManager);
    }

    private Bundle createInComingBundle(String str, boolean z, boolean z2, DriverImsCall.State state) {
        Bundle bundle = new Bundle();
        bundle.putString("android:imsCallID", str);
        bundle.putBoolean(EXTRA_USSD, z);
        bundle.putBoolean("android:isUnknown", z2);
        return bundle;
    }

    private static int createServiceId() {
        int i = currentMaxServiceId + 1;
        currentMaxServiceId = i;
        return i;
    }

    private void endCallSession(HwImsCallSessionImpl hwImsCallSessionImpl) {
        if (hwImsCallSessionImpl != null) {
            Rlog.d(LOG_TAG, "callSession = " + hwImsCallSessionImpl);
            DriverImsCall driverImsCall = new DriverImsCall();
            driverImsCall.state = DriverImsCall.State.END;
            driverImsCall.imsCallProfile = hwImsCallSessionImpl.getImsCallProfile();
            if (driverImsCall.imsCallProfile == null) {
                driverImsCall.imsCallProfile = new ImsCallProfiles();
            }
            log("call_type  = " + driverImsCall.imsCallProfile.call_type);
            ImsCallProfile callProfile = hwImsCallSessionImpl.getCallProfile();
            if (callProfile != null) {
                driverImsCall.number = callProfile.getCallExtra("oi");
                driverImsCall.name = callProfile.getCallExtra("cna");
                driverImsCall.numberPresentation = ImsCallProfile.OIRToPresentation(callProfile.getCallExtraInt("oir"));
                driverImsCall.namePresentation = callProfile.getCallExtraInt("cnap");
            }
            DriverImsCall call = hwImsCallSessionImpl.getCall();
            if (call != null) {
                driverImsCall.radioTechFromRilImsCall = call.radioTechFromRilImsCall;
            }
            hwImsCallSessionImpl.updateCall(driverImsCall);
        }
    }

    private HwImsCallSessionImpl getMptySession() {
        HwImsCallSessionImpl value;
        synchronized (this.mCallList) {
            Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                value = it.next().getValue();
            } while (!value.isMultiparty());
            return value;
        }
    }

    private boolean hasIncomingCall(ArrayList<DriverImsCall> arrayList) {
        DriverImsCall driverImsCall;
        if (arrayList == null || 1 != arrayList.size() || (driverImsCall = arrayList.get(0)) == null || DriverImsCall.State.INCOMING != driverImsCall.state) {
            return false;
        }
        Rlog.d(LOG_TAG, "has incoming call");
        return true;
    }

    private static void log(String str) {
        Rlog.d(LOG_TAG, str);
    }

    private static void loge(String str) {
        Rlog.e(LOG_TAG, str);
    }

    private void notifyCallAdded(HwImsCallSessionImpl hwImsCallSessionImpl) {
        int size = this.mImsCallListListeners.size();
        for (int i = 0; i < size; i++) {
            this.mImsCallListListeners.get(i).onImsCallSessionAdded(hwImsCallSessionImpl);
        }
    }

    private void notifyCallRemoved(HwImsCallSessionImpl hwImsCallSessionImpl) {
        int size = this.mImsCallListListeners.size();
        for (int i = 0; i < size; i++) {
            this.mImsCallListListeners.get(i).onImsCallSessionRemoved(hwImsCallSessionImpl);
        }
    }

    private void processDialingAndIncomingConflict(ArrayList<DriverImsCall> arrayList) {
        if (this.mPendingSessionList == null || !hasIncomingCall(arrayList)) {
            return;
        }
        synchronized (this.mPendingSessionList) {
            int size = this.mPendingSessionList.size();
            for (int i = 0; i < size; i++) {
                HwImsCallSessionImpl hwImsCallSessionImpl = this.mPendingSessionList.get(i);
                Rlog.d(LOG_TAG, "Found incoming call when dialing, end dialing call, session = " + hwImsCallSessionImpl);
                endCallSession(hwImsCallSessionImpl);
            }
            this.mPendingSessionList.clear();
        }
    }

    public void addCall(Integer num, HwImsCallSessionImpl hwImsCallSessionImpl) {
        synchronized (this.mCallList) {
            HwImsCallSessionImpl hwImsCallSessionImpl2 = this.mCallList.get(Integer.toString(num.intValue()));
            if (hwImsCallSessionImpl2 != null) {
                Rlog.d(LOG_TAG, "Ims dial exception, end phantom call first.");
                endCallSession(hwImsCallSessionImpl2);
            }
            this.mCallList.put(num.toString(), hwImsCallSessionImpl);
        }
        notifyCallAdded(hwImsCallSessionImpl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addListener(IImsCallListListener iImsCallListListener) {
        if (iImsCallListListener == null) {
            throw new IllegalArgumentException("addListener error: listener is null.");
        }
        if (!this.mImsCallListListeners.contains(iImsCallListListener)) {
            this.mImsCallListListeners.add(iImsCallListListener);
            return;
        }
        loge("addListener error: Duplicate listener, " + iImsCallListListener);
    }

    public HwImsCallSessionImpl createCallSession(ImsCallProfile imsCallProfile) {
        HwImsCallSessionImpl hwImsCallSessionImpl = new HwImsCallSessionImpl(imsCallProfile, null, this.mCi, this.mContext, this);
        hwImsCallSessionImpl.addListener(this);
        hwImsCallSessionImpl.updateVtGlobalCapability(this.mIsVtSupportedGlobally);
        synchronized (this.mPendingSessionList) {
            this.mPendingSessionList.add(hwImsCallSessionImpl);
        }
        return hwImsCallSessionImpl;
    }

    public HwImsCallSessionImpl findSessionByMediaId(int i) {
        HwImsCallSessionImpl value;
        synchronized (this.mCallList) {
            Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                value = it.next().getValue();
            } while (value.getMediaId() != i);
            return value;
        }
    }

    public HwImsCallSessionImpl getCallSession(String str) {
        HwImsCallSessionImpl hwImsCallSessionImpl;
        synchronized (this.mCallList) {
            hwImsCallSessionImpl = this.mCallList.get(str);
        }
        return hwImsCallSessionImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<HwImsCallSessionImpl> getCallSessionByState(DriverImsCall.State state) {
        ArrayList arrayList = new ArrayList();
        if (state == null) {
            return arrayList;
        }
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> entry : this.mCallList.entrySet()) {
                HwImsCallSessionImpl value = entry.getValue();
                if (value.getInternalState() == state) {
                    arrayList.add(value);
                }
            }
        }
        return arrayList;
    }

    public int getServiceClass() {
        return this.mServiceClass;
    }

    public int getServiceId() {
        return this.mServiceId;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x018c, code lost:
        if (r0.state == com.huawei.ims.DriverImsCall.State.WAITING) goto L65;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x02b8 -> B:81:0x02b9). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleCalls(java.util.ArrayList<com.huawei.ims.DriverImsCall> r8) {
        /*
            Method dump skipped, instructions count: 1392
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.ImsServiceCallTracker.handleCalls(java.util.ArrayList):void");
    }

    public void handleHandover(HandoverInfo handoverInfo) {
        Rlog.d(LOG_TAG, "in handleHandover");
        HandoverInfo handoverInfo2 = new HandoverInfo();
        handoverInfo2.mType = handoverInfo.mType;
        handoverInfo2.mSrcTech = handoverInfo.mSrcTech;
        handoverInfo2.mTargetTech = handoverInfo.mTargetTech;
        handoverInfo2.mErrorCode = handoverInfo.mErrorCode;
        handoverInfo2.mErrorMessage = handoverInfo.mErrorMessage;
        Rlog.d(LOG_TAG, "hoState: " + handoverInfo2.mType + " srcTech: " + handoverInfo2.mSrcTech + " tarTech: " + handoverInfo2.mTargetTech + " extraType: " + handoverInfo2.mExtraType + " ErrorCode: " + handoverInfo2.mErrorCode);
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> entry : this.mCallList.entrySet()) {
                HwImsCallSessionImpl value = entry.getValue();
                if (value != null) {
                    value.handleHandover(handoverInfo2.mType, handoverInfo2.mSrcTech, handoverInfo2.mTargetTech, handoverInfo2.mExtraType, handoverInfo2.mExtraInfo, handoverInfo2.mErrorCode, handoverInfo2.mErrorMessage);
                } else {
                    Rlog.d(LOG_TAG, "No more call sessions found");
                }
            }
        }
    }

    public void handleModifyCallRequest(ImsCallAdapter.CallModify callModify) {
        HwImsCallSessionImpl hwImsCallSessionImpl;
        if (callModify == null) {
            loge("handleModifyCallRequest Error: Null Call Modify request ");
            return;
        }
        synchronized (this.mCallList) {
            hwImsCallSessionImpl = this.mCallList.get(Integer.toString(callModify.call_index));
        }
        if (hwImsCallSessionImpl != null) {
            hwImsCallSessionImpl.getImsCallAdapter().onReceivedModifyCall(callModify);
        } else {
            loge("handleModifyCallRequest Error: callSession is null");
        }
    }

    public void handleModifyCallResult(int[] iArr) {
        HwImsCallSessionImpl hwImsCallSessionImpl;
        if (iArr == null || iArr.length != 2) {
            Rlog.d(LOG_TAG, "invalid params when handleModifyCallResult");
            return;
        }
        synchronized (this.mCallList) {
            hwImsCallSessionImpl = this.mCallList.get(Integer.toString(iArr[0]));
        }
        if (hwImsCallSessionImpl == null) {
            Rlog.e(LOG_TAG, "handleModifyCallResult error: callsession is null");
        } else if (-1 == hwImsCallSessionImpl.getState()) {
            Rlog.e(LOG_TAG, "handleModifyCallResult error: callsession State.INVALID");
        } else {
            DriverImsCall.State internalState = hwImsCallSessionImpl.getInternalState();
            if (iArr[1] != 0) {
                Rlog.d(LOG_TAG, "modify failed!");
                hwImsCallSessionImpl.getImsCallAdapter().clearPendingModify();
            } else if (this.mCi != null && this.mCi.isSupportVideoRingTones() && (DriverImsCall.State.DIALING == internalState || DriverImsCall.State.ALERTING == internalState)) {
                Rlog.d(LOG_TAG, "ims video ring tones, clear pendingModify!");
                hwImsCallSessionImpl.getImsCallAdapter().clearPendingModify();
            }
            ImsVTCallProviderImpl imsVTCallProviderImpl = hwImsCallSessionImpl.getImsVTCallProviderImpl();
            if (imsVTCallProviderImpl != null) {
                imsVTCallProviderImpl.handleModifyCallResult(iArr[1]);
            }
        }
    }

    public void handleOnHoldTone(boolean z) {
        HwImsCallSessionImpl hwImsCallSessionImpl;
        Rlog.d(LOG_TAG, "handleOnHoldTone startOnHoldLocalTone= " + z);
        if (this.mCallList == null) {
            return;
        }
        synchronized (this.mCallList) {
            Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
            while (true) {
                hwImsCallSessionImpl = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, HwImsCallSessionImpl> next = it.next();
                if (next.getValue() != null) {
                    hwImsCallSessionImpl = next.getValue();
                    hwImsCallSessionImpl.handleOnHoldTone(z);
                    break;
                }
            }
        }
        if (hwImsCallSessionImpl == null) {
            Rlog.e(LOG_TAG, "No call session found for number: ");
        }
    }

    public void handleSuppSvcUnsol(HwImsSuppServiceNotification hwImsSuppServiceNotification) {
        if (hwImsSuppServiceNotification == null) {
            Rlog.d(LOG_TAG, "handleSuppSvcUnsol info == null.");
            return;
        }
        Rlog.d(LOG_TAG, "handleSuppSvcUnsol callId= " + hwImsSuppServiceNotification.callId);
        synchronized (this.mCallList) {
            HwImsCallSessionImpl hwImsCallSessionImpl = this.mCallList.get(Integer.toString(hwImsSuppServiceNotification.callId));
            HwImsCallSessionImpl hwImsCallSessionImpl2 = hwImsCallSessionImpl;
            if (hwImsCallSessionImpl == null) {
                hwImsCallSessionImpl2 = hwImsCallSessionImpl;
                if (hwImsSuppServiceNotification.notificationType == 1) {
                    Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
                    while (true) {
                        hwImsCallSessionImpl2 = hwImsCallSessionImpl;
                        if (!it.hasNext()) {
                            break;
                        }
                        Map.Entry<String, HwImsCallSessionImpl> next = it.next();
                        if (next.getValue() != null) {
                            hwImsCallSessionImpl2 = next.getValue();
                            break;
                        }
                    }
                }
            }
            if (hwImsCallSessionImpl2 != null) {
                ImsSuppServiceNotification imsSuppServiceNotification = new ImsSuppServiceNotification(hwImsSuppServiceNotification.notificationType, hwImsSuppServiceNotification.code, hwImsSuppServiceNotification.index, 0, hwImsSuppServiceNotification.number, new String[]{hwImsSuppServiceNotification.number});
                Rlog.d(LOG_TAG, "handleSuppSvcUnsol suppNotification= " + imsSuppServiceNotification + " startOnHoldLocalTone = false");
                hwImsCallSessionImpl2.updateSuppServiceInfo(imsSuppServiceNotification, false);
            } else {
                Rlog.e(LOG_TAG, "No call session found for number: ");
            }
        }
    }

    public void handleTtyModeChangeUnsol(int i) {
        HwImsCallSessionImpl hwImsCallSessionImpl;
        synchronized (this.mCallList) {
            Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
            while (true) {
                hwImsCallSessionImpl = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, HwImsCallSessionImpl> next = it.next();
                if (next.getValue().getState() == 4) {
                    hwImsCallSessionImpl = next.getValue();
                    hwImsCallSessionImpl.notifyTtyModeChange(i);
                    break;
                }
            }
        }
        if (hwImsCallSessionImpl == null) {
            Rlog.e(LOG_TAG, "No Active call session found for TTY mode change");
        }
    }

    public boolean haveCall() {
        synchronized (this.mCallList) {
            boolean z = false;
            if (this.mPendingSessionList == null || this.mPendingSessionList.size() != 0) {
                return false;
            }
            if (this.mCallList.size() > 0) {
                z = true;
            }
            return z;
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionHold(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionMerged() {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionResumed(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionStarted(HwImsCallSessionImpl hwImsCallSessionImpl) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onClosed(HwImsCallSessionImpl hwImsCallSessionImpl) {
        Rlog.d(LOG_TAG, "onClosed for session " + hwImsCallSessionImpl);
        if (this.mCallList != null) {
            synchronized (this.mCallList) {
                Iterator<Map.Entry<String, HwImsCallSessionImpl>> it = this.mCallList.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, HwImsCallSessionImpl> next = it.next();
                    Rlog.d(LOG_TAG, "List is " + next.getValue() + " session is " + hwImsCallSessionImpl);
                    if (next.getValue() == hwImsCallSessionImpl) {
                        Rlog.d(LOG_TAG, "Removing session on close " + hwImsCallSessionImpl);
                        if (hwImsCallSessionImpl.getInternalState() != DriverImsCall.State.END) {
                            DriverImsCall call = hwImsCallSessionImpl.getCall();
                            call.state = DriverImsCall.State.END;
                            log("call_type  = " + call.imsCallProfile.call_type);
                            hwImsCallSessionImpl.updateCall(call);
                        }
                        it.remove();
                        notifyCallRemoved(next.getValue());
                    }
                }
            }
        }
        if (this.mPendingSessionList != null) {
            synchronized (this.mPendingSessionList) {
                Iterator<HwImsCallSessionImpl> it2 = this.mPendingSessionList.iterator();
                while (it2.hasNext()) {
                    HwImsCallSessionImpl next2 = it2.next();
                    if (next2 == hwImsCallSessionImpl) {
                        Rlog.d(LOG_TAG, "Removing session on close " + hwImsCallSessionImpl);
                        it2.remove();
                        notifyCallRemoved(next2);
                    }
                }
            }
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onDisconnected(HwImsCallSessionImpl hwImsCallSessionImpl) {
    }

    public void onNotifyCallResumed() {
        Rlog.d(LOG_TAG, "onNotifyCallResumed");
        HwImsCallSessionImpl mptySession = getMptySession();
        if (mptySession != null && mptySession.mIsConfInProgress) {
            mptySession.invokeCallResume(mptySession, mptySession.getCallProfile());
        }
        setConfInProgress(false);
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onUnsolCallModify(HwImsCallSessionImpl hwImsCallSessionImpl, ImsCallAdapter.CallModify callModify) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeListener(IImsCallListListener iImsCallListListener) {
        if (iImsCallListListener == null) {
            throw new IllegalArgumentException("removeListener error: listener is null.");
        }
        if (this.mImsCallListListeners.contains(iImsCallListListener)) {
            this.mImsCallListListeners.remove(iImsCallListListener);
            return;
        }
        loge("removeListener error: Listener not found, " + iImsCallListListener);
    }

    public void sendIncomingCallIntent(HwImsCallSessionImpl hwImsCallSessionImpl, int i, boolean z, DriverImsCall.State state, String str) {
        Rlog.d(LOG_TAG, "sendIncomingCallIntent, mIncomingCallListener=" + this.mIncomingCallListener);
        if (this.mIncomingCallListener == null) {
            Rlog.d(LOG_TAG, "mIncomingCallListener = null");
            return;
        }
        this.mIncomingCallListener.notifyIncomingCall(hwImsCallSessionImpl, createInComingBundle(Integer.toString(i), false, z, state));
        addCall(Integer.valueOf(i), hwImsCallSessionImpl);
    }

    public void setConfInProgress(boolean z) {
        Rlog.d(LOG_TAG, "setConfInProgress value = " + z);
        HwImsCallSessionImpl mptySession = getMptySession();
        if (mptySession != null) {
            mptySession.mIsConfInProgress = z;
        }
    }

    public void updateVtCapability(boolean z) {
        log("updateVtCapability " + z);
        this.mIsVtSupportedGlobally = z;
        synchronized (this.mCallList) {
            for (Map.Entry<String, HwImsCallSessionImpl> entry : this.mCallList.entrySet()) {
                entry.getValue().updateVtGlobalCapability(z);
            }
        }
    }
}
