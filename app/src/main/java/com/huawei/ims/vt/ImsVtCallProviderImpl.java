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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsVtCallProviderImpl extends ImsVideoCallProvider implements HwImsCallSessionImpl.Listener {
    private static final int EVENT_SEND_SESSION_MODIFY_REQUEST_DONE = 0;
    private static final int INVALID_RTPSTREAMDIRECTION = -1;
    private static final int ORIENTATION_0 = 0;
    private static final String TAG = "ImsVtCallProviderImpl";
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

    public ImsVtCallProviderImpl(HwImsCallSessionImpl callSession, ImsCallAdapter imsCallMod) {
        Rlog.i(TAG, "ImsVtCallProviderImpl instance created,  imsCallMod=" + imsCallMod);
        this.mCallSession = callSession;
        this.mCameraManager = CameraManager.getInstance();
        this.mMediaManager = MediaManager.getInstance();
        this.mImsCallAdapter = imsCallMod;
        ImsThinClient.setGetResCallBack(ImsVtGlobals.getVideoDimensionCallBack());
        this.mHandler = new Handler() { // from class: com.huawei.ims.vt.ImsVtCallProviderImpl.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                Rlog.i(ImsVtCallProviderImpl.TAG, "Message received: what = " + msg.what);
                if (msg.what == 0) {
                    ImsVtCallProviderImpl.this.handleSessionModifyRequestDone(msg);
                    return;
                }
                Rlog.i(ImsVtCallProviderImpl.TAG, "Unknown message = " + msg.what);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSessionModifyRequestDone(Message msg) {
        Rlog.i(TAG, "handleSessionModifyRequestDone msg.what=" + msg.what + ", msg.arg1=" + msg.arg1);
        AsyncResult ar = null;
        if (msg.obj instanceof AsyncResult) {
            ar = (AsyncResult) msg.obj;
        }
        if (ar != null && ar.exception != null) {
            Rlog.i(TAG, "session modify request failed");
            handleSessionModifyRequest(2);
            return;
        }
        if (this.mImsCallAdapter != null) {
            int i = msg.arg1;
            ImsCallAdapter imsCallAdapter = this.mImsCallAdapter;
            if (i == 1) {
                Rlog.i(TAG, "session modify request cancel upgrade to video");
                handleSessionModifyRequest(6);
                return;
            }
        }
        Rlog.e(TAG, "handleSessionModifyRequestDone error branch");
    }

    private void handleSessionModifyRequest(int status) {
        Rlog.i(TAG, "handleSessionModifyRequest, status=" + status);
        this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.getHwImsCallSessionImpl().getInternalCallType(), 4);
        receiveSessionModifyResponse(status, this.mRequestProfile, this.mResponseProfile);
    }

    public void onRequestCallDataUsage() {
    }

    public void onRequestCameraCapabilities() {
        if (VtUtils.isDocomo()) {
            Rlog.i(TAG, "onRequestCameraCapabilities");
            VideoProfile.CameraCapabilities cc = this.mCameraManager.getCameraCapabilities();
            changeCameraCapabilities(cc);
        }
    }

    public void onSendSessionModifyRequest(VideoProfile fromProfile, VideoProfile requestProfile) {
        HwImsCallSessionImpl currentCallSession;
        Rlog.i(TAG, "onSendSessionModifyRequest");
        if (fromProfile == null || requestProfile == null) {
            Rlog.e(TAG, "fromProfile or requestProfile is null when onSendSessionModifyRequest");
            return;
        }
        if (VideoProfile.isAudioOnly(fromProfile.getVideoState())) {
            Rlog.i(TAG, "onSendSessionModifyRequest: video state is audio.");
            this.mIsVideoPaused = false;
        }
        this.mRequestProfile = requestProfile;
        if (isVideoPauseRequested(requestProfile)) {
            Rlog.i(TAG, "onSendSessionModifyRequest pause start, mIsVideoPaused is: " + this.mIsVideoPaused);
            if (!this.mIsVideoPaused) {
                ImsThinClient.pauseVideo();
                this.mIsVideoPaused = true;
                return;
            }
            return;
        }
        if (this.mIsVideoPaused) {
            Rlog.i(TAG, "onSendSessionModifyRequest resume start");
            ImsThinClient.resumeVideo();
            this.mIsVideoPaused = false;
            if (this.mCameraManager.isBgVideoCallShouldResume() && (currentCallSession = this.mCameraManager.getCurrentCallSessionImp()) != null) {
                int callType = currentCallSession.getInternalCallType();
                int direction = RtpController.convertCallTypeToDirection(callType);
                int result = RtpController.resumeRtpStream(direction);
                Rlog.i(TAG, "onSendSessionModifyRequest resumeRTP " + result);
                return;
            }
            return;
        }
        Rlog.i(TAG, "onSendSessionModifyRequest changeConnection start");
        if (fromProfile.getVideoState() == requestProfile.getVideoState()) {
            Rlog.e(TAG, "onSendSessionModifyRequest source video state is the same with destination!");
            return;
        }
        Message newMsg = this.mHandler.obtainMessage(0);
        int callType2 = ImsCallProviderUtils.convertVideoStateToCallType(requestProfile.getVideoState());
        this.mImsCallAdapter.changeConnectionType(newMsg, callType2, null);
    }

    private boolean isVideoPauseRequested(VideoProfile requestProfile) {
        Rlog.i(TAG, "isVideoPauseRequested requestProfile=" + requestProfile);
        return VideoProfile.isPaused(requestProfile.getVideoState());
    }

    public void onSendSessionModifyResponse(VideoProfile responseProfile) {
        HwImsCallSessionImpl hwImsCallSessionImpl;
        if (responseProfile == null || (hwImsCallSessionImpl = this.mCallSession) == null || hwImsCallSessionImpl.getImsCallProfile() == null) {
            Rlog.w(TAG, "onSendSessionModifyResponse, some information is missing, rejectConnectionTypeChange");
            this.mImsCallAdapter.rejectConnectionTypeChange();
            return;
        }
        Rlog.i(TAG, "onSendSessionModifyResponse responseProfile=" + responseProfile);
        int callType = ImsCallProviderUtils.convertVideoStateToCallType(responseProfile.getVideoState());
        if (this.mCallSession.getImsCallProfile().getCallType() == callType) {
            Rlog.i(TAG, "rejectConnectionTypeChange");
            this.mImsCallAdapter.rejectConnectionTypeChange();
        } else {
            Rlog.i(TAG, "acceptConnectionTypeChange");
            this.mImsCallAdapter.acceptConnectionTypeChange(callType, null);
        }
    }

    public void onSetCamera(String cameraId) {
        Rlog.i(TAG, "onSetCamera, cameraId is: " + cameraId);
        if (cameraId != null) {
            if (!VtUtils.isVtSupported() || this.mCallSession == null) {
                Rlog.i(TAG, "onSetCamera, precondition=false");
                return;
            } else {
                this.mCameraManager.open(cameraId, getCallSession());
                return;
            }
        }
        this.mCameraManager.close(getCallSession(), false);
    }

    public void onSetPreviewSurface(Surface surface) {
        Rlog.i(TAG, "onSetPreviewSurface, surface is: " + surface);
        this.mCameraManager.setPreviewSurface(surface);
    }

    public void onSetDisplaySurface(Surface surface) {
        HwImsCallSessionImpl currentCallSession;
        Rlog.i(TAG, "onSetDisplaySurface, surface is: " + surface);
        boolean isSurfaceSet = this.mMediaManager.isSetDisplaySurface(surface);
        if (isSurfaceSet && (currentCallSession = this.mCameraManager.getCurrentCallSessionImp()) != null) {
            ImsCallProfile cp = currentCallSession.getCallProfile();
            int currentCallType = ImsCallProviderUtils.convertToInternalCallType(cp.mCallType);
            boolean isVideoCallType = ImsCallProviderUtils.isVideoCall(currentCallType);
            if (isVideoCallType) {
                Rlog.i(TAG, "onSetDisplaySurface: modifyRtpStreamDirection, currentCallType:" + currentCallType);
                modifyRtpStreamDirection(3, currentCallType);
                modifyRtpStreamDirection(0, currentCallType);
            }
        }
    }

    public void onSetDeviceOrientation(int rotation) {
        Rlog.i(TAG, "onSetDeviceOrientation, rotation is: " + rotation);
        this.mMediaManager.setDeviceOrientation(rotation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HwImsCallSessionImpl getCallSession() {
        return this.mCallSession;
    }

    public void onSetPauseImage(Uri arg0) {
        this.mCameraManager.setPauseImage(arg0);
    }

    public void onSetZoom(float arg0) {
    }

    public void sendCameraStatus(boolean isFailed) {
        int status;
        Rlog.i(TAG, "sendCameraStatus, isFailed is: " + isFailed);
        if (isFailed) {
            status = 5;
        } else {
            status = 6;
        }
        if (VtUtils.isDocomo() && !isFailed) {
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
        if (callModify == null) {
            return;
        }
        Rlog.i(TAG, "onUnsolCallModify,  callModify= " + callModify);
        int newVideoState = ImsCallProviderUtils.convertCallTypeToVideoState(callModify.getDestCallProfiles().getCallType());
        VideoProfile vcp = new VideoProfile(newVideoState, 4);
        if (callModify.isFailToModify()) {
            int uiError = ImsCallProviderUtils.convertImsErrorToUiError(callModify.getError());
            receiveSessionModifyResponse(uiError, vcp, null);
            return;
        }
        if (callModify.isModifyByTimeOut()) {
            Rlog.i(TAG, "modifyByTimeOut , modifyReason is " + callModify.getModifyReason());
            int uiError2 = ImsCallProviderUtils.convertImsErrorToUiError(callModify.getModifyReason());
            receiveSessionModifyResponse(uiError2, vcp, null);
            return;
        }
        this.mRequestProfile = vcp;
        receiveSessionModifyRequest(vcp);
        if (VideoProfile.isAudioOnly(newVideoState)) {
            Rlog.i(TAG, "onUnsolCallModify, videostate=audio");
            this.mIsVideoPaused = false;
        }
    }

    public void handleModifyCallResult(int result) {
        Rlog.i(TAG, "handleModifyCallResult, result is: " + result);
        if (result == 0) {
            Rlog.i(TAG, "receiveSessionModifyResponse modify success");
            this.mResponseProfile = this.mRequestProfile;
            if (this.mResponseProfile == null) {
                Rlog.e(TAG, "illegal process! mResponseProfile is null.");
                return;
            } else {
                modifyRtpStreamForTwoWayAndOneWaySwap();
                receiveSessionModifyResponse(1, this.mRequestProfile, this.mResponseProfile);
                return;
            }
        }
        if (result == 18919) {
            Rlog.i(TAG, "receiveSessionModifyResponse modify time out");
            this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.getHwImsCallSessionImpl().getInternalCallType(), 4);
            receiveSessionModifyResponse(4, this.mRequestProfile, this.mResponseProfile);
        } else if (result == 18920) {
            Rlog.i(TAG, "receiveSessionModifyResponse modify rejected");
            this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.getHwImsCallSessionImpl().getInternalCallType(), 4);
            receiveSessionModifyResponse(5, this.mRequestProfile, this.mResponseProfile);
        } else {
            Rlog.i(TAG, "receiveSessionModifyResponse modify failed");
            this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.getHwImsCallSessionImpl().getInternalCallType(), 4);
            receiveSessionModifyResponse(2, this.mRequestProfile, this.mResponseProfile);
        }
    }

    public void onCallDataUsageChanged(long addCallDataUsage) {
        if (this.mCallSession == null) {
            return;
        }
        Rlog.i(TAG, "mCallSession.isMultiparty()=" + this.mCallSession.isMultiparty());
        if (this.mCallSession.isMultiparty() && !this.isFristConference) {
            Rlog.i(TAG, "isfirstConference");
            this.mTotalDataUsage = VtUtils.getTotalCallDataUsage() + addCallDataUsage;
            this.isFristConference = true;
        } else {
            Rlog.i(TAG, "Normal process");
            this.mTotalDataUsage += addCallDataUsage;
        }
        VtUtils.setTotalCallDataUsage(this.mTotalDataUsage);
        Rlog.i(TAG, "mTotalDataUsage" + this.mTotalDataUsage);
        changeCallDataUsage(this.mTotalDataUsage);
    }

    private void modifyRtpStreamForTwoWayAndOneWaySwap() {
        HwImsCallSessionImpl hwImsCallSessionImpl;
        if (ImsCallProviderUtils.isVilteEnhancementSupported() && (hwImsCallSessionImpl = this.mCallSession) != null) {
            ImsCallProfiles imsCallProfile = hwImsCallSessionImpl.getImsCallProfile();
            if (imsCallProfile == null || this.mResponseProfile == null) {
                Rlog.e(TAG, "handleModifyCallResult imsCallProfile or mResponseProfile is null!");
                return;
            }
            int currentCallType = imsCallProfile.getCallType();
            int newVideoState = this.mResponseProfile.getVideoState();
            int newCallType = ImsCallProviderUtils.convertVideoStateToCallType(newVideoState);
            Rlog.i(TAG, "mResponseProfile = " + this.mResponseProfile.toString());
            if (isVtDowngradeToOneWayCall(currentCallType, newCallType)) {
                Rlog.i(TAG, "modifyRtpStreamForTwoWayAndOneWaySwap TwoWay downgrade oneway");
                modifyRtpStreamDirection(currentCallType, newCallType);
            } else if (isOneWayCallUpgradeToVt(currentCallType, newCallType)) {
                Rlog.i(TAG, "modifyRtpStreamForTwoWayAndOneWaySwap oneway updategrade twoWay");
                modifyRtpStreamDirection(currentCallType, newCallType);
            } else {
                Rlog.e(TAG, "modifyRtpStreamForTwoWayAndOneWaySwap error branch");
            }
        }
    }

    private void modifyRtpStreamDirection(int currentCallType, int newCallType) {
        int oldDirection = RtpController.convertCallTypeToDirection(currentCallType);
        int newDirection = RtpController.convertCallTypeToDirection(newCallType);
        int ret = RtpController.modifyRtpStreamDirection(oldDirection, newDirection);
        if (ret != -1) {
            Rlog.e(TAG, "pauseOrResumeRTPStream failed!");
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionHold(HwImsCallSessionImpl session, boolean isMtHold) {
        if (session == null) {
            Rlog.e(TAG, "onCallSessionHold::session is null, just return");
        } else {
            this.mCameraManager.setCallSessionHold(session, isMtHold);
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionResumed(HwImsCallSessionImpl session, boolean isMtResume) {
        if (session == null) {
            Rlog.e(TAG, "onCallSessionResumed session is null, just return");
        } else {
            this.mCameraManager.setCallSessionResumed(session, isMtResume);
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionStarted(HwImsCallSessionImpl session) {
        if (session == null) {
            Rlog.e(TAG, "onCallSessionStarted session is null, just return");
        } else {
            this.mCameraManager.setCurrentSessionStarted(session);
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionMerged() {
        this.mCameraManager.setCurrentSessionMerged();
    }

    private boolean isVtDowngradeToOneWayCall(int currentCallType, int newCallType) {
        return currentCallType == 3 && (newCallType == 2 || newCallType == 1);
    }

    private boolean isOneWayCallUpgradeToVt(int currentCallType, int newCallType) {
        return newCallType == 3 && (currentCallType == 2 || currentCallType == 1);
    }

    public boolean isVideoPaused() {
        return this.mIsVideoPaused;
    }
}
