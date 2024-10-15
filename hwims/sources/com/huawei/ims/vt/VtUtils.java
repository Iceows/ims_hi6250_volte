package com.huawei.ims.vt;

import android.content.Context;
import android.os.SystemProperties;
import android.telephony.Rlog;
import com.android.ims.HwImsManager;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class VtUtils {
    private static final String TAG = "VtUtils";
    private static final boolean IS_DOCOMO = SystemProperties.get("ro.product.custom", "NULL").contains("docomo");
    private static final String HW_VTFLOW_INFO = "ro.config.vt_flow_info";
    private static final boolean IS_VT_FLOW_INFO = SystemProperties.getBoolean(HW_VTFLOW_INFO, false);
    private static final String HW_VTLTE_ON = "ro.config.hw_vtlte_on";
    private static boolean sIsVtLteSupported = SystemProperties.getBoolean(HW_VTLTE_ON, false);
    private static long preCallDataUsage = 0;
    private static long totalCallDataUsage = 0;

    private VtUtils() {
    }

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

    public static boolean isVtSupported() {
        return sIsVtLteSupported;
    }

    public static boolean isDocomo() {
        return IS_DOCOMO;
    }

    public static boolean isImsSwitchOn(Context context) {
        if (context == null) {
            Rlog.e(TAG, "isImsSwitchOn : context is null, return false.");
            return false;
        }
        boolean isImsSwitchOn = HwImsManager.isEnhanced4gLteModeSettingEnabledByUser(context, 0) || HwImsManager.isEnhanced4gLteModeSettingEnabledByUser(context, 1);
        Rlog.i(TAG, "isImsSwitchOn: isImsSwitchOn = " + isImsSwitchOn);
        return isImsSwitchOn;
    }
}
