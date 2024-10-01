package com.huawei.ims.cust;

import android.os.SystemProperties;

/* loaded from: HwCustUtil.class */
public class HwCustUtil {
    private static final String VZW_ICCID_BEGIN = "891480";
    private static final String VZW_MCCMNC = "311810;311480";
    private static final String VZW_ROAMING_MCCMNC = "20404";
    public static final boolean isVZW;

    static {
        isVZW = "389".equals(SystemProperties.get("ro.config.hw_opta")) && "840".equals(SystemProperties.get("ro.config.hw_optb"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r4.startsWith(com.huawei.ims.cust.HwCustUtil.VZW_ICCID_BEGIN) != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isVzwCard(java.lang.String r3, java.lang.String r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            if (r0 == 0) goto L45
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L45
            java.lang.String r0 = "311810;311480"
            java.lang.String r0 = r0.trim()
            java.lang.String r1 = ";"
            java.lang.String[] r0 = r0.split(r1)
            java.util.List r0 = java.util.Arrays.asList(r0)
            r1 = r3
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L43
            r0 = r5
            r6 = r0
            java.lang.String r0 = "20404"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L45
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L45
            r0 = r5
            r6 = r0
            r0 = r4
            java.lang.String r1 = "891480"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L45
        L43:
            r0 = 1
            r6 = r0
        L45:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.ims.cust.HwCustUtil.isVzwCard(java.lang.String, java.lang.String):boolean");
    }
}
