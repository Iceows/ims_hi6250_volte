package com.huawei.ims.vt;

import android.net.Uri;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.Message;
import android.telecom.VideoProfile;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.telephony.ims.ImsVideoCallProvider;
import android.view.Surface;
import com.huawei.ims.HwImsCallSessionImpl;
import com.huawei.ims.ImsCallAdapter;
import com.huawei.ims.ImsCallProfiles;
import com.huawei.ims.ImsCallProviderUtils;
import com.huawei.vtproxy.ImsThinClient;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class ImsVTCallProviderImpl extends ImsVideoCallProvider implements HwImsCallSessionImpl.Listener {
    private static final int EVENT_SEND_SESSION_MODIFY_REQUEST_DONE = 0;
    private static final int ORIENTATION_0 = 0;
    private static final String TAG = "ImsVTCallProviderImpl";
    private HwImsCallSessionImpl mCallSession;
    private CameraManager mCameraManager;
    private Handler mHandler;
    private ImsCallAdapter mImsCallAdapter;
    private boolean mIsVideoPaused;
    private MediaManager mMediaManager;
    VideoProfile mRequestProfile;
    VideoProfile mResponseProfile;
    private long mTotalDataUsage = 0;
    private boolean isFristConference = false;
    private ImsThinClient.GetResCallBack mVideoDimensionCB = new ImsThinClient.GetResCallBack() { // from class: com.huawei.ims.vt.ImsVTCallProviderImpl.2
        @Override // com.huawei.vtproxy.ImsThinClient.GetResCallBack
        public void getCurrentDynamicRes(int width, int height) {
            Rlog.d(ImsVTCallProviderImpl.TAG, "video dimension change CallBack,width =" + width + ",height =" + height);
            ImsVTCallProviderImpl.this.changePeerDimensions(width, height);
        }
    };

    public ImsVTCallProviderImpl(HwImsCallSessionImpl callSession, ImsCallAdapter imsCallMod) {
        Rlog.d(TAG, "ImsVideocallProviderImpl instance created,  imsCallMod=" + imsCallMod);
        this.mCallSession = callSession;
        this.mCameraManager = CameraManager.getInstance();
        this.mMediaManager = MediaManager.getInstance();
        this.mImsCallAdapter = imsCallMod;
        ImsThinClient.setGetResCallBack(this.mVideoDimensionCB);
        this.mHandler = new Handler() { // from class: com.huawei.ims.vt.ImsVTCallProviderImpl.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                Rlog.d(ImsVTCallProviderImpl.TAG, "Message received: what = " + msg.what);
                if (msg.what == 0) {
                    ImsVTCallProviderImpl.this.handleSessionModifyRequestDone(msg);
                    return;
                }
                Rlog.d(ImsVTCallProviderImpl.TAG, "Unknown message = " + msg.what);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSessionModifyRequestDone(Message msg) {
        Rlog.d(TAG, "handleSessionModifyRequestDone msg.what=" + msg.what + ",msg.arg1=" + msg.arg1);
        AsyncResult ar = (AsyncResult) msg.obj;
        if (ar != null && ar.exception != null) {
            Rlog.d(TAG, "session modify request failed");
            handleSessionModifyRequest(2);
        } else if (this.mImsCallAdapter != null) {
            int i = msg.arg1;
            ImsCallAdapter imsCallAdapter = this.mImsCallAdapter;
            if (i == 1) {
                Rlog.d(TAG, "session modify request cancel upgrade to video");
                handleSessionModifyRequest(6);
            }
        }
    }

    private void handleSessionModifyRequest(int status) {
        Rlog.d(TAG, "handleSessionModifyRequest,status=" + status);
        this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.mHwImsCallSessionImpl.getInternalCallType(), 4);
        receiveSessionModifyResponse(status, this.mRequestProfile, this.mResponseProfile);
    }

    public void onRequestCallDataUsage() {
    }

    public void onRequestCameraCapabilities() {
        if (VTUtils.isDocomo()) {
            Rlog.d(TAG, "onRequestCameraCapabilities");
            VideoProfile.CameraCapabilities cc = this.mCameraManager.getCameraCapabilities();
            changeCameraCapabilities(cc);
        }
    }

    public void onSendSessionModifyRequest(VideoProfile fromProfile, VideoProfile requestProfile) {
        HwImsCallSessionImpl currentCallSession;
        Rlog.d(TAG, "onSendSessionModifyRequest");
        if (fromProfile == null || requestProfile == null) {
            Rlog.e(TAG, "fromProfile or requestProfile is null when onSendSessionModifyRequest");
            return;
        }
        if (VideoProfile.isAudioOnly(fromProfile.getVideoState())) {
            Rlog.d(TAG, "onSendSessionModifyRequest: video state is audio.");
            this.mIsVideoPaused = false;
        }
        this.mRequestProfile = requestProfile;
        if (isVideoPauseRequested(requestProfile)) {
            Rlog.d(TAG, "onSendSessionModifyRequest pause start, mIsVideoPaused is: " + this.mIsVideoPaused);
            if (!this.mIsVideoPaused) {
                ImsThinClient.pauseVideo();
                this.mIsVideoPaused = true;
                return;
            }
            return;
        }
        if (this.mIsVideoPaused) {
            Rlog.d(TAG, "onSendSessionModifyRequest resume start");
            ImsThinClient.resumeVideo();
            this.mIsVideoPaused = false;
            if (this.mCameraManager.isBgVideoCallShouldResume() && (currentCallSession = this.mCameraManager.getCureentCallSessionImp()) != null) {
                int callType = currentCallSession.getInternalCallType();
                int direction = RTPController.convertCallTypeToDirection(callType);
                int result = RTPController.resumeRTPStream(direction);
                Rlog.d(TAG, "onSendSessionModifyRequest resumeRTP " + result);
                return;
            }
            return;
        }
        Rlog.d(TAG, "onSendSessionModifyRequest changeConnection start");
        if (fromProfile.getVideoState() == requestProfile.getVideoState()) {
            Rlog.e(TAG, "onSendSessionModifyRequest source video state is the same with destination!");
            return;
        }
        Message newMsg = this.mHandler.obtainMessage(0);
        int callType2 = ImsCallProviderUtils.convertVideoStateToCallType(requestProfile.getVideoState());
        this.mImsCallAdapter.changeConnectionType(newMsg, callType2, null);
    }

    private boolean isVideoPauseRequested(VideoProfile requestProfile) {
        Rlog.d(TAG, "isVideoPauseRequested requestProfile=" + requestProfile);
        return VideoProfile.isPaused(requestProfile.getVideoState());
    }

    public void onSendSessionModifyResponse(VideoProfile responseProfile) {
        if (responseProfile == null || this.mCallSession == null || this.mCallSession.getImsCallProfile() == null) {
            Rlog.w(TAG, "onSendSessionModifyResponse, some information is missing, rejectConnectionTypeChange");
            this.mImsCallAdapter.rejectConnectionTypeChange();
            return;
        }
        Rlog.d(TAG, "onSendSessionModifyResponse responseProfile=" + responseProfile);
        int callType = ImsCallProviderUtils.convertVideoStateToCallType(responseProfile.getVideoState());
        if (this.mCallSession.getImsCallProfile().call_type == callType) {
            Rlog.d(TAG, "rejectConnectionTypeChange");
            this.mImsCallAdapter.rejectConnectionTypeChange();
        } else {
            Rlog.d(TAG, "acceptConnectionTypeChange");
            this.mImsCallAdapter.acceptConnectionTypeChange(callType, null);
        }
    }

    public void onSetCamera(String cameraId) {
        Rlog.d(TAG, "onSetCamera, cameraId is: " + cameraId);
        if (cameraId != null) {
            if (!VTUtils.isVTSupported() || this.mCallSession == null) {
                Rlog.d(TAG, "onSetCamera, precondition=false");
                return;
            } else {
                this.mCameraManager.open(cameraId, getCallSession());
                return;
            }
        }
        this.mCameraManager.close(getCallSession(), false);
    }

    public void onSetPreviewSurface(Surface surface) {
        Rlog.d(TAG, "onSetPreviewSurface, surface is: " + surface);
        this.mCameraManager.setPreviewSurface(surface);
    }

    public void onSetDisplaySurface(Surface surface) {
        HwImsCallSessionImpl currentCallSession;
        Rlog.d(TAG, "onSetDisplaySurface, surface is: " + surface);
        boolean isSurfaceSet = this.mMediaManager.setDisplaySurface(surface);
        if (isSurfaceSet && (currentCallSession = this.mCameraManager.getCureentCallSessionImp()) != null) {
            ImsCallProfile cp = currentCallSession.getCallProfile();
            int currentCallType = ImsCallProviderUtils.convertToInternalCallType(cp.mCallType);
            boolean isVideoCallType = ImsCallProviderUtils.isVideoCall(currentCallType);
            if (isVideoCallType) {
                Rlog.d(TAG, "onSetDisplaySurface: modifyRTPStreamDirection, currentCallType:" + currentCallType);
                modifyRTPStreamDirection(3, currentCallType);
                modifyRTPStreamDirection(0, currentCallType);
            }
        }
    }

    public void onSetDeviceOrientation(int rotation) {
        Rlog.d(TAG, "onSetDeviceOrientation, rotation is: " + rotation);
        this.mMediaManager.setDeviceOrientation(rotation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HwImsCallSessionImpl getCallSession() {
        return this.mCallSession;
    }

    public void onSetPauseImage(Uri arg0) {
    }

    public void onSetZoom(float arg0) {
    }

    public void sendCameraStatus(boolean hasFailed) {
        Rlog.d(TAG, "sendCameraStatus, hasFailed is: " + hasFailed);
        int status = hasFailed ? 5 : 6;
        if (VTUtils.isDocomo() && !hasFailed) {
            this.mMediaManager.setDeviceOrientation(0);
        }
        handleCallSessionEvent(status);
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onDisconnected(HwImsCallSessionImpl session) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onClosed(HwImsCallSessionImpl session) {
        Rlog.i(TAG, "onClosed");
        this.mCallSession = null;
        this.mCameraManager.close(session, true);
        this.mCameraManager.cleanPreStatus();
        this.mMediaManager.cleanPreStatus();
        Rlog.i(TAG, "onClosed end");
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onUnsolCallModify(HwImsCallSessionImpl session, ImsCallAdapter.CallModify callModify) {
        Rlog.d(TAG, "onUnsolCallModify,  callModify= " + callModify);
        int newVideoState = ImsCallProviderUtils.convertCallTypeToVideoState(callModify.dest_call_details.call_type);
        VideoProfile vcp = new VideoProfile(newVideoState, 4);
        if (callModify.findError()) {
            int uiError = ImsCallProviderUtils.convertImsErrorToUiError(callModify.error);
            receiveSessionModifyResponse(uiError, vcp, null);
            return;
        }
        if (callModify.modifyByTimeOut()) {
            Rlog.d(TAG, "modifyByTimeOut , modify_reason is " + callModify.modify_reason);
            int uiError2 = ImsCallProviderUtils.convertImsErrorToUiError(callModify.modify_reason);
            receiveSessionModifyResponse(uiError2, vcp, null);
            return;
        }
        this.mRequestProfile = vcp;
        receiveSessionModifyRequest(vcp);
        if (VideoProfile.isAudioOnly(newVideoState)) {
            Rlog.d(TAG, "onUnsolCallModify, videostate=audio");
            this.mIsVideoPaused = false;
        }
    }

    public void handleModifyCallResult(int result) {
        Rlog.d(TAG, "handleModifyCallResult, result is: " + result);
        if (result == 0) {
            Rlog.d(TAG, "receiveSessionModifyResponse modify success");
            this.mResponseProfile = this.mRequestProfile;
            if (this.mResponseProfile == null) {
                Rlog.e(TAG, "illegal process! mResponseProfile is null.");
                return;
            } else {
                modifyRTPStreamForTwoWayAndOneWaySwap();
                receiveSessionModifyResponse(1, this.mRequestProfile, this.mResponseProfile);
                return;
            }
        }
        if (18919 == result) {
            Rlog.d(TAG, "receiveSessionModifyResponse modify time out");
            this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.mHwImsCallSessionImpl.getInternalCallType(), 4);
            receiveSessionModifyResponse(4, this.mRequestProfile, this.mResponseProfile);
        } else if (18920 == result) {
            Rlog.d(TAG, "receiveSessionModifyResponse modify rejected");
            this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.mHwImsCallSessionImpl.getInternalCallType(), 4);
            receiveSessionModifyResponse(5, this.mRequestProfile, this.mResponseProfile);
        } else {
            Rlog.d(TAG, "receiveSessionModifyResponse modify failed");
            this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.mHwImsCallSessionImpl.getInternalCallType(), 4);
            receiveSessionModifyResponse(2, this.mRequestProfile, this.mResponseProfile);
        }
    }

    public void onCallDataUsageChanged(long addCallDataUsage) {
        if (this.mCallSession == null) {
            return;
        }
        Rlog.d(TAG, "mCallSession.isMultiparty()=" + this.mCallSession.isMultiparty());
        if (this.mCallSession.isMultiparty() && !this.isFristConference) {
            Rlog.d(TAG, "isfirstConference");
            this.mTotalDataUsage = VTUtils.getTotalCallDataUsage() + addCallDataUsage;
            this.isFristConference = true;
        } else {
            Rlog.d(TAG, "Normal process");
            this.mTotalDataUsage += addCallDataUsage;
        }
        VTUtils.setTotalCallDataUsage(this.mTotalDataUsage);
        Rlog.d(TAG, "mTotalDataUsage" + this.mTotalDataUsage);
        changeCallDataUsage(this.mTotalDataUsage);
    }

    private void modifyRTPStreamForTwoWayAndOneWaySwap() {
        if (ImsCallProviderUtils.isVilteEnhancementSupported() && this.mCallSession != null) {
            ImsCallProfiles imsCallProfile = this.mCallSession.getImsCallProfile();
            if (imsCallProfile == null || this.mResponseProfile == null) {
                Rlog.e(TAG, "handleModifyCallResult imsCallProfile or mResponseProfile is null!");
                return;
            }
            int currentCallType = imsCallProfile.call_type;
            int newVideoState = this.mResponseProfile.getVideoState();
            int newCallType = ImsCallProviderUtils.convertVideoStateToCallType(newVideoState);
            Rlog.d(TAG, "mResponseProfile = " + this.mResponseProfile.toString());
            if (isVTDowngradeToOneWayCall(currentCallType, newCallType)) {
                Rlog.d(TAG, "modifyRTPStreamForTwoWayAndOneWaySwap TwoWay downgrade oneway");
                modifyRTPStreamDirection(currentCallType, newCallType);
            } else if (isOneWayCallUpgradeToVT(currentCallType, newCallType)) {
                Rlog.d(TAG, "modifyRTPStreamForTwoWayAndOneWaySwap oneway updategrade twoWay");
                modifyRTPStreamDirection(currentCallType, newCallType);
            }
        }
    }

    private void modifyRTPStreamDirection(int currentCallType, int newCallType) {
        int oldDirection = RTPController.convertCallTypeToDirection(currentCallType);
        int newDirection = RTPController.convertCallTypeToDirection(newCallType);
        int ret = RTPController.modifyRTPStreamDirection(oldDirection, newDirection);
        if (ret != -1) {
            Rlog.e(TAG, "pauseOrResumeRTPStream failed!");
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionHold(HwImsCallSessionImpl session, boolean mtHold) {
        if (session == null) {
            Rlog.d(TAG, "onCallSessionHold::session is null , just return");
        } else {
            this.mCameraManager.setCallSessionHold(session, mtHold);
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionResumed(HwImsCallSessionImpl session, boolean mtResume) {
        if (session == null) {
            Rlog.d(TAG, "onCallSessionResumed session is null , just return");
        } else {
            this.mCameraManager.setCallSessionResumed(session, mtResume);
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionStarted(HwImsCallSessionImpl session) {
        if (session == null) {
            Rlog.d(TAG, "onCallSessionStarted session is null , just return");
        } else {
            this.mCameraManager.setCurrentSessionStarted(session);
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionMerged() {
        this.mCameraManager.setCurrentSessionMerged();
    }

    private boolean isVTDowngradeToOneWayCall(int currentCallType, int newCallType) {
        return currentCallType == 3 && (newCallType == 2 || newCallType == 1);
    }

    private boolean isOneWayCallUpgradeToVT(int currentCallType, int newCallType) {
        return newCallType == 3 && (currentCallType == 2 || currentCallType == 1);
    }

    public boolean isVideoPaused() {
        return this.mIsVideoPaused;
    }
}
