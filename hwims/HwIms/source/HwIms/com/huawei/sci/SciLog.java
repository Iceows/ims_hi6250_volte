package com.huawei.sci;

import android.text.format.Time;
import android.util.Log;

/* loaded from: SciLog.class */
public class SciLog {
    private static String TAG = "HRCS";
    private static String INFO = "INFO";
    private static String ERROR = "ERROR";
    private static String DEBUG = "DEBUG";
    private static String API_ID = "CAAS_API";

    public static void d(String str, String str2) {
        if (SciSys.getInitFlag() && str != null && str2 != null) {
            debug(str, str2);
            return;
        }
        String str3 = TAG;
        Log.d(str3, str + ": " + DEBUG + ": " + str2);
    }

    public static void d(String str, String str2, Object... objArr) {
        String format = String.format(str2, objArr);
        if (SciSys.getInitFlag() && str != null && format != null) {
            debug(str, format);
            return;
        }
        String str3 = TAG;
        Log.d(str3, str + ": " + DEBUG + ": " + format);
    }

    private static native void debug(String str, String str2);

    public static void e(String str, String str2) {
        if (SciSys.getInitFlag() && str != null && str2 != null) {
            error(str, str2);
            return;
        }
        String str3 = TAG;
        Log.e(str3, str + ": " + ERROR + ": " + str2);
    }

    public static void e(String str, String str2, Object... objArr) {
        String format = String.format(str2, objArr);
        if (SciSys.getInitFlag() && str != null && format != null) {
            error(str, format);
            return;
        }
        String str3 = TAG;
        Log.e(str3, str + ": " + ERROR + ": " + format);
    }

    private static native void error(String str, String str2);

    public static void i(String str, String str2) {
        if (SciSys.getInitFlag() && str != null && str2 != null) {
            info(str, str2);
            return;
        }
        String str3 = TAG;
        Log.i(str3, str + ": " + INFO + ": " + str2);
    }

    public static void i(String str, String str2, Object... objArr) {
        String format = String.format(str2, objArr);
        if (SciSys.getInitFlag() && str != null && format != null) {
            info(str, format);
            return;
        }
        String str3 = TAG;
        Log.i(str3, str + ": " + INFO + ": " + format);
    }

    private static native void info(String str, String str2);

    public static void logApi(String str, String str2) {
        if (SciSys.getInitFlag() && str != null && str2 != null) {
            String str3 = API_ID;
            info(str3, "UI->SA " + str + ": " + str2);
            return;
        }
        String str4 = TAG;
        Log.i(str4, "UI->SA " + str + INFO + ": " + str2);
    }

    public static void logNty(String str, String str2) {
        if (SciSys.getInitFlag() && str != null && str2 != null) {
            String str3 = API_ID;
            info(str3, "SA->UI " + str + ": " + str2);
            return;
        }
        String str4 = TAG;
        Log.i(str4, "SA->UI " + str + INFO + ": " + str2);
    }

    public static native int logQoePrint(String str);

    public static String now() {
        Time time = new Time("Asia/Hong_Kong");
        time.setToNow();
        return time.format("%y-%m-%d %H:%M:%S");
    }
}
