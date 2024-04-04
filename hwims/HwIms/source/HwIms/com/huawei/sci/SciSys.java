package com.huawei.sci;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;

/* loaded from: SciSys.class */
public class SciSys {
    public static final int EVENT_WHAT = 0;
    public static final String LOG_DIR = "hrslog";
    public static final String LOG_QOE_DIR = "qoelog";
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
    private static String mWorkPath;
    private static Runnable mZpandTimerActive;
    private static Context mContext = null;
    private static boolean bInitFlag = false;
    private static String deleteLogPath = "/data/data/com.huawei.ims/caas";
    private static final Handler mSdkHandler = new Handler() { // from class: com.huawei.sci.SciSys.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.obj == null) {
                SciLog.e(SciSys.TAG, "mSdkHandler msg.obj is null");
            } else {
                SciSys.driveSdk(((Long) message.obj).longValue());
            }
        }
    };
    private static final Handler mSciHandler = new Handler() { // from class: com.huawei.sci.SciSys.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    };
    private static final Handler mSciHandlerX = new Handler() { // from class: com.huawei.sci.SciSys.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message == null || message.obj == null) {
                return;
            }
            CsfNty.ntyFilter(((Long) message.obj).longValue());
        }
    };
    private static final Runnable mZpandModDriveMsg = new Runnable() { // from class: com.huawei.sci.SciSys.4
        @Override // java.lang.Runnable
        public void run() {
            SciSys.zpandModDriveMsg();
        }
    };
    private static String mLibPath = null;
    private static String mLibPathX = null;
    private static boolean mExistLibInLibPath = false;

    /* loaded from: SciSys$SYS_TIME.class */
    public static class SYS_TIME {
        public int iTimeZone;
        public byte ucDay;
        public byte ucHour;
        public byte ucMinute;
        public byte ucMonth;
        public byte ucSecond;
        public byte ucWeekDay;
        public short wYear;
    }

    public static native void clean();

    public static int cliCbEvnt(long j) {
        return !mSdkHandler.sendMessage(mSdkHandler.obtainMessage(0, Long.valueOf(j)));
    }

    private static native void construct();

    private static String createLogPath(String str) {
        FileUtils.createDir(mWorkPath + "/" + LOG_DIR);
        return mWorkPath + "/" + LOG_DIR + "/";
    }

    private static void createLogQoePath(String str) {
        FileUtils.createDir(str + "/" + LOG_QOE_DIR);
    }

    public static native String decryptData(String str);

    public static void destory() {
        if (bInitFlag) {
            clean();
        }
        bInitFlag = false;
    }

    private static native int driveSci(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int driveSdk(long j);

    public static native String encryptData(String str);

    public static native String getBuildTime();

    public static Context getContext() {
        return mContext;
    }

    public static native String getDMParamConfig(String str);

    public static boolean getInitFlag() {
        return bInitFlag;
    }

    public static native long getKeepAliveTimerLen();

    public static native long getLastErrNo();

    public static String getLibPath() {
        return mLibPath;
    }

    public static String getLogPathInWorkPath() {
        return mWorkPath + "/" + LOG_DIR + "/";
    }

    public static String getLogQoePathInWorkPath() {
        return mWorkPath + "/" + LOG_QOE_DIR + "/";
    }

    public static native int getServerLoginStatus();

    public static native String getVersion();

    public static int init(Context context, String str, SciLogCfg sciLogCfg, long j) {
        initLibPath(context);
        loadLib("hw_sys");
        loadLib("login");
        loadLib("sci");
        construct();
        mContext = context;
        bInitFlag = true;
        return init(str, sciLogCfg, j);
    }

    public static native int init(String str, SciLogCfg sciLogCfg, long j);

    private static void initLibPath(Context context) {
        if (context == null) {
            return;
        }
        if (mLibPath == null) {
            mLibPathX = "/data/data/" + context.getPackageName() + "/lib";
        } else {
            mLibPathX = mLibPath;
        }
        mExistLibInLibPath = FileUtils.isFileExist(mLibPathX + "/libhw_sys.so");
        SciLog.d(TAG, "mExistLibInLibPath:" + mExistLibInLibPath + " mLibPath:" + mLibPath + " mLibPathX:" + mLibPathX);
    }

    public static native boolean isVersionChanged();

    public static native int keepAlive();

    public static void loadLib(String str) {
        SciLog.d(TAG, "mExistLibInLibPath:" + mExistLibInLibPath + " mLibPath:" + mLibPath + " libName" + str);
        if (Build.CPU_ABI.contains("arm64-v8a")) {
            System.loadLibrary(str);
        } else if (mExistLibInLibPath) {
            System.load(mLibPathX + "/lib" + str + ".so");
        } else if (mLibPath == null) {
            System.loadLibrary(str);
        } else {
            System.load(mLibPath + "/lib" + str + ".so");
        }
    }

    public static native int notifyNetConnect(int i, String str, String str2, String str3);

    public static native int notifyNetDisconnect();

    public static native int setAppOnForeGround(boolean z);

    public static native int setKeepAliveEnable(boolean z);

    public static void setLibPath(String str) {
        mLibPath = str;
    }

    public static native int setNotifyFilter(int i, String str);

    public static native int setScreenUnLock(boolean z);

    public static native int setSharingSipStack(boolean z);

    public static int sysCbEvnt(long j) {
        return !mSciHandler.sendMessage(mSciHandler.obtainMessage(0, Long.valueOf(j)));
    }

    public static void sysCbEvntX(long j) {
        mSciHandlerX.sendMessage(mSciHandlerX.obtainMessage(0, Long.valueOf(j)));
    }

    public static native int transferTime2SysTime(long j, SYS_TIME[] sys_timeArr);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void zpandModDriveMsg();

    public static int zpandModPostDrv() {
        boolean z = false;
        if (mZpandModDriveMsg != null) {
            z = mSdkHandler.post(mZpandModDriveMsg);
        } else {
            SciLog.e(TAG, "UT zpandModPostDrv mZpandModDriveMsg is null");
        }
        return z ? 0 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void zpandTimerActive();

    public static int zpandTimerDestroy() {
        mZpandTimerActive = null;
        return 0;
    }

    public static int zpandTimerInit() {
        mZpandTimerActive = new Runnable() { // from class: com.huawei.sci.SciSys.5
            @Override // java.lang.Runnable
            public void run() {
                SciSys.zpandTimerActive();
            }
        };
        return 0;
    }

    public static int zpandTimerStart(long j) {
        boolean z = false;
        if (mZpandTimerActive != null) {
            z = mSdkHandler.postDelayed(mZpandTimerActive, j);
        } else {
            SciLog.e(TAG, "UT zpandTimerStart mZpandTimerActive is null");
        }
        return z ? 0 : 1;
    }

    public static int zpandTimerStop() {
        mSdkHandler.removeCallbacks(mZpandTimerActive);
        return 0;
    }
}
