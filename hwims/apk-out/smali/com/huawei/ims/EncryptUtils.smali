.class public Lcom/huawei/ims/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static final GROUP_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "EncryptUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decodeAESKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 124
    invoke-static {p0}, Lcom/huawei/ims/EncryptUtils;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 125
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_3

    .line 130
    :cond_0
    div-int/lit8 v0, p1, 0x4

    .line 131
    .local v0, "groupLength":I
    const/4 v1, 0x4

    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, C

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[C

    .line 132
    .local v2, "charArray":[[C
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 134
    mul-int v5, v4, v0

    add-int/lit8 v6, v4, 0x1

    mul-int/2addr v6, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aput-object v5, v2, v4

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    .local v4, "strBuilder":Ljava/lang/StringBuilder;
    move v5, v3

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 140
    move v6, v3

    .local v6, "j":I
    :goto_2
    if-ge v6, v1, :cond_2

    .line 142
    aget-object v7, v2, v6

    aget-char v7, v7, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 138
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 146
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 127
    .end local v0    # "groupLength":I
    .end local v2    # "charArray":[[C
    .end local v4    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    const-string v0, "EncryptUtils"

    const-string v1, "decodeAESKey error !"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public static decodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "sKey"    # Ljava/lang/String;
    .param p1, "sParam"    # Ljava/lang/String;

    .line 157
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/huawei/ims/EncryptUtils;->decodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 158
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/16 v1, 0x100

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 166
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x10

    .line 167
    .local v2, "distance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 169
    mul-int v4, v3, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    xor-int/2addr v4, v5

    int-to-char v4, v4

    .line 170
    .local v4, "temp":C
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .end local v4    # "temp":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    .end local v1    # "strBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "distance":I
    :cond_2
    :goto_1
    const-string v0, "EncryptUtils"

    const-string v1, "decodeAESParam error !"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method private static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v1}, Lcom/huawei/ims/HexEncoder;-><init>()V

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HexEncoder;->decode([B)[B

    move-result-object v1

    .line 196
    .local v1, "source":[B
    if-nez v1, :cond_0

    .line 197
    return-object v0

    .line 200
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/huawei/ims/COMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 206
    .end local v1    # "source":[B
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "EncryptUtils"

    const-string v3, "decodeString error2!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 202
    :catch_1
    move-exception v1

    .line 204
    .local v1, "e":Lcom/huawei/ims/COMException;
    const-string v2, "EncryptUtils"

    const-string v3, "decodeString error1!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v1    # "e":Lcom/huawei/ims/COMException;
    nop

    .line 210
    :goto_0
    return-object v0
.end method

.method protected static encodeAESKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 63
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_3

    .line 69
    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/StringBuilder;

    .line 70
    .local v1, "group":[Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    div-int/lit8 v5, p1, 0x4

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    aput-object v4, v1, v3

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v3    # "i":I
    :cond_1
    move v3, v2

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, p1, :cond_2

    .line 77
    rem-int/lit8 v4, v3, 0x4

    aget-object v4, v1, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 80
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    nop

    .local v2, "j":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 83
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    .end local v2    # "j":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/EncryptUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    .end local v1    # "group":[Ljava/lang/StringBuilder;
    .end local v3    # "strBuilder":Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    const-string v0, "EncryptUtils"

    const-string v1, "scatterAESKey error !"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static encodeAESParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "sKey"    # Ljava/lang/String;
    .param p1, "sParam"    # Ljava/lang/String;

    .line 97
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0x100

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-eq v1, v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x10

    .line 106
    .local v2, "distance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 108
    mul-int v4, v3, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    xor-int/2addr v4, v5

    int-to-char v4, v4

    .line 109
    .local v4, "temp":C
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .end local v4    # "temp":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/huawei/ims/EncryptUtils;->encodeAESKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "param":Ljava/lang/String;
    return-object v1

    .line 100
    .end local v0    # "strBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "param":Ljava/lang/String;
    .end local v2    # "distance":I
    :cond_2
    :goto_1
    const-string v0, "EncryptUtils"

    const-string v1, "scatterAESParam error !"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method private static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 180
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 181
    .local v0, "encrypted":[B
    new-instance v1, Ljava/lang/String;

    new-instance v2, Lcom/huawei/ims/HexEncoder;

    invoke-direct {v2}, Lcom/huawei/ims/HexEncoder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HexEncoder;->encode([B)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 183
    .end local v0    # "encrypted":[B
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EncryptUtils"

    const-string v2, "encodeString error"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static generateRandomString(I)Ljava/lang/String;
    .locals 6
    .param p0, "length"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "salt":Ljava/lang/String;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 34
    .local v1, "random":Ljava/util/Random;
    new-array v2, p0, [B

    .line 35
    .local v2, "output":[B
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 38
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p0, :cond_1

    .line 40
    :try_start_0
    aget-byte v4, v2, v3

    if-gez v4, :cond_0

    .line 42
    aget-byte v4, v2, v3

    add-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 38
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v3    # "i":I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 45
    :cond_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 51
    goto :goto_2

    .line 47
    :goto_1
    nop

    .line 49
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "EncryptUtils"

    const-string v5, "Unsupported utf-8 Encoding"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    .line 52
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    return-object v0
.end method
