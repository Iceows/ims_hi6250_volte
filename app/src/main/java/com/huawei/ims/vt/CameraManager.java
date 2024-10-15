package com.huawei.ims.vt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Handler;
import android.os.Message;
import android.telecom.VideoProfile;
import android.telephony.Rlog;
import android.telephony.ims.ImsCallProfile;
import android.view.Surface;
import com.huawei.ims.HwImsCallSessionImpl;
import com.huawei.ims.IImsCallListListener;
import com.huawei.ims.ImsCallProviderUtils;
import com.huawei.ims.vt.ImsMediaProvider;
import com.huawei.vtproxy.ImageData;
import com.huawei.vtproxy.ImsCameraClient;
import com.huawei.vtproxy.ImsThinClient;
import com.huawei.vtproxy.LocalBroadcastManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class CameraManager implements ImsMediaProvider.CameraListener, IImsCallListListener {
    private static final String CAAS_EVENT_PARAM_READY = "com.huawei.caas.vtproxy.thinclient.PARAM_READY";
    private static final int CALL_TYPE_MO = 1;
    private static final int CALL_TYPE_MT = 2;
    private static final int EVENT_RETRY_TO_OPEN_CARMERA = 1;
    private static final int EVENT_SEND_IMAGE_DATA_TO_SDK = 2;
    private static final int EVENT_SEND_IMAGE_DATA_TO_SDK_DELAYED = 30;
    private static final int IMS_SDK_CON_LEVEL = 1;
    private static final int IMS_SDK_INIT_CAP = 8;
    private static final int INVALID_RETURN_VALUE = 1;
    private static final int INVALID_SESSION_ID = -1;
    private static final int MAX_CAMERA_RADIO = 1;
    private static final int OPEN_CAMERA_DELAY = 100;
    private static final int OPEN_CAMERA_FAIL_RETRY = -2;
    private static final int PREVIEW_HEIGHT = 1440;
    private static final int PREVIEW_WIDTH = 1080;
    private static final int SEND_H264_DATA_TO_SDK_MAX_TIMES = 4;
    private static final int STATE_DEFAULT = -1;
    private static final int STATE_HOLDING = 0;
    private static final int STATE_RESUME = 1;
    private static final int SUCCESS = 0;
    private static final String TAG = "CameraManager";
    private static CameraManager sInstance;
    private Context mContext;
    private HwImsCallSessionImpl mCurrentCallSession;
    private LocalBroadcastManager mLocalBroadcastManager;
    private ImsMediaProvider mMedia;
    private Surface mPreSetSurface;
    private HwImsCallSessionImpl mTryOpenCameraCallSession;
    private static final Object CAMERA_CONTROLLER_LOCK = new Object();
    private static Map<HwImsCallSessionImpl, Integer> sSessionMap = new HashMap();
    private static Map<HwImsCallSessionImpl, Integer> sCallSessionStateMap = new HashMap();
    private static Map<HwImsCallSessionImpl, String> sCameraIdForSessoionMap = new HashMap();
    private static final float IMS_SDK_LOAD_FACTOR = 0.9f;
    private static Set<Integer> sImsSdkResIdSet = Collections.newSetFromMap(new ConcurrentHashMap(8, IMS_SDK_LOAD_FACTOR, 1));
    Map<HwImsCallSessionImpl, Set<Boolean>> mHoldMap = new HashMap();
    private boolean mIsSdkCameraOpen = false;
    private HwImsCallSessionImpl mConferenceCallSession = null;
    private boolean mIsFristToMergeCall = false;
    private ArrayList<HwImsCallSessionImpl> mConferencedSessions = new ArrayList<>();
    private boolean mIsHandupCurrentCallSession = false;
    private boolean mIsBgVideoCallShouldResume = false;
    private int mImsSdkResId = Integer.MIN_VALUE;
    private int mCameraSesId = Integer.MIN_VALUE;
    private boolean mIsHavePauseAndStop = false;
    private ImageData mImageData = null;
    private int mCount = 0;
    private Handler mHandler = new CameraManagerHandler();
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.vt.CameraManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                Rlog.e(CameraManager.TAG, "onReceive, intent is null");
                return;
            }
            String action = intent.getAction();
            Rlog.i(CameraManager.TAG, "onReceive: action=" + action);
            if ("com.huawei.caas.vtproxy.thinclient.PARAM_READY".equals(action)) {
                CameraManager.this.processCaasEventParamReadyIntent(intent);
            }
        }
    };

    private CameraManager() {
    }

    private CameraManager(Context context, ImsMediaProvider media) {
        this.mContext = context;
        this.mMedia = media;
        this.mMedia.setCameraListener(this);
        this.mLocalBroadcastManager = LocalBroadcastManager.getInstance(this.mContext);
        registerVtBroadcast();
    }

    public void cleanPreStatus() {
        this.mPreSetSurface = null;
    }

    public static void init(Context context, ImsMediaProvider media) {
        synchronized (CAMERA_CONTROLLER_LOCK) {
            if (sInstance == null) {
                sInstance = new CameraManager(context, media);
            }
        }
    }

    public void open(String cameraId, HwImsCallSessionImpl session) {
        HwImsCallSessionImpl hwImsCallSessionImpl;
        if (cameraId == null || session == null) {
            Rlog.e(TAG, "open: Invalid camera id or session is null");
            return;
        }
        Rlog.i(TAG, "open: camearId is: " + cameraId);
        boolean isCameraOpened = false;
        boolean isCameraIdChanged = false;
        if (this.mConferencedSessions.contains(session) && (hwImsCallSessionImpl = this.mConferenceCallSession) != null && session != hwImsCallSessionImpl) {
            Rlog.i(TAG, "another callsession in conference try to open camera");
            replaceConferenceSession(session);
        }
        if (sCameraIdForSessoionMap.containsKey(session)) {
            isCameraOpened = true;
            String currentCameraId = sCameraIdForSessoionMap.get(session);
            if (!cameraId.equals(currentCameraId)) {
                isCameraIdChanged = true;
            }
        }
        if (isOnlyUpdateCurrentCallSession(session, isCameraOpened, isCameraIdChanged)) {
            Rlog.i(TAG, "the Camera already open, we just get SESSION_ID from the map, and set Current Session ID");
            return;
        }
        if (isCameraOpened) {
            try {
                if (sSessionMap.get(session).intValue() != -1) {
                    if (isCameraIdChanged) {
                        processVideoCallWhenCameraIdChanged(cameraId, session);
                        return;
                    }
                    Rlog.i(TAG, "open the camera again, ignore, the cameraId is: " + cameraId);
                    return;
                }
            } catch (NumberFormatException e) {
                Rlog.e(TAG, "NumberFormatException when open camera", e);
                return;
            }
        }
        if (isCurrentHaveVideoCall() && this.mCurrentCallSession != null && !session.equals(this.mCurrentCallSession)) {
            if (!this.mIsHavePauseAndStop || this.mPreSetSurface != null) {
                Rlog.i(TAG, "open mIsHavePauseAndStop is false need pauseVideoAndStopPreview");
                pauseVideoAndStopPreview(this.mCurrentCallSession, this.mCurrentCallSession.getCallProfile());
            } else {
                this.mIsHavePauseAndStop = false;
            }
        }
        processVideoCallForMtOrMo(cameraId, session);
    }

    private void openCameraSuccess(String cameraId, HwImsCallSessionImpl session) {
        sCameraIdForSessoionMap.put(session, cameraId);
        this.mIsSdkCameraOpen = true;
        this.mCurrentCallSession = session;
        sSessionMap.put(session, Integer.valueOf(this.mCameraSesId));
        ImsThinClient.setImsCurrentSession(this.mCameraSesId);
        if (this.mIsFristToMergeCall) {
            Rlog.i(TAG, "open mIsFristToMergeCall is true , mConferenceCallSession " + session);
            this.mConferenceCallSession = session;
            this.mIsFristToMergeCall = false;
        }
        notifyCameraFailed(session, false);
    }

    private void openCameraFail(String cameraId, HwImsCallSessionImpl session) {
        Message msg = this.mHandler.obtainMessage();
        msg.what = 1;
        try {
            msg.arg1 = Integer.parseInt(cameraId);
            this.mIsSdkCameraOpen = true;
            this.mTryOpenCameraCallSession = session;
            msg.obj = session;
            this.mHandler.sendMessageDelayed(msg, 100L);
        } catch (NumberFormatException e) {
            Rlog.e(TAG, "open method occur NumberFormatException, when mCameraSesId is OPEN_CAMERA_FAIL_RETRY");
        }
    }

    private void processVideoCallForMtOrMo(String cameraId, HwImsCallSessionImpl session) {
        try {
            if (session.isMtCall() && !session.isMultiparty()) {
                this.mCameraSesId = ImsCameraClient.cameraOpen(Integer.parseInt(cameraId), 2);
            } else {
                this.mCameraSesId = ImsCameraClient.cameraOpen(Integer.parseInt(cameraId), 1);
            }
        } catch (NumberFormatException e) {
            Rlog.e(TAG, "open method occur NumberFormatException");
            this.mCameraSesId = Integer.MIN_VALUE;
        }
        Rlog.i(TAG, "open camera result session id is: " + this.mCameraSesId + "call type:" + session.isMtCall());
        this.mTryOpenCameraCallSession = null;
        int i = this.mCameraSesId;
        if (i >= 0) {
            openCameraSuccess(cameraId, session);
            return;
        }
        if (i == OPEN_CAMERA_FAIL_RETRY) {
            Rlog.i(TAG, "open the camera failed, wrong call type");
            openCameraFail(cameraId, session);
            return;
        }
        Rlog.i(TAG, "open the camera failed, the cameraId is: " + cameraId);
        notifyCameraFailed(session, true);
        if (ImsVtGlobals.sChrReporter != null) {
            ImsVtGlobals.sChrReporter.getCameraOpenFailedReason();
        }
    }

    private void processVideoCallWhenCameraIdChanged(String cameraId, HwImsCallSessionImpl session) {
        int result = ImsCameraClient.switchCameras();
        Rlog.i(TAG, "switchCameras");
        if (result == 0) {
            sCameraIdForSessoionMap.put(session, cameraId);
            notifyCameraFailed(session, false);
            return;
        }
        Rlog.i(TAG, "switch camera failed, the cameraId is: " + cameraId);
        notifyCameraFailed(session, true);
    }

    private boolean isOnlyUpdateCurrentCallSession(HwImsCallSessionImpl session, boolean isCameraOpened, boolean isCameraIdChanged) {
        if (!sSessionMap.containsKey(session)) {
            sSessionMap.put(session, -1);
        }
        if (sSessionMap.get(session).intValue() == -1 || !isCameraOpened || isCameraIdChanged) {
            return false;
        }
        Rlog.i(TAG, "open: already open the Camera");
        this.mCurrentCallSession = session;
        int sesId = sSessionMap.get(session).intValue();
        ImsThinClient.setImsCurrentSession(sesId);
        notifyCameraFailed(session, false);
        this.mCameraSesId = sesId;
        return true;
    }

    private void replaceConferenceSession(HwImsCallSessionImpl session) {
        Rlog.i(TAG, "replaceConferenceSession session:" + session);
        Map<HwImsCallSessionImpl, Integer> map = sSessionMap;
        map.put(session, map.get(this.mConferenceCallSession));
        sSessionMap.remove(this.mConferenceCallSession);
        HwImsCallSessionImpl hwImsCallSessionImpl = this.mCurrentCallSession;
        if (hwImsCallSessionImpl != null && hwImsCallSessionImpl.equals(this.mConferenceCallSession)) {
            this.mCurrentCallSession = session;
        }
        Map<HwImsCallSessionImpl, String> map2 = sCameraIdForSessoionMap;
        map2.put(session, map2.get(this.mConferenceCallSession));
        sCameraIdForSessoionMap.remove(this.mConferenceCallSession);
        this.mConferenceCallSession = session;
    }

    private void notifyCameraFailed(HwImsCallSessionImpl session, boolean isFailed) {
        if (session == null) {
            Rlog.e(TAG, "sendCameraStatus: session is null");
            return;
        }
        Rlog.i(TAG, "sendCameraStatus: Notifying Session=" + session.getCallId());
        ImsVtCallProviderImpl provider = session.getImsVtCallProviderImpl();
        if (provider != null) {
            provider.sendCameraStatus(isFailed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoProfile.CameraCapabilities getCameraCapabilities() {
        Rlog.i(TAG, "getCameraCapabilities");
        return new VideoProfile.CameraCapabilities(PREVIEW_WIDTH, PREVIEW_HEIGHT, false, 1.0f);
    }

    private boolean isConferencedSessions(HwImsCallSessionImpl session) {
        if (!this.mConferencedSessions.contains(session)) {
            return true;
        }
        this.mConferencedSessions.remove(session);
        HwImsCallSessionImpl hwImsCallSessionImpl = this.mConferenceCallSession;
        if (hwImsCallSessionImpl != null && session != hwImsCallSessionImpl && this.mConferencedSessions.size() == 0) {
            replaceConferenceSession(session);
            return true;
        }
        if (this.mConferencedSessions.size() > 0) {
            Rlog.i(TAG, "There are other sessions in conference, so we don't release conf session in IMS SDK");
            return false;
        }
        Rlog.i(TAG, "error.");
        return true;
    }

    public void close(HwImsCallSessionImpl session, boolean isHangUpCall) {
        Rlog.i(TAG, "close camera");
        if (session == null || !sSessionMap.containsKey(session)) {
            Rlog.e(TAG, "close don't contains Key return");
            return;
        }
        if (!isConferencedSessions(session)) {
            return;
        }
        boolean isCameraRelease = true;
        if (!session.equals(this.mCurrentCallSession) && sSessionMap.get(session).intValue() != -1) {
            int result = ImsThinClient.setImsCurrentSession(sSessionMap.get(session).intValue());
            Rlog.i(TAG, "close sure set now CurrentSessionID result: " + result);
            if (result == 1) {
                isCameraRelease = false;
            }
        }
        if (this.mIsSdkCameraOpen && sSessionMap.get(session).intValue() != -1 && isCameraRelease) {
            Rlog.i(TAG, "mIsSdkCameraOpen is: " + this.mIsSdkCameraOpen + " isMtCall: " + session.isMtCall());
            if (session.isMtCall() && !session.isMultiparty()) {
                ImsCameraClient.cameraRelease(2);
            } else {
                ImsCameraClient.cameraRelease(1);
            }
            int sessionId = sSessionMap.get(session).intValue();
            if (sImsSdkResIdSet.contains(Integer.valueOf(sessionId))) {
                sImsSdkResIdSet.remove(Integer.valueOf(sessionId));
            }
        }
        HwImsCallSessionImpl hwImsCallSessionImpl = this.mTryOpenCameraCallSession;
        if (hwImsCallSessionImpl != null && session.equals(hwImsCallSessionImpl)) {
            this.mHandler.removeMessages(1);
            this.mTryOpenCameraCallSession = null;
        }
        updateCallSessionsInfo(session, isHangUpCall, isCameraRelease);
        Rlog.i(TAG, "close camera end");
    }

    private void checkSessionStatus(HwImsCallSessionImpl session) {
        if (session.equals(this.mConferenceCallSession)) {
            Rlog.i(TAG, "close camera mConferenceCallSession = null");
            this.mConferenceCallSession = null;
        }
        if (sCameraIdForSessoionMap.containsKey(session)) {
            sCameraIdForSessoionMap.remove(session);
        }
        if (sCallSessionStateMap.containsKey(session)) {
            sCallSessionStateMap.remove(session);
        }
        if (this.mHoldMap.containsKey(session)) {
            Set<Boolean> keys = this.mHoldMap.get(session);
            keys.clear();
            this.mHoldMap.remove(session);
        }
    }

    private void updateCallSessionsInfo(HwImsCallSessionImpl session, boolean isHangUpCall, boolean isCameraRelease) {
        checkSessionStatus(session);
        HwImsCallSessionImpl holdCallSessionImp = getHoldCallSessionImp();
        if (holdCallSessionImp != null && sSessionMap.containsKey(holdCallSessionImp) && sSessionMap.get(holdCallSessionImp).intValue() != -1) {
            this.mIsHandupCurrentCallSession = true;
        }
        if (isHangUpCall) {
            Rlog.i(TAG, "isHangUpCall " + session);
            sSessionMap.remove(session);
            removeInvalidCallSession();
        } else {
            sSessionMap.put(session, -1);
        }
        if (isCameraRelease) {
            recoverToSetCurrentSessionId(session);
        }
        if (session.equals(this.mCurrentCallSession)) {
            this.mCurrentCallSession = null;
            this.mIsHavePauseAndStop = false;
            this.mIsBgVideoCallShouldResume = false;
        }
        if (!isCurrentHaveVideoCall()) {
            this.mHandler.removeMessages(1);
            this.mIsSdkCameraOpen = false;
            this.mIsHandupCurrentCallSession = false;
            this.mHoldMap.clear();
            sCallSessionStateMap.clear();
            sCameraIdForSessoionMap.clear();
            this.mIsFristToMergeCall = false;
            return;
        }
        if (this.mIsHavePauseAndStop && this.mCurrentCallSession != null) {
            this.mIsHavePauseAndStop = false;
        }
    }

    public void setPreviewSurface(Surface surface) {
        Rlog.i(TAG, "setPreviewSurface, surface is: " + surface);
        if (surface == null) {
            ImsCameraClient.stopCameraPreview();
            Rlog.i(TAG, "stopCameraPreview");
            this.mPreSetSurface = null;
        } else if (this.mPreSetSurface != surface) {
            if (this.mHandler.hasMessages(2)) {
                this.mHandler.removeMessages(2);
            }
            this.mPreSetSurface = surface;
            ImsCameraClient.setNearEndSurface(surface);
            ImsCameraClient.startCameraPreview();
            Rlog.i(TAG, "start to setNearEndSurface and startCameraPreview");
        }
    }

    public void setPauseImage(Uri uri) {
        Rlog.i(TAG, "setPauseImage");
        if (this.mPreSetSurface == null && this.mCurrentCallSession != null) {
            this.mCount = 0;
            this.mImageData = null;
            sendImageDataToSdk();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendImageDataToSdk() {
        int currentSessionId = sSessionMap.get(this.mCurrentCallSession).intValue();
        int videoEncodeType = ImsThinClient.getNegotiatedCodecType(currentSessionId);
        if (this.mImageData == null) {
            int encodeFormat = ImageDataUtils.getVideoEncodeFormat(videoEncodeType);
            byte[] data = ImageDataUtils.getImageDataFromAssets(this.mContext, videoEncodeType);
            Rlog.i(TAG, "sendImageDataToSdk new ImageData, videoEncodeType = " + videoEncodeType + ", encodeFormat = " + encodeFormat);
            this.mImageData = new ImageData(encodeFormat, ImageDataUtils.HME_V_IMAGE_WIDTH, 640, data);
        }
        int result = ImsThinClient.sendImageData(currentSessionId, this.mImageData);
        this.mCount++;
        Rlog.i(TAG, "sendImageDataToSdk sendImageData result=" + result + ", mCount=" + this.mCount);
        if (videoEncodeType == 0 && this.mCount < 4) {
            this.mHandler.sendEmptyMessageDelayed(2, 30L);
        }
    }

    public static CameraManager getInstance() {
        CameraManager cameraManager;
        synchronized (CAMERA_CONTROLLER_LOCK) {
            cameraManager = sInstance;
        }
        return cameraManager;
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.CameraListener
    public void onCameraConfigChanged(int width, int height, short fps, Surface surface) {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.CameraListener
    public void onRecordingEnabled() {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.CameraListener
    public void onRecordingDisabled() {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.CameraListener
    public void onMediaDeinitialized() {
    }

    @Override // com.huawei.ims.IImsCallListListener
    public void onImsCallSessionAdded(HwImsCallSessionImpl callSession) {
        if (callSession == null) {
            Rlog.e(TAG, "onImsCallSessionAdded callSession==null");
            return;
        }
        Rlog.i(TAG, "onImsCallSessionAdded currentCallType set default session ID " + callSession);
        if (!sSessionMap.containsKey(callSession)) {
            sSessionMap.put(callSession, -1);
        }
        if (!sCallSessionStateMap.containsKey(callSession)) {
            sCallSessionStateMap.put(callSession, -1);
        }
    }

    @Override // com.huawei.ims.IImsCallListListener
    public void onImsCallSessionRemoved(HwImsCallSessionImpl callSession) {
        Rlog.i(TAG, "onImsCallSessionRemoved only to know is doClose" + callSession);
    }

    public boolean isParamReady() {
        if (sImsSdkResIdSet.contains(Integer.valueOf(this.mCameraSesId))) {
            return true;
        }
        return false;
    }

    public HwImsCallSessionImpl getCurrentCallSessionImp() {
        return this.mCurrentCallSession;
    }

    private void registerVtBroadcast() {
        Rlog.i(TAG, "registerVtBroadcast");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.huawei.caas.vtproxy.thinclient.PARAM_READY");
        this.mLocalBroadcastManager.registerReceiver(this.mBroadcastReceiver, intentFilter);
    }

    public void setCallSessionHold(HwImsCallSessionImpl session, boolean isMtHold) {
        if (session == null) {
            Rlog.e(TAG, "setCallSessionHold session is null, retrun");
            return;
        }
        Rlog.i(TAG, "setCallSessionHold session" + session + ", mCurrentCallSession:" + this.mCurrentCallSession);
        if (!sSessionMap.containsKey(session)) {
            Rlog.e(TAG, "setCallSessionHold map don't contains key retrun");
            return;
        }
        if (sSessionMap.get(session).intValue() == -1) {
            Rlog.e(TAG, "setCallSessionHold have default session return");
            return;
        }
        ImsCallProfile cp = session.getCallProfile();
        int currentCallType = ImsCallProviderUtils.convertToInternalCallType(cp.mCallType);
        boolean isVideoCallType = ImsCallProviderUtils.isVideoCall(currentCallType);
        if (isVideoCallType) {
            sCallSessionStateMap.put(session, 0);
            if (!session.equals(this.mCurrentCallSession)) {
                int sessionId = sSessionMap.get(session).intValue();
                ImsThinClient.setImsCurrentSession(sessionId);
            }
            if (this.mHoldMap.containsKey(session)) {
                Set<Boolean> keys = this.mHoldMap.get(session);
                keys.add(Boolean.valueOf(isMtHold));
                this.mHoldMap.put(session, keys);
            } else {
                Set<Boolean> keys2 = new HashSet<>();
                keys2.add(Boolean.valueOf(isMtHold));
                this.mHoldMap.put(session, keys2);
            }
            if (session.equals(this.mCurrentCallSession) && isMtHold && this.mPreSetSurface == null) {
                this.mIsBgVideoCallShouldResume = false;
            }
            pauseImsRtpStream(currentCallType);
            recoverToSetCurrentSessionId(session);
            if (isCurrentHaveMoreThanOneVideoCall() && session.equals(this.mCurrentCallSession) && !isMtHold) {
                pauseVideoAndStopPreview(session, cp);
            }
        }
    }

    public void setCallSessionResumed(HwImsCallSessionImpl session, boolean isMtResume) {
        if (session == null) {
            Rlog.e(TAG, "setCallSessionResumed session is null, retrun");
            return;
        }
        Rlog.i(TAG, "setCallSessionResumed" + this.mCurrentCallSession + "HwImsCallSessionImpl" + session);
        if (!sSessionMap.containsKey(session)) {
            Rlog.e(TAG, "setCallSessionResumed map don't contains key retrun");
            return;
        }
        if (this.mHoldMap.containsKey(session)) {
            Set<Boolean> keys = this.mHoldMap.get(session);
            if (keys.contains(Boolean.valueOf(isMtResume))) {
                keys.remove(Boolean.valueOf(isMtResume));
                this.mHoldMap.put(session, keys);
            }
        }
        ImsCallProfile cp = session.getCallProfile();
        int currentCallType = ImsCallProviderUtils.convertToInternalCallType(cp.mCallType);
        boolean isVideoCallType = ImsCallProviderUtils.isVideoCall(currentCallType);
        if (!isVideoCallType) {
            Rlog.i(TAG, "isVideoCallType is false");
            this.mIsHandupCurrentCallSession = false;
            return;
        }
        sCallSessionStateMap.put(session, 1);
        if (!this.mIsHandupCurrentCallSession) {
            boolean isOnlyHaveOneCall = sSessionMap.size() == 1;
            boolean isResume = false;
            if ((this.mHoldMap.containsKey(session) && this.mHoldMap.get(session).size() == 0) || !this.mHoldMap.containsKey(session)) {
                isResume = true;
            }
            if (session.equals(this.mCurrentCallSession) && isResume) {
                ImsVtCallProviderImpl provider = session.getImsVtCallProviderImpl();
                boolean isVideoPaused = provider != null ? provider.isVideoPaused() : false;
                boolean isOnlyCurrentVideoCall = isOnlyHaveOneCall && isCurrentHaveVideoCall() && !isMtResume;
                if (isOnlyCurrentVideoCall || (isMtResume && !isVideoPaused)) {
                    resumeImsRtpStream(currentCallType);
                } else if (!isMtResume || this.mPreSetSurface != null) {
                    Rlog.e(TAG, "error.");
                } else {
                    this.mIsBgVideoCallShouldResume = true;
                }
            }
        }
        this.mIsHandupCurrentCallSession = false;
    }

    public void setCurrentSessionStarted(HwImsCallSessionImpl session) {
        if (session == null) {
            Rlog.e(TAG, "setCurrentSessionStarted session is null, retrun");
            return;
        }
        Rlog.i(TAG, "setCurrentSessionStarted" + this.mCurrentCallSession + "HwImsCallSessionImpl" + session);
        if (!sSessionMap.containsKey(session)) {
            Rlog.e(TAG, "setCallSessionHold map don't contains key retrun");
            return;
        }
        ImsCallProfile cp = session.getCallProfile();
        int currentCallType = ImsCallProviderUtils.convertToInternalCallType(cp.mCallType);
        boolean isVideoCallType = ImsCallProviderUtils.isVideoCall(currentCallType);
        boolean isCurrentSession = session.equals(this.mCurrentCallSession);
        if (isVideoCallType && isCurrentHaveVideoCall() && !isCurrentSession) {
            if (!isCurrentHaveMoreThanOneVideoCall() && getOtherCallSessionImp() != null) {
                pauseVideoAndStopPreview(getOtherCallSessionImp(), cp);
                return;
            }
            return;
        }
        if (isVideoCallType || !isCurrentSession || !isCurrentHaveMoreThanOneVideoCall()) {
            Rlog.i(TAG, "setCurrentSessionStarted other failed.");
        } else {
            close(session, false);
        }
    }

    public void setCurrentSessionMerged() {
        Rlog.i(TAG, "setCurrentSessionMerged");
        if (!isCurrentHaveVideoCall()) {
            Rlog.e(TAG, "voice conference merged, we don't need to handle!");
            return;
        }
        if (this.mConferenceCallSession == null) {
            Rlog.i(TAG, "setCurrentSessionMerged mIsFristToMergeCall = true ");
            this.mIsFristToMergeCall = true;
            for (Map.Entry<HwImsCallSessionImpl, Integer> entry : sSessionMap.entrySet()) {
                Rlog.i(TAG, "add session to conference:" + entry.getKey());
                this.mConferencedSessions.add(entry.getKey());
                sImsSdkResIdSet.remove(entry.getValue());
            }
            sSessionMap.clear();
        } else {
            Rlog.i(TAG, "setCurrentSessionMerged remove callSession only mConferenceCallSession " + this.mConferenceCallSession);
            int confSessionId = -1;
            for (Map.Entry<HwImsCallSessionImpl, Integer> entry2 : sSessionMap.entrySet()) {
                if (this.mConferenceCallSession.equals(entry2.getKey())) {
                    confSessionId = entry2.getValue().intValue();
                }
                if (!this.mConferencedSessions.contains(entry2.getKey())) {
                    Rlog.i(TAG, "after merge, add new session " + entry2.getKey());
                    this.mConferencedSessions.add(entry2.getKey());
                    sImsSdkResIdSet.remove(entry2.getValue());
                }
            }
            sSessionMap.clear();
            sSessionMap.put(this.mConferenceCallSession, Integer.valueOf(confSessionId));
        }
        this.mIsHavePauseAndStop = false;
    }

    private void pauseVideoAndStopPreview(HwImsCallSessionImpl session, ImsCallProfile cp) {
        Rlog.i(TAG, "pauseVideoAndStopPreview");
        if (cp == null) {
            Rlog.e(TAG, "pauseVideoAndStopPreview cp null");
            return;
        }
        setPreviewSurface(null);
        int currentVideoState = ImsCallProviderUtils.convertCallTypeToVideoState(cp.mCallType);
        VideoProfile requestProfile = new VideoProfile(currentVideoState | 4);
        VideoProfile fromProfile = new VideoProfile(currentVideoState);
        ImsVtCallProviderImpl provider = session.getImsVtCallProviderImpl();
        if (provider == null) {
            Rlog.e(TAG, "pauseVideoAndStopPreview, provider is null");
            return;
        }
        provider.onSendSessionModifyRequest(fromProfile, requestProfile);
        if (session.equals(this.mCurrentCallSession)) {
            this.mIsHavePauseAndStop = true;
        }
    }

    private void pauseImsRtpStream(int currentCallType) {
        int direction = RtpController.convertCallTypeToDirection(currentCallType);
        int result = RtpController.pauseRtpStream(direction);
        StringBuilder sb = new StringBuilder();
        sb.append("setCallSessionHold result:");
        sb.append(result == 0);
        Rlog.i(TAG, sb.toString());
    }

    private void resumeImsRtpStream(int currentCallType) {
        int direction = RtpController.convertCallTypeToDirection(currentCallType);
        int result = RtpController.resumeRtpStream(direction);
        StringBuilder sb = new StringBuilder();
        sb.append("setCallSessionResumed result ");
        sb.append(result);
        sb.append(result == 0);
        Rlog.i(TAG, sb.toString());
    }

    private void recoverToSetCurrentSessionId(HwImsCallSessionImpl session) {
        HwImsCallSessionImpl hwImsCallSessionImpl = this.mCurrentCallSession;
        boolean isSetCurrentSessionId = (hwImsCallSessionImpl == null || !sSessionMap.containsKey(hwImsCallSessionImpl) || sSessionMap.get(this.mCurrentCallSession).intValue() == -1) ? false : true;
        if (!session.equals(this.mCurrentCallSession) && isSetCurrentSessionId) {
            int currentSessionId = sSessionMap.get(this.mCurrentCallSession).intValue();
            ImsThinClient.setImsCurrentSession(currentSessionId);
        }
    }

    public boolean isCurrentHaveMoreThanOneVideoCall() {
        int videoCallNum = 0;
        for (Map.Entry<HwImsCallSessionImpl, Integer> entry : sSessionMap.entrySet()) {
            if (entry.getValue().intValue() != -1) {
                videoCallNum++;
                Rlog.i(TAG, "isCurrentHaveMoreThanOneVideoCall videoCallNum  " + videoCallNum);
            }
        }
        if (videoCallNum > 1) {
            Rlog.i(TAG, "isCurrentHaveMoreThanOneVideoCall return true");
            return true;
        }
        Rlog.i(TAG, "isCurrentHaveMoreThanOneVideoCall return false");
        return false;
    }

    public boolean isCurrentHaveVideoCall() {
        for (Map.Entry<HwImsCallSessionImpl, Integer> entry : sSessionMap.entrySet()) {
            if (entry.getValue().intValue() != -1) {
                Rlog.i(TAG, "isCurrentHaveVideoCall return true");
                return true;
            }
        }
        Rlog.i(TAG, "isCurrentHaveVideoCall return false");
        return false;
    }

    private void removeInvalidCallSession() {
        Iterator<Map.Entry<HwImsCallSessionImpl, Integer>> it = sSessionMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<HwImsCallSessionImpl, Integer> entry = it.next();
            HwImsCallSessionImpl callSession = entry.getKey();
            if (callSession.getCall() == null) {
                it.remove();
            }
        }
    }

    public HwImsCallSessionImpl getOtherCallSessionImp() {
        for (Map.Entry<HwImsCallSessionImpl, Integer> entry : sSessionMap.entrySet()) {
            if (entry.getValue().intValue() != -1) {
                Rlog.i(TAG, "getOtherCallSessionImp ");
                return entry.getKey();
            }
        }
        Rlog.i(TAG, "getOtherCallSessionImp return null");
        return null;
    }

    public HwImsCallSessionImpl getHoldCallSessionImp() {
        for (Map.Entry<HwImsCallSessionImpl, Integer> entry : sCallSessionStateMap.entrySet()) {
            if (entry.getValue().intValue() == 0) {
                Rlog.i(TAG, "getHoldCallSessionImp");
                return entry.getKey();
            }
        }
        Rlog.i(TAG, "getHoldCallSessionImp return null");
        return null;
    }

    public boolean isBgVideoCallShouldResume() {
        return this.mIsBgVideoCallShouldResume;
    }

    public void initBgVideoCallShouldResume() {
        this.mIsBgVideoCallShouldResume = false;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private class CameraManagerHandler extends Handler {
        CameraManagerHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Rlog.i(CameraManager.TAG, "handle message:" + msg.what);
            int i = msg.what;
            if (i != 1) {
                if (i == 2) {
                    CameraManager.this.sendImageDataToSdk();
                }
            } else if (msg.obj instanceof HwImsCallSessionImpl) {
                HwImsCallSessionImpl session = (HwImsCallSessionImpl) msg.obj;
                CameraManager.this.open(String.valueOf(msg.arg1), session);
            } else {
                Rlog.i(CameraManager.TAG, "Message of session transfers fail");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processCaasEventParamReadyIntent(Intent intent) {
        if (intent == null) {
            Rlog.e(TAG, "processCaasEventParamReadyIntent, intent is null");
            return;
        }
        try {
            this.mImsSdkResId = intent.getIntExtra("ims_sdk_res_id", Integer.MIN_VALUE);
        } catch (BadParcelableException e) {
            Rlog.e(TAG, "processCaasEventParamReadyIntent BadParcelableException");
        } catch (RuntimeException e2) {
            Rlog.e(TAG, "processCaasEventParamReadyIntent RuntimeException");
        }
        Rlog.i(TAG, "params ready broadcast received, mImsSdkResId is: " + this.mImsSdkResId);
        sImsSdkResIdSet.add(Integer.valueOf(this.mImsSdkResId));
        if (!sImsSdkResIdSet.contains(Integer.valueOf(this.mCameraSesId))) {
            Rlog.e(TAG, "processCaasEventParamReadyIntent, sImsSdkResIdSet doesn't contain mCameraSesId");
            return;
        }
        if (this.mCurrentCallSession == null) {
            Rlog.e(TAG, "processCaasEventParamReadyIntent, mCurrentCallSession is null");
            return;
        }
        boolean isSetSuccess = MediaManager.getInstance().isSetDisplaySurface();
        if (!isSetSuccess) {
            Rlog.e(TAG, "processCaasEventParamReadyIntent, isSetDisplaySurface failed");
            return;
        }
        ImsCallProfile cp = this.mCurrentCallSession.getCallProfile();
        int currentCallType = ImsCallProviderUtils.convertToInternalCallType(cp.mCallType);
        boolean isVideoCallType = ImsCallProviderUtils.isVideoCall(currentCallType);
        if (isVideoCallType) {
            resumeImsRtpStream(currentCallType);
        }
    }
}
