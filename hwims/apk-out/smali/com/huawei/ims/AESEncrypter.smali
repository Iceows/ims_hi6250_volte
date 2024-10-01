.class public final Lcom/huawei/ims/AESEncrypter;
.super Ljava/lang/Object;
.source "AESEncrypter.java"


# static fields
.field private static final ITERATION_COUNT:I = 0x400

.field public static final KEY_LENGTH:I = 0x100

.field public static final SALT_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "AESEncrypter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crypt(ILjavax/crypto/SecretKey;[B[B)[B
    .locals 4
    .param p0, "mode"    # I
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "salt"    # [B
    .param p3, "source"    # [B

    .line 163
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 166
    .local v0, "secret":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 167
    .local v1, "crypter":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, p0, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 168
    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 190
    .end local v1    # "crypter":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    const-string v2, "AESEncrypter"

    const-string v3, "crypt error8 !"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    goto :goto_1

    .line 186
    :catch_1
    move-exception v1

    .line 188
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v2, "AESEncrypter"

    const-string v3, "crypt error7 !"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0

    .line 182
    :catch_2
    move-exception v1

    .line 184
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v2, "AESEncrypter"

    const-string v3, "crypt error4 !"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    goto :goto_0

    .line 178
    :catch_3
    move-exception v1

    .line 180
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v2, "AESEncrypter"

    const-string v3, "crypt error3 !"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_0

    .line 174
    :catch_4
    move-exception v1

    .line 176
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v2, "AESEncrypter"

    const-string v3, "crypt error2 !"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .line 170
    :catch_5
    move-exception v1

    .line 172
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "AESEncrypter"

    const-string v3, "crypt error1 !"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    nop

    .line 194
    :goto_1
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1
.end method

.method protected static decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sSrc"    # Ljava/lang/String;
    .param p1, "sKey"    # Ljava/lang/String;
    .param p2, "sParam"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 111
    .local v0, "password":[C
    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-eq v1, v3, :cond_0

    .line 113
    const-string v1, "AESEncrypter"

    const-string v3, "decrypt key length error!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v2

    .line 117
    :cond_0
    move-object v1, v2

    .line 120
    .local v1, "salt":[B
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v3

    .line 126
    nop

    .line 128
    array-length v3, v1

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 130
    const-string v3, "AESEncrypter"

    const-string v4, "decrypt salt length error!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v2

    .line 134
    :cond_1
    invoke-static {v0, v1}, Lcom/huawei/ims/AESEncrypter;->generateSecretKey([C[B)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 135
    .local v3, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v3, :cond_2

    .line 137
    return-object v2

    .line 142
    :cond_2
    :try_start_1
    new-instance v4, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v4}, Lcom/huawei/ims/HexEncoder;-><init>()V

    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/ims/HexEncoder;->decode([B)[B

    move-result-object v4

    .line 143
    .local v4, "source":[B
    const/4 v5, 0x2

    invoke-static {v5, v3, v1, v4}, Lcom/huawei/ims/AESEncrypter;->crypt(ILjavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 144
    .local v5, "dst":[B
    array-length v6, v5

    if-nez v6, :cond_3

    .line 146
    return-object v2

    .line 148
    :cond_3
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/huawei/ims/COMException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    .line 154
    .end local v4    # "source":[B
    .end local v5    # "dst":[B
    :catch_0
    move-exception v4

    .line 156
    .local v4, "e":Lcom/huawei/ims/COMException;
    const-string v5, "AESEncrypter"

    const-string v6, "decrypt error2!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Lcom/huawei/ims/COMException;
    goto :goto_0

    .line 150
    :catch_1
    move-exception v4

    .line 152
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "AESEncrypter"

    const-string v6, "decrypt error1!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    nop

    .line 158
    :goto_0
    return-object v2

    .line 122
    .end local v3    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_2
    move-exception v3

    .line 124
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v4, "AESEncrypter"

    const-string v5, "getBytes error in decrypt"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object v2
.end method

.method protected static encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "sSrc"    # Ljava/lang/String;
    .param p1, "sKey"    # Ljava/lang/String;
    .param p2, "sParam"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 48
    .local v0, "password":[C
    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-eq v1, v3, :cond_0

    .line 50
    const-string v1, "AESEncrypter"

    const-string v3, "encrypt key length error!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-object v2

    .line 54
    :cond_0
    if-nez p2, :cond_1

    .line 55
    const-string v1, "AESEncrypter"

    const-string v3, "encrypt param error!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-object v2

    .line 60
    :cond_1
    move-object v1, v2

    .line 63
    .local v1, "salt":[B
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v3

    .line 69
    nop

    .line 71
    array-length v3, v1

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    .line 73
    const-string v3, "AESEncrypter"

    const-string v4, "encrypt salt length error!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-object v2

    .line 77
    :cond_2
    invoke-static {v0, v1}, Lcom/huawei/ims/AESEncrypter;->generateSecretKey([C[B)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 78
    .local v3, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v3, :cond_3

    .line 80
    return-object v2

    .line 85
    :cond_3
    :try_start_1
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 86
    .local v4, "source":[B
    const/4 v5, 0x1

    invoke-static {v5, v3, v1, v4}, Lcom/huawei/ims/AESEncrypter;->crypt(ILjavax/crypto/SecretKey;[B[B)[B

    move-result-object v5

    .line 87
    .local v5, "dst":[B
    array-length v6, v5

    if-nez v6, :cond_4

    .line 89
    return-object v2

    .line 91
    :cond_4
    new-instance v6, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v6}, Lcom/huawei/ims/HexEncoder;-><init>()V

    invoke-virtual {v6, v5}, Lcom/huawei/ims/HexEncoder;->encode([B)[B

    move-result-object v6

    .line 92
    .local v6, "dst2":[B
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7

    .line 94
    .end local v4    # "source":[B
    .end local v5    # "dst":[B
    .end local v6    # "dst2":[B
    :catch_0
    move-exception v4

    .line 96
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "AESEncrypter"

    const-string v6, "encrypt error1!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    return-object v2

    .line 65
    .end local v3    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v3

    .line 67
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v4, "AESEncrypter"

    const-string v5, "getBytes error in encrypt"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-object v2
.end method

.method private static generateSecretKey([C[B)Ljavax/crypto/SecretKey;
    .locals 4
    .param p0, "password"    # [C
    .param p1, "salt"    # [B

    .line 202
    :try_start_0
    const-string v0, "PBKDF2WithHmacSHA256"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 204
    .local v0, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v2, 0x400

    const/16 v3, 0x100

    invoke-direct {v1, p0, p1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 205
    .local v1, "spec":Ljava/security/spec/KeySpec;
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 211
    .end local v0    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v1    # "spec":Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v1, "AESEncrypter"

    const-string v2, "generateSecretKey error2 !"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_0

    .line 207
    :catch_1
    move-exception v0

    .line 209
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "AESEncrypter"

    const-string v2, "generateSecretKey error1 !"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 215
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
