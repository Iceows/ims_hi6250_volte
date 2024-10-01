package com.huawei.ims;

import android.annotation.SuppressLint;
import android.telephony.Rlog;
import java.io.UnsupportedEncodingException;
import java.security.SecureRandom;

/* loaded from: EncryptUtils.class */
public class EncryptUtils {
    private static final int GROUP_SIZE = 4;
    private static final String TAG = "EncryptUtils";

    /* JADX INFO: Access modifiers changed from: protected */
    public static String decodeAESKey(String str, int i) {
        String decodeString = decodeString(str);
        if (decodeString == null || i != decodeString.length()) {
            Rlog.e(TAG, "decodeAESKey error !");
            return null;
        }
        int i2 = i / 4;
        char[][] cArr = new char[4][i2];
        for (int i3 = 0; i3 < 4; i3++) {
            cArr[i3] = decodeString.substring(i3 * i2, (i3 + 1) * i2).toCharArray();
        }
        StringBuilder sb = new StringBuilder(i);
        for (int i4 = 0; i4 < i2; i4++) {
            for (int i5 = 0; i5 < 4; i5++) {
                sb.append(cArr[i5][i4]);
            }
        }
        return sb.toString();
    }

    public static String decodeAESParam(String str, String str2) {
        String decodeAESKey = decodeAESKey(str2, 16);
        if (str == null || decodeAESKey == null || 256 != str.length() || 16 != decodeAESKey.length()) {
            Rlog.e(TAG, "decodeAESParam error !");
            return null;
        }
        StringBuilder sb = new StringBuilder(16);
        for (int i = 0; i < 16; i++) {
            sb.append((char) (str.charAt(i * 16) ^ decodeAESKey.charAt(i)));
        }
        return sb.toString();
    }

    private static String decodeString(String str) {
        try {
            byte[] decode = new HexEncoder().decode(str.getBytes("UTF-8"));
            if (decode == null) {
                return null;
            }
            return new String(decode, "UTF-8");
        } catch (COMException e) {
            Rlog.e(TAG, "decodeString error1!");
            return null;
        } catch (UnsupportedEncodingException e2) {
            Rlog.e(TAG, "decodeString error2!");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String encodeAESKey(String str, int i) {
        if (str == null || str.length() != i) {
            Rlog.e(TAG, "scatterAESKey error !");
            return null;
        }
        StringBuilder[] sbArr = new StringBuilder[4];
        for (int i2 = 0; i2 < 4; i2++) {
            sbArr[i2] = new StringBuilder(i / 4);
        }
        for (int i3 = 0; i3 < i; i3++) {
            sbArr[i3 % 4].append(str.charAt(i3));
        }
        StringBuilder sb = new StringBuilder(i);
        for (int i4 = 0; i4 < 4; i4++) {
            sb.append((CharSequence) sbArr[i4]);
        }
        return encodeString(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String encodeAESParam(String str, String str2) {
        if (str == null || str2 == null || 256 != str.length() || 16 != str2.length()) {
            Rlog.e(TAG, "scatterAESParam error !");
            return null;
        }
        StringBuilder sb = new StringBuilder(16);
        for (int i = 0; i < 16; i++) {
            sb.append((char) (str.charAt(i * 16) ^ str2.charAt(i)));
        }
        return encodeAESKey(sb.toString(), 16);
    }

    private static String encodeString(String str) {
        try {
            return new String(new HexEncoder().encode(str.getBytes("UTF-8")), "UTF-8");
        } catch (Exception e) {
            Rlog.e(TAG, "encodeString error");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"TrulyRandom"})
    public static String generateRandomString(int i) {
        String str;
        byte[] bArr = new byte[i];
        new SecureRandom().nextBytes(bArr);
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr[i2] < 0) {
                bArr[i2] = (byte) (bArr[i2] + 128);
            }
        }
        try {
            str = new String(bArr, "utf-8");
        } catch (UnsupportedEncodingException e) {
            Rlog.e(TAG, "Unsupported utf-8 Encoding");
            str = null;
        }
        return str;
    }
}
