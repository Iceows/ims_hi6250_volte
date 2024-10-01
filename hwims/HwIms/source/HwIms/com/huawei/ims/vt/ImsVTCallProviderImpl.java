package com.huawei.ims.vt;

import android.net.Uri;
import android.os.AsyncResult;
import android.os.Handler;
import android.os.Message;
import android.telecom.VideoProfile;
import android.telephony.Rlog;
import android.telephony.ims.ImsVideoCallProvider;
import android.view.Surface;
import com.huawei.ims.HwImsCallSessionImpl;
import com.huawei.ims.ImsCallAdapter;
import com.huawei.ims.ImsCallProfiles;
import com.huawei.ims.ImsCallProviderUtils;
import com.huawei.vtproxy.ImsThinClient;

/* loaded from: ImsVTCallProviderImpl.class */
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
        public void getCurrentDynamicRes(int i, int i2) {
            Rlog.d(ImsVTCallProviderImpl.TAG, "video dimension change CallBack,width =" + i + ",height =" + i2);
            ImsVTCallProviderImpl.this.changePeerDimensions(i, i2);
        }
    };

    public ImsVTCallProviderImpl(HwImsCallSessionImpl hwImsCallSessionImpl, ImsCallAdapter imsCallAdapter) {
        Rlog.d(TAG, "ImsVideocallProviderImpl instance created,  imsCallMod=" + imsCallAdapter);
        this.mCallSession = hwImsCallSessionImpl;
        this.mCameraManager = CameraManager.getInstance();
        this.mMediaManager = MediaManager.getInstance();
        this.mImsCallAdapter = imsCallAdapter;
        ImsThinClient.setGetResCallBack(this.mVideoDimensionCB);
        this.mHandler = new Handler() { // from class: com.huawei.ims.vt.ImsVTCallProviderImpl.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Rlog.d(ImsVTCallProviderImpl.TAG, "Message received: what = " + message.what);
                if (message.what == 0) {
                    ImsVTCallProviderImpl.this.handleSessionModifyRequestDone(message);
                    return;
                }
                Rlog.d(ImsVTCallProviderImpl.TAG, "Unknown message = " + message.what);
            }
        };
    }

    private void handleSessionModifyRequest(int i) {
        Rlog.d(TAG, "handleSessionModifyRequest,status=" + i);
        this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.mHwImsCallSessionImpl.getInternalCallType(), 4);
        receiveSessionModifyResponse(i, this.mRequestProfile, this.mResponseProfile);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSessionModifyRequestDone(Message message) {
        Rlog.d(TAG, "handleSessionModifyRequestDone msg.what=" + message.what + ",msg.arg1=" + message.arg1);
        AsyncResult asyncResult = (AsyncResult) message.obj;
        if (asyncResult != null && asyncResult.exception != null) {
            Rlog.d(TAG, "session modify request failed");
            handleSessionModifyRequest(2);
        } else if (this.mImsCallAdapter != null) {
            int i = message.arg1;
            ImsCallAdapter imsCallAdapter = this.mImsCallAdapter;
            if (i == 1) {
                Rlog.d(TAG, "session modify request cancel upgrade to video");
                handleSessionModifyRequest(6);
            }
        }
    }

    private boolean isOneWayCallUpgradeToVT(int i, int i2) {
        boolean z = true;
        if (i2 != 3 || (i != 2 && i != 1)) {
            z = false;
        }
        return z;
    }

    private boolean isVTDowngradeToOneWayCall(int i, int i2) {
        boolean z = true;
        if (i != 3 || (i2 != 2 && i2 != 1)) {
            z = false;
        }
        return z;
    }

    private boolean isVideoPauseRequested(VideoProfile videoProfile) {
        Rlog.d(TAG, "isVideoPauseRequested requestProfile=" + videoProfile);
        return VideoProfile.isPaused(videoProfile.getVideoState());
    }

    private void modifyRTPStreamDirection(int i, int i2) {
        if (RTPController.modifyRTPStreamDirection(RTPController.convertCallTypeToDirection(i), RTPController.convertCallTypeToDirection(i2)) != -1) {
            Rlog.e(TAG, "pauseOrResumeRTPStream failed!");
        }
    }

    private void modifyRTPStreamForTwoWayAndOneWaySwap() {
        if (!ImsCallProviderUtils.isVilteEnhancementSupported() || this.mCallSession == null) {
            return;
        }
        ImsCallProfiles imsCallProfile = this.mCallSession.getImsCallProfile();
        if (imsCallProfile == null || this.mResponseProfile == null) {
            Rlog.e(TAG, "handleModifyCallResult imsCallProfile or mResponseProfile is null!");
            return;
        }
        int i = imsCallProfile.call_type;
        int convertVideoStateToCallType = ImsCallProviderUtils.convertVideoStateToCallType(this.mResponseProfile.getVideoState());
        Rlog.d(TAG, "mResponseProfile = " + this.mResponseProfile.toString());
        if (isVTDowngradeToOneWayCall(i, convertVideoStateToCallType)) {
            Rlog.d(TAG, "modifyRTPStreamForTwoWayAndOneWaySwap TwoWay downgrade oneway");
            modifyRTPStreamDirection(i, convertVideoStateToCallType);
        } else if (isOneWayCallUpgradeToVT(i, convertVideoStateToCallType)) {
            Rlog.d(TAG, "modifyRTPStreamForTwoWayAndOneWaySwap oneway updategrade twoWay");
            modifyRTPStreamDirection(i, convertVideoStateToCallType);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HwImsCallSessionImpl getCallSession() {
        return this.mCallSession;
    }

    public void handleModifyCallResult(int i) {
        Rlog.d(TAG, "handleModifyCallResult, result is: " + i);
        if (i == 0) {
            Rlog.d(TAG, "receiveSessionModifyResponse modify success");
            this.mResponseProfile = this.mRequestProfile;
            if (this.mResponseProfile == null) {
                Rlog.e(TAG, "illegal process! mResponseProfile is null.");
                return;
            }
            modifyRTPStreamForTwoWayAndOneWaySwap();
            receiveSessionModifyResponse(1, this.mRequestProfile, this.mResponseProfile);
        } else if (18919 == i) {
            Rlog.d(TAG, "receiveSessionModifyResponse modify time out");
            this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.mHwImsCallSessionImpl.getInternalCallType(), 4);
            receiveSessionModifyResponse(4, this.mRequestProfile, this.mResponseProfile);
        } else if (18920 == i) {
            Rlog.d(TAG, "receiveSessionModifyResponse modify rejected");
            this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.mHwImsCallSessionImpl.getInternalCallType(), 4);
            receiveSessionModifyResponse(5, this.mRequestProfile, this.mResponseProfile);
        } else {
            Rlog.d(TAG, "receiveSessionModifyResponse modify failed");
            this.mResponseProfile = ImsCallProviderUtils.convertToVideoProfile(this.mImsCallAdapter.mHwImsCallSessionImpl.getInternalCallType(), 4);
            receiveSessionModifyResponse(2, this.mRequestProfile, this.mResponseProfile);
        }
    }

    public boolean isVideoPaused() {
        return this.mIsVideoPaused;
    }

    public void onCallDataUsageChanged(long j) {
        if (this.mCallSession == null) {
            return;
        }
        Rlog.d(TAG, "mCallSession.isMultiparty()=" + this.mCallSession.isMultiparty());
        if (!this.mCallSession.isMultiparty() || this.isFristConference) {
            Rlog.d(TAG, "Normal process");
            this.mTotalDataUsage += j;
        } else {
            Rlog.d(TAG, "isfirstConference");
            this.mTotalDataUsage = VTUtils.getTotalCallDataUsage() + j;
            this.isFristConference = true;
        }
        VTUtils.setTotalCallDataUsage(this.mTotalDataUsage);
        Rlog.d(TAG, "mTotalDataUsage" + this.mTotalDataUsage);
        changeCallDataUsage(this.mTotalDataUsage);
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionHold(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z) {
        if (hwImsCallSessionImpl == null) {
            Rlog.d(TAG, "onCallSessionHold::session is null , just return");
        } else {
            this.mCameraManager.setCallSessionHold(hwImsCallSessionImpl, z);
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionMerged() {
        this.mCameraManager.setCurrentSessionMerged();
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionResumed(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z) {
        if (hwImsCallSessionImpl == null) {
            Rlog.d(TAG, "onCallSessionResumed session is null , just return");
        } else {
            this.mCameraManager.setCallSessionResumed(hwImsCallSessionImpl, z);
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onCallSessionStarted(HwImsCallSessionImpl hwImsCallSessionImpl) {
        if (hwImsCallSessionImpl == null) {
            Rlog.d(TAG, "onCallSessionStarted session is null , just return");
        } else {
            this.mCameraManager.setCurrentSessionStarted(hwImsCallSessionImpl);
        }
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onClosed(HwImsCallSessionImpl hwImsCallSessionImpl) {
        Rlog.i(TAG, "onClosed");
        this.mCallSession = null;
        this.mCameraManager.close(hwImsCallSessionImpl, true);
        this.mCameraManager.cleanPreStatus();
        this.mMediaManager.cleanPreStatus();
        Rlog.i(TAG, "onClosed end");
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onDisconnected(HwImsCallSessionImpl hwImsCallSessionImpl) {
    }

    public void onRequestCallDataUsage() {
    }

    public void onRequestCameraCapabilities() {
        if (VTUtils.isDocomo()) {
            Rlog.d(TAG, "onRequestCameraCapabilities");
            changeCameraCapabilities(this.mCameraManager.getCameraCapabilities());
        }
    }

    public void onSendSessionModifyRequest(VideoProfile videoProfile, VideoProfile videoProfile2) {
        HwImsCallSessionImpl cureentCallSessionImp;
        Rlog.d(TAG, "onSendSessionModifyRequest");
        if (videoProfile == null || videoProfile2 == null) {
            Rlog.e(TAG, "fromProfile or requestProfile is null when onSendSessionModifyRequest");
            return;
        }
        if (VideoProfile.isAudioOnly(videoProfile.getVideoState())) {
            Rlog.d(TAG, "onSendSessionModifyRequest: video state is audio.");
            this.mIsVideoPaused = false;
        }
        this.mRequestProfile = videoProfile2;
        if (isVideoPauseRequested(videoProfile2)) {
            Rlog.d(TAG, "onSendSessionModifyRequest pause start, mIsVideoPaused is: " + this.mIsVideoPaused);
            if (this.mIsVideoPaused) {
                return;
            }
            ImsThinClient.pauseVideo();
            this.mIsVideoPaused = true;
        } else if (!this.mIsVideoPaused) {
            Rlog.d(TAG, "onSendSessionModifyRequest changeConnection start");
            if (videoProfile.getVideoState() == videoProfile2.getVideoState()) {
                Rlog.e(TAG, "onSendSessionModifyRequest source video state is the same with destination!");
            } else {
                this.mImsCallAdapter.changeConnectionType(this.mHandler.obtainMessage(0), ImsCallProviderUtils.convertVideoStateToCallType(videoProfile2.getVideoState()), null);
            }
        } else {
            Rlog.d(TAG, "onSendSessionModifyRequest resume start");
            ImsThinClient.resumeVideo();
            this.mIsVideoPaused = false;
            if (!this.mCameraManager.isBgVideoCallShouldResume() || (cureentCallSessionImp = this.mCameraManager.getCureentCallSessionImp()) == null) {
                return;
            }
            int resumeRTPStream = RTPController.resumeRTPStream(RTPController.convertCallTypeToDirection(cureentCallSessionImp.getInternalCallType()));
            Rlog.d(TAG, "onSendSessionModifyRequest resumeRTP " + resumeRTPStream);
        }
    }

    public void onSendSessionModifyResponse(VideoProfile videoProfile) {
        if (videoProfile == null || this.mCallSession == null || this.mCallSession.getImsCallProfile() == null) {
            Rlog.w(TAG, "onSendSessionModifyResponse, some information is missing, rejectConnectionTypeChange");
            this.mImsCallAdapter.rejectConnectionTypeChange();
            return;
        }
        Rlog.d(TAG, "onSendSessionModifyResponse responseProfile=" + videoProfile);
        int convertVideoStateToCallType = ImsCallProviderUtils.convertVideoStateToCallType(videoProfile.getVideoState());
        if (this.mCallSession.getImsCallProfile().call_type == convertVideoStateToCallType) {
            Rlog.d(TAG, "rejectConnectionTypeChange");
            this.mImsCallAdapter.rejectConnectionTypeChange();
            return;
        }
        Rlog.d(TAG, "acceptConnectionTypeChange");
        this.mImsCallAdapter.acceptConnectionTypeChange(convertVideoStateToCallType, null);
    }

    public void onSetCamera(String str) {
        Rlog.d(TAG, "onSetCamera, cameraId is: " + str);
        if (str == null) {
            this.mCameraManager.close(getCallSession(), false);
        } else if (!VTUtils.isVTSupported() || this.mCallSession == null) {
            Rlog.d(TAG, "onSetCamera, precondition=false");
        } else {
            this.mCameraManager.open(str, getCallSession());
        }
    }

    public void onSetDeviceOrientation(int i) {
        Rlog.d(TAG, "onSetDeviceOrientation, rotation is: " + i);
        this.mMediaManager.setDeviceOrientation(i);
    }

    public void onSetDisplaySurface(Surface surface) {
        HwImsCallSessionImpl cureentCallSessionImp;
        Rlog.d(TAG, "onSetDisplaySurface, surface is: " + surface);
        if (!this.mMediaManager.setDisplaySurface(surface) || (cureentCallSessionImp = this.mCameraManager.getCureentCallSessionImp()) == null) {
            return;
        }
        int convertToInternalCallType = ImsCallProviderUtils.convertToInternalCallType(cureentCallSessionImp.getCallProfile().mCallType);
        if (ImsCallProviderUtils.isVideoCall(convertToInternalCallType)) {
            Rlog.d(TAG, "onSetDisplaySurface: modifyRTPStreamDirection, currentCallType:" + convertToInternalCallType);
            modifyRTPStreamDirection(3, convertToInternalCallType);
            modifyRTPStreamDirection(0, convertToInternalCallType);
        }
    }

    public void onSetPauseImage(Uri uri) {
    }

    public void onSetPreviewSurface(Surface surface) {
        Rlog.d(TAG, "onSetPreviewSurface, surface is: " + surface);
        this.mCameraManager.setPreviewSurface(surface);
    }

    public void onSetZoom(float f) {
    }

    @Override // com.huawei.ims.HwImsCallSessionImpl.Listener
    public void onUnsolCallModify(HwImsCallSessionImpl hwImsCallSessionImpl, ImsCallAdapter.CallModify callModify) {
        Rlog.d(TAG, "onUnsolCallModify,  callModify= " + callModify);
        int convertCallTypeToVideoState = ImsCallProviderUtils.convertCallTypeToVideoState(callModify.dest_call_details.call_type);
        VideoProfile videoProfile = new VideoProfile(convertCallTypeToVideoState, 4);
        if (callModify.findError()) {
            receiveSessionModifyResponse(ImsCallProviderUtils.convertImsErrorToUiError(callModify.error), videoProfile, null);
        } else if (callModify.modifyByTimeOut()) {
            Rlog.d(TAG, "modifyByTimeOut , modify_reason is " + callModify.modify_reason);
            receiveSessionModifyResponse(ImsCallProviderUtils.convertImsErrorToUiError(callModify.modify_reason), videoProfile, null);
        } else {
            this.mRequestProfile = videoProfile;
            receiveSessionModifyRequest(videoProfile);
            if (VideoProfile.isAudioOnly(convertCallTypeToVideoState)) {
                Rlog.d(TAG, "onUnsolCallModify, videostate=audio");
                this.mIsVideoPaused = false;
            }
        }
    }

    public void sendCameraStatus(boolean z) {
        Rlog.d(TAG, "sendCameraStatus, hasFailed is: " + z);
        int i = z ? 5 : 6;
        if (VTUtils.isDocomo() && !z) {
            this.mMediaManager.setDeviceOrientation(0);
        }
        handleCallSessionEvent(i);
    }
}
