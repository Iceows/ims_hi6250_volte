package com.huawei.ims.vt;

import android.content.Context;
import android.os.SystemProperties;
import android.telephony.Rlog;
import com.android.ims.HwImsManager;

/* loaded from: VTUtils.class */
public class VTUtils {
    private static final String TAG = "VTUtils";
    private static final String HW_VTLTE_ON = "ro.config.hw_vtlte_on";
    private static boolean mIsVtLteSupported = SystemProperties.getBoolean(HW_VTLTE_ON, false);
    private static long preCallDataUsage = 0;
    private static long totalCallDataUsage = 0;
    private static final boolean isDocomo = SystemProperties.get("ro.product.custom", "NULL").contains("docomo");
    private static final String HW_VTFLOW_INFO = "ro.config.vt_flow_info";
    private static boolean IS_VT_FLOW_INFO = SystemProperties.getBoolean(HW_VTFLOW_INFO, false);

    public static long getPreCallDataUsage() {
        return preCallDataUsage;
    }

    public static long getTotalCallDataUsage() {
        return totalCallDataUsage;
    }

    public static boolean isDocomo() {
        return isDocomo;
    }

    public static boolean isImsSwitchOn(Context context) {
        if (context == null) {
            Rlog.e(TAG, "isImsSwitchOn : context is null, return false.");
            return false;
        }
        boolean z = false;
        if (HwImsManager.isEnhanced4gLteModeSettingEnabledByUser(context, 0) || HwImsManager.isEnhanced4gLteModeSettingEnabledByUser(context, 1)) {
            z = true;
        }
        Rlog.d(TAG, "isImsSwitchOn: result = " + z);
        return z;
    }

    public static boolean isVTSupported() {
        return mIsVtLteSupported;
    }

    public static boolean isVtFlowInfo() {
        return IS_VT_FLOW_INFO;
    }

    public static void setPreCallDataUsage(long j) {
        preCallDataUsage = j;
    }

    public static void setTotalCallDataUsage(long j) {
        totalCallDataUsage = j;
    }
}
