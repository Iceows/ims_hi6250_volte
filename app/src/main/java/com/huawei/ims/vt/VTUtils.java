package com.huawei.ims.vt;

import android.content.Context;
import android.os.SystemProperties;
import android.telephony.Rlog;

public class VTUtils {
    private static final String TAG = "VTUtils";
    private static final String HW_VTLTE_ON = "ro.config.hw_vtlte_on";
    private static boolean mIsVtLteSupported = SystemProperties.getBoolean(HW_VTLTE_ON, false);
    private static long preCallDataUsage = 0;
    private static long totalCallDataUsage = 0;
    private static final boolean isDocomo = SystemProperties.get("ro.product.custom", "NULL").contains("docomo");
    private static final String HW_VTFLOW_INFO = "ro.config.vt_flow_info";
    private static boolean IS_VT_FLOW_INFO = SystemProperties.getBoolean(HW_VTFLOW_INFO, false);

    public static void setPreCallDataUsage(long datausage) {
        preCallDataUsage = datausage;
    }

    public static long getPreCallDataUsage() {
        return preCallDataUsage;
    }

    public static void setTotalCallDataUsage(long datausage) {
        totalCallDataUsage = datausage;
    }

    public static long getTotalCallDataUsage() {
        return totalCallDataUsage;
    }

    public static boolean isVtFlowInfo() {
        return IS_VT_FLOW_INFO;
    }

    public static boolean isVTSupported() {
        return mIsVtLteSupported;
    }

    public static boolean isDocomo() {
        return isDocomo;
    }

    // TODO Iceows
    public static boolean isImsSwitchOn(Context context) {
        if (context == null) {
            Rlog.e(TAG, "isImsSwitchOn : context is null, return false.");
            return false;
        }
        boolean z = false;

        boolean result = z;
        Rlog.d(TAG, "isImsSwitchOn: result = " + result);
        return result;
    }
}
