.class public final Lcom/huawei/ims/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"


# static fields
.field private static final DIGITS:[C

.field private static final INVALID_CHAR:I = -0x1

.field private static final NUM_16:I = 0x10

.field private static final NUM_4:I = 0x4

.field private static final OXFF:I = 0xff

.field private static final OXFO:I = 0xf0

.field private static final OXOF:I = 0xf

.field private static final TAG:Ljava/lang/String; = "HexEncoder"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/huawei/ims/HexEncoder;->DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decodeHex([C)[B
    .registers 7
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/ims/ComException;
        }
    .end annotation

    .line 68
    array-length v0, p0

    .line 69
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_29

    .line 72
    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 75
    .local v1, "outs":[B
    const/4 v2, 0x0

    .line 76
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v2, v0, :cond_28

    .line 77
    aget-char v4, p0, v2

    invoke-static {v4, v2}, Lcom/huawei/ims/HexEncoder;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 78
    .local v4, "value":I
    add-int/lit8 v2, v2, 0x1

    .line 79
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/huawei/ims/HexEncoder;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 76
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 84
    .end local v3    # "i":I
    :cond_28
    return-object v1

    .line 70
    .end local v1    # "outs":[B
    .end local v2    # "index":I
    :cond_29
    new-instance v1, Lcom/huawei/ims/ComException;

    const-string v2, "Odd number of characters."

    invoke-direct {v1, v2}, Lcom/huawei/ims/ComException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static encodeHex([B)[C
    .registers 8
    .param p0, "data"    # [B

    .line 47
    array-length v0, p0

    .line 48
    .local v0, "len":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 51
    .local v1, "outs":[C
    const/4 v2, 0x0

    .line 52
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v0, :cond_24

    .line 53
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .local v4, "index":I
    sget-object v5, Lcom/huawei/ims/HexEncoder;->DIGITS:[C

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v2

    .line 54
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "index":I
    .restart local v2    # "index":I
    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 57
    .end local v3    # "i":I
    :cond_24
    return-object v1
.end method

.method protected static toDigit(CI)I
    .registers 6
    .param p0, "ch"    # C
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/ims/ComException;
        }
    .end annotation

    .line 97
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 98
    .local v0, "digit":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 101
    return v0

    .line 99
    :cond_a
    new-instance v1, Lcom/huawei/ims/ComException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal hexadecimal charcter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/ims/ComException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "word"    # Ljava/lang/String;

    .line 165
    const-string v0, "HexEncoder"

    const/4 v1, 0x0

    .line 167
    .local v1, "string":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 168
    .local v2, "charArray":[C
    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/huawei/ims/HexEncoder;->decodeHex([C)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_12} :catch_1b
    .catch Lcom/huawei/ims/ComException; {:try_start_3 .. :try_end_12} :catch_14

    move-object v1, v3

    .line 173
    .end local v2    # "charArray":[C
    :goto_13
    goto :goto_22

    .line 171
    :catch_14
    move-exception v2

    .line 172
    .local v2, "e":Lcom/huawei/ims/ComException;
    const-string v3, "decode to String: ComException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 169
    .end local v2    # "e":Lcom/huawei/ims/ComException;
    :catch_1b
    move-exception v2

    .line 170
    .local v2, "msgerror":Ljava/io/UnsupportedEncodingException;
    const-string v3, "decode to String: UnsupportedEncodingException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "msgerror":Ljava/io/UnsupportedEncodingException;
    goto :goto_13

    .line 174
    :goto_22
    return-object v1
.end method

.method protected decode([B)[B
    .registers 6
    .param p1, "array"    # [B

    .line 145
    const-string v0, "HexEncoder"

    const/4 v1, 0x0

    .line 148
    .local v1, "byteArray":[B
    :try_start_3
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 149
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/ims/HexEncoder;->decodeHex([C)[B

    move-result-object v0
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_12} :catch_1b
    .catch Lcom/huawei/ims/ComException; {:try_start_3 .. :try_end_12} :catch_14

    move-object v1, v0

    .line 154
    .end local v2    # "string":Ljava/lang/String;
    :goto_13
    goto :goto_22

    .line 152
    :catch_14
    move-exception v2

    .line 153
    .local v2, "e":Lcom/huawei/ims/ComException;
    const-string v3, "decode to byte[]: ComException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 150
    .end local v2    # "e":Lcom/huawei/ims/ComException;
    :catch_1b
    move-exception v2

    .line 151
    .local v2, "msgerror":Ljava/io/UnsupportedEncodingException;
    const-string v3, "decode to byte[]: UnsupportedEncodingException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "msgerror":Ljava/io/UnsupportedEncodingException;
    goto :goto_13

    .line 155
    :goto_22
    return-object v1
.end method

.method protected encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "word"    # Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "string":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/ims/HexEncoder;->encodeHex([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_10} :catch_12

    move-object v0, v1

    .line 134
    goto :goto_1a

    .line 132
    :catch_12
    move-exception v1

    .line 133
    .local v1, "msgError":Ljava/io/UnsupportedEncodingException;
    const-string v2, "HexEncoder"

    const-string v3, "encode to String: UnsupportedEncodingException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v1    # "msgError":Ljava/io/UnsupportedEncodingException;
    :goto_1a
    return-object v0
.end method

.method protected encode([B)[B
    .registers 7
    .param p1, "array"    # [B

    .line 111
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/ims/HexEncoder;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 112
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, "byteArray":[B
    :try_start_a
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_10} :catch_12

    move-object v1, v2

    .line 118
    goto :goto_1a

    .line 116
    :catch_12
    move-exception v2

    .line 117
    .local v2, "msgerror":Ljava/io/UnsupportedEncodingException;
    const-string v3, "HexEncoder"

    const-string v4, "encode to byte[]: UnsupportedEncodingException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v2    # "msgerror":Ljava/io/UnsupportedEncodingException;
    :goto_1a
    return-object v1
.end method
