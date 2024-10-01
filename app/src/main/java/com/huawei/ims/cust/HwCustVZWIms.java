package com.huawei.ims.cust;

import android.content.Context;
import android.provider.Settings;
import android.telephony.Rlog;


public class HwCustVZWIms {
    private static final int IMS_REG_MODE_NONE = -1;
    public static final String TAG = "HwCustVZWIms";
    private static final String VZW_IMS_REG_MODE = "vzw_ims_reg_mode_sub_";

    public static void setVZWImsRegMode(Context context, int regMode, int subId, String mccMnc, String iccId) {
        if (context == null) {
            return;
        }
        Rlog.d(TAG, "regMode = " + regMode);
        Settings.Global.putInt(context.getContentResolver(), getVZWImsRegKey(subId), HwCustUtil.isVzwCard(mccMnc, iccId) ? regMode : -1);
    }

    public static void cleanVZWImsRegMode(Context context, int subId) {
        if (context == null) {
            return;
        }
        Rlog.d(TAG, "cleanVZWImsRegMode");
        Settings.Global.putInt(context.getContentResolver(), getVZWImsRegKey(subId), -1);
    }

    public static String getVZWImsRegKey(int subId) {
        return VZW_IMS_REG_MODE + Integer.toString(subId);
    }
}
