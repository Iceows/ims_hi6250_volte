package com.huawei.ims;

import android.telephony.Rlog;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: AESEncrypter.class */
public final class AESEncrypter {
    private static final int ITERATION_COUNT = 1024;
    public static final int KEY_LENGTH = 256;
    public static final int SALT_LENGTH = 16;
    private static final String TAG = "AESEncrypter";

    private static byte[] crypt(int i, SecretKey secretKey, byte[] bArr, byte[] bArr2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(secretKey.getEncoded(), "AES");
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(i, secretKeySpec, new IvParameterSpec(bArr));
            return cipher.doFinal(bArr2);
        } catch (InvalidAlgorithmParameterException e) {
            Rlog.e(TAG, "crypt error4 !");
            return new byte[0];
        } catch (InvalidKeyException e2) {
            Rlog.e(TAG, "crypt error3 !");
            return new byte[0];
        } catch (NoSuchAlgorithmException e3) {
            Rlog.e(TAG, "crypt error1 !");
            return new byte[0];
        } catch (BadPaddingException e4) {
            Rlog.e(TAG, "crypt error8 !");
            return new byte[0];
        } catch (IllegalBlockSizeException e5) {
            Rlog.e(TAG, "crypt error7 !");
            return new byte[0];
        } catch (NoSuchPaddingException e6) {
            Rlog.e(TAG, "crypt error2 !");
            return new byte[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String decrypt(String str, String str2, String str3) {
        char[] charArray = str2.toCharArray();
        if (charArray.length != 256) {
            Rlog.e(TAG, "decrypt key length error!");
            return null;
        }
        try {
            byte[] bytes = str3.getBytes("UTF-8");
            if (bytes.length != 16) {
                Rlog.e(TAG, "decrypt salt length error!");
                return null;
            }
            SecretKey generateSecretKey = generateSecretKey(charArray, bytes);
            if (generateSecretKey == null) {
                return null;
            }
            try {
                byte[] crypt = crypt(2, generateSecretKey, bytes, new HexEncoder().decode(str.getBytes("UTF-8")));
                if (crypt.length == 0) {
                    return null;
                }
                return new String(crypt, "UTF-8");
            } catch (COMException e) {
                Rlog.e(TAG, "decrypt error2!");
                return null;
            } catch (UnsupportedEncodingException e2) {
                Rlog.e(TAG, "decrypt error1!");
                return null;
            }
        } catch (UnsupportedEncodingException e3) {
            Rlog.e(TAG, "getBytes error in decrypt");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String encrypt(String str, String str2, String str3) {
        char[] charArray = str2.toCharArray();
        if (charArray.length != 256) {
            Rlog.e(TAG, "encrypt key length error!");
            return null;
        } else if (str3 == null) {
            Rlog.e(TAG, "encrypt param error!");
            return null;
        } else {
            try {
                byte[] bytes = str3.getBytes("UTF-8");
                if (bytes.length != 16) {
                    Rlog.e(TAG, "encrypt salt length error!");
                    return null;
                }
                SecretKey generateSecretKey = generateSecretKey(charArray, bytes);
                if (generateSecretKey == null) {
                    return null;
                }
                try {
                    byte[] crypt = crypt(1, generateSecretKey, bytes, str.getBytes("UTF-8"));
                    if (crypt.length == 0) {
                        return null;
                    }
                    return new String(new HexEncoder().encode(crypt), "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    Rlog.e(TAG, "encrypt error1!");
                    return null;
                }
            } catch (UnsupportedEncodingException e2) {
                Rlog.e(TAG, "getBytes error in encrypt");
                return null;
            }
        }
    }

    private static SecretKey generateSecretKey(char[] cArr, byte[] bArr) {
        try {
            return SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256").generateSecret(new PBEKeySpec(cArr, bArr, 1024, 256));
        } catch (NoSuchAlgorithmException e) {
            Rlog.e(TAG, "generateSecretKey error1 !");
            return null;
        } catch (InvalidKeySpecException e2) {
            Rlog.e(TAG, "generateSecretKey error2 !");
            return null;
        }
    }
}
