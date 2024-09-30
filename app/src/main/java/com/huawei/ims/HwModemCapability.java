package com.huawei.ims;

import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;

public class HwModemCapability {
    private static final int A_VALUE = 10;
    private static final int BCD_LEN = 4;
    private static String MODEM_CAP = SystemProperties.get("persist.radio.modem.cap", "");
    public static final int MODEM_CAP_BIP_SUPPORT = 1;
    public static final int MODEM_CAP_CDMA_USE_VIA_HISI = 14;
    public static final int MODEM_CAP_DSDA_SPEECH_CODEC_ADJUST = 11;
    public static final int MODEM_CAP_DSDS_MANUAL_PS_ATTACH = 10;
    public static final int MODEM_CAP_DUAL_LTE_STACK = 27;
    public static final int MODEM_CAP_DUAL_PS_ATTACHED = 0;
    public static final int MODEM_CAP_FULL_PREFMODE = 3;
    public static final int MODEM_CAP_GET_ICCID_AT = 19;
    public static final int MODEM_CAP_GET_IMSI_GSM = 18;
    public static final int MODEM_CAP_GET_MODEM_CAPABILITY = 9;
    public static final int MODEM_CAP_GET_MODEM_MTK_CAPABILITY = 28;
    public static final int MODEM_CAP_LONG_SMS_DELAY_RELEASE = 17;
    public static final int MODEM_CAP_MANUAL_SEL_NETWORK_AUTO = 4;
    public static final int MODEM_CAP_MAX = 360;
    public static final int MODEM_CAP_NOUPDATE_LAC_AND_CID = 12;
    public static final int MODEM_CAP_NV_FUCTION_RPC = 13;
    public static final int MODEM_CAP_ONS_MATCH_PNN = 5;
    public static final int MODEM_CAP_PLUS_TRANSFER_SUPPORT = 2;
    public static final int MODEM_CAP_RETTACH_API_SUPPORT = 7;
    public static final int MODEM_CAP_RIL_RECOVERY_ENDCALL = 8;
    public static final int MODEM_CAP_RPT_DEREGISTER_STATE_DELAYED = 6;
    public static final int MODEM_CAP_SUPPORT_DIFF_ID = 15;
    public static final int MODEM_CAP_SUPPORT_DUAL_VOLTE = 21;
    public static final int MODEM_CAP_SUPPORT_IMEI_BIND_SLOT = 26;
    public static final int MODEM_CAP_SUPPORT_NR = 29;
    public static final int MODEM_CAP_SUPPORT_NR_SLICES = 30;
    public static final int MODEM_CAP_SUPPORT_SWITCH_SOCKET = 16;
    private static final String TAG = "HwModemCapability";

    public static boolean isCapabilitySupport(int capability) {
        int bcdIndex = capability / 4;
        int bcdOffset = capability % 4;

        Log.d(TAG, "HwImsService isCapabilitySupport capability: " + capability);
        if (capability < 0 || capability >= 360) {
            return false;
        }
        if (TextUtils.isEmpty(MODEM_CAP)) {
            MODEM_CAP = SystemProperties.get("persist.radio.modem.cap", "");
        }

        if (bcdIndex>=MODEM_CAP.length()) {
            Log.i(TAG, "Index is superior of MODEM_CAP length. Modem cap value : " + MODEM_CAP + " index : " + bcdIndex);
            return false;
        }

        try {
            int bcdValue = convertChar2Int(MODEM_CAP.charAt(bcdIndex));
            if (bcdValue == -1 || ((1 << (3 - bcdOffset)) & bcdValue) <= 0) {
                return false;
            }
            return true;
        } catch (IndexOutOfBoundsException e) {
        }
        return false;
    }

    private static int convertChar2Int(char origChar) {
        if (origChar >= '0' && origChar <= '9') {
            return origChar - '0';
        }
        if (origChar >= 'a' && origChar <= 'f') {
            return (origChar - 'a') + 10;
        }
        if (origChar < 'A' || origChar > 'F') {
            return -1;
        }
        return (origChar - 'A') + 10;
    }
}