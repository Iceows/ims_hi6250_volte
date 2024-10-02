package com.huawei.sci;

import android.text.format.Time;
import android.util.Log;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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
        Log.e(TAG, pcLogName + ": " + ERROR + ": " + s);
    }

    public static void e(String pcLogName, String pcFormat) {
        if (SciSys.getInitFlag() && pcLogName != null && pcFormat != null) {
            error(pcLogName, pcFormat);
            return;
        }
        Log.e(TAG, pcLogName + ": " + ERROR + ": " + pcFormat);
    }

    public static void logApi(String pcLogName, String pcFormat) {
        if (SciSys.getInitFlag() && pcLogName != null && pcFormat != null) {
            info(API_ID, "UI->SA " + pcLogName + ": " + pcFormat);
            return;
        }
        Log.i(TAG, "UI->SA " + pcLogName + INFO + ": " + pcFormat);
    }

    public static void logNty(String pcLogName, String pcFormat) {
        if (SciSys.getInitFlag() && pcLogName != null && pcFormat != null) {
            info(API_ID, "SA->UI " + pcLogName + ": " + pcFormat);
            return;
        }
        Log.i(TAG, "SA->UI " + pcLogName + INFO + ": " + pcFormat);
    }

    public static void i(String pcLogName, String pcFormat, Object... args) {
        String s = String.format(pcFormat, args);
        if (SciSys.getInitFlag() && pcLogName != null && s != null) {
            info(pcLogName, s);
            return;
        }
        Log.i(TAG, pcLogName + ": " + INFO + ": " + s);
    }

    public static void i(String pcLogName, String pcFormat) {
        if (SciSys.getInitFlag() && pcLogName != null && pcFormat != null) {
            info(pcLogName, pcFormat);
            return;
        }
        Log.i(TAG, pcLogName + ": " + INFO + ": " + pcFormat);
    }

    public static void d(String pcLogName, String pcFormat, Object... args) {
        String s = String.format(pcFormat, args);
        if (SciSys.getInitFlag() && pcLogName != null && s != null) {
            debug(pcLogName, s);
            return;
        }
        Log.d(TAG, pcLogName + ": " + DEBUG + ": " + s);
    }

    public static void d(String pcLogName, String pcFormat) {
        if (SciSys.getInitFlag() && pcLogName != null && pcFormat != null) {
            debug(pcLogName, pcFormat);
            return;
        }
        Log.d(TAG, pcLogName + ": " + DEBUG + ": " + pcFormat);
    }
}
