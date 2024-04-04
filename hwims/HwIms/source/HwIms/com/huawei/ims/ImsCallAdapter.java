package com.huawei.ims;

import android.os.AsyncResult;
import android.os.Handler;
import android.os.Message;
import android.telephony.Rlog;
import com.huawei.ims.DriverImsCall;
import java.util.Map;

/* loaded from: ImsCallAdapter.class */
public class ImsCallAdapter {
    static final int EVENT_AVP_UPGRADE_DONE = 5;
    static final int EVENT_MODIFY_CALL_CONFIRM_DONE = 8;
    static final int EVENT_MODIFY_CALL_INITIATE_DONE = 6;
    static final int EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE = 10;
    static final int EVENT_VIDEO_PAUSE_DONE = 7;
    static final int EVENT_VIDEO_PAUSE_RETRY = 9;
    private static final String LOG_TAG = "VideoCall_ImsCallAdapter";
    private static final int MAX_MULTITASK_RETRIES = 1;
    static final int PAUSE_DELAY_MILLIS = 3000;
    public static final int TYPE_PROCESS_MODIFY_CALL_CANCEL = 1;
    public static final int TYPE_PROCESS_MODIFY_CALL_INITIALED = 0;
    private ImsRIL mCi;
    Handler mHandler;
    public HwImsCallSessionImpl mHwImsCallSessionImpl;
    private CallModify callModifyRequest = null;
    public int mIndex = -1;
    private int mPrevVideoCallType = 10;
    private boolean mAvpRetryAllowed = true;
    private int mMultiTaskRetryCount = 0;
    private PauseState mPendingVTMultitask = PauseState.NONE;
    private boolean mIsLocallyPaused = false;

    /* loaded from: ImsCallAdapter$CallModify.class */
    public static class CallModify {
        public static final int E_CANCELLED = 7;
        public static final int E_SUCCESS = 0;
        public static final int E_UNUSED = 16;
        public static final int R_REMOTE = 0;
        public static final int R_RTCP_TIMEOUT = 2;
        public static final int R_RTP_AND_RTCP_TIMEOUT = 3;
        public static final int R_RTP_TIMEOUT = 1;
        public int call_index;
        public ImsCallProfiles curr_call_details;
        public ImsCallProfiles dest_call_details;
        public int error;
        public int modify_reason;

        public CallModify() {
            this(new ImsCallProfiles(), 0);
        }

        public CallModify(ImsCallProfiles imsCallProfiles, int i) {
            this(imsCallProfiles, imsCallProfiles, i, 0);
        }

        public CallModify(ImsCallProfiles imsCallProfiles, ImsCallProfiles imsCallProfiles2, int i) {
            this(imsCallProfiles, imsCallProfiles2, i, 0);
        }

        public CallModify(ImsCallProfiles imsCallProfiles, ImsCallProfiles imsCallProfiles2, int i, int i2) {
            this.curr_call_details = imsCallProfiles;
            this.dest_call_details = imsCallProfiles2;
            this.call_index = i;
            this.error = i2;
        }

        public CallModify(ImsCallProfiles imsCallProfiles, ImsCallProfiles imsCallProfiles2, int i, int i2, int i3) {
            this.curr_call_details = imsCallProfiles;
            this.dest_call_details = imsCallProfiles2;
            this.call_index = i;
            this.error = i2;
            this.modify_reason = i3;
        }

        public boolean findError() {
            return (this.error == 16 || this.error == 0) ? false : true;
        }

        public boolean isSameModify(CallModify callModify) {
            return this.call_index == callModify.call_index && this.dest_call_details.call_type == callModify.dest_call_details.call_type && this.dest_call_details.call_domain == callModify.dest_call_details.call_domain && this.modify_reason == callModify.modify_reason;
        }

        public boolean modifyByTimeOut() {
            boolean z = true;
            if (this.modify_reason != 1) {
                z = true;
                if (this.modify_reason != 2) {
                    z = this.modify_reason == 3;
                }
            }
            return z;
        }

        public void setImsCallProfile(ImsCallProfiles imsCallProfiles) {
            this.dest_call_details = new ImsCallProfiles(imsCallProfiles);
        }

        public String toString() {
            return " " + this.call_index + " " + this.curr_call_details + " " + this.dest_call_details + " " + this.error + " " + this.modify_reason;
        }
    }

    /* loaded from: ImsCallAdapter$ImsCallAdapterHandler.class */
    class ImsCallAdapterHandler extends Handler {
        ImsCallAdapterHandler() {
        }

