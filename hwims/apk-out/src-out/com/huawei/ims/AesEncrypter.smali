.class public final Lcom/huawei/ims/AesEncrypter;
.super Ljava/lang/Object;
.source "AesEncrypter.java"


# static fields
.field private static final ITERATION_COUNT:I = 0x400

.field public static final KEY_LENGTH:I = 0x100

.field public static final SALT_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "AesEncrypter"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static crypt(ILjavax/crypto/SecretKey;[B[B)[B
    .registers 8
    .param p0, "mode"    # I
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "salts"    # [B
    .param p3, "sources"    # [B

    .line 205
    const-string v0, "AesEncrypter"

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 207
    .local v1, "secret":Ljavax/crypto/SecretKey;
    :try_start_d
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 208
    .local v2, "crypter":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, p0, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 209
    invoke-virtual {v2, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_1f} :catch_43
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_d .. :try_end_1f} :catch_3c
    .catch Ljava/security/InvalidKeyException; {:try_start_d .. :try_end_1f} :catch_35
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_d .. :try_end_1f} :catch_2e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_d .. :try_end_1f} :catch_27
    .catch Ljavax/crypto/BadPaddingException; {:try_start_d .. :try_end_1f} :catch_20

    return-object v0

    .line 220
    .end local v2    # "crypter":Ljavax/crypto/Cipher;
    :catch_20
    move-exception v2

    .line 221
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    const-string v3, "crypt BadPaddingException!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 218
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catch_27
    move-exception v2

    .line 219
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v3, "crypt IllegalBlockSizeException!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_49

    .line 216
    :catch_2e
    move-exception v2

    .line 217
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v3, "crypt InvalidAlgorithmParameterException!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    goto :goto_49

    .line 214
    :catch_35
    move-exception v2

    .line 215
    .local v2, "e":Ljava/security/InvalidKeyException;
    const-string v3, "crypt InvalidKeyException!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/security/InvalidKeyException;
    goto :goto_49

    .line 212
    :catch_3c
    move-exception v2

    .line 213
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v3, "crypt NoSuchPaddingException!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_49

    .line 210
    :catch_43
    move-exception v2

    .line 211
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "crypt NoSuchAlgorithmException!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_49
    nop

    .line 223
    :goto_4a
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected static decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 114
    const-string v0, "UTF-8"

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 115
    .local v1, "passwords":[C
    array-length v2, v1

    const-string v3, "AesEncrypter"

    const/4 v4, 0x0

    const/16 v5, 0x100

    if-eq v2, v5, :cond_14

    .line 116
    const-string v0, "decrypt key length error!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-object v4

    .line 120
    :cond_14
    const/4 v2, 0x0

    .line 122
    .local v2, "salts":[B
    :try_start_15
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_19} :catch_55

    move-object v2, v5

    .line 126
    nop

    .line 128
    array-length v5, v2

    const/16 v6, 0x10

    if-eq v5, v6, :cond_26

    .line 129
    const-string v0, "decrypt salts length error!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v4

    .line 133
    :cond_26
    invoke-static {v1, v2}, Lcom/huawei/ims/AesEncrypter;->generateSecretKey([C[B)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 134
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    const-string v6, "decrypt by default encrypt method."

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-nez v5, :cond_32

    .line 136
    return-object v4

    .line 140
    :cond_32
    :try_start_32
    new-instance v6, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v6}, Lcom/huawei/ims/HexEncoder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/ims/HexEncoder;->decode([B)[B

    move-result-object v6

    .line 141
    .local v6, "sources":[B
    const/4 v7, 0x2

    invoke-static {v7, v5, v2, v6}, Lcom/huawei/ims/AesEncrypter;->crypt(ILjavax/crypto/SecretKey;[B[B)[B

    move-result-object v7

    .line 142
    .local v7, "dsts":[B
    array-length v8, v7

    if-nez v8, :cond_48

    .line 143
    return-object v4

    .line 145
    :cond_48
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_32 .. :try_end_4d} :catch_4e

    return-object v8

    .line 146
    .end local v6    # "sources":[B
    .end local v7    # "dsts":[B
    :catch_4e
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "decrypt sources UnsupportedEncodingException!"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    return-object v4

    .line 123
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_55
    move-exception v0

    .line 124
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v5, "decrypt getBytes UnsupportedEncodingException!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object v4
.end method

.method static decryptWithSha1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 161
    const-string v0, "UTF-8"

    const-string v1, "AesEncrypter"

    const/4 v2, 0x0

    if-eqz p0, :cond_63

    if-eqz p1, :cond_63

    if-nez p2, :cond_c

    goto :goto_63

    .line 166
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 167
    .local v3, "passwords":[C
    array-length v4, v3

    const/16 v5, 0x100

    if-eq v4, v5, :cond_1b

    .line 168
    const-string v0, "decryptWithSha1 key length error!"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v2

    .line 172
    :cond_1b
    const/4 v4, 0x0

    .line 174
    .local v4, "salts":[B
    :try_start_1c
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_20} :catch_5c

    move-object v4, v5

    .line 178
    nop

    .line 180
    array-length v5, v4

    const/16 v6, 0x10

    if-eq v5, v6, :cond_2d

    .line 181
    const-string v0, "decryptWithSha1 salts length error!"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v2

    .line 185
    :cond_2d
    invoke-static {v3, v4}, Lcom/huawei/ims/AesEncrypter;->generateSecretKeyForSha1([C[B)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 186
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    const-string v6, "decryptWithSha1 by default encrypt method."

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-nez v5, :cond_39

    .line 188
    return-object v2

    .line 192
    :cond_39
    :try_start_39
    new-instance v6, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v6}, Lcom/huawei/ims/HexEncoder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/huawei/ims/HexEncoder;->decode([B)[B

    move-result-object v6

    .line 193
    .local v6, "sources":[B
    const/4 v7, 0x2

    invoke-static {v7, v5, v4, v6}, Lcom/huawei/ims/AesEncrypter;->crypt(ILjavax/crypto/SecretKey;[B[B)[B

    move-result-object v7

    .line 194
    .local v7, "dsts":[B
    array-length v8, v7

    if-nez v8, :cond_4f

    .line 195
    return-object v2

    .line 197
    :cond_4f
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_54
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_39 .. :try_end_54} :catch_55

    return-object v8

    .line 198
    .end local v6    # "sources":[B
    .end local v7    # "dsts":[B
    :catch_55
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "decryptWithSha1 sources UnsupportedEncodingException!"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    return-object v2

    .line 175
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_5c
    move-exception v0

    .line 176
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v5, "decryptWithSha1 getBytes UnsupportedEncodingException!"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-object v2

    .line 162
    .end local v0    # "e1":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "passwords":[C
    .end local v4    # "salts":[B
    :cond_63
    :goto_63
    const-string v0, "decryptWithSha1 the param is null."

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v2
.end method

.method protected static encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 61
    const-string v0, "UTF-8"

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 62
    .local v1, "passwords":[C
    array-length v2, v1

    const-string v3, "AesEncrypter"

    const/4 v4, 0x0

    const/16 v5, 0x100

    if-eq v2, v5, :cond_14

    .line 63
    const-string v0, "encrypt key length error!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-object v4

    .line 67
    :cond_14
    if-nez p2, :cond_1c

    .line 68
    const-string v0, "encrypt param error!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-object v4

    .line 73
    :cond_1c
    const/4 v2, 0x0

    .line 75
    .local v2, "salts":[B
    :try_start_1d
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_21} :catch_58

    move-object v2, v5

    .line 79
    nop

    .line 81
    array-length v5, v2

    const/16 v6, 0x10

    if-eq v5, v6, :cond_2e

    .line 82
    const-string v0, "encrypt salts length error!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v4

    .line 86
    :cond_2e
    invoke-static {v1, v2}, Lcom/huawei/ims/AesEncrypter;->generateSecretKey([C[B)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 87
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v5, :cond_35

    .line 88
    return-object v4

    .line 92
    :cond_35
    :try_start_35
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 93
    .local v6, "sources":[B
    const/4 v7, 0x1

    invoke-static {v7, v5, v2, v6}, Lcom/huawei/ims/AesEncrypter;->crypt(ILjavax/crypto/SecretKey;[B[B)[B

    move-result-object v7

    .line 94
    .local v7, "dsts":[B
    array-length v8, v7

    if-nez v8, :cond_42

    .line 95
    return-object v4

    .line 97
    :cond_42
    new-instance v8, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v8}, Lcom/huawei/ims/HexEncoder;-><init>()V

    invoke-virtual {v8, v7}, Lcom/huawei/ims/HexEncoder;->encode([B)[B

    move-result-object v8

    .line 98
    .local v8, "newDsts":[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_35 .. :try_end_50} :catch_51

    return-object v9

    .line 99
    .end local v6    # "sources":[B
    .end local v7    # "dsts":[B
    .end local v8    # "newDsts":[B
    :catch_51
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "encrypt sources UnsupportedEncodingException!"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    return-object v4

    .line 76
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_58
    move-exception v0

    .line 77
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v5, "encrypt salts UnsupportedEncodingException!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v4
.end method

.method private static generateSecretKey([C[B)Ljavax/crypto/SecretKey;
    .registers 7
    .param p0, "passwords"    # [C
    .param p1, "salts"    # [B

    .line 241
    const-string v0, "AesEncrypter"

    :try_start_2
    const-string v1, "PBKDF2WithHmacSHA256"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 242
    .local v1, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v3, 0x400

    const/16 v4, 0x100

    invoke-direct {v2, p0, p1, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 243
    .local v2, "spec":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_15} :catch_1d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_15} :catch_16

    return-object v0

    .line 246
    .end local v1    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "spec":Ljava/security/spec/KeySpec;
    :catch_16
    move-exception v1

    .line 247
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v2, "generateSecretKey InvalidKeySpecException!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 244
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1d
    move-exception v1

    .line 245
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "generateSecretKey NoSuchAlgorithmException!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 249
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private static generateSecretKeyForSha1([C[B)Ljavax/crypto/SecretKey;
    .registers 7
    .param p0, "passwords"    # [C
    .param p1, "salts"    # [B

    .line 228
    const-string v0, "AesEncrypter"

    :try_start_2
    const-string v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 229
    .local v1, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v3, 0x400

    const/16 v4, 0x100

    invoke-direct {v2, p0, p1, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 230
    .local v2, "spec":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_15} :catch_1d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_15} :catch_16

    return-object v0

    .line 233
    .end local v1    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "spec":Ljava/security/spec/KeySpec;
    :catch_16
    move-exception v1

    .line 234
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v2, "generateSecretKeyForSha1 InvalidKeySpecException!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 231
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1d
    move-exception v1

    .line 232
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "generateSecretKeyForSha1 NoSuchAlgorithmException!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 236
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method
