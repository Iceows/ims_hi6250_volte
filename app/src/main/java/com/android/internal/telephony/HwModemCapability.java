package com.android.internal.telephony;

import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;

public class HwModemCapability {
    private static final String TAG = "HwModemCapability";
    private static final int MAX_CAPABILITY = 360;
    private static String MODEM_CAP = SystemProperties.get("persist.radio.modem.cap", "");

    public static boolean isCapabilitySupport(int capability) {
        if (capability < 0 || capability >= MAX_CAPABILITY || TextUtils.isEmpty(MODEM_CAP)) {
            return false;
        }

        try {
            int bcdValue = convertChar2Int(MODEM_CAP.charAt(capability / 4));
            return bcdValue != -1 && ((1 << (3 - (capability % 4))) & bcdValue) > 0;
        } catch (IndexOutOfBoundsException ex) {
            Log.e(TAG, "isCapabilitySupport " + ex);
        }
        return false;
    }

    private static int convertChar2Int(char origChar) {
        if (origChar >= '0' && origChar <= '9') return origChar - '0';
        if (origChar >= 'a' && origChar <= 'f') return origChar - 'a' + 10;
        if (origChar >= 'A' && origChar <= 'F') return origChar - 'A' + 10;
        return -1;
    }
}