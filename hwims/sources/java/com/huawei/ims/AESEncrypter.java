package com.huawei.ims;

import android.telephony.Rlog;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class AESEncrypter {
    private static final int ITERATION_COUNT = 1024;
    public static final int KEY_LENGTH = 256;
    public static final int SALT_LENGTH = 16;
    private static final String TAG = "AESEncrypter";

    /* JADX INFO: Access modifiers changed from: protected */
    public static String encrypt(String sSrc, String sKey, String sParam) {
        char[] password = sKey.toCharArray();
        if (password.length != 256) {
            Rlog.e(TAG, "encrypt key length error!");
            return null;
        }
        if (sParam == null) {
            Rlog.e(TAG, "encrypt param error!");
            return null;
        }
        try {
            byte[] salt = sParam.getBytes("UTF-8");
            if (salt.length != 16) {
                Rlog.e(TAG, "encrypt salt length error!");
                return null;
            }
            SecretKey secretKey = generateSecretKey(password, salt);
            if (secretKey == null) {
                return null;
            }
            try {
                byte[] source = sSrc.getBytes("UTF-8");
                byte[] dst = crypt(1, secretKey, salt, source);
                if (dst.length == 0) {
                    return null;
                }
                byte[] dst2 = new HexEncoder().encode(dst);
                return new String(dst2, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                Rlog.e(TAG, "encrypt error1!");
                return null;
            }
        } catch (UnsupportedEncodingException e2) {
            Rlog.e(TAG, "getBytes error in encrypt");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String decrypt(String sSrc, String sKey, String sParam) {
        char[] password = sKey.toCharArray();
        if (password.length != 256) {
            Rlog.e(TAG, "decrypt key length error!");
            return null;
        }
        try {
            byte[] salt = sParam.getBytes("UTF-8");
            if (salt.length != 16) {
                Rlog.e(TAG, "decrypt salt length error!");
                return null;
            }
            SecretKey secretKey = generateSecretKey(password, salt);
            if (secretKey == null) {
                return null;
            }
            try {
                byte[] source = new HexEncoder().decode(sSrc.getBytes("UTF-8"));
                byte[] dst = crypt(2, secretKey, salt, source);
                if (dst.length == 0) {
                    return null;
                }
                return new String(dst, "UTF-8");
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

    private static byte[] crypt(int mode, SecretKey secretKey, byte[] salt, byte[] source) {
        SecretKey secret = new SecretKeySpec(secretKey.getEncoded(), "AES");
        try {
            Cipher crypter = Cipher.getInstance("AES/CBC/PKCS5Padding");
            crypter.init(mode, secret, new IvParameterSpec(salt));
            return crypter.doFinal(source);
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

    private static SecretKey generateSecretKey(char[] password, byte[] salt) {
        try {
            SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
            KeySpec spec = new PBEKeySpec(password, salt, 1024, 256);
            return factory.generateSecret(spec);
        } catch (NoSuchAlgorithmException e) {
            Rlog.e(TAG, "generateSecretKey error1 !");
            return null;
        } catch (InvalidKeySpecException e2) {
            Rlog.e(TAG, "generateSecretKey error2 !");
            return null;
        }
    }
}
