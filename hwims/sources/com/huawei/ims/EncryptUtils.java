package com.huawei.ims;

import android.annotation.SuppressLint;
import android.telephony.Rlog;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Random;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public class EncryptUtils {
    private static final int GROUP_SIZE = 4;
    private static final int RANDOM_OFFSET = 128;
    private static final String TAG = "EncryptUtils";
    private static final String UTF_8 = "UTF-8";

    private EncryptUtils() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"TrulyRandom"})
    public static String generateRandomString(int length) {
        Random random = new SecureRandom();
        byte[] outputs = new byte[length];
        random.nextBytes(outputs);
        for (int i = 0; i < length; i++) {
            try {
                if (outputs[i] < 0) {
                    outputs[i] = (byte) (outputs[i] + 128);
                }
            } catch (UnsupportedEncodingException e) {
                Rlog.e(TAG, "Unsupported utf-8 Encoding");
                return null;
            }
        }
        String salt = new String(outputs, UTF_8);
        return salt;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String encodeAesKey(String str, int length) {
        if (str == null || str.length() != length) {
            Rlog.e(TAG, "scatterAesKey error !");
            return null;
        }
        StringBuilder[] stringBuilders = new StringBuilder[4];
        for (int i = 0; i < 4; i++) {
            stringBuilders[i] = new StringBuilder(length / 4);
        }
        for (int i2 = 0; i2 < length; i2++) {
            stringBuilders[i2 % 4].append(str.charAt(i2));
        }
        StringBuilder strBuilder = new StringBuilder(length);
        for (int j = 0; j < 4; j++) {
            strBuilder.append((CharSequence) stringBuilders[j]);
        }
        return encodeString(strBuilder.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String encodeAesParam(String key, String param) {
        boolean isInvalidKey = key == null || key.length() != 256;
        boolean isInvalidParam = param == null || param.length() != 16;
        if (isInvalidKey || isInvalidParam) {
            Rlog.e(TAG, "scatterAesParam error !");
            return null;
        }
        StringBuilder strBuilder = new StringBuilder(16);
        for (int i = 0; i < 16; i++) {
            char temp = (char) (key.charAt(i * 16) ^ param.charAt(i));
            strBuilder.append(temp);
        }
        String newParam = encodeAesKey(strBuilder.toString(), 16);
        return newParam;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String decodeAesKey(String str, int length) {
        String decodeStr = decodeString(str);
        if (decodeStr == null || length != decodeStr.length()) {
            Rlog.e(TAG, "decodeAesKey error !");
            return null;
        }
        int groupLength = length / 4;
        char[][] charArray = (char[][]) Array.newInstance((Class<?>) char.class, 4, groupLength);
        for (int i = 0; i < 4; i++) {
            charArray[i] = decodeStr.substring(i * groupLength, (i + 1) * groupLength).toCharArray();
        }
        StringBuilder strBuilder = new StringBuilder(length);
        for (int i2 = 0; i2 < groupLength; i2++) {
            for (int j = 0; j < 4; j++) {
                strBuilder.append(charArray[j][i2]);
            }
        }
        return strBuilder.toString();
    }

    public static String decodeAesParam(String key, String param) {
        String decodeParam = decodeAesKey(param, 16);
        boolean isInvalidKey = key == null || key.length() != 256;
        boolean isInvalidParam = decodeParam == null || decodeParam.length() != 16;
        if (isInvalidKey || isInvalidParam) {
            Rlog.e(TAG, "decodeAesParam error!");
            return null;
        }
        StringBuilder strBuilder = new StringBuilder(16);
        for (int i = 0; i < 16; i++) {
            char temp = (char) (key.charAt(i * 16) ^ decodeParam.charAt(i));
            strBuilder.append(temp);
        }
        return strBuilder.toString();
    }

    private static String encodeString(String str) {
        try {
            byte[] encrypts = str.getBytes(UTF_8);
            return new String(new HexEncoder().encode(encrypts), UTF_8);
        } catch (UnsupportedEncodingException e) {
            Rlog.e(TAG, "encodeString UnsupportedEncodingException!");
            return null;
        }
    }

    private static String decodeString(String str) {
        try {
            byte[] sources = new HexEncoder().decode(str.getBytes(UTF_8));
            if (sources == null) {
                return null;
            }
            return new String(sources, UTF_8);
        } catch (UnsupportedEncodingException e) {
            Rlog.e(TAG, "decodeString UnsupportedEncodingException!");
            return null;
        }
    }
}
