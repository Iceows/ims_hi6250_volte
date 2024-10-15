package com.huawei.ims;

import android.telephony.Rlog;
import java.io.UnsupportedEncodingException;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public final class HexEncoder {
    private static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int INVALID_CHAR = -1;
    private static final int NUM_16 = 16;
    private static final int NUM_4 = 4;
    private static final int OXFF = 255;
    private static final int OXFO = 240;
    private static final int OXOF = 15;
    private static final String TAG = "HexEncoder";
    private static final String UTF_8 = "UTF-8";

    protected static char[] encodeHex(byte[] data) {
        int len = data.length;
        char[] outs = new char[len << 1];
        int index = 0;
        for (int i = 0; i < len; i++) {
            int index2 = index + 1;
            char[] cArr = DIGITS;
            outs[index] = cArr[(data[i] & 240) >>> 4];
            index = index2 + 1;
            outs[index2] = cArr[data[i] & 15];
        }
        return outs;
    }

    protected static byte[] decodeHex(char[] data) throws ComException {
        int len = data.length;
        if ((len & 1) != 0) {
            throw new ComException("Odd number of characters.");
        }
        byte[] outs = new byte[len >> 1];
        int index = 0;
        int i = 0;
        while (index < len) {
            int value = toDigit(data[index], index) << 4;
            int index2 = index + 1;
            int value2 = value | toDigit(data[index2], index2);
            index = index2 + 1;
            outs[i] = (byte) (value2 & 255);
            i++;
        }
        return outs;
    }

    protected static int toDigit(char ch, int index) throws ComException {
        int digit = Character.digit(ch, 16);
        if (digit == -1) {
            throw new ComException("Illegal hexadecimal charcter " + ch + " at index " + index);
        }
        return digit;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] encode(byte[] array) {
        String string = new String(encodeHex(array));
        try {
            byte[] byteArray = string.getBytes(UTF_8);
            return byteArray;
        } catch (UnsupportedEncodingException e) {
            Rlog.e(TAG, "encode to byte[]: UnsupportedEncodingException");
            return null;
        }
    }

    protected String encode(String word) {
        try {
            String string = new String(encodeHex(word.getBytes(UTF_8)));
            return string;
        } catch (UnsupportedEncodingException e) {
            Rlog.e(TAG, "encode to String: UnsupportedEncodingException");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] decode(byte[] array) {
        try {
            String string = new String(array, UTF_8);
            byte[] byteArray = decodeHex(string.toCharArray());
            return byteArray;
        } catch (ComException e) {
            Rlog.e(TAG, "decode to byte[]: ComException");
            return null;
        } catch (UnsupportedEncodingException e2) {
            Rlog.e(TAG, "decode to byte[]: UnsupportedEncodingException");
            return null;
        }
    }

    protected String decode(String word) {
        try {
            char[] charArray = word.toCharArray();
            String string = new String(decodeHex(charArray), UTF_8);
            return string;
        } catch (ComException e) {
            Rlog.e(TAG, "decode to String: ComException");
            return null;
        } catch (UnsupportedEncodingException e2) {
            Rlog.e(TAG, "decode to String: UnsupportedEncodingException");
            return null;
        }
    }
}
