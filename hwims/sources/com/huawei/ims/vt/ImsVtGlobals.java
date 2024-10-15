package com.huawei.ims.vt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.telephony.Rlog;
import com.huawei.ims.DriverImsCall;
import com.huawei.ims.HwImsCallSessionImpl;
import com.huawei.ims.HwImsServiceImpl;
import com.huawei.ims.ImsCallProviderUtils;
import com.huawei.ims.SdkChrReport;
import com.huawei.vtproxy.ImsCameraClient;
import com.huawei.vtproxy.ImsThinClient;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import vendor.huawei.hardware.radio.ims.V2_0.LastCallFailCause;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class ImsVtGlobals {
    private static final String ACTION_IMS_SWITCH_STATE_CHANGE = "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE";
    private static final int CALLSESSION_MAX_SIZE = 1;
    private static final int EVENT_RETRY_TO_INIT_SDK = 1;
    private static final int HME_V_CAMERA_TYPES = 0;
    private static final int HME_V_ENCODER_USE_TYPES = 1;
    public static final String IMS_SWITCH_STATE_CHANGE_PERMISSION = "com.huawei.ims.permission.IMS_SWITCH_STATE_CHANGE";
    private static final int INIT_SDK_DELAY = 1000;
    private static final int INIT_SDK_DELAY_MAX_TIMES = 2;
    private static final int INIT_SDK_SUCCESS = 0;
    private static final String TAG = "ImsVtGlobals";
    static SdkChrReport sChrReporter;
    private static Context sContext;
    private static HwImsServiceImpl[] sHwImsServiceImpl;
    private static final Object IMS_VIDEO_GLOBALS_LOCK = new Object();
    private static boolean sIsSdkInited = false;
    private static boolean sIsBootCompleted = false;
    private static ImsVtGlobals sInstance = null;
    private static ArrayList<HwImsCallSessionImpl> imsCallSessionArrayList = new ArrayList<>();
    private static ArrayList<ImsVtCallProviderImpl> imsVideoCallProviderList = new ArrayList<>();
    private static Handler sHandler = new InitSdkHandler();
    private static int sInitSdkRetryTimes = 0;
    private static HashMap<HwImsCallSessionImpl, ImsVtCallProviderImpl> sImsVideoCallProviderMap = new HashMap<>();
    private static ImsThinClient.GetResCallBack sVideoDimensionCallBack = new ImsThinClient.GetResCallBack() { // from class: com.huawei.ims.vt.ImsVtGlobals.1
        @Override // com.huawei.vtproxy.ImsThinClient.GetResCallBack
        public void getCurrentDynamicRes(int width, int height) {
            Rlog.i(ImsVtGlobals.TAG, "video dimension change CallBack, width =" + width + ", height =" + height);
            ImsVtGlobals.changePeerDimensions(width, height);
        }
    };
    private static BroadcastReceiver sBroadcastReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.vt.ImsVtGlobals.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null) {
                Rlog.e(ImsVtGlobals.TAG, "Received Intent: intent or intent.getAction() is null");
                return;
            }
            String action = intent.getAction();
            Rlog.i(ImsVtGlobals.TAG, "onReceive: action=" + action);
            if (ImsVtGlobals.ACTION_IMS_SWITCH_STATE_CHANGE.equals(action) || "android.intent.action.RADIO_TECHNOLOGY".equals(action)) {
                ImsVtGlobals.reInitVtSdk(VtUtils.isImsSwitchOn(ImsVtGlobals.sContext));
                return;
            }
            if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
                Rlog.i(ImsVtGlobals.TAG, "intent.getAction is ACTION_BOOT_COMPLETED, sIsSdkInited = " + ImsVtGlobals.sIsSdkInited);
                ImsThinClient.imsProcBootCompleted();
                if (ImsVtGlobals.sIsSdkInited) {
                    Rlog.i(ImsVtGlobals.TAG, "create HME log folder when receive BootCompleted broadcast");
                    ImsThinClient.createHmeLogFolder();
                }
                boolean unused = ImsVtGlobals.sIsBootCompleted = true;
                return;
            }
            if (!"android.intent.action.ACTION_SHUTDOWN".equals(action)) {
                Rlog.e(ImsVtGlobals.TAG, "error branch");
                return;
            }
            Rlog.i(ImsVtGlobals.TAG, "intent.getAction is ACTION_SHUTDOWN, sIsSdkInited = " + ImsVtGlobals.sIsSdkInited);
            if (ImsVtGlobals.sIsSdkInited && VtUtils.isVtSupported()) {
                ImsVtGlobals.deInit();
            }
        }
    };

    private ImsVtGlobals() {
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum HmeVideoCameraType {
        HME_V_CAMERA1_SURFACEVIEW(LastCallFailCause.MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE),
        HME_V_CAMERA1_SURFACETEXTURE(LastCallFailCause.RECOVERY_ON_TIMER_EXPIRED),
        HME_V_CAMERA2(201),
        HME_V_CAMERA1_NATIVECAMERA(301),
        HME_V_CAMERA1_SCREENCAPTURE(401),
        HME_V_CAMERA_DEFAULT(0);

        private int value;

        HmeVideoCameraType(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    public enum HmeVideoEncoderUseType {
        HME_V_Encoder_DEFAULT(0),
        HME_V_Encoder_SURFACE(LastCallFailCause.MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE);

        private int value;

        HmeVideoEncoderUseType(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static void init(Context context) {
        synchronized (IMS_VIDEO_GLOBALS_LOCK) {
            Rlog.i(TAG, "ImsVtGlobals init");
            sContext = context;
            initDev();
            initVtSdk(VtUtils.isImsSwitchOn(sContext));
            CameraManager.init(sContext, ImsMediaProvider.getInstance());
            MediaManager.init(sContext, ImsMediaProvider.getInstance());
            registerImsSwitchBoardcast();
            registerBootCompleted();
            registerShutDown();
            sChrReporter = new SdkChrReport(sContext);
            Rlog.i(TAG, "ImsVtGlobals init done");
        }
    }

    public static void setHwImsServiceImpl(HwImsServiceImpl[] hwImsServiceImpl) {
        sHwImsServiceImpl = hwImsServiceImpl;
    }

    public static void deInit() {
        synchronized (IMS_VIDEO_GLOBALS_LOCK) {
            Rlog.i(TAG, "ImsVtGlobals deInit");
            removeMassages(1);
            ImsThinClient.deInitImsThinClient();
            unRegisterImsSwitchBoardcast();
            sIsSdkInited = false;
        }
    }

    private static void initDev() {
        if (VtUtils.isVtSupported()) {
            try {
                Rlog.i(TAG, "start to load so libs");
                System.loadLibrary("hw_sys");
                System.loadLibrary("login");
                System.loadLibrary("hw_media");
                System.loadLibrary("mvd_hme_vt");
                System.loadLibrary("sci");
                System.loadLibrary("vsc");
            } catch (UnsatisfiedLinkError e) {
                Rlog.e(TAG, "load vt so UnsatisfiedLinkError");
            }
        }
    }

    private static void initVtSdk(boolean isInitSdk) {
        Rlog.i(TAG, "initVtSdk: sIsSdkInited is: " + sIsSdkInited + ", isInitSdk : " + isInitSdk);
        if (sContext == null) {
            Rlog.e(TAG, "sContext == null, do not support VT, so do not initVtSdk");
            return;
        }
        if (!sIsSdkInited && isInitSdk) {
            if (sHandler.hasMessages(1)) {
                Rlog.e(TAG, "EVENT_RETRY_TO_INIT_SDK message already run");
                return;
            }
            Rlog.i(TAG, "initVtSdk start to initImsThinClient sInitSdkRetryTimes = " + sInitSdkRetryTimes);
            int sdkInitResult = ImsThinClient.initImsThinClient(sContext);
            if (sdkInitResult != 0) {
                int i = sInitSdkRetryTimes;
                if (i >= 2) {
                    Rlog.e(TAG, "initVtSdk initImsThinClient fail!");
                    return;
                }
                sInitSdkRetryTimes = i + 1;
                Message msg = sHandler.obtainMessage();
                msg.what = 1;
                sHandler.sendMessageDelayed(msg, 1000L);
                return;
            }
            Rlog.i(TAG, "initVtSdk initImsThinClient success!");
            sIsSdkInited = true;
            ImsCameraClient.setCameraParameter(0, Integer.valueOf(HmeVideoCameraType.HME_V_CAMERA2.getValue()));
            ImsCameraClient.setCameraParameter(1, Integer.valueOf(HmeVideoEncoderUseType.HME_V_Encoder_SURFACE.getValue()));
        }
    }

    public static synchronized void reInitVtSdk(boolean isInitSdk) {
        synchronized (ImsVtGlobals.class) {
            if (!sIsSdkInited && isInitSdk) {
                initVtSdk(isInitSdk);
                if (sIsSdkInited && sIsBootCompleted) {
                    Rlog.i(TAG, "create HME log folder after SDK inited");
                    ImsThinClient.createHmeLogFolder();
                }
            }
        }
    }

    private static void registerImsSwitchBoardcast() {
        Rlog.i(TAG, "registerImsSwitchBoardcast");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_IMS_SWITCH_STATE_CHANGE);
        intentFilter.addAction("android.intent.action.RADIO_TECHNOLOGY");
        Context context = sContext;
        if (context != null) {
            context.registerReceiver(sBroadcastReceiver, intentFilter, "com.huawei.ims.permission.IMS_SWITCH_STATE_CHANGE", null);
        }
    }

    private static void registerBootCompleted() {
        Rlog.i(TAG, "registerBootCompleted");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
        Context context = sContext;
        if (context != null) {
            context.registerReceiver(sBroadcastReceiver, intentFilter);
        }
    }

    private static void registerShutDown() {
        Rlog.i(TAG, "registerShutDown");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
        Context context = sContext;
        if (context != null) {
            context.registerReceiver(sBroadcastReceiver, intentFilter);
        }
    }

    private static void unRegisterImsSwitchBoardcast() {
        Rlog.i(TAG, "unRegisterImsSwitchBoardcast");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_IMS_SWITCH_STATE_CHANGE);
        Context context = sContext;
        if (context != null) {
            context.unregisterReceiver(sBroadcastReceiver);
        }
    }

    private static HwImsCallSessionImpl getActiveCallSession(int subId) {
        Rlog.i(TAG, "getActiveCallSession");
        if (!isHwImsServiceImplInit(subId)) {
            Rlog.e(TAG, "getActiveCallSession error.");
            return null;
        }
        List<HwImsCallSessionImpl> sessionList = sHwImsServiceImpl[subId].getCallSessionByState(DriverImsCall.State.ACTIVE);
        if (sessionList.size() > 1) {
            Rlog.i(TAG, "Multiple Active Calls: " + sessionList);
        }
        if (sessionList.isEmpty()) {
            return null;
        }
        return sessionList.get(0);
    }

    private static HwImsCallSessionImpl getOutgoingCallSession(int subId) {
        Rlog.i(TAG, "getOutgoingCallSession");
        if (!isHwImsServiceImplInit(subId)) {
            Rlog.e(TAG, "getOutgoingCallSession error.");
            return null;
        }
        List<HwImsCallSessionImpl> sessionList = sHwImsServiceImpl[subId].getCallSessionByState(DriverImsCall.State.ALERTING);
        if (sessionList.isEmpty()) {
            sessionList = sHwImsServiceImpl[subId].getCallSessionByState(DriverImsCall.State.DIALING);
        }
        if (sessionList.size() > 1) {
            Rlog.i(TAG, "Multiple Outgoing Calls: " + sessionList);
        }
        if (sessionList.isEmpty()) {
            return null;
        }
        return sessionList.get(0);
    }

    private static HwImsCallSessionImpl getIncomingCallSession(int subId) {
        Rlog.i(TAG, "getIncomingCallSession");
        if (!isHwImsServiceImplInit(subId)) {
            Rlog.e(TAG, "getIncomingCallSession error");
            return null;
        }
        List<HwImsCallSessionImpl> sessionList = sHwImsServiceImpl[subId].getCallSessionByState(DriverImsCall.State.INCOMING);
        if (sessionList.size() > 1) {
            Rlog.i(TAG, "Multiple Incoming Calls: " + sessionList);
        }
        if (sessionList.isEmpty()) {
            return null;
        }
        return sessionList.get(0);
    }

    private static HwImsCallSessionImpl getBackgroundCallSession(int subId) {
        Rlog.i(TAG, "getBackgroundCallSession");
        if (!isHwImsServiceImplInit(subId)) {
            Rlog.e(TAG, "getBackgroundCallSession error.");
            return null;
        }
        List<HwImsCallSessionImpl> sessionList = sHwImsServiceImpl[subId].getCallSessionByState(DriverImsCall.State.HOLDING);
        if (sessionList.size() > 1) {
            Rlog.i(TAG, "Multiple Background Calls: " + sessionList);
        }
        if (sessionList.isEmpty()) {
            return null;
        }
        return sessionList.get(0);
    }

    private static boolean isHwImsServiceImplInit(int subId) {
        return (sHwImsServiceImpl == null || !ImsCallProviderUtils.isValidServiceSubIndex(subId) || sHwImsServiceImpl[subId] == null) ? false : true;
    }

    private static ArrayList<HwImsCallSessionImpl> getCallSession(int subId) {
        if (!imsCallSessionArrayList.isEmpty()) {
            imsCallSessionArrayList.clear();
        }
        HwImsCallSessionImpl sessionActive = getActiveCallSession(subId);
        if (sessionActive != null) {
            imsCallSessionArrayList.add(sessionActive);
        }
        HwImsCallSessionImpl sessionBackgroud = getBackgroundCallSession(subId);
        if (sessionBackgroud != null) {
            imsCallSessionArrayList.add(sessionBackgroud);
        }
        HwImsCallSessionImpl sessionOutgoing = getOutgoingCallSession(subId);
        if (sessionOutgoing != null) {
            imsCallSessionArrayList.add(sessionOutgoing);
        }
        HwImsCallSessionImpl sessionIncoming = getIncomingCallSession(subId);
        if (sessionIncoming != null) {
            imsCallSessionArrayList.add(sessionIncoming);
        }
        return imsCallSessionArrayList;
    }

    private static ImsVtCallProviderImpl getImsVtCallProviderImpl(HwImsCallSessionImpl session) {
        if (session == null) {
            return null;
        }
        return session.getImsVtCallProviderImpl();
    }

    public static ArrayList<ImsVtCallProviderImpl> getCallVideoProvider(int subId) {
        if (!imsVideoCallProviderList.isEmpty()) {
            imsVideoCallProviderList.clear();
        }
        int size = getCallSession(subId).size();
        if (size == 0) {
            return null;
        }
        for (int i = 0; i < size; i++) {
            imsVideoCallProviderList.add(getImsVtCallProviderImpl(getCallSession(subId).get(i)));
        }
        return imsVideoCallProviderList;
    }

    public static boolean isVtSdkInited() {
        return sIsSdkInited;
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
    private static class InitSdkHandler extends Handler {
        InitSdkHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Rlog.i(ImsVtGlobals.TAG, "handle message:" + msg.what);
            if (msg.what == 1) {
                Rlog.i(ImsVtGlobals.TAG, "Received event: EVENT_RETRY_TO_INIT_SDK");
                ImsVtGlobals.reInitVtSdk(true);
            }
        }
    }

    private static void removeMassages(int what) {
        if (sHandler.hasMessages(what)) {
            sHandler.removeMessages(what);
        }
    }

    public static void addImsVideoCallProvider(HwImsCallSessionImpl session, ImsVtCallProviderImpl imsVtCallProvider) {
        if (!sImsVideoCallProviderMap.containsKey(session)) {
            sImsVideoCallProviderMap.put(session, imsVtCallProvider);
        }
    }

    public static void removeImsVideoCallProvider(HwImsCallSessionImpl session) {
        if (sImsVideoCallProviderMap.containsKey(session)) {
            sImsVideoCallProviderMap.remove(session);
        }
    }

    public static ImsThinClient.GetResCallBack getVideoDimensionCallBack() {
        return sVideoDimensionCallBack;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void changePeerDimensions(int width, int height) {
        ImsVtCallProviderImpl imsVtCallProvider;
        HashMap<HwImsCallSessionImpl, ImsVtCallProviderImpl> hashMap = sImsVideoCallProviderMap;
        if (hashMap != null) {
            for (HwImsCallSessionImpl session : hashMap.keySet()) {
                if (session != null && isCallActiveOrDialing(session) && (imsVtCallProvider = sImsVideoCallProviderMap.get(session)) != null) {
                    Rlog.i(TAG, "changePeerDimensions : video dimension change CallBack, width = " + width + ", height = " + height);
                    imsVtCallProvider.changePeerDimensions(width, height);
                }
            }
        }
    }

    private static boolean isCallActiveOrDialing(HwImsCallSessionImpl session) {
        if (session == null) {
            return false;
        }
        DriverImsCall.State dcState = session.getDriverCallState();
        return dcState == DriverImsCall.State.ACTIVE || dcState == DriverImsCall.State.DIALING || dcState == DriverImsCall.State.ALERTING;
    }
}