        private int clearMultiTaskRetryCount() {
            ImsCallAdapter imsCallAdapter = ImsCallAdapter.this;
            imsCallAdapter.log("Clearing MultiTaskRetryCount from " + ImsCallAdapter.this.mMultiTaskRetryCount + " to 0");
            return ImsCallAdapter.this.mMultiTaskRetryCount = 0;
        }

        private void handleModifyCallActionMessage(Message message, int i) {
            if (message == null) {
                ImsCallAdapter.this.loge("msg is null during handleModifyCallActionMessage");
                return;
            }
            AsyncResult asyncResult = (AsyncResult) message.obj;
            if (asyncResult == null) {
                ImsCallAdapter.this.loge("ar is null during handleModifyCallActionMessage");
                return;
            }
            if (asyncResult.exception != null) {
                ImsCallAdapter.this.loge("videocall error during handleModifyCallActionMessage");
            }
            Message message2 = (Message) asyncResult.userObj;
            if (message2 != null) {
                message2.arg1 = i;
                AsyncResult.forMessage(message2, asyncResult.result, asyncResult.exception);
                message2.sendToTarget();
            }
            ImsCallAdapter.this.clearPendingModify();
            ImsCallAdapter.this.processPendingVTMultitask();
        }

        private void onAvpRetry(Message message) {
            ImsCallAdapter.this.log("EVENT_AVP_UPGRADE received");
            AsyncResult asyncResult = (AsyncResult) message.obj;
            if (asyncResult != null && asyncResult.exception != null && (asyncResult.userObj instanceof Boolean)) {
                if (((Boolean) asyncResult.userObj).booleanValue()) {
                    ImsCallAdapter.this.loge("AVP Retry error when Voice call was upgraded to video call");
                } else {
                    ImsCallAdapter.this.loge("AVP Retry error when Video call was dialed");
                }
            }
            ImsCallAdapter.this.clearPendingModify();
            ImsCallAdapter.this.processPendingVTMultitask();
        }

        private void onModifyCallInitiateDone(Message message) {
            ImsCallAdapter.this.log("EVENT_MODIFY_CALL_INITIATE_DONE received");
            handleModifyCallActionMessage(message, 0);
        }

        private void onModifyCallUpgradeCancelDone(Message message) {
            ImsCallAdapter.this.log("EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE received");
            handleModifyCallActionMessage(message, 1);
        }

        private void onVideoPauseDone(Message message) {
            ImsCallAdapter.this.log("EVENT_VIDEO_PAUSE_DONE received");
            AsyncResult asyncResult = (AsyncResult) message.obj;
            if (asyncResult == null) {
                ImsCallAdapter.this.loge("Error EVENT_VIDEO_PAUSE_DONE ar is null");
                return;
            }
            boolean z = true;
            if (asyncResult.exception == null) {
                if (ImsCallAdapter.this.callModifyRequest != null) {
                    ImsCallAdapter imsCallAdapter = ImsCallAdapter.this;
                    if (ImsCallAdapter.this.callModifyRequest.dest_call_details.call_type != 4) {
                        z = false;
                    }
                    imsCallAdapter.mIsLocallyPaused = z;
                }
                ImsCallAdapter.this.clearPendingModify();
                clearMultiTaskRetryCount();
                ImsCallAdapter.this.processPendingVTMultitask();
            } else if (ImsCallAdapter.this.mMultiTaskRetryCount <= 1) {
                ImsCallAdapter.this.loge("Error during video pause so retry");
                ImsCallAdapter.this.mHandler.sendMessageDelayed(ImsCallAdapter.this.mHandler.obtainMessage(9), 3000L);
                ImsCallAdapter.access$408(ImsCallAdapter.this);
            } else {
                ImsCallAdapter.this.log("Video Pause retry limit reached.");
                clearMultiTaskRetryCount();
                ImsCallAdapter.this.clearPendingModify();
                ImsCallAdapter.this.processPendingVTMultitask();
            }
        }

