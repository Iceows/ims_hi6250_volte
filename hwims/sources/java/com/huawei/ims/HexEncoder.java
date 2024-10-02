package com.huawei.ims;

import android.telephony.Rlog;
import java.io.UnsupportedEncodingException;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class HexEncoder {
    private static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int NUM_16 = 16;
    private static final int NUM_4 = 4;
    private static final int OXFF = 255;
    private static final int OXFO = 240;
    private static final int OXOF = 15;
    private static final String TAG = "HexEncoder";

    protected static char[] encodeHex(byte[] data) {
        int l = data.length;
        char[] out = new char[l << 1];
        int j = 0;
        for (int i = 0; i < l; i++) {
            int j2 = j + 1;
            out[j] = DIGITS[(240 & data[i]) >>> 4];
            j = j2 + 1;
            out[j2] = DIGITS[15 & data[i]];
        }
        return out;
    }

    protected static byte[] decodeHex(char[] data) throws COMException {
        int len = data.length;
        if ((len & 1) != 0) {
            throw new COMException("Odd number of characters.");
        }
        byte[] out = new byte[len >> 1];
        int j = 0;
        int i = 0;
        while (j < len) {
            int f = toDigit(data[j], j) << 4;
            int j2 = j + 1;
            int f2 = f | toDigit(data[j2], j2);
            j = j2 + 1;
            out[i] = (byte) (f2 & 255);
            i++;
        }
        return out;
    }

    protected static int toDigit(char ch, int index) throws COMException {
        int digit = Character.digit(ch, 16);
        if (digit == -1) {
            throw new COMException("Illegal hexadecimal charcter " + ch + " at index " + index);
        }
        return digit;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] encode(byte[] array) {
        String string = new String(encodeHex(array));
        try {
            byte[] byteArray = string.getBytes("UTF-8");
            return byteArray;
        } catch (Exception e) {
            Rlog.d(TAG, "e=" + e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] decode(byte[] array) throws COMException {
        try {
            String string = new String(array, "UTF-8");
            byte[] byteArray = decodeHex(string.toCharArray());
            return byteArray;
        } catch (Exception e) {
            Rlog.d(TAG, "e=" + e);
            return null;
        }
    }

    protected String decode(String word) throws COMException {
        try {
            char[] charArray = word.toCharArray();
            String string = new String(decodeHex(charArray), "UTF-8");
            return string;
        } catch (Exception e) {
            Rlog.d(TAG, "e=" + e);
            return null;
        }
    }

    protected String encode(String word) {
        try {
            String string = new String(encodeHex(word.getBytes("UTF-8")));
            return string;
        } catch (UnsupportedEncodingException e) {
            Rlog.d(TAG, "e=" + e);
            return null;
        }
    }
}
