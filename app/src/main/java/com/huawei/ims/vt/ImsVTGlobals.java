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

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum HME_V_CAMERA_TYPE {
        HME_V_CAMERA1_SURFACEVIEW(101),
        HME_V_CAMERA1_SURFACETEXTURE(102),
        HME_V_CAMERA2(SciProvisionCb.PROV_OP_STATUS_DUPLICATE_REGISTER),
        HME_V_CAMERA1_NATIVECAMERA(301),
        HME_V_CAMERA1_SCREENCAPTURE(401),
        HME_V_CAMERA_DEFAULT(0);
        
        private int value;

        HME_V_CAMERA_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
    public enum HME_V_ENCODER_USE_TYPE {
        HME_V_Encoder_DEFAULT(0),
        HME_V_Encoder_SURFACE(101);
        
        private int value;

        HME_V_ENCODER_USE_TYPE(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }
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

    public static void setHwImsServiceImpl(HwImsServiceImpl[] hwImsServiceImpl) {
        mHwImsServiceImpl = hwImsServiceImpl;
    }

    public static void deInit() {
        synchronized (mLock) {
            Rlog.d(TAG, "ImsVTGlobals deInit");
            ImsThinClient.deInitImsThinClient();
            unRegisterImsSwitchBoardcast();
            mIsSdkInited = false;
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

    private static void initVTSdk(boolean needInitSdk) {
        Rlog.d(TAG, "initVTSdk: mIsSdkInited is: " + mIsSdkInited + ", needInitSdk : " + needInitSdk);
        if (mContext == null) {
            Rlog.d(TAG, "mContext == null, do not support VT,so do not initVTSdk");
        } else if (!mIsSdkInited && needInitSdk) {
            Rlog.d(TAG, "initVTSdk start to initImsThinClient");
            ImsThinClient.initImsThinClient(mContext);
            mIsSdkInited = true;
            ImsCameraClient.setCameraParameter(0, Integer.valueOf(HME_V_CAMERA_TYPE.HME_V_CAMERA2.getValue()));
            ImsCameraClient.setCameraParameter(1, Integer.valueOf(HME_V_ENCODER_USE_TYPE.HME_V_Encoder_SURFACE.getValue()));
        }
    }

    public static synchronized void reInitVtSdk(boolean needInitSdk) {
        synchronized (ImsVTGlobals.class) {
            if (!mIsSdkInited && needInitSdk) {
                initVTSdk(needInitSdk);
                if (mIsSdkInited && mIsBootCompleted) {
                    Rlog.d(TAG, "create HME log folder after SDK inited");
                    ImsThinClient.createHmeLogFolder();
                }
            }
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

    private static void registerBootCompleted() {
        Rlog.d(TAG, "registerBootCompleted");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BOOT_COMPLETED");
        if (mContext != null) {
            mContext.registerReceiver(mBroadcastReceiver, intentFilter);
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

    private static void unRegisterImsSwitchBoardcast() {
        Rlog.d(TAG, "unRegisterImsSwitchBoardcast");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_IMS_SWITCH_STATE_CHANGE);
        if (mContext != null) {
            mContext.unregisterReceiver(mBroadcastReceiver);
        }
    }

    private static HwImsCallSessionImpl getActiveCallSession(int subid) {
        Rlog.d(TAG, "getActiveCallSession");
        List<HwImsCallSessionImpl> sessionList = mHwImsServiceImpl[subid].getCallSessionByState(DriverImsCall.State.ACTIVE);
        if (sessionList.size() > 1) {
            Rlog.d(TAG, "Multiple Active Calls: " + sessionList);
        }
        if (sessionList.isEmpty()) {
            return null;
        }
        return sessionList.get(0);
    }

    private static HwImsCallSessionImpl getOutgoingCallSession(int subid) {
        Rlog.d(TAG, "getOutgoingCallSession");
        List<HwImsCallSessionImpl> sessionList = mHwImsServiceImpl[subid].getCallSessionByState(DriverImsCall.State.ALERTING);
        if (sessionList.isEmpty()) {
            sessionList = mHwImsServiceImpl[subid].getCallSessionByState(DriverImsCall.State.DIALING);
        }
        if (sessionList.size() > 1) {
            Rlog.d(TAG, "Multiple Outgoing Calls: " + sessionList);
        }
        if (sessionList.isEmpty()) {
            return null;
        }
        return sessionList.get(0);
    }

    private static HwImsCallSessionImpl getIncomingCallSession(int subid) {
        Rlog.d(TAG, "getIncomingCallSession");
        List<HwImsCallSessionImpl> sessionList = mHwImsServiceImpl[subid].getCallSessionByState(DriverImsCall.State.INCOMING);
        if (sessionList.size() > 1) {
            Rlog.d(TAG, "Multiple Incoming Calls: " + sessionList);
        }
        if (sessionList.isEmpty()) {
            return null;
        }
        return sessionList.get(0);
    }

    private static HwImsCallSessionImpl getBackgroundCallSession(int subid) {
        Rlog.d(TAG, "getBackgroundCallSession");
        List<HwImsCallSessionImpl> sessionList = mHwImsServiceImpl[subid].getCallSessionByState(DriverImsCall.State.HOLDING);
        if (sessionList.size() > 1) {
            Rlog.d(TAG, "Multiple Background Calls: " + sessionList);
        }
        if (sessionList.isEmpty()) {
            return null;
        }
        return sessionList.get(0);
    }

    private static ArrayList<HwImsCallSessionImpl> getCallSession(int subid) {
        if (!imsCallSessionArrayList.isEmpty()) {
            imsCallSessionArrayList.clear();
        }
        HwImsCallSessionImpl sessionActive = getActiveCallSession(subid);
        if (sessionActive != null) {
            imsCallSessionArrayList.add(sessionActive);
        }
        HwImsCallSessionImpl sessionBackgroud = getBackgroundCallSession(subid);
        if (sessionBackgroud != null) {
            imsCallSessionArrayList.add(sessionBackgroud);
        }
        HwImsCallSessionImpl sessionOutgoing = getOutgoingCallSession(subid);
        if (sessionOutgoing != null) {
            imsCallSessionArrayList.add(sessionOutgoing);
        }
        HwImsCallSessionImpl sessionIncoming = getIncomingCallSession(subid);
        if (sessionIncoming != null) {
            imsCallSessionArrayList.add(sessionIncoming);
        }
        return imsCallSessionArrayList;
    }

    private static ImsVTCallProviderImpl getImsVTCallProviderImpl(HwImsCallSessionImpl session) {
        if (session == null) {
            return null;
        }
        return session.getImsVTCallProviderImpl();
    }

    public static ArrayList<ImsVTCallProviderImpl> getCallVideoProvider(int subid) {
        if (!imsVideoCallProviderList.isEmpty()) {
            imsVideoCallProviderList.clear();
        }
        int size = getCallSession(subid).size();
        if (size == 0) {
            return null;
        }
        for (int i = 0; i < size; i++) {
            imsVideoCallProviderList.add(getImsVTCallProviderImpl(getCallSession(subid).get(i)));
        }
        return imsVideoCallProviderList;
    }
}
