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

/* loaded from: CameraManager.class */
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
                if (CameraManager.mImsSDKResIdSet.contains(Integer.valueOf(CameraManager.this.mCAMERASesId)) && CameraManager.this.mCurrentCallSession != null && MediaManager.getInstance().setDisplaySurface()) {
                    int convertToInternalCallType = ImsCallProviderUtils.convertToInternalCallType(CameraManager.this.mCurrentCallSession.getCallProfile().mCallType);
                    if (ImsCallProviderUtils.isVideoCall(convertToInternalCallType)) {
                        CameraManager.this.resumeImsRTPStream(convertToInternalCallType);
                    }
                }
            }
        }
    };

    /* loaded from: CameraManager$CameraManagerHandler.class */
    private class CameraManagerHandler extends Handler {
        CameraManagerHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Rlog.d(CameraManager.TAG, "handle message:" + message.what);
            if (message.what != 1) {
                return;
            }
            CameraManager.this.open(String.valueOf(message.arg1), (HwImsCallSessionImpl) message.obj);
        }
    }

    private CameraManager() {
    }

    private CameraManager(Context context, ImsMediaProvider imsMediaProvider) {
        this.mContext = context;
        this.mMedia = imsMediaProvider;
        this.mMedia.setCameraListener(this);
        this.mLocalBroadcastManager = LocalBroadcastManager.getInstance(this.mContext);
        registerVTBroadcast();
    }

    public static CameraManager getInstance() {
        CameraManager cameraManager;
        synchronized (mLock) {
            cameraManager = sInstance;
        }
        return cameraManager;
    }

    public static void init(Context context, ImsMediaProvider imsMediaProvider) {
        synchronized (mLock) {
            if (sInstance == null) {
                sInstance = new CameraManager(context, imsMediaProvider);
            }
        }
    }

    private void noticeCameraFailed(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z) {
        if (hwImsCallSessionImpl == null) {
            Rlog.e(TAG, "sendCameraStatus: session is null");
            return;
        }
        Rlog.d(TAG, "sendCameraStatus: Notifying Session=" + hwImsCallSessionImpl.getCallId());
        ImsVTCallProviderImpl imsVTCallProviderImpl = hwImsCallSessionImpl.getImsVTCallProviderImpl();
        if (imsVTCallProviderImpl != null) {
            imsVTCallProviderImpl.sendCameraStatus(z);
        }
    }

    private void pauseImsRTPStream(int i) {
        int pauseRTPStream = RTPController.pauseRTPStream(RTPController.convertCallTypeToDirection(i));
        StringBuilder sb = new StringBuilder();
        sb.append("setCallSessionHold result:");
        sb.append(pauseRTPStream == 0);
        Rlog.d(TAG, sb.toString());
    }

    private void pauseVideoAndStopPreview(HwImsCallSessionImpl hwImsCallSessionImpl, ImsCallProfile imsCallProfile) {
        Rlog.d(TAG, "pauseVideoAndStopPreview");
        if (imsCallProfile == null) {
            Rlog.e(TAG, "pauseVideoAndStopPreview cp null");
            return;
        }
        setPreviewSurface(null);
        int convertCallTypeToVideoState = ImsCallProviderUtils.convertCallTypeToVideoState(imsCallProfile.mCallType);
        VideoProfile videoProfile = new VideoProfile(convertCallTypeToVideoState | 4);
        VideoProfile videoProfile2 = new VideoProfile(convertCallTypeToVideoState);
        ImsVTCallProviderImpl imsVTCallProviderImpl = hwImsCallSessionImpl.getImsVTCallProviderImpl();
        if (imsVTCallProviderImpl == null) {
            Rlog.e(TAG, "pauseVideoAndStopPreview,provider is null");
            return;
        }
        imsVTCallProviderImpl.onSendSessionModifyRequest(videoProfile2, videoProfile);
        if (hwImsCallSessionImpl.equals(this.mCurrentCallSession)) {
            this.mHavePauseAndStop = true;
        }
    }

    private void recoverToSetCurrentSessionId(HwImsCallSessionImpl hwImsCallSessionImpl) {
        boolean z = (this.mCurrentCallSession == null || !mSessionMap.containsKey(this.mCurrentCallSession) || mSessionMap.get(this.mCurrentCallSession).intValue() == -1) ? false : true;
        if (hwImsCallSessionImpl.equals(this.mCurrentCallSession) || !z) {
            return;
        }
        ImsThinClient.setImsCurrentSession(mSessionMap.get(this.mCurrentCallSession).intValue());
    }

    private void registerVTBroadcast() {
        Rlog.d(TAG, "registerVTBroadcast");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.huawei.caas.vtproxy.thinclient.PARAM_READY");
        this.mLocalBroadcastManager.registerReceiver(this.mBroadcastReceiver, intentFilter);
    }

    private void removeInvalidCallSession() {
        Iterator<Map.Entry<HwImsCallSessionImpl, Integer>> it = mSessionMap.entrySet().iterator();
        while (it.hasNext()) {
            if (it.next().getKey().getCall() == null) {
                it.remove();
            }
        }
    }

    private void replaceConferenceSession(HwImsCallSessionImpl hwImsCallSessionImpl) {
        Rlog.d(TAG, "replaceConferenceSession session:" + hwImsCallSessionImpl);
        mSessionMap.put(hwImsCallSessionImpl, mSessionMap.get(this.mConferenceCallSession));
        mSessionMap.remove(this.mConferenceCallSession);
        if (this.mCurrentCallSession != null && this.mCurrentCallSession.equals(this.mConferenceCallSession)) {
            this.mCurrentCallSession = hwImsCallSessionImpl;
        }
        mCameraIdForSessoion.put(hwImsCallSessionImpl, mCameraIdForSessoion.get(this.mConferenceCallSession));
        mCameraIdForSessoion.remove(this.mConferenceCallSession);
        this.mConferenceCallSession = hwImsCallSessionImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeImsRTPStream(int i) {
        int resumeRTPStream = RTPController.resumeRTPStream(RTPController.convertCallTypeToDirection(i));
        StringBuilder sb = new StringBuilder();
        sb.append("setCallSessionResumed result ");
        sb.append(resumeRTPStream);
        sb.append(resumeRTPStream == 0);
        Rlog.d(TAG, sb.toString());
    }

    public void cleanPreStatus() {
        this.mPreSetSurface = null;
    }

    public void close(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z) {
        Rlog.d(TAG, "close camera");
        if (this.mConferencedSession.contains(hwImsCallSessionImpl)) {
            this.mConferencedSession.remove(hwImsCallSessionImpl);
            if (this.mConferenceCallSession != null && hwImsCallSessionImpl != this.mConferenceCallSession && this.mConferencedSession.size() == 0) {
                replaceConferenceSession(hwImsCallSessionImpl);
            } else if (this.mConferencedSession.size() > 0) {
                Rlog.d(TAG, "There are other sessions in conference, so we don't release conf session in IMS SDK");
                return;
            }
        }
        if (hwImsCallSessionImpl == null || !mSessionMap.containsKey(hwImsCallSessionImpl)) {
            Rlog.d(TAG, "close don't contains Key return");
            return;
        }
        boolean z2 = true;
        if (!hwImsCallSessionImpl.equals(this.mCurrentCallSession)) {
            z2 = true;
            if (mSessionMap.get(hwImsCallSessionImpl).intValue() != -1) {
                int imsCurrentSession = ImsThinClient.setImsCurrentSession(mSessionMap.get(hwImsCallSessionImpl).intValue());
                Rlog.d(TAG, "close sure set now CurrentSessionID  result: " + imsCurrentSession);
                z2 = true;
                if (imsCurrentSession == 1) {
                    z2 = false;
                }
            }
        }
        if (this.mSDKCameraOpen && mSessionMap.get(hwImsCallSessionImpl).intValue() != -1 && z2) {
            Rlog.d(TAG, "mSDKCameraOpen is: " + this.mSDKCameraOpen + " isMT: " + hwImsCallSessionImpl.isMT());
            if (!hwImsCallSessionImpl.isMT() || hwImsCallSessionImpl.isMultiparty()) {
                ImsCameraClient.cameraRelease(1);
            } else {
                ImsCameraClient.cameraRelease(2);
            }
            int intValue = mSessionMap.get(hwImsCallSessionImpl).intValue();
            if (mImsSDKResIdSet.contains(Integer.valueOf(intValue))) {
                mImsSDKResIdSet.remove(Integer.valueOf(intValue));
            }
        }
        if (this.mTryOpenCameraCallSession != null && hwImsCallSessionImpl.equals(this.mTryOpenCameraCallSession)) {
            this.mHandler.removeMessages(1);
            this.mTryOpenCameraCallSession = null;
        }
        if (hwImsCallSessionImpl.equals(this.mConferenceCallSession)) {
            Rlog.d(TAG, "close camera mConferenceCallSession = null");
            this.mConferenceCallSession = null;
        }
        if (mCameraIdForSessoion.containsKey(hwImsCallSessionImpl)) {
            mCameraIdForSessoion.remove(hwImsCallSessionImpl);
        }
        if (mCallSessionState.containsKey(hwImsCallSessionImpl)) {
            mCallSessionState.remove(hwImsCallSessionImpl);
        }
        if (this.mHoldMap.containsKey(hwImsCallSessionImpl)) {
            this.mHoldMap.get(hwImsCallSessionImpl).clear();
            this.mHoldMap.remove(hwImsCallSessionImpl);
        }
        HwImsCallSessionImpl holdCallSessionImp = getHoldCallSessionImp();
        if (holdCallSessionImp != null && mSessionMap.containsKey(holdCallSessionImp) && mSessionMap.get(holdCallSessionImp).intValue() != -1) {
            this.mIsHandupCurrentCallSession = true;
        }
        if (z) {
            Rlog.d(TAG, "isHangUpCall " + hwImsCallSessionImpl);
            mSessionMap.remove(hwImsCallSessionImpl);
            removeInvalidCallSession();
        } else {
            mSessionMap.put(hwImsCallSessionImpl, -1);
        }
        if (z2) {
            recoverToSetCurrentSessionId(hwImsCallSessionImpl);
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
        if (hwImsCallSessionImpl.equals(this.mCurrentCallSession)) {
            this.mCurrentCallSession = null;
            this.mHavePauseAndStop = false;
            this.mBgVideoCallShouldResume = false;
        }
        Rlog.d(TAG, "close camera end");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoProfile.CameraCapabilities getCameraCapabilities() {
        Rlog.d(TAG, "getCameraCapabilities");
        return new VideoProfile.CameraCapabilities(PREVIEW_WIDTH, PREVIEW_HEIGHT, false, 1.0f);
    }

    public HwImsCallSessionImpl getCureentCallSessionImp() {
        return this.mCurrentCallSession;
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

    public void initBgVideoCallShouldResume() {
        this.mBgVideoCallShouldResume = false;
    }

    public boolean isBgVideoCallShouldResume() {
        return this.mBgVideoCallShouldResume;
    }

    public boolean isCurrentHaveMoreThanOneVideoCall() {
        int i = 0;
        for (Map.Entry<HwImsCallSessionImpl, Integer> entry : mSessionMap.entrySet()) {
            int i2 = i;
            if (entry.getValue().intValue() != -1) {
                i2 = i + 1;
                Rlog.d(TAG, "isCurrentHaveMoreThanOneVideoCall videoCallNum  " + i2);
            }
            i = i2;
        }
        if (i > 1) {
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

    public boolean isParamReady() {
        return mImsSDKResIdSet.contains(Integer.valueOf(this.mCAMERASesId));
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.CameraListener
    public void onCameraConfigChanged(int i, int i2, short s, Surface surface) {
    }

    @Override // com.huawei.ims.IImsCallListListener
    public void onImsCallSessionAdded(HwImsCallSessionImpl hwImsCallSessionImpl) {
        if (hwImsCallSessionImpl == null) {
            Rlog.d(TAG, "onImsCallSessionAdded callSession==null");
            return;
        }
        Rlog.d(TAG, "onImsCallSessionAdded currentCallType set default session ID " + hwImsCallSessionImpl);
        if (!mSessionMap.containsKey(hwImsCallSessionImpl)) {
            mSessionMap.put(hwImsCallSessionImpl, -1);
        }
        if (mCallSessionState.containsKey(hwImsCallSessionImpl)) {
            return;
        }
        mCallSessionState.put(hwImsCallSessionImpl, -1);
    }

    @Override // com.huawei.ims.IImsCallListListener
    public void onImsCallSessionRemoved(HwImsCallSessionImpl hwImsCallSessionImpl) {
        Rlog.d(TAG, "onImsCallSessionRemoved only to know is doClose" + hwImsCallSessionImpl);
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.CameraListener
    public void onMediaDeinitialized() {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.CameraListener
    public void onRecordingDisabled() {
    }

    @Override // com.huawei.ims.vt.ImsMediaProvider.CameraListener
    public void onRecordingEnabled() {
    }

    public void open(String str, HwImsCallSessionImpl hwImsCallSessionImpl) {
        if (str == null) {
            Rlog.e(TAG, "open: Invalid camera id or session is null");
            return;
        }
        Rlog.d(TAG, "open: camearId is: " + str);
        boolean z = false;
        if (this.mConferencedSession.contains(hwImsCallSessionImpl) && this.mConferenceCallSession != null && hwImsCallSessionImpl != this.mConferenceCallSession) {
            Rlog.d(TAG, "another callsession in conference try to open camera");
            replaceConferenceSession(hwImsCallSessionImpl);
        }
        boolean z2 = false;
        if (mCameraIdForSessoion.containsKey(hwImsCallSessionImpl)) {
            z = true;
            z2 = false;
            if (!str.equals(mCameraIdForSessoion.get(hwImsCallSessionImpl))) {
                z2 = true;
                z = true;
            }
        }
        if (!mSessionMap.containsKey(hwImsCallSessionImpl)) {
            mSessionMap.put(hwImsCallSessionImpl, -1);
        }
        if (mSessionMap.get(hwImsCallSessionImpl).intValue() != -1 && z && !z2) {
            Rlog.d(TAG, "open: already open the Camera");
            this.mCurrentCallSession = hwImsCallSessionImpl;
            int intValue = mSessionMap.get(hwImsCallSessionImpl).intValue();
            ImsThinClient.setImsCurrentSession(intValue);
            noticeCameraFailed(hwImsCallSessionImpl, false);
            this.mCAMERASesId = intValue;
            return;
        }
        if (z) {
            try {
                if (mSessionMap.get(hwImsCallSessionImpl).intValue() != -1) {
                    if (z2) {
                        int switchCameras = ImsCameraClient.switchCameras();
                        Rlog.d(TAG, "switchCameras");
                        if (switchCameras == 0) {
                            mCameraIdForSessoion.put(hwImsCallSessionImpl, str);
                            noticeCameraFailed(hwImsCallSessionImpl, false);
                        } else {
                            Rlog.d(TAG, "switch camera failed, the cameraId is: " + str);
                            noticeCameraFailed(hwImsCallSessionImpl, true);
                        }
                    } else {
                        Rlog.d(TAG, "open the camera again, ignore, the cameraId is: " + str);
                    }
                }
            } catch (NumberFormatException e) {
                Rlog.e(TAG, "NumberFormatException when open camera", e);
                return;
            }
        }
        if (isCurrentHaveVideoCall() && this.mCurrentCallSession != null && !hwImsCallSessionImpl.equals(this.mCurrentCallSession)) {
            if (this.mHavePauseAndStop && this.mPreSetSurface == null) {
                this.mHavePauseAndStop = false;
            } else {
                Rlog.d(TAG, "open mHavePauseAndStop is false need pauseVideoAndStopPreview");
                pauseVideoAndStopPreview(this.mCurrentCallSession, this.mCurrentCallSession.getCallProfile());
            }
        }
        if (hwImsCallSessionImpl != null) {
            if (!hwImsCallSessionImpl.isMT() || hwImsCallSessionImpl.isMultiparty()) {
                this.mCAMERASesId = ImsCameraClient.cameraOpen(Integer.parseInt(str), 1);
            } else {
                this.mCAMERASesId = ImsCameraClient.cameraOpen(Integer.parseInt(str), 2);
            }
            Rlog.d(TAG, "open camera result session id is: " + this.mCAMERASesId + "call type:" + hwImsCallSessionImpl.isMT());
        }
        this.mTryOpenCameraCallSession = null;
        if (this.mCAMERASesId >= 0) {
            mCameraIdForSessoion.put(hwImsCallSessionImpl, str);
            this.mSDKCameraOpen = true;
            this.mCurrentCallSession = hwImsCallSessionImpl;
            mSessionMap.put(hwImsCallSessionImpl, Integer.valueOf(this.mCAMERASesId));
            ImsThinClient.setImsCurrentSession(this.mCAMERASesId);
            if (this.mFristToMergeCall) {
                Rlog.d(TAG, "open mFristToMergeCall is true , mConferenceCallSession " + hwImsCallSessionImpl);
                this.mConferenceCallSession = hwImsCallSessionImpl;
                this.mFristToMergeCall = false;
            }
            noticeCameraFailed(hwImsCallSessionImpl, false);
        } else if (this.mCAMERASesId == OPEN_CAMERA_FAIL_RETRY) {
            Rlog.i(TAG, "open the camera failed, wrong call type");
            this.mSDKCameraOpen = true;
            this.mTryOpenCameraCallSession = hwImsCallSessionImpl;
            Message obtainMessage = this.mHandler.obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.arg1 = Integer.parseInt(str);
            obtainMessage.obj = hwImsCallSessionImpl;
            this.mHandler.sendMessageDelayed(obtainMessage, 100L);
        } else {
            Rlog.d(TAG, "open the camera failed, the cameraId is: " + str);
            noticeCameraFailed(hwImsCallSessionImpl, true);
            if (ImsVTGlobals.mChrReporter != null) {
                ImsVTGlobals.mChrReporter.getCameraOpenFailedReason();
            }
        }
    }

    public void setCallSessionHold(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z) {
        Rlog.d(TAG, "setCallSessionHold session" + hwImsCallSessionImpl + ", mCurrentCallSession:" + this.mCurrentCallSession);
        if (!mSessionMap.containsKey(hwImsCallSessionImpl)) {
            Rlog.d(TAG, "setCallSessionHold map don't contains key retrun");
        } else if (mSessionMap.get(hwImsCallSessionImpl).intValue() == -1) {
            Rlog.d(TAG, "setCallSessionHold have default session return");
        } else {
            ImsCallProfile callProfile = hwImsCallSessionImpl.getCallProfile();
            int convertToInternalCallType = ImsCallProviderUtils.convertToInternalCallType(callProfile.mCallType);
            if (ImsCallProviderUtils.isVideoCall(convertToInternalCallType)) {
                mCallSessionState.put(hwImsCallSessionImpl, 0);
                if (!hwImsCallSessionImpl.equals(this.mCurrentCallSession)) {
                    ImsThinClient.setImsCurrentSession(mSessionMap.get(hwImsCallSessionImpl).intValue());
                }
                if (this.mHoldMap.containsKey(hwImsCallSessionImpl)) {
                    Set<Boolean> set = this.mHoldMap.get(hwImsCallSessionImpl);
                    set.add(Boolean.valueOf(z));
                    this.mHoldMap.put(hwImsCallSessionImpl, set);
                } else {
                    HashSet hashSet = new HashSet();
                    hashSet.add(Boolean.valueOf(z));
                    this.mHoldMap.put(hwImsCallSessionImpl, hashSet);
                }
                if (hwImsCallSessionImpl.equals(this.mCurrentCallSession) && z && this.mPreSetSurface == null) {
                    this.mBgVideoCallShouldResume = false;
                }
                pauseImsRTPStream(convertToInternalCallType);
                recoverToSetCurrentSessionId(hwImsCallSessionImpl);
                if (isCurrentHaveMoreThanOneVideoCall() && hwImsCallSessionImpl.equals(this.mCurrentCallSession) && !z) {
                    pauseVideoAndStopPreview(hwImsCallSessionImpl, callProfile);
                }
            }
        }
    }

    public void setCallSessionResumed(HwImsCallSessionImpl hwImsCallSessionImpl, boolean z) {
        Rlog.d(TAG, "setCallSessionResumed" + this.mCurrentCallSession + "HwImsCallSessionImpl" + hwImsCallSessionImpl);
        if (!mSessionMap.containsKey(hwImsCallSessionImpl)) {
            Rlog.d(TAG, "setCallSessionResumed map don't contains key retrun");
            return;
        }
        if (this.mHoldMap.containsKey(hwImsCallSessionImpl)) {
            Set<Boolean> set = this.mHoldMap.get(hwImsCallSessionImpl);
            if (set.contains(Boolean.valueOf(z))) {
                set.remove(Boolean.valueOf(z));
                this.mHoldMap.put(hwImsCallSessionImpl, set);
            }
        }
        int convertToInternalCallType = ImsCallProviderUtils.convertToInternalCallType(hwImsCallSessionImpl.getCallProfile().mCallType);
        if (ImsCallProviderUtils.isVideoCall(convertToInternalCallType)) {
            mCallSessionState.put(hwImsCallSessionImpl, 1);
            if (!this.mIsHandupCurrentCallSession) {
                boolean z2 = mSessionMap.size() == 1;
                boolean z3 = false;
                if ((this.mHoldMap.containsKey(hwImsCallSessionImpl) && this.mHoldMap.get(hwImsCallSessionImpl).size() == 0) || !this.mHoldMap.containsKey(hwImsCallSessionImpl)) {
                    z3 = true;
                }
                if (hwImsCallSessionImpl.equals(this.mCurrentCallSession) && z3) {
                    boolean z4 = false;
                    ImsVTCallProviderImpl imsVTCallProviderImpl = hwImsCallSessionImpl.getImsVTCallProviderImpl();
                    if (imsVTCallProviderImpl != null) {
                        z4 = imsVTCallProviderImpl.isVideoPaused();
                    }
                    if ((z2 && isCurrentHaveVideoCall() && !z) || (z && !z4)) {
                        resumeImsRTPStream(convertToInternalCallType);
                    } else if (z && this.mPreSetSurface == null) {
                        this.mBgVideoCallShouldResume = true;
                    }
                }
            }
        }
        this.mIsHandupCurrentCallSession = false;
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
            int i = -1;
            for (Map.Entry<HwImsCallSessionImpl, Integer> entry2 : mSessionMap.entrySet()) {
                if (this.mConferenceCallSession.equals(entry2.getKey())) {
                    i = entry2.getValue().intValue();
                }
                if (!this.mConferencedSession.contains(entry2.getKey())) {
                    Rlog.d(TAG, "after merge, add new session " + entry2.getKey());
                    this.mConferencedSession.add(entry2.getKey());
                    mImsSDKResIdSet.remove(entry2.getValue());
                }
            }
            mSessionMap.clear();
            mSessionMap.put(this.mConferenceCallSession, Integer.valueOf(i));
        }
        this.mHavePauseAndStop = false;
    }

    public void setCurrentSessionStarted(HwImsCallSessionImpl hwImsCallSessionImpl) {
        Rlog.d(TAG, "setCurrentSessionStarted" + this.mCurrentCallSession + "HwImsCallSessionImpl" + hwImsCallSessionImpl);
        if (!mSessionMap.containsKey(hwImsCallSessionImpl)) {
            Rlog.d(TAG, "setCallSessionHold map don't contains key retrun");
            return;
        }
        ImsCallProfile callProfile = hwImsCallSessionImpl.getCallProfile();
        boolean isVideoCall = ImsCallProviderUtils.isVideoCall(ImsCallProviderUtils.convertToInternalCallType(callProfile.mCallType));
        boolean equals = hwImsCallSessionImpl.equals(this.mCurrentCallSession);
        if (isVideoCall && isCurrentHaveVideoCall() && !equals) {
            if (isCurrentHaveMoreThanOneVideoCall() || getOtherCallSessionImp() == null) {
                return;
            }
            pauseVideoAndStopPreview(getOtherCallSessionImp(), callProfile);
        } else if (!isVideoCall && equals && isCurrentHaveMoreThanOneVideoCall()) {
            close(hwImsCallSessionImpl, false);
        }
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
}