        private void onVideoPauseRetry() {
            ImsCallAdapter imsCallAdapter = ImsCallAdapter.this;
            imsCallAdapter.log("EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount=" + ImsCallAdapter.this.mMultiTaskRetryCount);
            if (ImsCallAdapter.this.mPendingVTMultitask == PauseState.NONE) {
                ImsCallAdapter.this.createAndSendMultiTaskRequest(ImsCallAdapter.this.callModifyRequest.dest_call_details.call_type);
                return;
            }
            ImsCallAdapter.this.log("User pressed home/resume during retry so sending out new multitask request");
            ImsCallAdapter.this.clearPendingModify();
            clearMultiTaskRetryCount();
            ImsCallAdapter.this.processPendingVTMultitask();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 5:
                    onAvpRetry(message);
                    return;
                case 6:
                    onModifyCallInitiateDone(message);
                    return;
                case 7:
                    onVideoPauseDone(message);
                    return;
                case 8:
                    ImsCallAdapter.this.log("EVENT_MODIFY_CALL_CONFIRM_DONE received");
                    ImsCallAdapter.this.clearPendingModify();
                    ImsCallAdapter.this.processPendingVTMultitask();
                    return;
                case 9:
                    onVideoPauseRetry();
                    return;
                case 10:
                    onModifyCallUpgradeCancelDone(message);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: ImsCallAdapter$PauseState.class */
    public enum PauseState {
        NONE,
        PAUSE,
        RESUME
    }

    public ImsCallAdapter(HwImsCallSessionImpl hwImsCallSessionImpl, ImsRIL imsRIL) {
        log("ImsCallAdapter instance created ");
        this.mCi = imsRIL;
        this.mHwImsCallSessionImpl = hwImsCallSessionImpl;
        this.mHandler = new ImsCallAdapterHandler();
    }

    static /* synthetic */ int access$408(ImsCallAdapter imsCallAdapter) {
        int i = imsCallAdapter.mMultiTaskRetryCount;
        imsCallAdapter.mMultiTaskRetryCount = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createAndSendMultiTaskRequest(int i) {
        this.mHandler.removeMessages(9);
        modifyCallInitiate(this.mHandler.obtainMessage(7), i, null);
    }

    public static boolean hasError(CallModify callModify) {
        return callModify != null && callModify.findError();
    }

    private boolean isOldAndNewPauseRequestSame() {
        if (this.callModifyRequest != null) {
            loge("isOldAndNewPauseRequestSame Unexpectedly callModifyRequest:" + this.callModifyRequest);
            return false;
        }
        boolean z = (this.mIsLocallyPaused && this.mPendingVTMultitask == PauseState.PAUSE) || (!this.mIsLocallyPaused && this.mPendingVTMultitask == PauseState.RESUME);
        log("isOldAndNewPauseRequestSame " + z);
        return z;
    }

    private boolean isVTMultitaskRequest(int i) {
        return i == 6 || i == 7;
    }

    private boolean isValidCallModifyConfirmRequest(int i) {
        boolean z = false;
        if (this.callModifyRequest == null) {
            loge("callModifyRequest is null");
            return false;
        }
        if (ImsCallProviderUtils.isVTUpgradeCallType(this.mHwImsCallSessionImpl.getInternalCallType(), this.callModifyRequest.dest_call_details.call_type, i)) {
            z = true;
        } else if (i == this.callModifyRequest.dest_call_details.call_type) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String str) {
        Rlog.d(LOG_TAG, HwImsConfigImpl.NULL_STRING_VALUE + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String str) {
        Rlog.e(LOG_TAG, HwImsConfigImpl.NULL_STRING_VALUE + str);
    }

    private void modifyCallInitiate(Message message, int i, Map<String, String> map) {
        if (!ImsCallProviderUtils.isValidRilModifyCallType(i)) {
            loge("modifyCallInitiate not a Valid RilCallType" + i);
            return;
        }
        CallModify callModify = new CallModify(new ImsCallProfiles(this.mHwImsCallSessionImpl.getInternalCallType(), this.mHwImsCallSessionImpl.getCallDomain(), null), new ImsCallProfiles(i, this.mHwImsCallSessionImpl.getCallDomain(), ImsCallProfiles.getExtrasFromMap(map)), this.mIndex);
        this.callModifyRequest = callModify;
        this.mCi.modifyCallInitiate(message, callModify);
    }

    private void modifyCallUpgradeCancel(Message message, int i, Map<String, String> map) {
        log("modifyCallUpgradeCancel,newCallType=" + i);
        if (ImsCallProviderUtils.isValidRilModifyCallType(i)) {
            if (this.mCi != null) {
                this.mCi.modifyCallUpgradeCancel(message, this.mIndex);
                return;
            }
            return;
        }
        loge("modifyCallUpgradeCancel not a Valid RilCallType" + i);
    }

    private int pendingPauseStatetoRilCallType() {
        int i = 10;
        if (this.mPendingVTMultitask == PauseState.PAUSE) {
            i = 4;
        } else if (this.mPendingVTMultitask == PauseState.RESUME) {
            i = this.mPrevVideoCallType;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processPendingVTMultitask() {
        log("processPendingVTMultitask mPendingVTMultitask=" + this.mPendingVTMultitask);
        if (isOldAndNewPauseRequestSame()) {
            log("Old and new Pause Request is Same so clearing Pending VT multitask");
            this.mPendingVTMultitask = PauseState.NONE;
        } else if (this.mPendingVTMultitask != PauseState.NONE) {
            if (this.callModifyRequest != null) {
                loge("processPendingVTMultitask callModifyRequest not null");
                return;
            }
            createAndSendMultiTaskRequest(pendingPauseStatetoRilCallType());
            this.mPendingVTMultitask = PauseState.NONE;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a8, code lost:
        if (r9 != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean reValidateCallModify(int r4) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.ImsCallAdapter.reValidateCallModify(int):boolean");
    }

    private void triggerOrQueueVTMultitask(int i) {
        log("triggerOrQueueVTMultitask callType= " + i + " conn= " + this);
        this.mPendingVTMultitask = i == 6 ? PauseState.PAUSE : PauseState.RESUME;
        if (this.callModifyRequest == null) {
            processPendingVTMultitask();
        }
    }

    private void updatePreviousVTCallType() {
        int internalCallType = this.mHwImsCallSessionImpl.getInternalCallType();
        if (internalCallType == 3 || internalCallType == 1 || internalCallType == 2) {
            this.mPrevVideoCallType = internalCallType;
            log("Updating mPrevVideoCallType to " + this.mPrevVideoCallType);
        }
    }

    private boolean validateCanModifyConnectionType(Message message, int i) {
        log("validateCanModifyConnectionType newCallType=" + i);
        int internalCallType = this.mHwImsCallSessionImpl.getInternalCallType();
        boolean z = i == internalCallType;
        int i2 = -1;
        try {
            i2 = Integer.parseInt(this.mHwImsCallSessionImpl.getCallId());
        } catch (NumberFormatException e) {
            loge("validateCanModifyConnectionType : NumberFormatException ");
        }
        boolean z2 = false;
        if (i2 >= 0) {
            z2 = false;
            if (!z) {
                z2 = true;
            }
        }
        log("validateCanModifyConnectionType currCallType= " + internalCallType + " index=" + i2 + " modifyToCurrCallType=" + z);
        if (message == null) {
            return z2;
        }
        if (!z2) {
            message.obj = AsyncResult.forMessage(message, (Object) null, z ? null : new Exception("Can't modify call."));
            message.sendToTarget();
        }
        return z2;
    }

    public void acceptConnectionTypeChange(int i, Map<String, String> map) {
        Rlog.d(LOG_TAG, "Confirming call type change request: " + this.callModifyRequest);
        if (!isValidCallModifyConfirmRequest(i)) {
            loge("acceptConnectionTypeChange: MODIFY_CALL_CONFIRM called with invalid calltype " + i);
            rejectConnectionTypeChange();
        } else if (this.callModifyRequest != null) {
            this.callModifyRequest.dest_call_details.call_type = i;
            if (map != null) {
                this.callModifyRequest.dest_call_details.setExtrasFromMap(map);
            }
            this.mCi.modifyCallConfirm(null, this.callModifyRequest);
            this.callModifyRequest = null;
        }
    }

    public void changeConnectionType(Message message, int i, Map<String, String> map) {
        log("changeConnectionType  newCallType=" + i);
        try {
            this.mIndex = Integer.parseInt(this.mHwImsCallSessionImpl.getCallId());
        } catch (NumberFormatException e) {
            loge("changeConnectionType : NumberFormatException ");
            this.mIndex = -1;
        }
        if (isVTMultitaskRequest(i)) {
            triggerOrQueueVTMultitask(i);
            return;
        }
        int i2 = i == 8 ? 10 : 6;
        log("eventType =" + i2);
        Message obtainMessage = this.mHandler.obtainMessage(i2, message);
        if (this.callModifyRequest == null) {
            if (!validateCanModifyConnectionType(obtainMessage, i)) {
                loge("CallType is invalid!");
                return;
            } else if (i == 8) {
                modifyCallUpgradeCancel(obtainMessage, i, map);
                return;
            } else {
                modifyCallInitiate(obtainMessage, i, map);
                return;
            }
        }
        Rlog.e(LOG_TAG, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending callModifyRequest=" + this.callModifyRequest);
        RuntimeException runtimeException = new RuntimeException("Pending callModifyRequest so not sending modify request down");
        if (message != null) {
            AsyncResult.forMessage(message, (Object) null, runtimeException);
            message.sendToTarget();
        }
    }

    public void clearPendingModify() {
        log("clearPendingModify imsconn=" + this);
        this.callModifyRequest = null;
    }

    public boolean isAvpRetryAllowed() {
        return this.mAvpRetryAllowed;
    }

    public boolean isLocallyPaused() {
        return this.mIsLocallyPaused;
    }

    public void onReceivedModifyCall(CallModify callModify) {
        boolean z;
        Rlog.d(LOG_TAG, "onReceivedCallModify(" + callModify + ")");
        if (!callModify.findError()) {
            boolean validateCanModifyConnectionType = validateCanModifyConnectionType(null, callModify.dest_call_details.call_type);
            boolean z2 = validateCanModifyConnectionType;
            if (this.mCi != null) {
                z2 = validateCanModifyConnectionType;
                if (this.mCi.isSupportVideoRingTones()) {
                    boolean z3 = validateCanModifyConnectionType || reValidateCallModify(callModify.dest_call_details.call_type);
                    Rlog.d(LOG_TAG, "CallModify received by video ring tone.");
                    z2 = z3;
                    if (DriverImsCall.State.ALERTING == this.mHwImsCallSessionImpl.getInternalState()) {
                        z2 = z3;
                        if (this.mCi.mCallStateRegistrants != null) {
                            this.mCi.mCallStateRegistrants.notifyRegistrants(new AsyncResult((Object) null, (Object) null, (Throwable) null));
                            Rlog.d(LOG_TAG, "mock call state change, notify CallStateRegistrants!");
                            z2 = z3;
                        }
                    }
                }
            }
            if (this.callModifyRequest == null) {
                this.callModifyRequest = callModify;
            } else {
                Rlog.e(LOG_TAG, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending callModifyRequest=" + this.callModifyRequest);
                z2 = false;
            }
            z = z2;
            if (!z2) {
                rejectConnectionTypeChange();
                z = z2;
            }
        } else if (this.callModifyRequest == null || !this.callModifyRequest.isSameModify(callModify) || this.callModifyRequest.findError()) {
            Rlog.e(LOG_TAG, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: " + this.callModifyRequest + ", Received Request:" + callModify);
            z = false;
        } else {
            this.callModifyRequest.error = callModify.error;
            z = true;
        }
        if (z) {
            this.mHwImsCallSessionImpl.notifyUnsolCallModify(callModify);
        }
        if (hasError(callModify)) {
            clearPendingModify();
        }
    }

    public void rejectConnectionTypeChange() {
        if (this.callModifyRequest == null) {
            Rlog.e(LOG_TAG, "rejectConnectionTypeChange callModifyRequest is null");
            return;
        }
        CallModify callModify = new CallModify(this.mHwImsCallSessionImpl.getImsCallProfile(), this.callModifyRequest.call_index);
        Rlog.d(LOG_TAG, "Rejecting Change request: " + this.callModifyRequest + " keep as " + callModify);
        this.mCi.modifyCallConfirm(null, callModify);
        this.callModifyRequest = null;
    }

    public void requestLTEInfo(int i, int i2, Message message) {
        if (this.mCi != null) {
            this.mCi.requestGetLTEInfo(i, i2, message);
        }
    }

    public void update(DriverImsCall driverImsCall) {
        if (driverImsCall == null) {
            loge("update, dc is null");
            return;
        }
        if (ImsCallProviderUtils.isVideoCallTypeWithDir(driverImsCall.imsCallProfile.call_type)) {
            this.mAvpRetryAllowed = false;
        }
        if (!ImsCallProviderUtils.isVideoCall(driverImsCall.imsCallProfile.call_type)) {
            log("videocall: update: Not a videocall CASE");
            this.mPendingVTMultitask = PauseState.NONE;
            this.mMultiTaskRetryCount = 0;
            this.mHandler.removeMessages(9);
        }
        if (this.callModifyRequest != null && driverImsCall.imsCallProfile.call_type == this.callModifyRequest.dest_call_details.call_type) {
            log("videocall update: current call type is same as callModifyRequest");
            clearPendingModify();
        }
        updatePreviousVTCallType();
    }
}
