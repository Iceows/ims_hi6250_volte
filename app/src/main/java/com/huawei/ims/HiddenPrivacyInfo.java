package com.huawei.ims;

import com.android.internal.util.HexDump;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class HiddenPrivacyInfo {
    private static final boolean DEBUG = false;
    private static final int GBA_INFO_HIDDEN_BEGIN = 4;
    private static final int GBA_INFO_HIDDEN_END = 12;
    public static final int GBA_INFO_TYPE = 4;
    private static final int GBA_LENGTH_LEAST = 16;
    public static final int IMPI_INFO_TYPE = 3;
    public static final int IMPU_INFO_TYPE = 2;
    public static final int IMSI_INFO_TYPE = 1;
    private static final int INFO_HIDDEN_LENGTH = 4;
    private static final int INFO_RESERVE_BEGIN = 0;
    private static final int INFO_RESERVE_LENGTH = 3;
    private static final int INIT_POSITION = -1;
    private static final String LOG_TAG = "HiddenPrivacyInfo";
    public static final int MMI_INFO_TYPE = 5;
    private static final int OTHER_PRIVACY_INFO_TYPE = -1;
    public static final int TELEPHONE_NUMBER_INFO_TYPE = 0;
    private static final int TELEPHONE_NUMBER_RESERVE_LENGTH = 0;

    private HiddenPrivacyInfo() {
    }

    public static String putMosaic(String info, int type) {
        if (info == null) {
            loge("info is null, please check it");
            return null;
        }
        if (type == 0) {
            String key = putMosaicOnTelephoneNumber(info);
            return key;
        }
        if (type == 2 || type == 3) {
            String key2 = putMosaicOnImpuOrImpi(info);
            return key2;
        }
        if (type == 4) {
            String key3 = putMosaicOnGbaParameter(info);
            return key3;
        }
        if (type == 5) {
            String key4 = putMosaicOnMmi(info);
            return key4;
        }
        String key5 = transToMosaic(info);
        return key5;
    }

    public static String putMosaic(byte[] array, int type) {
        if (array == null) {
            loge("byte array is null");
            return null;
        }
        String info = HexDump.toHexString(array);
        return putMosaic(info, type);
    }

    private static String putMosaicOnTelephoneNumber(String telephoneNumber) {
        if (telephoneNumber == null) {
            loge("telephoneNumber is null, please check it");
            return null;
        }
        int length = telephoneNumber.length();
        if (4 <= length) {
            String key = telephoneNumber.substring(0, (length - 4) - 0) + "****" + telephoneNumber.substring(length + 0, length);
            return key;
        }
        String key2 = putHalfMosaicOnTeleNum(telephoneNumber);
        return key2;
    }

    private static String putMosaicOnImpuOrImpi(String impuOrImpi) {
        if (impuOrImpi == null) {
            loge("impu or impi is null, please check it");
            return null;
        }
        int length = impuOrImpi.length();
        int atPosition = impuOrImpi.indexOf("@");
        if (atPosition == -1) {
            String key = transToMosaic(impuOrImpi);
            return key;
        }
        int offset = (atPosition - 4) - 3;
        if (7 <= atPosition) {
            String beginKey = impuOrImpi.substring(0, offset);
            String endKey = impuOrImpi.substring(atPosition - 3, length);
            String key2 = beginKey + "***" + transMccMncToMosaic(endKey);
            return key2;
        }
        String beginKey2 = impuOrImpi.substring(0, atPosition);
        String endKey2 = impuOrImpi.substring(atPosition, length);
        String key3 = transToMosaic(beginKey2) + transMccMncToMosaic(endKey2);
        return key3;
    }

    private static String putMosaicOnGbaParameter(String gbaParameter) {
        if (gbaParameter == null) {
            loge("gbaParameter is null, please check it");
            return null;
        }
        int length = gbaParameter.length();
        char[] bufs = gbaParameter.toCharArray();
        if (length >= 16 && bufs != null) {
            for (int i = 4; i < 12; i++) {
                bufs[i] = '*';
            }
            String key = new String(bufs);
            return key;
        }
        String key2 = transToMosaic(gbaParameter);
        return key2;
    }

    private static String putMosaicOnMmi(String mmi) {
        if (mmi == null) {
            loge("mmi is null, please check it");
            return null;
        }
        int length = mmi.length();
        if (length > 3) {
            String beginKey = mmi.substring(0, 3);
            String endKey = mmi.substring(3, length);
            String key = beginKey + transToMosaic(endKey);
            return key;
        }
        return mmi;
    }

    private static String transToMosaic(String string) {
        if (string == null) {
            loge("string is null, please check it");
            return null;
        }
        return string.replaceAll("\\S", "*").replaceAll("\\s", "*");
    }

    public static String transMccMncToMosaic(String string) {
        if (string == null) {
            loge("string is null, please check it");
            return null;
        }
        return string.replaceAll("mcc\\d+", "mcc***").replaceAll("mnc\\d+", "mnc***");
    }

    private static String putHalfMosaicOnTeleNum(String telephoneNumber) {
        if (telephoneNumber == null) {
            loge("telephoneNumber is null, please check it");
            return null;
        }
        int length = telephoneNumber.length();
        int reserveLength = length / 2;
        String key = telephoneNumber.substring(0, length - reserveLength).replaceAll("\\S", "*").replaceAll("\\s", "*") + telephoneNumber.substring(length - reserveLength, length);
        return key;
    }

    private static void logi(String s) {
    }

    private static void loge(String s) {
    }
}
