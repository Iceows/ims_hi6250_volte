package com.huawei.ims;

import android.annotation.SuppressLint;
import android.telephony.Rlog;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Random;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public class EncryptUtils {
    private static final int GROUP_SIZE = 4;
    private static final String TAG = "EncryptUtils";

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"TrulyRandom"})
    public static String generateRandomString(int length) {
        Random random = new SecureRandom();
        byte[] output = new byte[length];
        random.nextBytes(output);
        for (int i = 0; i < length; i++) {
            try {
                if (output[i] < 0) {
                    output[i] = (byte) (output[i] + 128);
                }
            } catch (UnsupportedEncodingException e) {
                Rlog.e(TAG, "Unsupported utf-8 Encoding");
                return null;
            }
        }
        String salt = new String(output, "utf-8");
        return salt;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String encodeAESKey(String str, int length) {
        if (str == null || str.length() != length) {
            Rlog.e(TAG, "scatterAESKey error !");
            return null;
        }
        StringBuilder[] group = new StringBuilder[4];
        for (int i = 0; i < 4; i++) {
            group[i] = new StringBuilder(length / 4);
        }
        for (int i2 = 0; i2 < length; i2++) {
            group[i2 % 4].append(str.charAt(i2));
        }
        StringBuilder strBuilder = new StringBuilder(length);
        for (int j = 0; j < 4; j++) {
            strBuilder.append((CharSequence) group[j]);
        }
        return encodeString(strBuilder.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String encodeAESParam(String sKey, String sParam) {
        if (sKey == null || sParam == null || 256 != sKey.length() || 16 != sParam.length()) {
            Rlog.e(TAG, "scatterAESParam error !");
            return null;
        }
        StringBuilder strBuilder = new StringBuilder(16);
        for (int i = 0; i < 16; i++) {
            char temp = (char) (sKey.charAt(i * 16) ^ sParam.charAt(i));
            strBuilder.append(temp);
        }
        String param = encodeAESKey(strBuilder.toString(), 16);
        return param;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String decodeAESKey(String str, int length) {
        String str2 = decodeString(str);
        if (str2 == null || length != str2.length()) {
            Rlog.e(TAG, "decodeAESKey error !");
            return null;
        }
        int groupLength = length / 4;
        char[][] charArray = (char[][]) Array.newInstance((Class<?>) char.class, 4, groupLength);
        for (int i = 0; i < 4; i++) {
            charArray[i] = str2.substring(i * groupLength, (i + 1) * groupLength).toCharArray();
        }
        StringBuilder strBuilder = new StringBuilder(length);
        for (int i2 = 0; i2 < groupLength; i2++) {
            for (int j = 0; j < 4; j++) {
                strBuilder.append(charArray[j][i2]);
            }
        }
        return strBuilder.toString();
    }

    public static String decodeAESParam(String sKey, String sParam) {
        String sParam2 = decodeAESKey(sParam, 16);
        if (sKey == null || sParam2 == null || 256 != sKey.length() || 16 != sParam2.length()) {
            Rlog.e(TAG, "decodeAESParam error !");
            return null;
        }
        StringBuilder strBuilder = new StringBuilder(16);
        for (int i = 0; i < 16; i++) {
            char temp = (char) (sKey.charAt(i * 16) ^ sParam2.charAt(i));
            strBuilder.append(temp);
        }
        return strBuilder.toString();
    }

    private static String encodeString(String str) {
        try {
            byte[] encrypted = str.getBytes("UTF-8");
            return new String(new HexEncoder().encode(encrypted), "UTF-8");
        } catch (Exception e) {
            Rlog.e(TAG, "encodeString error");
            return null;
        }
    }

    private static String decodeString(String str) {
        try {
            byte[] source = new HexEncoder().decode(str.getBytes("UTF-8"));
            if (source == null) {
                return null;
            }
            return new String(source, "UTF-8");
        } catch (COMException e) {
            Rlog.e(TAG, "decodeString error1!");
            return null;
        } catch (UnsupportedEncodingException e2) {
            Rlog.e(TAG, "decodeString error2!");
            return null;
        }
    }
}
