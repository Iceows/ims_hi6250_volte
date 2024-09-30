package com.huawei.sci;

import android.text.format.Time;
import android.util.Log;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-15191007970443133098.dex */
public class SciLog {
    private static String TAG = "HRCS";
    private static String INFO = "INFO";
    private static String ERROR = "ERROR";
    private static String DEBUG = "DEBUG";
    private static String API_ID = "CAAS_API";

    private static native void debug(String str, String str2);

    private static native void error(String str, String str2);

    private static native void info(String str, String str2);

    public static native int logQoePrint(String str);

    public static String now() {
        Time localTime = new Time("Asia/Hong_Kong");
        localTime.setToNow();
        return localTime.format("%y-%m-%d %H:%M:%S");
    }

    public static void e(String pcLogName, String pcFormat, Object... args) {
        String s = String.format(pcFormat, args);
        if (SciSys.getInitFlag() && pcLogName != null && s != null) {
            error(pcLogName, s);
            return;
        }
        String str = TAG;
        Log.e(str, pcLogName + ": " + ERROR + ": " + s);
    }

    public static void e(String pcLogName, String pcFormat) {
        if (SciSys.getInitFlag() && pcLogName != null && pcFormat != null) {
            error(pcLogName, pcFormat);
            return;
        }
        String str = TAG;
        Log.e(str, pcLogName + ": " + ERROR + ": " + pcFormat);
    }

    public static void logApi(String pcLogName, String pcFormat) {
        if (SciSys.getInitFlag() && pcLogName != null && pcFormat != null) {
            String str = API_ID;
            info(str, "UI->SA " + pcLogName + ": " + pcFormat);
            return;
        }
        String str2 = TAG;
        Log.i(str2, "UI->SA " + pcLogName + INFO + ": " + pcFormat);
    }

    public static void logNty(String pcLogName, String pcFormat) {
        if (SciSys.getInitFlag() && pcLogName != null && pcFormat != null) {
            String str = API_ID;
            info(str, "SA->UI " + pcLogName + ": " + pcFormat);
            return;
        }
        String str2 = TAG;
        Log.i(str2, "SA->UI " + pcLogName + INFO + ": " + pcFormat);
    }

    public static void i(String pcLogName, String pcFormat, Object... args) {
        String s = String.format(pcFormat, args);
        if (SciSys.getInitFlag() && pcLogName != null && s != null) {
            info(pcLogName, s);
            return;
        }
        String str = TAG;
        Log.i(str, pcLogName + ": " + INFO + ": " + s);
    }

    public static void i(String pcLogName, String pcFormat) {
        if (SciSys.getInitFlag() && pcLogName != null && pcFormat != null) {
            info(pcLogName, pcFormat);
            return;
        }
        String str = TAG;
        Log.i(str, pcLogName + ": " + INFO + ": " + pcFormat);
    }

    public static void d(String pcLogName, String pcFormat, Object... args) {
        String s = String.format(pcFormat, args);
        if (SciSys.getInitFlag() && pcLogName != null && s != null) {
            debug(pcLogName, s);
            return;
        }
        String str = TAG;
        Log.d(str, pcLogName + ": " + DEBUG + ": " + s);
    }

    public static void d(String pcLogName, String pcFormat) {
        if (SciSys.getInitFlag() && pcLogName != null && pcFormat != null) {
            debug(pcLogName, pcFormat);
            return;
        }
        String str = TAG;
        Log.d(str, pcLogName + ": " + DEBUG + ": " + pcFormat);
    }
}
