.class public Lcom/huawei/ims/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static final GROUP_SIZE:I = 0x4

.field private static final RANDOM_OFFSET:I = 0x80

.field private static final TAG:Ljava/lang/String; = "EncryptUtils"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected static decodeAesKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 122
    invoke-static {p0}, Lcom/huawei/ims/EncryptUtils;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "decodeStr":Ljava/lang/String;
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p1, v1, :cond_d

    goto :goto_4e

    .line 127
    :cond_d
    div-int/lit8 v1, p1, 0x4

    .line 128
    .local v1, "groupLength":I
    const/4 v2, 0x4

    filled-new-array {v2, v1}, [I

    move-result-object v3

    const-class v4, C

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[C

    .line 129
    .local v3, "charArray":[[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v2, :cond_31

    .line 130
    mul-int v5, v4, v1

    add-int/lit8 v6, v4, 0x1

    mul-int/2addr v6, v1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aput-object v5, v3, v4

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 133
    .end local v4    # "i":I
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 134
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_37
    if-ge v5, v1, :cond_49

    .line 135
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3a
    if-ge v6, v2, :cond_46

    .line 136
    aget-object v7, v3, v6

    aget-char v7, v7, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 134
    .end local v6    # "j":I
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 140
    .end local v5    # "i":I
    :cond_49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 124
    .end local v1    # "groupLength":I
    .end local v3    # "charArray":[[C
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_4e
    :goto_4e
    const-string v1, "EncryptUtils"

    const-string v2, "decodeAesKey error !"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    return-object v1
.end method

.method public static decodeAesParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .line 151
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/huawei/ims/EncryptUtils;->decodeAesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "decodeParam":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x100

    if-eq v4, v5, :cond_13

    goto :goto_15

    :cond_13
    move v4, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v4, v3

    .line 153
    .local v4, "isInvalidKey":Z
    :goto_16
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v0, :cond_1f

    :cond_1e
    move v2, v3

    .line 154
    .local v2, "isInvalidParam":Z
    :cond_1f
    if-nez v4, :cond_45

    if-eqz v2, :cond_24

    goto :goto_45

    .line 159
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    const/16 v5, 0x10

    .line 161
    .local v5, "distance":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2c
    if-ge v6, v0, :cond_40

    .line 162
    mul-int v7, v6, v5

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    xor-int/2addr v7, v8

    int-to-char v7, v7

    .line 163
    .local v7, "temp":C
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .end local v7    # "temp":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 166
    .end local v6    # "i":I
    :cond_40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    .end local v3    # "strBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "distance":I
    :cond_45
    :goto_45
    const-string v0, "EncryptUtils"

    const-string v3, "decodeAesParam error!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method private static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 181
    const-string v0, "UTF-8"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v2}, Lcom/huawei/ims/HexEncoder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/ims/HexEncoder;->decode([B)[B

    move-result-object v2

    .line 183
    .local v2, "sources":[B
    if-nez v2, :cond_13

    .line 184
    return-object v1

    .line 187
    :cond_13
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_18} :catch_19

    return-object v3

    .line 188
    .end local v2    # "sources":[B
    :catch_19
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "EncryptUtils"

    const-string v3, "decodeString UnsupportedEncodingException!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    return-object v1
.end method

.method protected static encodeAesKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 66
    if-eqz p0, :cond_45

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p1, :cond_9

    goto :goto_45

    .line 71
    :cond_9
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/StringBuilder;

    .line 72
    .local v1, "stringBuilders":[Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1b

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit8 v4, p1, 0x4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    aput-object v3, v1, v2

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 76
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1c
    if-ge v2, p1, :cond_2c

    .line 77
    rem-int/lit8 v3, v2, 0x4

    aget-object v3, v1, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 80
    .end local v2    # "i":I
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .local v2, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_32
    if-ge v3, v0, :cond_3c

    .line 82
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 85
    .end local v3    # "j":I
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67
    .end local v1    # "stringBuilders":[Ljava/lang/StringBuilder;
    .end local v2    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_45
    :goto_45
    const-string v0, "EncryptUtils"

    const-string v1, "scatterAesKey error !"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static encodeAesParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_d

    goto :goto_f

    :cond_d
    move v2, v0

    goto :goto_10

    :cond_f
    :goto_f
    move v2, v1

    .line 97
    .local v2, "isInvalidKey":Z
    :goto_10
    const/16 v3, 0x10

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_1b

    :cond_1a
    move v0, v1

    .line 98
    .local v0, "isInvalidParam":Z
    :cond_1b
    if-nez v2, :cond_45

    if-eqz v0, :cond_20

    goto :goto_45

    .line 103
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 104
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    const/16 v4, 0x10

    .line 105
    .local v4, "distance":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_28
    if-ge v5, v3, :cond_3c

    .line 106
    mul-int v6, v5, v4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-char v6, v6

    .line 107
    .local v6, "temp":C
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .end local v6    # "temp":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 110
    .end local v5    # "i":I
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/huawei/ims/EncryptUtils;->encodeAesKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "newParam":Ljava/lang/String;
    return-object v3

    .line 99
    .end local v1    # "strBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "newParam":Ljava/lang/String;
    .end local v4    # "distance":I
    :cond_45
    :goto_45
    const-string v1, "EncryptUtils"

    const-string v3, "scatterAesParam error !"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    return-object v1
.end method

.method private static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 171
    const-string v0, "UTF-8"

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 172
    .local v1, "encrypts":[B
    new-instance v2, Ljava/lang/String;

    new-instance v3, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v3}, Lcom/huawei/ims/HexEncoder;-><init>()V

    invoke-virtual {v3, v1}, Lcom/huawei/ims/HexEncoder;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_14} :catch_15

    return-object v2

    .line 173
    .end local v1    # "encrypts":[B
    :catch_15
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "EncryptUtils"

    const-string v2, "encodeString UnsupportedEncodingException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static generateRandomString(I)Ljava/lang/String;
    .registers 7
    .param p0, "length"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "salt":Ljava/lang/String;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 42
    .local v1, "random":Ljava/util/Random;
    new-array v2, p0, [B

    .line 43
    .local v2, "outputs":[B
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 45
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, p0, :cond_1c

    .line 46
    :try_start_e
    aget-byte v4, v2, v3

    if-gez v4, :cond_19

    .line 47
    aget-byte v4, v2, v3

    add-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 45
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 50
    .end local v3    # "i":I
    :cond_1c
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_23} :catch_25

    move-object v0, v3

    .line 54
    goto :goto_2e

    .line 51
    :catch_25
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "EncryptUtils"

    const-string v5, "Unsupported utf-8 Encoding"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    .line 55
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2e
    return-object v0
.end method
