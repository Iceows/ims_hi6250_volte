package com.huawei.ims.cust;

import android.os.SystemProperties;
import android.text.TextUtils;
import java.util.Arrays;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class HwCustUtil {
    private static final String VZW_ICCID_BEGIN = "891480";
    private static final String VZW_MCCMNC = "311810;311480";
    private static final String VZW_ROAMING_MCCMNC = "20404";
    public static final boolean isVZW;

    static {
        isVZW = "389".equals(SystemProperties.get("ro.config.hw_opta")) && "840".equals(SystemProperties.get("ro.config.hw_optb"));
    }

    public static boolean isVzwCard(String mccMnc, String iccId) {
        if (mccMnc == null || TextUtils.isEmpty(mccMnc)) {
            return false;
        }
        String[] mccmncs = VZW_MCCMNC.trim().split(";");
        if (!Arrays.asList(mccmncs).contains(mccMnc) && (!VZW_ROAMING_MCCMNC.equals(mccMnc) || iccId == null || !iccId.startsWith(VZW_ICCID_BEGIN))) {
            return false;
        }
        return true;
    }
}
