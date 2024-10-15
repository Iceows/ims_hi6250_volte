package com.huawei.sci;

import android.text.format.Time;
import android.util.Log;
import java.util.Locale;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class SciLog {
    private static String TAG = "HRCS";
    private static String INFO = "INFO";
    private static String ERROR = "ERROR";

    public static String now() {
        Time localTime = new Time("Asia/Hong_Kong");
        localTime.setToNow();
        return localTime.format("%y-%m-%d %H:%M:%S");
    }

    public static void err(String logName, String formatStr, Object... args) {
        String strVal = String.format(Locale.ROOT, formatStr, args);
        Log.e(TAG, logName + ": " + ERROR + ": " + strVal);
    }

    public static void err(String logName, String formatStr) {
        Log.e(TAG, logName + ": " + ERROR + ": " + formatStr);
    }

    public static void logApi(String logName, String formatStr) {
        Log.i(TAG, "UI->SA " + logName + INFO + ": " + formatStr);
    }

    public static void logNty(String logName, String formatStr) {
        Log.i(TAG, "SA->UI " + logName + INFO + ": " + formatStr);
    }

    public static void info(String logName, String formatStr, Object... args) {
        String strVal = String.format(Locale.ROOT, formatStr, args);
        Log.i(TAG, logName + ": " + INFO + ": " + strVal);
    }

    public static void info(String logName, String formatStr) {
        Log.i(TAG, logName + ": " + INFO + ": " + formatStr);
    }
}
