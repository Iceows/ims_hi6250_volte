package com.huawei.ims.vt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class CameraManager implements ImsMediaProvider.CameraListener, IImsCallListListener {
    public static final String CAAS_EVENT_PARAM_READY = "com.huawei.caas.vtproxy.thinclient.PARAM_READY";
    private static final int CALL_TYPE_MO = 1;
    private static final int CALL_TYPE_MT = 2;
    private static final int EVENT_RETRY_TO_OPEN_CARMERA = 1;
    private static final int INVALID_RETURN_VALUE = 1;
    private static final int INVALID_SESSION_ID = -1;
    private static final int MAX_CAMERA_RADIO = 1;
    private static final int OPEN_CAMERA_DELAY = 100;
    private static final int OPEN_CAMERA_FAIL_RETRY = -2;
    private static final int PREVIEW_HEIGHT = 1440;
    private static final int PREVIEW_WIDTH = 1080;
    private static final int STATE_DEFAULT = -1;
    private static final int STATE_HOLDING = 0;
    private static final int STATE_RESUME = 1;
    public static final int SUCCESS = 0;
    private static final String TAG = "CameraManager";
    private static CameraManager sInstance;
    private Context mContext;
    private HwImsCallSessionImpl mCurrentCallSession;
    private LocalBroadcastManager mLocalBroadcastManager;
    private ImsMediaProvider mMedia;
    private Surface mPreSetSurface;
    private HwImsCallSessionImpl mTryOpenCameraCallSession;
    private static Map<HwImsCallSessionImpl, Integer> mSessionMap = new HashMap();
    private static Map<HwImsCallSessionImpl, Integer> mCallSessionState = new HashMap();
    private static Map<HwImsCallSessionImpl, String> mCameraIdForSessoion = new HashMap();
    private static Set<Integer> mImsSDKResIdSet = Collections.newSetFromMap(new ConcurrentHashMap(8, 0.9f, 1));
    private static final Object mLock = new Object();
    private boolean mSDKCameraOpen = false;
    Map<HwImsCallSessionImpl, Set<Boolean>> mHoldMap = new HashMap();
    private HwImsCallSessionImpl mConferenceCallSession = null;
    private boolean mFristToMergeCall = false;
    private ArrayList<HwImsCallSessionImpl> mConferencedSession = new ArrayList<>();
    private boolean mIsHandupCurrentCallSession = false;
    private boolean mBgVideoCallShouldResume = false;
    private boolean mHavePauseAndStop = false;
    private Handler mHandler = new CameraManagerHandler();
    private int mIMSSDKResId = Integer.MIN_VALUE;
    private int mCAMERASesId = Integer.MIN_VALUE;
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.vt.CameraManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                Rlog.d(CameraManager.TAG, "onReceive, intent is null");
                return;
            }
            String action = intent.getAction();
            Rlog.d(CameraManager.TAG, "onReceive: action=" + action);
            if ("com.huawei.caas.vtproxy.thinclient.PARAM_READY".equals(action)) {
                CameraManager.this.mIMSSDKResId = intent.getIntExtra("ims_sdk_res_id", Integer.MIN_VALUE);
                Rlog.d(CameraManager.TAG, "params ready broadcast received, mIMSSDKResId is: " + CameraManager.this.mIMSSDKResId);
                CameraManager.mImsSDKResIdSet.add(Integer.valueOf(CameraManager.this.mIMSSDKResId));
                if (CameraManager.mImsSDKResIdSet.contains(Integer.valueOf(CameraManager.this.mCAMERASesId)) && CameraManager.this.mCurrentCallSession != null) {
                    boolean setSuccess = MediaManager.getInstance().setDisplaySurface();
                    if (setSuccess) {
                        ImsCallProfile cp = CameraManager.this.mCurrentCallSession.getCallProfile();
                        int currentCallType = ImsCallProviderUtils.convertToInternalCallType(cp.mCallType);
                        boolean isVideoCallType = ImsCallProviderUtils.isVideoCall(currentCallType);
                        if (isVideoCallType) {
                            CameraManager.this.resumeImsRTPStream(currentCallType);
                        }
                    }
                }
            }
        }
    };

    public void cleanPreStatus() {
        this.mPreSetSurface = null;
    }

    private CameraManager() {
    }

    public static void init(Context context, ImsMediaProvider media) {
        synchronized (mLock) {
            if (sInstance == null) {
                sInstance = new CameraManager(context, media);
            }
        }
    }

    public void open(String cameraId, HwImsCallSessionImpl session) {
        if (cameraId == null) {
            Rlog.e(TAG, "open: Invalid camera id or session is null");
            return;
        }
        Rlog.d(TAG, "open: camearId is: " + cameraId);
        boolean cameraOpened = false;
        boolean cameraIdChanged = false;
        if (this.mConferencedSession.contains(session) && this.mConferenceCallSession != null && session != this.mConferenceCallSession) {
            Rlog.d(TAG, "another callsession in conference try to open camera");
            replaceConferenceSession(session);
        }
        if (mCameraIdForSessoion.containsKey(session)) {
            cameraOpened = true;
            String currentCameraId = mCameraIdForSessoion.get(session);
            if (!cameraId.equals(currentCameraId)) {
                cameraIdChanged = true;
            }
        }
        if (!mSessionMap.containsKey(session)) {
            mSessionMap.put(session, -1);
        }
        if (mSessionMap.get(session).intValue() != -1 && cameraOpened && !cameraIdChanged) {
            Rlog.d(TAG, "open: already open the Camera");
            this.mCurrentCallSession = session;
            int sesId = mSessionMap.get(session).intValue();
            ImsThinClient.setImsCurrentSession(sesId);
            noticeCameraFailed(session, false);
            this.mCAMERASesId = sesId;
            return;
        }
        if (cameraOpened) {
            try {
                if (mSessionMap.get(session).intValue() != -1) {
                    if (cameraIdChanged) {
                        int result = ImsCameraClient.switchCameras();
                        Rlog.d(TAG, "switchCameras");
                        if (result == 0) {
                            mCameraIdForSessoion.put(session, cameraId);
                            noticeCameraFailed(session, false);
                        } else {
                            Rlog.d(TAG, "switch camera failed, the cameraId is: " + cameraId);
                            noticeCameraFailed(session, true);
                        }
                        return;
                    }
                    Rlog.d(TAG, "open the camera again, ignore, the cameraId is: " + cameraId);
                    return;
                }
            } catch (NumberFormatException e) {
                Rlog.e(TAG, "NumberFormatException when open camera", e);
                return;
            }
        }
        if (isCurrentHaveVideoCall() && this.mCurrentCallSession != null && !session.equals(this.mCurrentCallSession)) {
            if (this.mHavePauseAndStop && this.mPreSetSurface == null) {
                this.mHavePauseAndStop = false;
            } else {
                Rlog.d(TAG, "open mHavePauseAndStop is false need pauseVideoAndStopPreview");
                pauseVideoAndStopPreview(this.mCurrentCallSession, this.mCurrentCallSession.getCallProfile());
            }
        }
        if (session != null) {
            if (!session.isMT() || session.isMultiparty()) {
                this.mCAMERASesId = ImsCameraClient.cameraOpen(Integer.parseInt(cameraId), 1);
            } else {
                this.mCAMERASesId = ImsCameraClient.cameraOpen(Integer.parseInt(cameraId), 2);
            }
            Rlog.d(TAG, "open camera result session id is: " + this.mCAMERASesId + "call type:" + session.isMT());
        }
        this.mTryOpenCameraCallSession = null;
        if (this.mCAMERASesId >= 0) {
            mCameraIdForSessoion.put(session, cameraId);
            this.mSDKCameraOpen = true;
            this.mCurrentCallSession = session;
            mSessionMap.put(session, Integer.valueOf(this.mCAMERASesId));
            ImsThinClient.setImsCurrentSession(this.mCAMERASesId);
            if (this.mFristToMergeCall) {
                Rlog.d(TAG, "open mFristToMergeCall is true , mConferenceCallSession " + session);
                this.mConferenceCallSession = session;
                this.mFristToMergeCall = false;
            }
            noticeCameraFailed(session, false);
            return;
        }
        if (this.mCAMERASesId == OPEN_CAMERA_FAIL_RETRY) {
            Rlog.i(TAG, "open the camera failed, wrong call type");
            this.mSDKCameraOpen = true;
            this.mTryOpenCameraCallSession = session;
            Message msg = this.mHandler.obtainMessage();
            msg.what = 1;
            msg.arg1 = Integer.parseInt(cameraId);
            msg.obj = session;
            this.mHandler.sendMessageDelayed(msg, 100L);
            return;
        }
        Rlog.d(TAG, "open the camera failed, the cameraId is: " + cameraId);
        noticeCameraFailed(session, true);
        if (ImsVTGlobals.mChrReporter != null) {
            ImsVTGlobals.mChrReporter.getCameraOpenFailedReason();
        }
    }

    private void replaceConferenceSession(HwImsCallSessionImpl session) {
        Rlog.d(TAG, "replaceConferenceSession session:" + session);
        mSessionMap.put(session, mSessionMap.get(this.mConferenceCallSession));
        mSessionMap.remove(this.mConferenceCallSession);
        if (this.mCurrentCallSession != null && this.mCurrentCallSession.equals(this.mConferenceCallSession)) {
            this.mCurrentCallSession = session;
        }
        mCameraIdForSessoion.put(session, mCameraIdForSessoion.get(this.mConferenceCallSession));
        mCameraIdForSessoion.remove(this.mConferenceCallSession);
        this.mConferenceCallSession = session;
    }

    private void noticeCameraFailed(HwImsCallSessionImpl session, boolean hasFailed) {
        if (session == null) {
            Rlog.e(TAG, "sendCameraStatus: session is null");
            return;
        }
        Rlog.d(TAG, "sendCameraStatus: Notifying Session=" + session.getCallId());
        ImsVTCallProviderImpl provider = session.getImsVTCallProviderImpl();
        if (provider != null) {
            provider.sendCameraStatus(hasFailed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoProfile.CameraCapabilities getCameraCapabilities() {
        Rlog.d(TAG, "getCameraCapabilities");
        return new VideoProfile.CameraCapabilities(PREVIEW_WIDTH, PREVIEW_HEIGHT, false, 1.0f);
    }

    public void close(HwImsCallSessionImpl session, boolean isHangUpCall) {
        Rlog.d(TAG, "close camera");
        if (this.mConferencedSession.contains(session)) {
            this.mConferencedSession.remove(session);
            if (this.mConferenceCallSession != null && session != this.mConferenceCallSession && this.mConferencedSession.size() == 0) {
                replaceConferenceSession(session);
            } else if (this.mConferencedSession.size() > 0) {
                Rlog.d(TAG, "There are other sessions in conference, so we don't release conf session in IMS SDK");
                return;
            }
        }
        if (session == null || !mSessionMap.containsKey(session)) {
            Rlog.d(TAG, "close don't contains Key return");
            return;
        }
        boolean shouldCameraRelease = true;
        if (!session.equals(this.mCurrentCallSession) && mSessionMap.get(session).intValue() != -1) {
            int result = ImsThinClient.setImsCurrentSession(mSessionMap.get(session).intValue());
            Rlog.d(TAG, "close sure set now CurrentSessionID  result: " + result);
            if (result == 1) {
                shouldCameraRelease = false;
            }
        }
        if (this.mSDKCameraOpen && mSessionMap.get(session).intValue() != -1 && shouldCameraRelease) {
            Rlog.d(TAG, "mSDKCameraOpen is: " + this.mSDKCameraOpen + " isMT: " + session.isMT());
            if (session.isMT() && !session.isMultiparty()) {
                ImsCameraClient.cameraRelease(2);
            } else {
                ImsCameraClient.cameraRelease(1);
            }
            int sessionId = mSessionMap.get(session).intValue();
            if (mImsSDKResIdSet.contains(Integer.valueOf(sessionId))) {
                mImsSDKResIdSet.remove(Integer.valueOf(sessionId));
            }
        }
        if (this.mTryOpenCameraCallSession != null && session.equals(this.mTryOpenCameraCallSession)) {
            this.mHandler.removeMessages(1);
            this.mTryOpenCameraCallSession = null;
        }
        if (session.equals(this.mConferenceCallSession)) {
            Rlog.d(TAG, "close camera mConferenceCallSession = null");
            this.mConferenceCallSession = null;
        }
        if (mCameraIdForSessoion.containsKey(session)) {
            mCameraIdForSessoion.remove(session);
        }
        if (mCallSessionState.containsKey(session)) {
            mCallSessionState.remove(session);
        }
        if (this.mHoldMap.containsKey(session)) {
            Set<Boolean> key = this.mHoldMap.get(session);
            key.clear();
            this.mHoldMap.remove(session);
        }
        HwImsCallSessionImpl holdCallSessionImp = getHoldCallSessionImp();
        if (holdCallSessionImp != null && mSessionMap.containsKey(holdCallSessionImp) && mSessionMap.get(holdCallSessionImp).intValue() != -1) {
            this.mIsHandupCurrentCallSession = true;
        }
        if (isHangUpCall) {
            Rlog.d(TAG, "isHangUpCall " + session);
            mSessionMap.remove(session);
            removeInvalidCallSession();
        } else {
            mSessionMap.put(session, -1);
        }
        if (shouldCameraRelease) {
            recoverToSetCurrentSessionId(session);
        }
        if (!isCurrentHaveVideoCall()) {
            this.mHandler.removeMessages(1);
            this.mSDKCameraOpen = false;
            this.mIsHandupCurrentCallSession = false;
            this.mHoldMap.clear();
            mCallSessionState.clear();
            mCameraIdForSessoion.clear();
            this.mFristToMergeCall = false;
        }
        if (session.equals(this.mCurrentCallSession)) {
            this.mCurrentCallSession = null;
            this.mHavePauseAndStop = false;
            this.mBgVideoCallShouldResume = false;
        }
        Rlog.d(TAG, "close camera end");
    }

    public void setPreviewSurface(Surface surface) {
        Rlog.d(TAG, "setPreviewSurface, surface is: " + surface);
        if (surface == null) {
            ImsCameraClient.stopCameraPreview();
            Rlog.d(TAG, "stopCameraPreview");
            this.mPreSetSurface = null;
        } else if (this.mPreSetSurface != surface) {
            this.mPreSetSurface = surface;
            ImsCameraClient.setNearEndSurface(surface);
            ImsCameraClient.startCameraPreview();
            Rlog.d(TAG, "start to setNearEndSurface and startCameraPreview");
        }
    }

    public static CameraManager getInstance() {
        CameraManager cameraManager;
        synchronized (mLock) {
            cameraManager = sInstance;
        }
        return cameraManager;
    }

    private CameraManager(Context context, ImsMediaProvider media) {
        this.mContext = context;
        this.mMedia = media;
        this.mMedia.setCameraListener(this);
        this.mLocalBroadcastManager = LocalBroadcastManager.getInstance(this.mContext);
        registerVTBroadcast();
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
            Rlog.d(TAG, "onImsCallSessionAdded callSession==null");
            return;
        }
        Rlog.d(TAG, "onImsCallSessionAdded currentCallType set default session ID " + callSession);
        if (!mSessionMap.containsKey(callSession)) {
            mSessionMap.put(callSession, -1);
        }
        if (!mCallSessionState.containsKey(callSession)) {
            mCallSessionState.put(callSession, -1);
        }
    }

    @Override // com.huawei.ims.IImsCallListListener
    public void onImsCallSessionRemoved(HwImsCallSessionImpl callSession) {
        Rlog.d(TAG, "onImsCallSessionRemoved only to know is doClose" + callSession);
    }

    public boolean isParamReady() {
        if (mImsSDKResIdSet.contains(Integer.valueOf(this.mCAMERASesId))) {
            return true;
        }
        return false;
    }

    public HwImsCallSessionImpl getCureentCallSessionImp() {
        return this.mCurrentCallSession;
    }

    private void registerVTBroadcast() {
        Rlog.d(TAG, "registerVTBroadcast");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.huawei.caas.vtproxy.thinclient.PARAM_READY");
        this.mLocalBroadcastManager.registerReceiver(this.mBroadcastReceiver, intentFilter);
    }

    public void setCallSessionHold(HwImsCallSessionImpl session, boolean mtHold) {
        Rlog.d(TAG, "setCallSessionHold session" + session + ", mCurrentCallSession:" + this.mCurrentCallSession);
        if (!mSessionMap.containsKey(session)) {
            Rlog.d(TAG, "setCallSessionHold map don't contains key retrun");
            return;
        }
        if (mSessionMap.get(session).intValue() == -1) {
            Rlog.d(TAG, "setCallSessionHold have default session return");
            return;
        }
        ImsCallProfile cp = session.getCallProfile();
        int currentCallType = ImsCallProviderUtils.convertToInternalCallType(cp.mCallType);
        boolean isVideoCallType = ImsCallProviderUtils.isVideoCall(currentCallType);
        if (isVideoCallType) {
            mCallSessionState.put(session, 0);
            if (!session.equals(this.mCurrentCallSession)) {
                int sessionId = mSessionMap.get(session).intValue();
                ImsThinClient.setImsCurrentSession(sessionId);
            }
            if (this.mHoldMap.containsKey(session)) {
                Set<Boolean> key = this.mHoldMap.get(session);
                key.add(Boolean.valueOf(mtHold));
                this.mHoldMap.put(session, key);
            } else {
                Set<Boolean> keys = new HashSet<>();
                keys.add(Boolean.valueOf(mtHold));
                this.mHoldMap.put(session, keys);
            }
            if (session.equals(this.mCurrentCallSession) && mtHold && this.mPreSetSurface == null) {
                this.mBgVideoCallShouldResume = false;
            }
            pauseImsRTPStream(currentCallType);
            recoverToSetCurrentSessionId(session);
            if (isCurrentHaveMoreThanOneVideoCall() && session.equals(this.mCurrentCallSession) && !mtHold) {
                pauseVideoAndStopPreview(session, cp);
            }
        }
    }

    public void setCallSessionResumed(HwImsCallSessionImpl session, boolean mtResume) {
        Rlog.d(TAG, "setCallSessionResumed" + this.mCurrentCallSession + "HwImsCallSessionImpl" + session);
        if (!mSessionMap.containsKey(session)) {
            Rlog.d(TAG, "setCallSessionResumed map don't contains key retrun");
            return;
        }
        if (this.mHoldMap.containsKey(session)) {
            Set<Boolean> key = this.mHoldMap.get(session);
            if (key.contains(Boolean.valueOf(mtResume))) {
                key.remove(Boolean.valueOf(mtResume));
                this.mHoldMap.put(session, key);
            }
        }
        ImsCallProfile cp = session.getCallProfile();
        int currentCallType = ImsCallProviderUtils.convertToInternalCallType(cp.mCallType);
        boolean isVideoCallType = ImsCallProviderUtils.isVideoCall(currentCallType);
        if (isVideoCallType) {
            mCallSessionState.put(session, 1);
            if (!this.mIsHandupCurrentCallSession) {
                boolean onlyHaveOneCall = mSessionMap.size() == 1;
                boolean shouldResume = false;
                if ((this.mHoldMap.containsKey(session) && this.mHoldMap.get(session).size() == 0) || !this.mHoldMap.containsKey(session)) {
                    shouldResume = true;
                }
                if (session.equals(this.mCurrentCallSession) && shouldResume) {
                    boolean mIsVideoPaused = false;
                    ImsVTCallProviderImpl provider = session.getImsVTCallProviderImpl();
                    if (provider != null) {
                        mIsVideoPaused = provider.isVideoPaused();
                    }
                    if ((onlyHaveOneCall && isCurrentHaveVideoCall() && !mtResume) || (mtResume && !mIsVideoPaused)) {
                        resumeImsRTPStream(currentCallType);
                    } else if (mtResume && this.mPreSetSurface == null) {
                        this.mBgVideoCallShouldResume = true;
                    }
                }
            }
        }
        this.mIsHandupCurrentCallSession = false;
    }

    public void setCurrentSessionStarted(HwImsCallSessionImpl session) {
        Rlog.d(TAG, "setCurrentSessionStarted" + this.mCurrentCallSession + "HwImsCallSessionImpl" + session);
        if (!mSessionMap.containsKey(session)) {
            Rlog.d(TAG, "setCallSessionHold map don't contains key retrun");
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
        if (!isVideoCallType && isCurrentSession && isCurrentHaveMoreThanOneVideoCall()) {
            close(session, false);
        }
    }

    public void setCurrentSessionMerged() {
        Rlog.d(TAG, "setCurrentSessionMerged");
        if (!isCurrentHaveVideoCall()) {
            Rlog.e(TAG, "voice conference merged, we don't need to handle!");
            return;
        }
        if (this.mConferenceCallSession == null) {
            Rlog.d(TAG, "setCurrentSessionMerged mFristToMergeCall = true ");
            this.mFristToMergeCall = true;
            for (Map.Entry<HwImsCallSessionImpl, Integer> entry : mSessionMap.entrySet()) {
                Rlog.d(TAG, "add session to conference:" + entry.getKey());
                this.mConferencedSession.add(entry.getKey());
                mImsSDKResIdSet.remove(entry.getValue());
            }
            mSessionMap.clear();
        } else {
            Rlog.d(TAG, "setCurrentSessionMerged remove callSession only mConferenceCallSession " + this.mConferenceCallSession);
            int confSessionId = -1;
            for (Map.Entry<HwImsCallSessionImpl, Integer> entry2 : mSessionMap.entrySet()) {
                if (this.mConferenceCallSession.equals(entry2.getKey())) {
                    confSessionId = entry2.getValue().intValue();
                }
                if (!this.mConferencedSession.contains(entry2.getKey())) {
                    Rlog.d(TAG, "after merge, add new session " + entry2.getKey());
                    this.mConferencedSession.add(entry2.getKey());
                    mImsSDKResIdSet.remove(entry2.getValue());
                }
            }
            mSessionMap.clear();
            mSessionMap.put(this.mConferenceCallSession, Integer.valueOf(confSessionId));
        }
        this.mHavePauseAndStop = false;
    }

    private void pauseVideoAndStopPreview(HwImsCallSessionImpl session, ImsCallProfile cp) {
        Rlog.d(TAG, "pauseVideoAndStopPreview");
        if (cp == null) {
            Rlog.e(TAG, "pauseVideoAndStopPreview cp null");
            return;
        }
        setPreviewSurface(null);
        int currentVideoState = ImsCallProviderUtils.convertCallTypeToVideoState(cp.mCallType);
        VideoProfile requestProfile = new VideoProfile(currentVideoState | 4);
        VideoProfile fromProfile = new VideoProfile(currentVideoState);
        ImsVTCallProviderImpl provider = session.getImsVTCallProviderImpl();
        if (provider == null) {
            Rlog.e(TAG, "pauseVideoAndStopPreview,provider is null");
            return;
        }
        provider.onSendSessionModifyRequest(fromProfile, requestProfile);
        if (session.equals(this.mCurrentCallSession)) {
            this.mHavePauseAndStop = true;
        }
    }

    private void pauseImsRTPStream(int currentCallType) {
        int direction = RTPController.convertCallTypeToDirection(currentCallType);
        int result = RTPController.pauseRTPStream(direction);
        StringBuilder sb = new StringBuilder();
        sb.append("setCallSessionHold result:");
        sb.append(result == 0);
        Rlog.d(TAG, sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeImsRTPStream(int currentCallType) {
        int direction = RTPController.convertCallTypeToDirection(currentCallType);
        int result = RTPController.resumeRTPStream(direction);
        StringBuilder sb = new StringBuilder();
        sb.append("setCallSessionResumed result ");
        sb.append(result);
        sb.append(result == 0);
        Rlog.d(TAG, sb.toString());
    }

    private void recoverToSetCurrentSessionId(HwImsCallSessionImpl session) {
        boolean enableSetCurrentSessionId = (this.mCurrentCallSession == null || !mSessionMap.containsKey(this.mCurrentCallSession) || mSessionMap.get(this.mCurrentCallSession).intValue() == -1) ? false : true;
        if (!session.equals(this.mCurrentCallSession) && enableSetCurrentSessionId) {
            int currentSessionId = mSessionMap.get(this.mCurrentCallSession).intValue();
            ImsThinClient.setImsCurrentSession(currentSessionId);
        }
    }

    public boolean isCurrentHaveMoreThanOneVideoCall() {
        int videoCallNum = 0;
        for (Map.Entry<HwImsCallSessionImpl, Integer> entry : mSessionMap.entrySet()) {
            if (entry.getValue().intValue() != -1) {
                videoCallNum++;
                Rlog.d(TAG, "isCurrentHaveMoreThanOneVideoCall videoCallNum  " + videoCallNum);
            }
        }
        if (videoCallNum > 1) {
            Rlog.d(TAG, "isCurrentHaveMoreThanOneVideoCall return true");
            return true;
        }
        Rlog.d(TAG, "isCurrentHaveMoreThanOneVideoCall return false");
        return false;
    }

    public boolean isCurrentHaveVideoCall() {
        for (Map.Entry<HwImsCallSessionImpl, Integer> entry : mSessionMap.entrySet()) {
            if (entry.getValue().intValue() != -1) {
                Rlog.d(TAG, "isCurrentHaveVideoCall return true");
                return true;
            }
        }
        Rlog.d(TAG, "isCurrentHaveVideoCall return false");
        return false;
    }

    private void removeInvalidCallSession() {
        Iterator<Map.Entry<HwImsCallSessionImpl, Integer>> it = mSessionMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<HwImsCallSessionImpl, Integer> entry = it.next();
            HwImsCallSessionImpl callSession = entry.getKey();
            if (callSession.getCall() == null) {
                it.remove();
            }
        }
    }

    public HwImsCallSessionImpl getOtherCallSessionImp() {
        for (Map.Entry<HwImsCallSessionImpl, Integer> entry : mSessionMap.entrySet()) {
            if (entry.getValue().intValue() != -1) {
                Rlog.d(TAG, "getOtherCallSessionImp ");
                return entry.getKey();
            }
        }
        Rlog.d(TAG, "getOtherCallSessionImp return null");
        return null;
    }

    public HwImsCallSessionImpl getHoldCallSessionImp() {
        for (Map.Entry<HwImsCallSessionImpl, Integer> entry : mCallSessionState.entrySet()) {
            if (entry.getValue().intValue() == 0) {
                Rlog.d(TAG, "getHoldCallSessionImp");
                return entry.getKey();
            }
        }
        Rlog.d(TAG, "getHoldCallSessionImp return null");
        return null;
    }

    public boolean isBgVideoCallShouldResume() {
        return this.mBgVideoCallShouldResume;
    }

    public void initBgVideoCallShouldResume() {
        this.mBgVideoCallShouldResume = false;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
    private class CameraManagerHandler extends Handler {
        CameraManagerHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Rlog.d(CameraManager.TAG, "handle message:" + msg.what);
            if (msg.what == 1) {
                HwImsCallSessionImpl session = (HwImsCallSessionImpl) msg.obj;
                CameraManager.this.open(String.valueOf(msg.arg1), session);
            }
        }
    }
}
