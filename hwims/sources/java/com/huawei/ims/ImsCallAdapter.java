package com.huawei.ims;

import android.os.AsyncResult;
import android.os.Handler;
import android.os.Message;
import android.telephony.Rlog;
import com.huawei.ims.DriverImsCall;
import java.util.Map;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    public enum PauseState {
        NONE,
        PAUSE,
        RESUME
    }

    static /* synthetic */ int access$408(ImsCallAdapter x0) {
        int i = x0.mMultiTaskRetryCount;
        x0.mMultiTaskRetryCount = i + 1;
        return i;
    }

    public boolean isLocallyPaused() {
        return this.mIsLocallyPaused;
    }

    public ImsCallAdapter(HwImsCallSessionImpl hwImsCallSessionImpl, ImsRIL imsRil) {
        log("ImsCallAdapter instance created ");
        this.mCi = imsRil;
        this.mHwImsCallSessionImpl = hwImsCallSessionImpl;
        this.mHandler = new ImsCallAdapterHandler();
    }

    private boolean isVTMultitaskRequest(int callType) {
        return callType == 6 || callType == 7;
    }

    private void triggerOrQueueVTMultitask(int callType) {
        log("triggerOrQueueVTMultitask callType= " + callType + " conn= " + this);
        boolean isPauseRequested = callType == 6;
        this.mPendingVTMultitask = isPauseRequested ? PauseState.PAUSE : PauseState.RESUME;
        if (this.callModifyRequest == null) {
            processPendingVTMultitask();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createAndSendMultiTaskRequest(int rilCallType) {
        this.mHandler.removeMessages(9);
        Message message = this.mHandler.obtainMessage(7);
        modifyCallInitiate(message, rilCallType, null);
    }

    private int pendingPauseStatetoRilCallType() {
        if (this.mPendingVTMultitask == PauseState.PAUSE) {
            return 4;
        }
        if (this.mPendingVTMultitask != PauseState.RESUME) {
            return 10;
        }
        int rilCallType = this.mPrevVideoCallType;
        return rilCallType;
    }

    private boolean validateCanModifyConnectionType(Message msg, int newCallType) {
        log("validateCanModifyConnectionType newCallType=" + newCallType);
        int currCallType = this.mHwImsCallSessionImpl.getInternalCallType();
        boolean isValid = false;
        boolean modifyToCurrCallType = newCallType == currCallType;
        int index = -1;
        try {
            index = Integer.parseInt(this.mHwImsCallSessionImpl.getCallId());
        } catch (NumberFormatException e) {
            loge("validateCanModifyConnectionType : NumberFormatException ");
        }
        boolean isIndexValid = index >= 0;
        if (isIndexValid && !modifyToCurrCallType) {
            isValid = true;
        }
        log("validateCanModifyConnectionType currCallType= " + currCallType + " index=" + index + " modifyToCurrCallType=" + modifyToCurrCallType);
        if (msg == null) {
            return isValid;
        }
        if (!isValid) {
            Exception exception = modifyToCurrCallType ? null : new Exception("Can't modify call.");
            msg.obj = AsyncResult.forMessage(msg, (Object) null, exception);
            msg.sendToTarget();
        }
        return isValid;
    }

    public static boolean hasError(CallModify callModify) {
        return callModify != null && callModify.findError();
    }

    public void onReceivedModifyCall(CallModify callModify) {
        boolean ret;
        Rlog.d(LOG_TAG, "onReceivedCallModify(" + callModify + ")");
        if (callModify.findError()) {
            if (this.callModifyRequest != null && this.callModifyRequest.isSameModify(callModify) && !this.callModifyRequest.findError()) {
                this.callModifyRequest.error = callModify.error;
                ret = true;
            } else {
                Rlog.e(LOG_TAG, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: " + this.callModifyRequest + ", Received Request:" + callModify);
                ret = false;
            }
        } else {
            ret = validateCanModifyConnectionType(null, callModify.dest_call_details.call_type);
            if (this.mCi != null && this.mCi.isSupportVideoRingTones()) {
                ret = ret || reValidateCallModify(callModify.dest_call_details.call_type);
                Rlog.d(LOG_TAG, "CallModify received by video ring tone.");
                if (DriverImsCall.State.ALERTING == this.mHwImsCallSessionImpl.getInternalState() && this.mCi.mCallStateRegistrants != null) {
                    this.mCi.mCallStateRegistrants.notifyRegistrants(new AsyncResult((Object) null, (Object) null, (Throwable) null));
                    Rlog.d(LOG_TAG, "mock call state change, notify CallStateRegistrants!");
                }
            }
            if (this.callModifyRequest == null) {
                this.callModifyRequest = callModify;
            } else {
                Rlog.e(LOG_TAG, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending callModifyRequest=" + this.callModifyRequest);
                ret = false;
            }
            if (!ret) {
                rejectConnectionTypeChange();
            }
        }
        if (ret) {
            this.mHwImsCallSessionImpl.notifyUnsolCallModify(callModify);
        }
        if (hasError(callModify)) {
            clearPendingModify();
        }
    }

    private boolean reValidateCallModify(int newCallType) {
        log("reValidateCallModify newCallType=" + newCallType);
        int currCallType = this.mHwImsCallSessionImpl.getInternalCallType();
        boolean isValid = false;
        boolean voiceCallModify = 2 == newCallType;
        boolean videoCallModify = 3 == newCallType && 3 == currCallType;
        DriverImsCall.State currentCallState = this.mHwImsCallSessionImpl.getInternalState();
        boolean isVideoRingtoneState = DriverImsCall.State.DIALING == currentCallState || DriverImsCall.State.ALERTING == currentCallState;
        int index = -1;
        try {
            index = Integer.parseInt(this.mHwImsCallSessionImpl.getCallId());
        } catch (NumberFormatException e) {
            loge("reValidateCallModify : NumberFormatException ");
        }
        boolean isIndexValid = index >= 0;
        if (isIndexValid && ((voiceCallModify || videoCallModify) && isVideoRingtoneState)) {
            isValid = true;
        }
        log("reValidateCallModify currCallType= " + currCallType + " index=" + index + " voiceCallModify=" + voiceCallModify + " videoCallModify=" + videoCallModify + " isVideoRingtoneState=" + isVideoRingtoneState);
        return isValid;
    }

    private boolean isOldAndNewPauseRequestSame() {
        if (this.callModifyRequest != null) {
            loge("isOldAndNewPauseRequestSame Unexpectedly callModifyRequest:" + this.callModifyRequest);
            return false;
        }
        boolean ret = (this.mIsLocallyPaused && this.mPendingVTMultitask == PauseState.PAUSE) || (!this.mIsLocallyPaused && this.mPendingVTMultitask == PauseState.RESUME);
        log("isOldAndNewPauseRequestSame " + ret);
        return ret;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processPendingVTMultitask() {
        log("processPendingVTMultitask mPendingVTMultitask=" + this.mPendingVTMultitask);
        if (isOldAndNewPauseRequestSame()) {
            log("Old and new Pause Request is Same so clearing Pending VT multitask");
            this.mPendingVTMultitask = PauseState.NONE;
        } else if (this.mPendingVTMultitask != PauseState.NONE) {
            if (this.callModifyRequest == null) {
                createAndSendMultiTaskRequest(pendingPauseStatetoRilCallType());
                this.mPendingVTMultitask = PauseState.NONE;
            } else {
                loge("processPendingVTMultitask callModifyRequest not null");
            }
        }
    }

    public void clearPendingModify() {
        log("clearPendingModify imsconn=" + this);
        this.callModifyRequest = null;
    }

    public boolean isAvpRetryAllowed() {
        return this.mAvpRetryAllowed;
    }

    public void update(DriverImsCall dc) {
        if (dc == null) {
            loge("update, dc is null");
            return;
        }
        if (ImsCallProviderUtils.isVideoCallTypeWithDir(dc.imsCallProfile.call_type)) {
            this.mAvpRetryAllowed = false;
        }
        if (!ImsCallProviderUtils.isVideoCall(dc.imsCallProfile.call_type)) {
            log("videocall: update: Not a videocall CASE");
            this.mPendingVTMultitask = PauseState.NONE;
            this.mMultiTaskRetryCount = 0;
            this.mHandler.removeMessages(9);
        }
        if (this.callModifyRequest != null && dc.imsCallProfile.call_type == this.callModifyRequest.dest_call_details.call_type) {
            log("videocall update: current call type is same as callModifyRequest");
            clearPendingModify();
        }
        updatePreviousVTCallType();
    }

    private void updatePreviousVTCallType() {
        int callType = this.mHwImsCallSessionImpl.getInternalCallType();
        if (callType == 3 || callType == 1 || callType == 2) {
            this.mPrevVideoCallType = callType;
            log("Updating mPrevVideoCallType to " + this.mPrevVideoCallType);
        }
    }

    public void changeConnectionType(Message msg, int newCallType, Map<String, String> newExtras) {
        log("changeConnectionType  newCallType=" + newCallType);
        try {
            this.mIndex = Integer.parseInt(this.mHwImsCallSessionImpl.getCallId());
        } catch (NumberFormatException e) {
            loge("changeConnectionType : NumberFormatException ");
            this.mIndex = -1;
        }
        if (isVTMultitaskRequest(newCallType)) {
            triggerOrQueueVTMultitask(newCallType);
            return;
        }
        int eventType = newCallType == 8 ? 10 : 6;
        log("eventType =" + eventType);
        Message newMsg = this.mHandler.obtainMessage(eventType, msg);
        if (this.callModifyRequest == null) {
            if (!validateCanModifyConnectionType(newMsg, newCallType)) {
                loge("CallType is invalid!");
                return;
            } else if (newCallType == 8) {
                modifyCallUpgradeCancel(newMsg, newCallType, newExtras);
                return;
            } else {
                modifyCallInitiate(newMsg, newCallType, newExtras);
                return;
            }
        }
        Rlog.e(LOG_TAG, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending callModifyRequest=" + this.callModifyRequest);
        RuntimeException ex = new RuntimeException("Pending callModifyRequest so not sending modify request down");
        if (msg != null) {
            AsyncResult.forMessage(msg, (Object) null, ex);
            msg.sendToTarget();
        }
    }

    public void requestLTEInfo(int enableReport, int threshold, Message result) {
        if (this.mCi != null) {
            this.mCi.requestGetLTEInfo(enableReport, threshold, result);
        }
    }

    private void modifyCallInitiate(Message newMsg, int newCallType, Map<String, String> newExtras) {
        if (!ImsCallProviderUtils.isValidRilModifyCallType(newCallType)) {
            loge("modifyCallInitiate not a Valid RilCallType" + newCallType);
            return;
        }
        ImsCallProfiles destImsCallProfile = new ImsCallProfiles(newCallType, this.mHwImsCallSessionImpl.getCallDomain(), ImsCallProfiles.getExtrasFromMap(newExtras));
        int rilCallIndex = this.mIndex;
        ImsCallProfiles currImsCallProfile = new ImsCallProfiles(this.mHwImsCallSessionImpl.getInternalCallType(), this.mHwImsCallSessionImpl.getCallDomain(), null);
        CallModify callModify = new CallModify(currImsCallProfile, destImsCallProfile, rilCallIndex);
        this.callModifyRequest = callModify;
        this.mCi.modifyCallInitiate(newMsg, callModify);
    }

    private void modifyCallUpgradeCancel(Message newMsg, int newCallType, Map<String, String> newExtras) {
        log("modifyCallUpgradeCancel,newCallType=" + newCallType);
        if (!ImsCallProviderUtils.isValidRilModifyCallType(newCallType)) {
            loge("modifyCallUpgradeCancel not a Valid RilCallType" + newCallType);
            return;
        }
        if (this.mCi != null) {
            this.mCi.modifyCallUpgradeCancel(newMsg, this.mIndex);
        }
    }

    private boolean isValidCallModifyConfirmRequest(int callType) {
        if (this.callModifyRequest == null) {
            loge("callModifyRequest is null");
            return false;
        }
        if (!ImsCallProviderUtils.isVTUpgradeCallType(this.mHwImsCallSessionImpl.getInternalCallType(), this.callModifyRequest.dest_call_details.call_type, callType) && callType != this.callModifyRequest.dest_call_details.call_type) {
            return false;
        }
        return true;
    }

    public void acceptConnectionTypeChange(int callType, Map<String, String> newExtras) {
        Rlog.d(LOG_TAG, "Confirming call type change request: " + this.callModifyRequest);
        if (!isValidCallModifyConfirmRequest(callType)) {
            loge("acceptConnectionTypeChange: MODIFY_CALL_CONFIRM called with invalid calltype " + callType);
            rejectConnectionTypeChange();
            return;
        }
        if (this.callModifyRequest != null) {
            this.callModifyRequest.dest_call_details.call_type = callType;
            if (newExtras != null) {
                this.callModifyRequest.dest_call_details.setExtrasFromMap(newExtras);
            }
            this.mCi.modifyCallConfirm(null, this.callModifyRequest);
            this.callModifyRequest = null;
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

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    class ImsCallAdapterHandler extends Handler {
        ImsCallAdapterHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 5:
                    onAvpRetry(msg);
                    return;
                case 6:
                    onModifyCallInitiateDone(msg);
                    return;
                case 7:
                    onVideoPauseDone(msg);
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
                    onModifyCallUpgradeCancelDone(msg);
                    return;
                default:
                    return;
            }
        }

        private void onModifyCallInitiateDone(Message msg) {
            ImsCallAdapter.this.log("EVENT_MODIFY_CALL_INITIATE_DONE received");
            handleModifyCallActionMessage(msg, 0);
        }

        private void onVideoPauseDone(Message msg) {
            ImsCallAdapter.this.log("EVENT_VIDEO_PAUSE_DONE received");
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar == null) {
                ImsCallAdapter.this.loge("Error EVENT_VIDEO_PAUSE_DONE ar is null");
                return;
            }
            if (ar.exception == null) {
                if (ImsCallAdapter.this.callModifyRequest != null) {
                    ImsCallAdapter.this.mIsLocallyPaused = ImsCallAdapter.this.callModifyRequest.dest_call_details.call_type == 4;
                }
                ImsCallAdapter.this.clearPendingModify();
                clearMultiTaskRetryCount();
                ImsCallAdapter.this.processPendingVTMultitask();
                return;
            }
            if (ImsCallAdapter.this.mMultiTaskRetryCount <= 1) {
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
            ImsCallAdapter.this.log("EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount=" + ImsCallAdapter.this.mMultiTaskRetryCount);
            if (ImsCallAdapter.this.mPendingVTMultitask == PauseState.NONE) {
                ImsCallAdapter.this.createAndSendMultiTaskRequest(ImsCallAdapter.this.callModifyRequest.dest_call_details.call_type);
                return;
            }
            ImsCallAdapter.this.log("User pressed home/resume during retry so sending out new multitask request");
            ImsCallAdapter.this.clearPendingModify();
            clearMultiTaskRetryCount();
            ImsCallAdapter.this.processPendingVTMultitask();
        }

        private void onAvpRetry(Message msg) {
            ImsCallAdapter.this.log("EVENT_AVP_UPGRADE received");
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar != null && ar.exception != null && (ar.userObj instanceof Boolean)) {
                boolean shouldNotifyUser = ((Boolean) ar.userObj).booleanValue();
                if (shouldNotifyUser) {
                    ImsCallAdapter.this.loge("AVP Retry error when Voice call was upgraded to video call");
                } else {
                    ImsCallAdapter.this.loge("AVP Retry error when Video call was dialed");
                }
            }
            ImsCallAdapter.this.clearPendingModify();
            ImsCallAdapter.this.processPendingVTMultitask();
        }

        private int clearMultiTaskRetryCount() {
            ImsCallAdapter.this.log("Clearing MultiTaskRetryCount from " + ImsCallAdapter.this.mMultiTaskRetryCount + " to 0");
            return ImsCallAdapter.this.mMultiTaskRetryCount = 0;
        }

        private void onModifyCallUpgradeCancelDone(Message msg) {
            ImsCallAdapter.this.log("EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE received");
            handleModifyCallActionMessage(msg, 1);
        }

        private void handleModifyCallActionMessage(Message msg, int actionType) {
            if (msg == null) {
                ImsCallAdapter.this.loge("msg is null during handleModifyCallActionMessage");
                return;
            }
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar == null) {
                ImsCallAdapter.this.loge("ar is null during handleModifyCallActionMessage");
                return;
            }
            if (ar.exception != null) {
                ImsCallAdapter.this.loge("videocall error during handleModifyCallActionMessage");
            }
            Message onComplete = (Message) ar.userObj;
            if (onComplete != null) {
                onComplete.arg1 = actionType;
                AsyncResult.forMessage(onComplete, ar.result, ar.exception);
                onComplete.sendToTarget();
            }
            ImsCallAdapter.this.clearPendingModify();
            ImsCallAdapter.this.processPendingVTMultitask();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String msg) {
        Rlog.d(LOG_TAG, HwImsConfigImpl.NULL_STRING_VALUE + msg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String msg) {
        Rlog.e(LOG_TAG, HwImsConfigImpl.NULL_STRING_VALUE + msg);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

        public CallModify(ImsCallProfiles imsCallProfile, int callIndex) {
            this(imsCallProfile, imsCallProfile, callIndex, 0);
        }

        public CallModify(ImsCallProfiles currImsCallProfile, ImsCallProfiles destImsCallProfile, int callIndex) {
            this(currImsCallProfile, destImsCallProfile, callIndex, 0);
        }

        public CallModify(ImsCallProfiles currImsCallProfile, ImsCallProfiles destImsCallProfile, int callIndex, int err) {
            this.curr_call_details = currImsCallProfile;
            this.dest_call_details = destImsCallProfile;
            this.call_index = callIndex;
            this.error = err;
        }

        public CallModify(ImsCallProfiles currImsCallProfile, ImsCallProfiles destImsCallProfile, int callIndex, int err, int reason) {
            this.curr_call_details = currImsCallProfile;
            this.dest_call_details = destImsCallProfile;
            this.call_index = callIndex;
            this.error = err;
            this.modify_reason = reason;
        }

        public void setImsCallProfile(ImsCallProfiles imsCallProfiles) {
            this.dest_call_details = new ImsCallProfiles(imsCallProfiles);
        }

        public boolean findError() {
            return (this.error == 16 || this.error == 0) ? false : true;
        }

        public boolean modifyByTimeOut() {
            return this.modify_reason == 1 || this.modify_reason == 2 || this.modify_reason == 3;
        }

        public String toString() {
            return " " + this.call_index + " " + this.curr_call_details + " " + this.dest_call_details + " " + this.error + " " + this.modify_reason;
        }

        public boolean isSameModify(CallModify callModify) {
            return this.call_index == callModify.call_index && this.dest_call_details.call_type == callModify.dest_call_details.call_type && this.dest_call_details.call_domain == callModify.dest_call_details.call_domain && this.modify_reason == callModify.modify_reason;
        }
    }
}
