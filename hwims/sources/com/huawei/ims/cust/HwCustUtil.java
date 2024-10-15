package com.huawei.ims.cust;

import android.os.SystemProperties;
import android.text.TextUtils;
import java.util.Arrays;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HwCustUtil {
    public static final boolean IS_VZW;
    private static final String VZW_ICCID_BEGIN = "891480";
    private static final String VZW_MCCMNC = "311810;311480";
    private static final String VZW_ROAMING_MCCMNC = "20404";

    static {
        IS_VZW = "389".equals(SystemProperties.get("ro.config.hw_opta")) && "840".equals(SystemProperties.get("ro.config.hw_optb"));
    }

    private HwCustUtil() {
    }

    public static boolean isVzwCard(String mccMnc, String iccId) {
        if (mccMnc == null || TextUtils.isEmpty(mccMnc)) {
            return false;
        }
        String[] mccmncs = VZW_MCCMNC.trim().split(";");
        boolean isVzmCard = Arrays.asList(mccmncs).contains(mccMnc);
        boolean isRoamingVzwMccMnc = VZW_ROAMING_MCCMNC.equals(mccMnc);
        boolean isVzwIccId = iccId != null && iccId.startsWith(VZW_ICCID_BEGIN);
        boolean isRoamingVzwCard = isRoamingVzwMccMnc && isVzwIccId;
        if (!isVzmCard && !isRoamingVzwCard) {
            return false;
        }
        return true;
    }
}
