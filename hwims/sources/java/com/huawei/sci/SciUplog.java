package com.huawei.sci;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class SciUplog {
    public static final int RESULT_FAILED = 952;
    public static final int RESULT_SUCCESS = 900;
    public static final int RESULT_USERCANCELED = 902;

    public static native int fixupXLogFile(String str, String str2);

    public static native int getFlushLog();

    public static native String getHmeLogPath();

    public static native long getLogFileCount();

    public static native String getLogFileName();

    public static native long getLogFileSize();

    public static native boolean getLogQoeEnable();

    public static native int getUrl(String[] strArr);

    public static native int result(int i);

    public static native int setHmeLogPath(String str);

    public static native int setLogFileCount(long j);

    public static native int setLogFileName(String str);

    public static native int setLogFileSize(long j);

    public static native int setLogNtyErrCode(boolean z);

    public static native int setLogQoeEnable(boolean z);

    public static native int upload(String str, String str2);

    public static void logStatic(String strEventID, String strFrtParam, String strScdParam, boolean isAutoTest) {
        SciUplogCb.uplogCbPrintStatic(strEventID, strFrtParam, strScdParam, null, isAutoTest);
    }
}
