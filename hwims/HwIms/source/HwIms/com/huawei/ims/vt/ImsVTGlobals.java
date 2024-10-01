package com.huawei.ims.vt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.telephony.Rlog;
import com.huawei.ims.DriverImsCall;
import com.huawei.ims.HwImsCallSessionImpl;
import com.huawei.ims.HwImsServiceImpl;
import com.huawei.ims.SDKChrReport;
import com.huawei.sci.SciProvisionCb;
import com.huawei.vtproxy.ImsCameraClient;
import com.huawei.vtproxy.ImsThinClient;
import java.util.ArrayList;
import java.util.List;

/* loaded from: ImsVTGlobals.class */
public class ImsVTGlobals {
    private static final String ACTION_IMS_SWITCH_STATE_CHANGE = "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE";
    private static final int CALLSESSION_MAX_SIZE = 1;
    private static final int HME_V_CAMERA_TYPES = 0;
    private static final int HME_V_ENCODER_USE_TYPES = 1;
    public static final String IMS_SWITCH_STATE_CHANGE_PERMISSION = "com.huawei.ims.permission.IMS_SWITCH_STATE_CHANGE";
    private static final String TAG = "ImsVTGlobals";
    static SDKChrReport mChrReporter;
    private static Context mContext;
    private static HwImsServiceImpl[] mHwImsServiceImpl;
    private static final Object mLock = new Object();
    private static boolean mIsSdkInited = false;
    private static boolean mIsBootCompleted = false;
    private static ImsVTGlobals sInstance = null;
    private static BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.huawei.ims.vt.ImsVTGlobals.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Rlog.d(ImsVTGlobals.TAG, "onReceive: action=" + action);
            if (ImsVTGlobals.ACTION_IMS_SWITCH_STATE_CHANGE.equals(action) || "android.intent.action.RADIO_TECHNOLOGY".equals(action)) {
                ImsVTGlobals.reInitVtSdk(VTUtils.isImsSwitchOn(ImsVTGlobals.mContext));
            } else if ("android.intent.action.BOOT_COMPLETED".equals(action)) {
                Rlog.d(ImsVTGlobals.TAG, "intent.getAction is ACTION_BOOT_COMPLETED,mIsSdkInited = " + ImsVTGlobals.mIsSdkInited);
                ImsThinClient.imsProcBootCompleted();
                if (ImsVTGlobals.mIsSdkInited) {
                    Rlog.d(ImsVTGlobals.TAG, "create HME log folder when receive BootCompleted broadcast");
                    ImsThinClient.createHmeLogFolder();
                }
                boolean unused = ImsVTGlobals.mIsBootCompleted = true;
            } else if ("android.intent.action.ACTION_SHUTDOWN".equals(action)) {
                Rlog.d(ImsVTGlobals.TAG, "intent.getAction is ACTION_SHUTDOWN,mIsSdkInited = " + ImsVTGlobals.mIsSdkInited);
                if (ImsVTGlobals.mIsSdkInited && VTUtils.isVTSupported()) {
                    ImsVTGlobals.deInit();
                }
            }
        }
    };
    private static ArrayList<HwImsCallSessionImpl> imsCallSessionArrayList = new ArrayList<>();
    private static ArrayList<ImsVTCallProviderImpl> imsVideoCallProviderList = new ArrayList<>();

    /* loaded from: ImsVTGlobals$HME_V_CAMERA_TYPE.class */
    public enum HME_V_CAMERA_TYPE {
        HME_V_CAMERA1_SURFACEVIEW(101),
        HME_V_CAMERA1_SURFACETEXTURE(102),
        HME_V_CAMERA2(SciProvisionCb.PROV_OP_STATUS_DUPLICATE_REGISTER),
        HME_V_CAMERA1_NATIVECAMERA(301),
        HME_V_CAMERA1_SCREENCAPTURE(401),
        HME_V_CAMERA_DEFAULT(0);
        
        private int value;

        HME_V_CAMERA_TYPE(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: ImsVTGlobals$HME_V_ENCODER_USE_TYPE.class */
    public enum HME_V_ENCODER_USE_TYPE {
        HME_V_Encoder_DEFAULT(0),
        HME_V_Encoder_SURFACE(101);
        
        private int value;

        HME_V_ENCODER_USE_TYPE(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static void deInit() {
        synchronized (mLock) {
            Rlog.d(TAG, "ImsVTGlobals deInit");
            ImsThinClient.deInitImsThinClient();
            unRegisterImsSwitchBoardcast();
            mIsSdkInited = false;
        }
    }

    private static HwImsCallSessionImpl getActiveCallSession(int i) {
        Rlog.d(TAG, "getActiveCallSession");
        List<HwImsCallSessionImpl> callSessionByState = mHwImsServiceImpl[i].getCallSessionByState(DriverImsCall.State.ACTIVE);
        if (callSessionByState.size() > 1) {
            Rlog.d(TAG, "Multiple Active Calls: " + callSessionByState);
        }
        return callSessionByState.isEmpty() ? null : callSessionByState.get(0);
    }

    private static HwImsCallSessionImpl getBackgroundCallSession(int i) {
        Rlog.d(TAG, "getBackgroundCallSession");
        List<HwImsCallSessionImpl> callSessionByState = mHwImsServiceImpl[i].getCallSessionByState(DriverImsCall.State.HOLDING);
        if (callSessionByState.size() > 1) {
            Rlog.d(TAG, "Multiple Background Calls: " + callSessionByState);
        }
        return callSessionByState.isEmpty() ? null : callSessionByState.get(0);
    }

    private static ArrayList<HwImsCallSessionImpl> getCallSession(int i) {
        if (!imsCallSessionArrayList.isEmpty()) {
            imsCallSessionArrayList.clear();
        }
        HwImsCallSessionImpl activeCallSession = getActiveCallSession(i);
        if (activeCallSession != null) {
            imsCallSessionArrayList.add(activeCallSession);
        }
        HwImsCallSessionImpl backgroundCallSession = getBackgroundCallSession(i);
        if (backgroundCallSession != null) {
            imsCallSessionArrayList.add(backgroundCallSession);
        }
        HwImsCallSessionImpl outgoingCallSession = getOutgoingCallSession(i);
        if (outgoingCallSession != null) {
            imsCallSessionArrayList.add(outgoingCallSession);
        }
        HwImsCallSessionImpl incomingCallSession = getIncomingCallSession(i);
        if (incomingCallSession != null) {
            imsCallSessionArrayList.add(incomingCallSession);
        }
        return imsCallSessionArrayList;
    }

    public static ArrayList<ImsVTCallProviderImpl> getCallVideoProvider(int i) {
        if (!imsVideoCallProviderList.isEmpty()) {
            imsVideoCallProviderList.clear();
        }
        int size = getCallSession(i).size();
        if (size == 0) {
            return null;
        }
        for (int i2 = 0; i2 < size; i2++) {
            imsVideoCallProviderList.add(getImsVTCallProviderImpl(getCallSession(i).get(i2)));
        }
        return imsVideoCallProviderList;
    }

    private static ImsVTCallProviderImpl getImsVTCallProviderImpl(HwImsCallSessionImpl hwImsCallSessionImpl) {
        return hwImsCallSessionImpl == null ? null : hwImsCallSessionImpl.getImsVTCallProviderImpl();
    }

    private static HwImsCallSessionImpl getIncomingCallSession(int i) {
        Rlog.d(TAG, "getIncomingCallSession");
        List<HwImsCallSessionImpl> callSessionByState = mHwImsServiceImpl[i].getCallSessionByState(DriverImsCall.State.INCOMING);
        if (callSessionByState.size() > 1) {
            Rlog.d(TAG, "Multiple Incoming Calls: " + callSessionByState);
        }
        return callSessionByState.isEmpty() ? null : callSessionByState.get(0);
    }

    private static HwImsCallSessionImpl getOutgoingCallSession(int i) {
        Rlog.d(TAG, "getOutgoingCallSession");
        List<HwImsCallSessionImpl> callSessionByState = mHwImsServiceImpl[i].getCallSessionByState(DriverImsCall.State.ALERTING);
        List<HwImsCallSessionImpl> list = callSessionByState;
        if (callSessionByState.isEmpty()) {
            list = mHwImsServiceImpl[i].getCallSessionByState(DriverImsCall.State.DIALING);
        }
        if (list.size() > 1) {
            Rlog.d(TAG, "Multiple Outgoing Calls: " + list);
        }
        return list.isEmpty() ? null : list.get(0);
    }

    public static void init(Context context) {
        synchronized (mLock) {
            Rlog.d(TAG, "ImsVTGlobals init");
            mContext = context;
            initDev();
            initVTSdk(VTUtils.isImsSwitchOn(mContext));
            CameraManager.init(mContext, ImsMediaProvider.getInstance());
            MediaManager.init(mContext, ImsMediaProvider.getInstance());
            registerImsSwitchBoardcast();
            registerBootCompleted();
            registerShutDown();
            mChrReporter = new SDKChrReport(mContext);
            Rlog.d(TAG, "ImsVTGlobals init done");
        }
    }

    private static void initDev() {
        if (VTUtils.isVTSupported()) {
            try {
                Rlog.d(TAG, "start to load so libs");
                System.loadLibrary("hw_sys");
                System.loadLibrary("HME-Video");
                System.loadLibrary("login");
                System.loadLibrary("hw_media");
                System.loadLibrary("mvd_hme_vt");
                System.loadLibrary("sci");
                System.loadLibrary("vsc");
            } catch (Exception e) {
                Rlog.e(TAG, "load vt so exception", e);
            } catch (UnsatisfiedLinkError e2) {
                Rlog.e(TAG, "load vt so UnsatisfiedLinkError", e2);
            }
        }
    }

    private static void initVTSdk(boolean z) {
        Rlog.d(TAG, "initVTSdk: mIsSdkInited is: " + mIsSdkInited + ", needInitSdk : " + z);
        if (mContext == null) {
            Rlog.d(TAG, "mContext == null, do not support VT,so do not initVTSdk");
        } else if (mIsSdkInited || !z) {
        } else {
            Rlog.d(TAG, "initVTSdk start to initImsThinClient");
            ImsThinClient.initImsThinClient(mContext);
            mIsSdkInited = true;
            ImsCameraClient.setCameraParameter(0, Integer.valueOf(HME_V_CAMERA_TYPE.HME_V_CAMERA2.getValue()));
            ImsCameraClient.setCameraParameter(1, Integer.valueOf(HME_V_ENCODER_USE_TYPE.HME_V_Encoder_SURFACE.getValue()));
        }
    }

    public static void reInitVtSdk(boolean z) {
        synchronized (ImsVTGlobals.class) {
            try {
                if (mIsSdkInited || !z) {
                    return;
                }
                initVTSdk(z);
                if (mIsSdkInited && mIsBootCompleted) {
                    Rlog.d(TAG, "create HME log folder after SDK inited");
                    ImsThinClient.createHmeLogFolder();
                }
            } finally {
            }
        }
    }

    private static void registerBootCompleted() {
        Rlog.d(TAG, "registerBootCompleted");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
        if (mContext != null) {
            mContext.registerReceiver(mBroadcastReceiver, intentFilter);
        }
    }

    private static void registerImsSwitchBoardcast() {
        Rlog.d(TAG, "registerImsSwitchBoardcast");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_IMS_SWITCH_STATE_CHANGE);
        intentFilter.addAction("android.intent.action.RADIO_TECHNOLOGY");
        if (mContext != null) {
            mContext.registerReceiver(mBroadcastReceiver, intentFilter, "com.huawei.ims.permission.IMS_SWITCH_STATE_CHANGE", null);
        }
    }

    private static void registerShutDown() {
        Rlog.d(TAG, "registerShutDown");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
        if (mContext != null) {
            mContext.registerReceiver(mBroadcastReceiver, intentFilter);
        }
    }

    public static void setHwImsServiceImpl(HwImsServiceImpl[] hwImsServiceImplArr) {
        mHwImsServiceImpl = hwImsServiceImplArr;
    }

    private static void unRegisterImsSwitchBoardcast() {
        Rlog.d(TAG, "unRegisterImsSwitchBoardcast");
        new IntentFilter().addAction(ACTION_IMS_SWITCH_STATE_CHANGE);
        if (mContext != null) {
            mContext.unregisterReceiver(mBroadcastReceiver);
        }
    }
}
