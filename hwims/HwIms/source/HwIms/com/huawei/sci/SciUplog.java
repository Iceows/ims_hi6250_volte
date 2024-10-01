package com.huawei.sci;

/* loaded from: SciUplog.class */
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

    public static void logStatic(String str, String str2, String str3, boolean z) {
        SciUplogCb.uplogCbPrintStatic(str, str2, str3, null, z);
    }

    public static native int result(int i);

    public static native int setHmeLogPath(String str);

    public static native int setLogFileCount(long j);

    public static native int setLogFileName(String str);

    public static native int setLogFileSize(long j);

    public static native int setLogNtyErrCode(boolean z);

    public static native int setLogQoeEnable(boolean z);

    public static native int upload(String str, String str2);
}