package com.huawei.ims.cust;

import android.content.Context;
import android.provider.Settings;
import android.telephony.Rlog;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HwCustVzwIms {
    private static final int IMS_REG_MODE_NONE = -1;
    public static final String TAG = "HwCustVzwIms";
    private static final String VZW_IMS_REG_MODE = "vzw_ims_reg_mode_sub_";

    private HwCustVzwIms() {
    }

    public static void setVzwImsRegMode(Context context, int regMode, int subId, String mccMnc, String iccId) {
        if (context == null) {
            return;
        }
        Rlog.i(TAG, "regMode = " + regMode);
        int regModeToSave = HwCustUtil.isVzwCard(mccMnc, iccId) ? regMode : -1;
        Settings.Global.putInt(context.getContentResolver(), getVzwImsRegKey(subId), regModeToSave);
    }

    public static void cleanVzwImsRegMode(Context context, int subId) {
        if (context == null) {
            return;
        }
        Rlog.i(TAG, "cleanVzwImsRegMode");
        Settings.Global.putInt(context.getContentResolver(), getVzwImsRegKey(subId), -1);
    }

    public static String getVzwImsRegKey(int subId) {
        return VZW_IMS_REG_MODE + Integer.toString(subId);
    }
}
