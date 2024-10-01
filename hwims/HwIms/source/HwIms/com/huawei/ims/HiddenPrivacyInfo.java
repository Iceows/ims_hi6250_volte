package com.huawei.ims;

import com.android.internal.util.HexDump;

/* loaded from: HiddenPrivacyInfo.class */
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
    private static final String LOG_TAG = "HiddenPrivacyInfo";
    public static final int MMI_INFO_TYPE = 5;
    public static final int OTHER_PRIVACY_INFO_TYPE = -1;
    public static final int TELEPHONE_NUMBER_INFO_TYPE = 0;
    private static final int TELEPHONE_NUMBER_RESERVE_LENGTH = 0;

    private static void logd(String str) {
    }

    private static String putHalfMosaicOnTeleNum(String str) {
        if (str == null) {
            logd("telephoneNumber is null, please check it");
            return null;
        }
        int length = str.length();
        int i = length / 2;
        return str.substring(0, length - i).replaceAll("\\S", "*").replaceAll("\\s", "*") + str.substring(length - i, length);
    }

    public static String putMosaic(String str, int i) {
        String putMosaicOnTelephoneNumber;
        if (str == null) {
            logd("info is null, please check it");
            return null;
        }
        if (i != 0) {
            switch (i) {
                case 2:
                case 3:
                    putMosaicOnTelephoneNumber = putMosaicOnImpu_i(str);
                    break;
                case 4:
                    putMosaicOnTelephoneNumber = putMosaicOnGbaParameter(str);
                    break;
                case 5:
                    putMosaicOnTelephoneNumber = putMosaicOnMmi(str);
                    break;
                default:
                    putMosaicOnTelephoneNumber = transToMosaic(str);
                    break;
            }
        } else {
            putMosaicOnTelephoneNumber = putMosaicOnTelephoneNumber(str);
        }
        return putMosaicOnTelephoneNumber;
    }

    public static String putMosaic(byte[] bArr, int i) {
        if (bArr == null) {
            logd("byte array is null");
            return null;
        }
        return putMosaic(HexDump.toHexString(bArr), i);
    }

    private static String putMosaicOnGbaParameter(String str) {
        String transToMosaic;
        if (str == null) {
            logd("GbaParameter is null, please check it");
            return null;
        }
        int length = str.length();
        char[] charArray = str.toCharArray();
        if (16 > length || charArray == null) {
            transToMosaic = transToMosaic(str);
        } else {
            for (int i = 4; i < 12; i++) {
                charArray[i] = (char) 42;
            }
            transToMosaic = new String(charArray);
        }
        return transToMosaic;
    }

    private static String putMosaicOnImpu_i(String str) {
        String str2;
        if (str == null) {
            logd("impu_i is null, please check it");
            return null;
        }
        int length = str.length();
        int indexOf = str.indexOf("@");
        if (-1 == indexOf) {
            return transToMosaic(str);
        }
        if (7 <= indexOf) {
            str2 = str.substring(0, (indexOf - 4) - 3) + "***" + str.substring(indexOf - 3, length);
        } else {
            String substring = str.substring(0, indexOf);
            str2 = transToMosaic(substring) + str.substring(indexOf, length);
        }
        return str2;
    }

    private static String putMosaicOnMmi(String str) {
        if (str == null) {
            logd("mmi is null, please check it");
            return null;
        }
        int length = str.length();
        if (3 < length) {
            String substring = str.substring(0, 3);
            String substring2 = str.substring(3, length);
            str = substring + transToMosaic(substring2);
        }
        return str;
    }

    private static String putMosaicOnTelephoneNumber(String str) {
        int length;
        String putHalfMosaicOnTeleNum;
        if (str == null) {
            logd("telephoneNumber is null, please check it");
            return null;
        }
        if (4 <= str.length()) {
            putHalfMosaicOnTeleNum = str.substring(0, (length - 4) - 0) + "****" + str.substring(length + 0, length);
        } else {
            putHalfMosaicOnTeleNum = putHalfMosaicOnTeleNum(str);
        }
        return putHalfMosaicOnTeleNum;
    }

    private static String transToMosaic(String str) {
        if (str == null) {
            logd("string is null, please check it");
            return null;
        }
        return str.replaceAll("\\S", "*").replaceAll("\\s", "*");
    }
}
