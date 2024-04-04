package com.huawei.ims.cust;

import android.content.Context;
import android.provider.Settings;
import android.telephony.Rlog;

/* loaded from: HwCustVZWIms.class */
public class HwCustVZWIms {
    private static final int IMS_REG_MODE_NONE = -1;
    public static final String TAG = "HwCustVZWIms";
    private static final String VZW_IMS_REG_MODE = "vzw_ims_reg_mode_sub_";

    public static void cleanVZWImsRegMode(Context context, int i) {
        if (context == null) {
            return;
        }
        Rlog.d(TAG, "cleanVZWImsRegMode");
        Settings.Global.putInt(context.getContentResolver(), getVZWImsRegKey(i), -1);
    }

    public static String getVZWImsRegKey(int i) {
        return VZW_IMS_REG_MODE + Integer.toString(i);
    }

    public static void setVZWImsRegMode(Context context, int i, int i2, String str, String str2) {
        if (context == null) {
            return;
        }
        Rlog.d(TAG, "regMode = " + i);
        if (!HwCustUtil.isVzwCard(str, str2)) {
            i = -1;
        }
        Settings.Global.putInt(context.getContentResolver(), getVZWImsRegKey(i2), i);
    }
}
