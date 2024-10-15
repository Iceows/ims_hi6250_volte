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

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-542703519837145295.dex */
public final class AesEncrypter {
    private static final int ITERATION_COUNT = 1024;
    public static final int KEY_LENGTH = 256;
    public static final int SALT_LENGTH = 16;
    private static final String TAG = "AesEncrypter";
    private static final String UTF_8 = "UTF-8";

    private AesEncrypter() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String encrypt(String src, String key, String param) {
        char[] passwords = key.toCharArray();
        if (passwords.length != 256) {
            Rlog.e(TAG, "encrypt key length error!");
            return null;
        }
        if (param == null) {
            Rlog.e(TAG, "encrypt param error!");
            return null;
        }
        try {
            byte[] salts = param.getBytes(UTF_8);
            if (salts.length != 16) {
                Rlog.e(TAG, "encrypt salts length error!");
                return null;
            }
            SecretKey secretKey = generateSecretKey(passwords, salts);
            if (secretKey == null) {
                return null;
            }
            try {
                byte[] sources = src.getBytes(UTF_8);
                byte[] dsts = crypt(1, secretKey, salts, sources);
                if (dsts.length == 0) {
                    return null;
                }
                byte[] newDsts = new HexEncoder().encode(dsts);
                return new String(newDsts, UTF_8);
            } catch (UnsupportedEncodingException e) {
                Rlog.e(TAG, "encrypt sources UnsupportedEncodingException!");
                return null;
            }
        } catch (UnsupportedEncodingException e2) {
            Rlog.e(TAG, "encrypt salts UnsupportedEncodingException!");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String decrypt(String src, String key, String param) {
        char[] passwords = key.toCharArray();
        if (passwords.length != 256) {
            Rlog.e(TAG, "decrypt key length error!");
            return null;
        }
        try {
            byte[] salts = param.getBytes(UTF_8);
            if (salts.length != 16) {
                Rlog.e(TAG, "decrypt salts length error!");
                return null;
            }
            SecretKey secretKey = generateSecretKey(passwords, salts);
            Rlog.i(TAG, "decrypt by default encrypt method.");
            if (secretKey == null) {
                return null;
            }
            try {
                byte[] sources = new HexEncoder().decode(src.getBytes(UTF_8));
                byte[] dsts = crypt(2, secretKey, salts, sources);
                if (dsts.length == 0) {
                    return null;
                }
                return new String(dsts, UTF_8);
            } catch (UnsupportedEncodingException e) {
                Rlog.e(TAG, "decrypt sources UnsupportedEncodingException!");
                return null;
            }
        } catch (UnsupportedEncodingException e2) {
            Rlog.e(TAG, "decrypt getBytes UnsupportedEncodingException!");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String decryptWithSha1(String src, String key, String param) {
        if (src == null || key == null || param == null) {
            Rlog.e(TAG, "decryptWithSha1 the param is null.");
            return null;
        }
        char[] passwords = key.toCharArray();
        if (passwords.length != 256) {
            Rlog.e(TAG, "decryptWithSha1 key length error!");
            return null;
        }
        try {
            byte[] salts = param.getBytes(UTF_8);
            if (salts.length != 16) {
                Rlog.e(TAG, "decryptWithSha1 salts length error!");
                return null;
            }
            SecretKey secretKey = generateSecretKeyForSha1(passwords, salts);
            Rlog.i(TAG, "decryptWithSha1 by default encrypt method.");
            if (secretKey == null) {
                return null;
            }
            try {
                byte[] sources = new HexEncoder().decode(src.getBytes(UTF_8));
                byte[] dsts = crypt(2, secretKey, salts, sources);
                if (dsts.length == 0) {
                    return null;
                }
                return new String(dsts, UTF_8);
            } catch (UnsupportedEncodingException e) {
                Rlog.e(TAG, "decryptWithSha1 sources UnsupportedEncodingException!");
                return null;
            }
        } catch (UnsupportedEncodingException e2) {
            Rlog.e(TAG, "decryptWithSha1 getBytes UnsupportedEncodingException!");
            return null;
        }
    }

    private static byte[] crypt(int mode, SecretKey secretKey, byte[] salts, byte[] sources) {
        SecretKey secret = new SecretKeySpec(secretKey.getEncoded(), "AES");
        try {
            Cipher crypter = Cipher.getInstance("AES/CBC/PKCS5Padding");
            crypter.init(mode, secret, new IvParameterSpec(salts));
            return crypter.doFinal(sources);
        } catch (InvalidAlgorithmParameterException e) {
            Rlog.e(TAG, "crypt InvalidAlgorithmParameterException!");
            return new byte[0];
        } catch (InvalidKeyException e2) {
            Rlog.e(TAG, "crypt InvalidKeyException!");
            return new byte[0];
        } catch (NoSuchAlgorithmException e3) {
            Rlog.e(TAG, "crypt NoSuchAlgorithmException!");
            return new byte[0];
        } catch (BadPaddingException e4) {
            Rlog.e(TAG, "crypt BadPaddingException!");
            return new byte[0];
        } catch (IllegalBlockSizeException e5) {
            Rlog.e(TAG, "crypt IllegalBlockSizeException!");
            return new byte[0];
        } catch (NoSuchPaddingException e6) {
            Rlog.e(TAG, "crypt NoSuchPaddingException!");
            return new byte[0];
        }
    }

    private static SecretKey generateSecretKeyForSha1(char[] passwords, byte[] salts) {
        try {
            SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1");
            KeySpec spec = new PBEKeySpec(passwords, salts, 1024, 256);
            return factory.generateSecret(spec);
        } catch (NoSuchAlgorithmException e) {
            Rlog.e(TAG, "generateSecretKeyForSha1 NoSuchAlgorithmException!");
            return null;
        } catch (InvalidKeySpecException e2) {
            Rlog.e(TAG, "generateSecretKeyForSha1 InvalidKeySpecException!");
            return null;
        }
    }

    private static SecretKey generateSecretKey(char[] passwords, byte[] salts) {
        try {
            SecretKeyFactory factory = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
            KeySpec spec = new PBEKeySpec(passwords, salts, 1024, 256);
            return factory.generateSecret(spec);
        } catch (NoSuchAlgorithmException e) {
            Rlog.e(TAG, "generateSecretKey NoSuchAlgorithmException!");
            return null;
        } catch (InvalidKeySpecException e2) {
            Rlog.e(TAG, "generateSecretKey InvalidKeySpecException!");
            return null;
        }
    }
}
