package com.huawei.ims;

import android.os.AsyncResult;
import android.os.Handler;
import android.os.Message;
import android.telephony.Rlog;
import com.huawei.ims.DriverImsCall;
import java.util.Map;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsCallAdapter {
    private static final int EVENT_AVP_UPGRADE_DONE = 5;
    private static final int EVENT_MODIFY_CALL_CONFIRM_DONE = 8;
    private static final int EVENT_MODIFY_CALL_INITIATE_DONE = 6;
    private static final int EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE = 10;
    private static final int EVENT_VIDEO_PAUSE_DONE = 7;
    private static final int EVENT_VIDEO_PAUSE_RETRY = 9;
    private static final int INIT_INDEX = -1;
    private static final String LOG_TAG = "VideoCall_ImsCallAdapter";
    private static final int MAX_MULTITASK_RETRIES = 1;
    private static final int PAUSE_DELAY_MILLIS = 3000;
    public static final int TYPE_PROCESS_MODIFY_CALL_CANCEL = 1;
    public static final int TYPE_PROCESS_MODIFY_CALL_INITIALED = 0;
    private ImsRIL mCi;
    Handler mHandler;
    private HwImsCallSessionImpl mHwImsCallSessionImpl;
    private int mIndex = -1;
    private CallModify mCallModifyRequest = null;
    private int mPrevVideoCallType = 10;
    private boolean mIsAvpRetryAllowed = true;
    private int mMultiTaskRetryCount = 0;
    private PauseState mPendingVtMultiTask = PauseState.NONE;
    private boolean mIsLocallyPaused = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum PauseState {
        NONE,
        PAUSE,
        RESUME
    }

    static /* synthetic */ int access$708(ImsCallAdapter x0) {
        int i = x0.mMultiTaskRetryCount;
        x0.mMultiTaskRetryCount = i + 1;
        return i;
    }

    public ImsCallAdapter(HwImsCallSessionImpl hwImsCallSessionImpl, ImsRIL imsRil) {
        logi("ImsCallAdapter instance created ");
        this.mCi = imsRil;
        this.mHwImsCallSessionImpl = hwImsCallSessionImpl;
        this.mHandler = new ImsCallAdapterHandler();
    }

    public HwImsCallSessionImpl getHwImsCallSessionImpl() {
        return this.mHwImsCallSessionImpl;
    }

    public boolean isLocallyPaused() {
        return this.mIsLocallyPaused;
    }

    private boolean isVtMultiTaskRequest(int callType) {
        return callType == 6 || callType == 7;
    }

    private void triggerOrQueueVtMultiTask(int callType) {
        logi("triggerOrQueueVtMultiTask callType= " + callType + " conn= " + this);
        boolean isPauseRequested = callType == 6;
        this.mPendingVtMultiTask = isPauseRequested ? PauseState.PAUSE : PauseState.RESUME;
        if (this.mCallModifyRequest == null) {
            processPendingVtMultiTask();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createAndSendMultiTaskRequest(int rilCallType) {
        this.mHandler.removeMessages(9);
        Message message = this.mHandler.obtainMessage(7);
        modifyCallInitiate(message, rilCallType, null);
    }

    private int pendingPauseStateToRilCallType() {
        if (this.mPendingVtMultiTask == PauseState.PAUSE) {
            return 4;
        }
        if (this.mPendingVtMultiTask == PauseState.RESUME) {
            int rilCallType = this.mPrevVideoCallType;
            return rilCallType;
        }
        logi("pendingPauseStatetoRilCallType,mPendingVtMultiTask is " + this.mPendingVtMultiTask);
        return 10;
    }

    private boolean isSupportModifyConnectionType(Message msg, int newCallType) {
        logi("isSupportModifyConnectionType newCallType=" + newCallType);
        int currCallType = this.mHwImsCallSessionImpl.getInternalCallType();
        boolean isModifyToCurrCallType = newCallType == currCallType;
        int index = -1;
        try {
            index = Integer.parseInt(this.mHwImsCallSessionImpl.getCallId());
        } catch (NumberFormatException e) {
            loge("isSupportModifyConnectionType : NumberFormatException ");
        }
        boolean isIndexValid = index >= 0;
        boolean isValid = isIndexValid && !isModifyToCurrCallType;
        logi("isSupportModifyConnectionType currCallType= " + currCallType + " index=" + index + " isModifyToCurrCallType=" + isModifyToCurrCallType);
        if (msg == null) {
            return isValid;
        }
        if (!isValid) {
            Exception exception = isModifyToCurrCallType ? null : new Exception("Can't modify call.");
            msg.obj = AsyncResult.forMessage(msg, (Object) null, exception);
            msg.sendToTarget();
        }
        return isValid;
    }

    public static boolean hasError(CallModify callModify) {
        return callModify != null && callModify.isFailToModify();
    }

    public void onReceivedModifyCall(CallModify callModify) {
        boolean isModify;
        if (callModify == null) {
            return;
        }
        Rlog.i(LOG_TAG, "onReceivedCallModify(" + callModify + ")");
        if (callModify.isFailToModify()) {
            CallModify callModify2 = this.mCallModifyRequest;
            if (callModify2 == null || !callModify2.isSameModify(callModify) || this.mCallModifyRequest.isFailToModify()) {
                Rlog.e(LOG_TAG, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: " + this.mCallModifyRequest + ", Received Request:" + callModify);
                isModify = false;
            } else {
                this.mCallModifyRequest.mError = callModify.mError;
                isModify = true;
            }
        } else {
            isModify = isSupportModifyConnectionType(null, callModify.mDestCallProfiles.getCallType());
            if (this.mCi != null) {
                isModify = isModify || isValidToCallModify(callModify.mDestCallProfiles.getCallType());
                Rlog.i(LOG_TAG, "CallModify received by video ring tone.");
                if (this.mHwImsCallSessionImpl.getInternalState() == DriverImsCall.State.ALERTING && this.mCi.mCallStateRegistrants != null) {
                    this.mCi.mCallStateRegistrants.notifyRegistrants(new AsyncResult((Object) null, (Object) null, (Throwable) null));
                    Rlog.i(LOG_TAG, "mock call state change, notify CallStateRegistrants!");
                }
            }
            if (this.mCallModifyRequest == null) {
                this.mCallModifyRequest = callModify;
            } else {
                Rlog.e(LOG_TAG, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending mCallModifyRequest=" + this.mCallModifyRequest);
                isModify = false;
            }
            if (!isModify) {
                rejectConnectionTypeChange();
            }
        }
        if (isModify) {
            this.mHwImsCallSessionImpl.notifyUnsolCallModify(callModify);
        }
        if (hasError(callModify)) {
            clearPendingModify();
        }
    }

    private boolean isValidToCallModify(int newCallType) {
        logi("isValidToCallModify newCallType=" + newCallType);
        int currCallType = this.mHwImsCallSessionImpl.getInternalCallType();
        boolean isVoiceCallModify = newCallType == 2;
        boolean isVideoCallModify = newCallType == 3 && currCallType == 3;
        DriverImsCall.State currentCallState = this.mHwImsCallSessionImpl.getInternalState();
        boolean isVideoRingtoneState = currentCallState == DriverImsCall.State.DIALING || currentCallState == DriverImsCall.State.ALERTING;
        int index = -1;
        try {
            index = Integer.parseInt(this.mHwImsCallSessionImpl.getCallId());
        } catch (NumberFormatException e) {
            loge("isValidToCallModify : NumberFormatException ");
        }
        boolean isIndexValid = index >= 0;
        boolean isCallModify = isVoiceCallModify || isVideoCallModify;
        boolean isValid = isIndexValid && isCallModify && isVideoRingtoneState;
        logi("isValidToCallModify currCallType= " + currCallType + " index=" + index + " isVoiceCallModify=" + isVoiceCallModify + " isVideoCallModify=" + isVideoCallModify + " isVideoRingtoneState=" + isVideoRingtoneState);
        return isValid;
    }

    private boolean isOldAndNewPauseRequestSame() {
        if (this.mCallModifyRequest != null) {
            loge("isOldAndNewPauseRequestSame Unexpectedly mCallModifyRequest:" + this.mCallModifyRequest);
            return false;
        }
        boolean z = true;
        boolean isLocallyPaused = this.mIsLocallyPaused && this.mPendingVtMultiTask == PauseState.PAUSE;
        boolean isResume = !this.mIsLocallyPaused && this.mPendingVtMultiTask == PauseState.RESUME;
        if (!isLocallyPaused && !isResume) {
            z = false;
        }
        boolean isOldAndNewPauseRequestSame = z;
        logi("isOldAndNewPauseRequestSame " + isOldAndNewPauseRequestSame);
        return isOldAndNewPauseRequestSame;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processPendingVtMultiTask() {
        logi("processPendingVtMultitask mPendingVtMultiTask=" + this.mPendingVtMultiTask);
        if (isOldAndNewPauseRequestSame()) {
            logi("Old and new Pause Request is Same so clearing Pending VT multiTask");
            this.mPendingVtMultiTask = PauseState.NONE;
        } else {
            if (this.mPendingVtMultiTask != PauseState.NONE) {
                if (this.mCallModifyRequest == null) {
                    createAndSendMultiTaskRequest(pendingPauseStateToRilCallType());
                    this.mPendingVtMultiTask = PauseState.NONE;
                    return;
                } else {
                    loge("processPendingVtMultiTask mCallModifyRequest not null");
                    return;
                }
            }
            logi("processPendingVtMultiTask:the else switch");
        }
    }

    public void clearPendingModify() {
        logi("clearPendingModify imsconn=" + this);
        this.mCallModifyRequest = null;
    }

    public boolean isAvpRetryAllowed() {
        return this.mIsAvpRetryAllowed;
    }

    public void update(DriverImsCall dc) {
        if (dc == null) {
            loge("update, dc is null");
            return;
        }
        if (ImsCallProviderUtils.isVideoCallTypeWithDir(dc.imsCallProfile.getCallType())) {
            this.mIsAvpRetryAllowed = false;
        }
        if (!ImsCallProviderUtils.isVideoCall(dc.imsCallProfile.getCallType())) {
            logi("videocall: update: Not a videocall CASE");
            this.mPendingVtMultiTask = PauseState.NONE;
            this.mMultiTaskRetryCount = 0;
            this.mHandler.removeMessages(9);
        }
        if (this.mCallModifyRequest != null && dc.imsCallProfile.getCallType() == this.mCallModifyRequest.mDestCallProfiles.getCallType()) {
            logi("videocall update: current call type is same as mCallModifyRequest");
            clearPendingModify();
        }
        updatePreviousVtCallType();
    }

    private void updatePreviousVtCallType() {
        int callType = this.mHwImsCallSessionImpl.getInternalCallType();
        if (callType == 3 || callType == 1 || callType == 2) {
            this.mPrevVideoCallType = callType;
            logi("Updating mPrevVideoCallType to " + this.mPrevVideoCallType);
        }
    }

    public void changeConnectionType(Message msg, int newCallType, Map<String, String> newExtras) {
        logi("changeConnectionType newCallType = " + newCallType);
        try {
            this.mIndex = Integer.parseInt(this.mHwImsCallSessionImpl.getCallId());
        } catch (NumberFormatException e) {
            loge("changeConnectionType : NumberFormatException.");
            this.mIndex = -1;
        }
        if (isVtMultiTaskRequest(newCallType)) {
            triggerOrQueueVtMultiTask(newCallType);
            return;
        }
        int eventType = newCallType == 8 ? 10 : 6;
        logi("eventType =" + eventType);
        Message newMsg = this.mHandler.obtainMessage(eventType, msg);
        if (this.mCallModifyRequest == null) {
            if (!isSupportModifyConnectionType(newMsg, newCallType)) {
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
        Rlog.e(LOG_TAG, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending mCallModifyRequest=" + this.mCallModifyRequest);
        RuntimeException ex = new RuntimeException("Pending mCallModifyRequest so not sending modify request down");
        if (msg != null) {
            AsyncResult.forMessage(msg, (Object) null, ex);
            msg.sendToTarget();
        }
    }

    public void requestLteInfo(int enableReport, int threshold, Message result) {
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null) {
            imsRIL.requestGetLteInfo(enableReport, threshold, result);
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
        this.mCallModifyRequest = callModify;
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null) {
            imsRIL.modifyCallInitiate(newMsg, callModify);
        }
    }

    private void modifyCallUpgradeCancel(Message newMsg, int newCallType, Map<String, String> newExtras) {
        logi("modifyCallUpgradeCancel, newCallType=" + newCallType);
        if (!ImsCallProviderUtils.isValidRilModifyCallType(newCallType)) {
            loge("modifyCallUpgradeCancel not a Valid RilCallType" + newCallType);
            return;
        }
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null) {
            imsRIL.modifyCallUpgradeCancel(newMsg, this.mIndex);
        }
    }

    private boolean isValidCallModifyConfirmRequest(int callType) {
        if (this.mCallModifyRequest == null) {
            loge("mCallModifyRequest is null");
            return false;
        }
        if (ImsCallProviderUtils.isVtUpgradeCallType(this.mHwImsCallSessionImpl.getInternalCallType(), this.mCallModifyRequest.mDestCallProfiles.getCallType(), callType) || callType == this.mCallModifyRequest.mDestCallProfiles.getCallType()) {
            return true;
        }
        loge("here is the else switch");
        return false;
    }

    public void acceptConnectionTypeChange(int callType, Map<String, String> newExtras) {
        Rlog.i(LOG_TAG, "Confirming call type change request: " + this.mCallModifyRequest);
        if (!isValidCallModifyConfirmRequest(callType)) {
            loge("acceptConnectionTypeChange: MODIFY_CALL_CONFIRM called with invalid calltype " + callType);
            rejectConnectionTypeChange();
            return;
        }
        CallModify callModify = this.mCallModifyRequest;
        if (callModify == null) {
            return;
        }
        callModify.mDestCallProfiles.setCallType(callType);
        if (newExtras != null) {
            this.mCallModifyRequest.mDestCallProfiles.setExtrasFromMap(newExtras);
        }
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null) {
            imsRIL.modifyCallConfirm(null, this.mCallModifyRequest);
        }
        this.mCallModifyRequest = null;
    }

    public void rejectConnectionTypeChange() {
        if (this.mCallModifyRequest == null) {
            Rlog.e(LOG_TAG, "rejectConnectionTypeChange mCallModifyRequest is null");
            return;
        }
        CallModify callModify = new CallModify(this.mHwImsCallSessionImpl.getImsCallProfile(), this.mCallModifyRequest.mCallIndex);
        Rlog.i(LOG_TAG, "Rejecting Change request: " + this.mCallModifyRequest + " keep as " + callModify);
        ImsRIL imsRIL = this.mCi;
        if (imsRIL != null) {
            imsRIL.modifyCallConfirm(null, callModify);
        }
        this.mCallModifyRequest = null;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
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
                    ImsCallAdapter.this.logi("EVENT_MODIFY_CALL_CONFIRM_DONE received");
                    ImsCallAdapter.this.clearPendingModify();
                    ImsCallAdapter.this.processPendingVtMultiTask();
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
            ImsCallAdapter.this.logi("EVENT_MODIFY_CALL_INITIATE_DONE received");
            handleModifyCallActionMessage(msg, 0);
        }

        private void onVideoPauseDone(Message msg) {
            ImsCallAdapter.this.logi("EVENT_VIDEO_PAUSE_DONE received");
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar == null) {
                ImsCallAdapter.this.loge("Error EVENT_VIDEO_PAUSE_DONE ar is null");
                return;
            }
            if (ar.exception == null) {
                if (ImsCallAdapter.this.mCallModifyRequest != null) {
                    ImsCallAdapter imsCallAdapter = ImsCallAdapter.this;
                    imsCallAdapter.mIsLocallyPaused = imsCallAdapter.mCallModifyRequest.mDestCallProfiles.getCallType() == 4;
                }
                ImsCallAdapter.this.clearPendingModify();
                clearMultiTaskRetryCount();
                ImsCallAdapter.this.processPendingVtMultiTask();
                return;
            }
            if (ImsCallAdapter.this.mMultiTaskRetryCount <= 1) {
                ImsCallAdapter.this.loge("Error during video pause so retry");
                ImsCallAdapter.this.mHandler.sendMessageDelayed(ImsCallAdapter.this.mHandler.obtainMessage(9), 3000L);
                ImsCallAdapter.access$708(ImsCallAdapter.this);
            } else {
                ImsCallAdapter.this.logi("Video Pause retry limit reached.");
                clearMultiTaskRetryCount();
                ImsCallAdapter.this.clearPendingModify();
                ImsCallAdapter.this.processPendingVtMultiTask();
            }
        }

        private void onVideoPauseRetry() {
            ImsCallAdapter.this.logi("EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount=" + ImsCallAdapter.this.mMultiTaskRetryCount);
            if (ImsCallAdapter.this.mPendingVtMultiTask != PauseState.NONE) {
                ImsCallAdapter.this.logi("User pressed home/resume during retry so sending out new multitask request");
                ImsCallAdapter.this.clearPendingModify();
                clearMultiTaskRetryCount();
                ImsCallAdapter.this.processPendingVtMultiTask();
                return;
            }
            ImsCallAdapter imsCallAdapter = ImsCallAdapter.this;
            imsCallAdapter.createAndSendMultiTaskRequest(imsCallAdapter.mCallModifyRequest.mDestCallProfiles.getCallType());
        }

        private void onAvpRetry(Message msg) {
            ImsCallAdapter.this.logi("EVENT_AVP_UPGRADE received");
            AsyncResult ar = (AsyncResult) msg.obj;
            if (ar != null && ar.exception != null && (ar.userObj instanceof Boolean)) {
                boolean isNeedToNotifyUser = ((Boolean) ar.userObj).booleanValue();
                if (isNeedToNotifyUser) {
                    ImsCallAdapter.this.loge("AVP Retry error when Voice call was upgraded to video call");
                } else {
                    ImsCallAdapter.this.loge("AVP Retry error when Video call was dialed");
                }
            }
            ImsCallAdapter.this.clearPendingModify();
            ImsCallAdapter.this.processPendingVtMultiTask();
        }

        private void clearMultiTaskRetryCount() {
            ImsCallAdapter.this.logi("Clearing MultiTaskRetryCount from " + ImsCallAdapter.this.mMultiTaskRetryCount + " to 0");
            ImsCallAdapter.this.mMultiTaskRetryCount = 0;
        }

        private void onModifyCallUpgradeCancelDone(Message msg) {
            ImsCallAdapter.this.logi("EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE received");
            handleModifyCallActionMessage(msg, 1);
        }

        private void handleModifyCallActionMessage(Message msg, int actionType) {
            if (msg == null) {
                ImsCallAdapter.this.loge("msg is null during handleModifyCallActionMessage");
                return;
            }
            AsyncResult ar = null;
            if (msg.obj instanceof AsyncResult) {
                ar = (AsyncResult) msg.obj;
            }
            if (ar == null) {
                ImsCallAdapter.this.loge("ar is null during handleModifyCallActionMessage");
                return;
            }
            if (ar.exception != null) {
                ImsCallAdapter.this.loge("videocall error during handleModifyCallActionMessage");
            }
            if (ar.userObj instanceof Message) {
                Message onComplete = (Message) ar.userObj;
                onComplete.arg1 = actionType;
                AsyncResult.forMessage(onComplete, ar.result, ar.exception);
                onComplete.sendToTarget();
            }
            ImsCallAdapter.this.clearPendingModify();
            ImsCallAdapter.this.processPendingVtMultiTask();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logi(String msg) {
        Rlog.i(LOG_TAG, msg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String msg) {
        Rlog.e(LOG_TAG, msg);
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public static class CallModify {
        public static final int E_CANCELLED = 7;
        public static final int E_SUCCESS = 0;
        public static final int E_UNUSED = 16;
        public static final int R_REMOTE = 0;
        public static final int R_RTCP_TIMEOUT = 2;
        public static final int R_RTP_AND_RTCP_TIMEOUT = 3;
        public static final int R_RTP_TIMEOUT = 1;
        private int mCallIndex;
        private ImsCallProfiles mCurrCallProfiles;
        private ImsCallProfiles mDestCallProfiles;
        private int mError;
        private int mModifyReason;

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
            this(currImsCallProfile, destImsCallProfile, callIndex, err, 0);
        }

        public CallModify(ImsCallProfiles currImsCallProfile, ImsCallProfiles destImsCallProfile, int callIndex, int err, int reason) {
            this.mCurrCallProfiles = currImsCallProfile;
            this.mDestCallProfiles = destImsCallProfile;
            this.mCallIndex = callIndex;
            this.mError = err;
            this.mModifyReason = reason;
        }

        public int getModifyReason() {
            return this.mModifyReason;
        }

        public int getCallIndex() {
            return this.mCallIndex;
        }

        public ImsCallProfiles getCurrCallProfiles() {
            return this.mCurrCallProfiles;
        }

        public ImsCallProfiles getDestCallProfiles() {
            return this.mDestCallProfiles;
        }

        public int getError() {
            return this.mError;
        }

        public void setImsCallProfile(ImsCallProfiles imsCallProfiles) {
            this.mDestCallProfiles = new ImsCallProfiles(imsCallProfiles);
        }

        public boolean isFailToModify() {
            int i = this.mError;
            return (i == 16 || i == 0) ? false : true;
        }

        public boolean isModifyByTimeOut() {
            int i = this.mModifyReason;
            return i == 1 || i == 2 || i == 3;
        }

        public String toString() {
            return " " + this.mCallIndex + ", " + this.mCurrCallProfiles + ", " + this.mDestCallProfiles + ", " + this.mError + ", " + this.mModifyReason;
        }

        public boolean isSameModify(CallModify callModify) {
            boolean isImsCallProfileSame = this.mDestCallProfiles.getCallType() == callModify.mDestCallProfiles.getCallType() && this.mDestCallProfiles.getCallDomain() == callModify.mDestCallProfiles.getCallDomain();
            return this.mCallIndex == callModify.mCallIndex && isImsCallProfileSame && this.mModifyReason == callModify.mModifyReason;
        }
    }
}
