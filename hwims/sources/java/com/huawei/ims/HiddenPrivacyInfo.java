package com.huawei.ims;

import com.android.internal.util.HexDump;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
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

    public static String putMosaic(String info, int type) {
        if (info == null) {
            logd("info is null, please check it");
            return null;
        }
        if (type == 0) {
            String key = putMosaicOnTelephoneNumber(info);
            return key;
        }
        switch (type) {
            case 2:
            case 3:
                String key2 = putMosaicOnImpu_i(info);
                return key2;
            case 4:
                String key3 = putMosaicOnGbaParameter(info);
                return key3;
            case 5:
                String key4 = putMosaicOnMmi(info);
                return key4;
            default:
                String key5 = transToMosaic(info);
                return key5;
        }
    }

    public static String putMosaic(byte[] array, int type) {
        if (array == null) {
            logd("byte array is null");
            return null;
        }
        String info = HexDump.toHexString(array);
        return putMosaic(info, type);
    }

    private static String putMosaicOnTelephoneNumber(String telephoneNumber) {
        if (telephoneNumber == null) {
            logd("telephoneNumber is null, please check it");
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

    private static String putMosaicOnImpu_i(String impu_i) {
        if (impu_i == null) {
            logd("impu_i is null, please check it");
            return null;
        }
        int length = impu_i.length();
        int atPosition = impu_i.indexOf("@");
        if (-1 == atPosition) {
            String key = transToMosaic(impu_i);
            return key;
        }
        int offset = (atPosition - 4) - 3;
        if (7 <= atPosition) {
            String beginKey = impu_i.substring(0, offset);
            String endKey = impu_i.substring(atPosition - 3, length);
            String key2 = beginKey + "***" + endKey;
            return key2;
        }
        String beginKey2 = impu_i.substring(0, atPosition);
        String endKey2 = impu_i.substring(atPosition, length);
        String key3 = transToMosaic(beginKey2) + endKey2;
        return key3;
    }

    private static String putMosaicOnGbaParameter(String GbaParameter) {
        if (GbaParameter == null) {
            logd("GbaParameter is null, please check it");
            return null;
        }
        int length = GbaParameter.length();
        char[] buf = GbaParameter.toCharArray();
        if (16 <= length && buf != null) {
            for (int i = 4; i < 12; i++) {
                buf[i] = '*';
            }
            String key = new String(buf);
            return key;
        }
        String key2 = transToMosaic(GbaParameter);
        return key2;
    }

    private static String putMosaicOnMmi(String mmi) {
        if (mmi == null) {
            logd("mmi is null, please check it");
            return null;
        }
        int length = mmi.length();
        if (3 < length) {
            String beginKey = mmi.substring(0, 3);
            String endKey = mmi.substring(3, length);
            String key = beginKey + transToMosaic(endKey);
            return key;
        }
        return mmi;
    }

    private static String transToMosaic(String string) {
        if (string == null) {
            logd("string is null, please check it");
            return null;
        }
        return string.replaceAll("\\S", "*").replaceAll("\\s", "*");
    }

    private static String putHalfMosaicOnTeleNum(String telephoneNumber) {
        if (telephoneNumber == null) {
            logd("telephoneNumber is null, please check it");
            return null;
        }
        int length = telephoneNumber.length();
        int reserveLength = length / 2;
        String key = telephoneNumber.substring(0, length - reserveLength).replaceAll("\\S", "*").replaceAll("\\s", "*") + telephoneNumber.substring(length - reserveLength, length);
        return key;
    }

    private static void logd(String s) {
    }
}
