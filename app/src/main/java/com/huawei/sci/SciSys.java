package com.huawei.sci;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import java.io.File;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class SciSys {
    public static final int EVENT_WHAT = 0;
    public static final int SCI_ACC_NET_3GPP_CDMA = 8;
    public static final int SCI_ACC_NET_3GPP_EUTRAN = 23;
    public static final int SCI_ACC_NET_3GPP_EUTRAN_FDD = 21;
    public static final int SCI_ACC_NET_3GPP_EUTRAN_TDD = 22;
    public static final int SCI_ACC_NET_3GPP_EVDO = 9;
    public static final int SCI_ACC_NET_3GPP_GERAN = 5;
    public static final int SCI_ACC_NET_3GPP_HSPA = 10;
    public static final int SCI_ACC_NET_3GPP_UTRAN = 20;
    public static final int SCI_ACC_NET_3GPP_UTRAN_FDD = 6;
    public static final int SCI_ACC_NET_3GPP_UTRAN_TDD = 7;
    public static final int SCI_ACC_NET_802_11A = 1;
    public static final int SCI_ACC_NET_802_11B = 2;
    public static final int SCI_ACC_NET_802_11G = 3;
    public static final int SCI_ACC_NET_802_11N = 4;
    public static final int SCI_ACC_NET_UNKNOWN = 0;
    public static final int SCI_ACC_NET_WMF_MOBILE_WIMAX = 12;
    public static final int SCI_SERVER_STATUS_CONNECT = 1;
    public static final int SCI_SERVER_STATUS_DISCONNECT = 0;
    public static final int SCI_SERVER_STATUS_TEMPERR = 2;
    public static final int SCI_SRV_DISCONNECT_STATCODE_ACCESSTOKEN_EXPIRED = 27;
    public static final int SCI_SRV_DISCONNECT_STATCODE_ACCESSTOKEN_INVALID = 26;
    public static final int SCI_SRV_DISCONNECT_STATCODE_ACCOUNT_EXCEPTION = 9;
    public static final int SCI_SRV_DISCONNECT_STATCODE_APPKEY_INVALID = 28;
    public static final int SCI_SRV_DISCONNECT_STATCODE_AUTH_FAILED = 0;
    public static final int SCI_SRV_DISCONNECT_STATCODE_AUTH_FAILED_RELOGIN = 7;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CANCEL = 8;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_ACTION_NEEDED = 12;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_DISABLED = 11;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_DORMANT = 13;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_INVALID_REQ = 16;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_MSISDN_INVALID = 25;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_NETPWRK_AUTH_FAILED = 19;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_OTP_INVALID = 32;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_PWD_MISSED = 20;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_CONFIRM_ACK = 23;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_CONFIRM_REQUEST = 22;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_REQUEST = 21;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_REQUEST_NOTIFY = 24;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_RETRY_LATER = 18;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_SERVER_IN_ERR = 17;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONF_TMP_DISABLED = 30;
    public static final int SCI_SRV_DISCONNECT_STATCODE_CONNCET_ERR = 1;
    public static final int SCI_SRV_DISCONNECT_STATCODE_DEACTED = 4;
    public static final int SCI_SRV_DISCONNECT_STATCODE_RMVED_USER = 15;
    public static final int SCI_SRV_DISCONNECT_STATCODE_SERVER_BUSY = 2;
    public static final int SCI_SRV_DISCONNECT_STATCODE_SRV_FORCE_LOGOUT = 5;
    public static final int SCI_SRV_DISCONNECT_STATCODE_UNKNOWN_ERR = 6;
    public static final int SCI_SRV_DISCONNECT_STATCODE_UNREG_USER = 14;
    public static final int SCI_SRV_DISCONNECT_STATCODE_USER_SWITCHED = 29;
    public static final int SCI_SRV_DISCONNECT_STATCODE_WRONG_LOCAL_TIME = 3;
    public static final int SCI_SRV_TMPUNAVAIL_STATCODE_CONNECTING = 1;
    public static final int SCI_SRV_TMPUNAVAIL_STATCODE_DISCONNECTED = 2;
    public static final int SCI_SRV_TMPUNAVAIL_STATCODE_NET_UNAVAILABLE = 0;
    public static final int SCI_SRV_TMPUNAVAIL_STATCODE_OTHER = 3;
    private static final String TAG = "SCI";
    public static final int ZFAILED = 1;
    public static final int ZOK = 0;
    private static Runnable zpandTimerActive;
    private static Context context = null;
    private static final Object MOD_DRIVE_LOCK = new Object();
    private static final Object TIMER_ACTIVE_LOCK = new Object();
    private static boolean hasInitFlag = false;
    private static final Handler SDK_HANDLER = new Handler() { // from class: com.huawei.sci.SciSys.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg == null) {
                SciLog.err(SciSys.TAG, "SDK_HANDLER msg is null");
            } else if (msg.obj != null) {
                SciSys.driveSdk(((Long) msg.obj).longValue());
            } else {
                SciLog.err(SciSys.TAG, "SDK_HANDLER msg.obj is null");
            }
        }
    };
    private static final Handler SCI_HANDLER = new Handler() { // from class: com.huawei.sci.SciSys.2
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
        }
    };
    private static final Handler SCI_HANDLERX = new Handler() { // from class: com.huawei.sci.SciSys.3
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
        }
    };
    private static final Runnable ZPAND_MOD_DRIVE_MSG = new Runnable() { // from class: com.huawei.sci.SciSys.4
        @Override // java.lang.Runnable
        public void run() {
            synchronized (SciSys.MOD_DRIVE_LOCK) {
                SciSys.zpandModDriveMsg();
            }
        }
    };
    private static String libPath = null;
    private static String libPathX = null;
    private static boolean isExistLibInLibPath = false;

    public static native void clean();

    private static native void construct();

    /* JADX INFO: Access modifiers changed from: private */
    public static native int driveSdk(long j);

    public static native String getBuildTime();

    public static native String getDMParamConfig(String str);

    public static native long getKeepAliveTimerLen();

    public static native long getLastErrNo();

    public static native int getServerLoginStatus();

    public static native String getVersion();

    public static native int init(String str, SciLogCfg sciLogCfg, long j);

    public static native boolean isVersionChanged();

    public static native int keepAlive();

    public static native int notifyNetConnect(int i, String str, String str2, String str3);

    public static native int notifyNetDisconnect();

    public static native int setAppOnForeGround(boolean z);

    public static native int setKeepAliveEnable(boolean z);

    public static native int setNotifyFilter(int i, String str);

    public static native int setScreenUnLock(boolean z);

    public static native int setSharingSipStack(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void zpandModDriveMsg();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void zpandTimerActive();

    public static void setLibPath(String libPathVal) {
        libPath = libPathVal;
    }

    public static String getLibPath() {
        return libPath;
    }

    private static void initLibPath(Context context2) {
        if (context2 == null) {
            return;
        }
        String str = libPath;
        if (str == null) {
            libPathX = "/data/data/" + context2.getPackageName() + "/lib";
        } else {
            libPathX = str;
        }
        File file = new File(libPathX + "/libhw_sys.so");
        isExistLibInLibPath = file.exists();
        SciLog.info(TAG, "isExistLibInLibPath:" + isExistLibInLibPath + " libPath:" + libPath + " libPathX:" + libPathX);
    }

    public static void loadLib(String libName) {
        SciLog.info(TAG, "isExistLibInLibPath:" + isExistLibInLibPath + "libPath:" + libPath + " libName" + libName);
        if (Build.CPU_ABI.contains("arm64-v8a")) {
            System.loadLibrary(libName);
            return;
        }
        if (isExistLibInLibPath) {
            System.load(libPathX + "/lib" + libName + ".so");
            return;
        }
        if (libPath != null) {
            System.load(libPath + "/lib" + libName + ".so");
            return;
        }
        System.loadLibrary(libName);
    }

    public static int init(Context contextVal, String curVersion, SciLogCfg logCfg, long compMask) {
        initLibPath(contextVal);
        loadLib("hw_sys");
        loadLib("login");
        loadLib("sci");
        construct();
        context = contextVal;
        hasInitFlag = true;
        return init(curVersion, logCfg, compMask);
    }

    public static Context getContext() {
        return context;
    }

    public static boolean getInitFlag() {
        return hasInitFlag;
    }

    public static void destory() {
        if (hasInitFlag) {
            clean();
        }
        hasInitFlag = false;
    }

    public static int cliCbEvnt(long j) {
        return !SDK_HANDLER.sendMessage(SDK_HANDLER.obtainMessage(0, Long.valueOf(j))) ? 1 : 0;
    }

    public static int sysCbEvnt(long j) {
        return !SCI_HANDLER.sendMessage(SCI_HANDLER.obtainMessage(0, Long.valueOf(j))) ? 1 : 0;
    }

    public static void sysCbEvntX(long evntId) {
        Message msg = SCI_HANDLERX.obtainMessage(0, Long.valueOf(evntId));
        SCI_HANDLERX.sendMessage(msg);
    }

    public static int zpandModPostDrv() {
        boolean isSuccess = false;
        Runnable runnable = ZPAND_MOD_DRIVE_MSG;
        if (runnable != null) {
            isSuccess = SDK_HANDLER.post(runnable);
        } else {
            SciLog.err(TAG, "UT zpandModPostDrv ZPAND_MOD_DRIVE_MSG is null");
        }
        return isSuccess ? 0 : 1;
    }

    public static int zpandTimerInit() {
        zpandTimerActive = new Runnable() { // from class: com.huawei.sci.SciSys.5
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SciSys.TIMER_ACTIVE_LOCK) {
                    SciSys.zpandTimerActive();
                }
            }
        };
        return 0;
    }

    public static int zpandTimerDestroy() {
        zpandTimerActive = null;
        return 0;
    }

    public static int zpandTimerStart(long dwTimeLen) {
        boolean isSuccess = false;
        Runnable runnable = zpandTimerActive;
        if (runnable != null) {
            isSuccess = SDK_HANDLER.postDelayed(runnable, dwTimeLen);
        } else {
            SciLog.err(TAG, "UT zpandTimerStart zpandTimerActive is null");
        }
        return isSuccess ? 0 : 1;
    }

    public static int zpandTimerStop() {
        SDK_HANDLER.removeCallbacks(zpandTimerActive);
        return 0;
    }
}
