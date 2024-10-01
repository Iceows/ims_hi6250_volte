package com.huawei.ims;

import android.telephony.Rlog;
import java.io.UnsupportedEncodingException;

/* loaded from: HexEncoder.class */
public final class HexEncoder {
    private static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int NUM_16 = 16;
    private static final int NUM_4 = 4;
    private static final int OXFF = 255;
    private static final int OXFO = 240;
    private static final int OXOF = 15;
    private static final String TAG = "HexEncoder";

    protected static byte[] decodeHex(char[] cArr) throws COMException {
        int length = cArr.length;
        if ((length & 1) == 0) {
            byte[] bArr = new byte[length >> 1];
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int digit = toDigit(cArr[i], i);
                int i3 = i + 1;
                int digit2 = toDigit(cArr[i3], i3);
                i = i3 + 1;
                bArr[i2] = (byte) (((digit << 4) | digit2) & 255);
                i2++;
            }
            return bArr;
        }
        throw new COMException("Odd number of characters.");
    }

    protected static char[] encodeHex(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            cArr[i] = DIGITS[(240 & bArr[i2]) >>> 4];
            i = i3 + 1;
            cArr[i3] = DIGITS[15 & bArr[i2]];
        }
        return cArr;
    }

    protected static int toDigit(char c, int i) throws COMException {
        int digit = Character.digit(c, 16);
        if (digit != -1) {
            return digit;
        }
        throw new COMException("Illegal hexadecimal charcter " + c + " at index " + i);
    }

    protected String decode(String str) throws COMException {
        String str2;
        try {
            str2 = new String(decodeHex(str.toCharArray()), "UTF-8");
        } catch (Exception e) {
            Rlog.d(TAG, "e=" + e);
            str2 = null;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] decode(byte[] bArr) throws COMException {
        byte[] bArr2;
        try {
            bArr2 = decodeHex(new String(bArr, "UTF-8").toCharArray());
        } catch (Exception e) {
            Rlog.d(TAG, "e=" + e);
            bArr2 = null;
        }
        return bArr2;
    }

    protected String encode(String str) {
        String str2;
        try {
            str2 = new String(encodeHex(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            Rlog.d(TAG, "e=" + e);
            str2 = null;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] encode(byte[] bArr) {
        String str = new String(encodeHex(bArr));
        byte[] bArr2 = null;
        try {
            bArr2 = str.getBytes("UTF-8");
        } catch (Exception e) {
            Rlog.d(TAG, "e=" + e);
        }
        return bArr2;
    }
}
