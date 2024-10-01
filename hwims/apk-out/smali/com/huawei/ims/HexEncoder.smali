.class public final Lcom/huawei/ims/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"


# static fields
.field private static final DIGITS:[C

.field private static final NUM_16:I = 0x10

.field private static final NUM_4:I = 0x4

.field private static final OXFF:I = 0xff

.field private static final OXFO:I = 0xf0

.field private static final OXOF:I = 0xf

.field private static final TAG:Ljava/lang/String; = "HexEncoder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/ims/HexEncoder;->DIGITS:[C

    return-void

    :array_0
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
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decodeHex([C)[B
    .locals 6
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/ims/COMException;
        }
    .end annotation

    .line 74
    array-length v0, p0

    .line 75
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 80
    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 82
    .local v1, "out":[B
    const/4 v2, 0x0

    .line 83
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 85
    aget-char v4, p0, v2

    invoke-static {v4, v2}, Lcom/huawei/ims/HexEncoder;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 86
    .local v4, "f":I
    add-int/lit8 v2, v2, 0x1

    .line 87
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/huawei/ims/HexEncoder;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    .line 83
    .end local v4    # "f":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "i":I
    :cond_0
    return-object v1

    .line 77
    .end local v1    # "out":[B
    .end local v2    # "j":I
    :cond_1
    new-instance v1, Lcom/huawei/ims/COMException;

    const-string v2, "Odd number of characters."

    invoke-direct {v1, v2}, Lcom/huawei/ims/COMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static encodeHex([B)[C
    .locals 8
    .param p0, "data"    # [B

    .line 53
    array-length v0, p0

    .line 54
    .local v0, "l":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 56
    .local v1, "out":[C
    const/4 v2, 0x0

    .line 57
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 59
    add-int/lit8 v4, v2, 0x1

    .local v4, "j":I
    sget-object v5, Lcom/huawei/ims/HexEncoder;->DIGITS:[C

    const/16 v6, 0xf0

    aget-byte v7, p0, v3

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v1, v2

    .line 60
    .end local v2    # "j":I
    add-int/lit8 v2, v4, 0x1

    .restart local v2    # "j":I
    sget-object v5, Lcom/huawei/ims/HexEncoder;->DIGITS:[C

    const/16 v6, 0xf

    aget-byte v7, p0, v3

    and-int/2addr v6, v7

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 57
    .end local v4    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/ims/COMException;
        }
    .end annotation

    .line 104
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 105
    .local v0, "digit":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 109
    return v0

    .line 107
    :cond_0
    new-instance v1, Lcom/huawei/ims/COMException;

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

    invoke-direct {v1, v2}, Lcom/huawei/ims/COMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/ims/COMException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "string":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 162
    .local v1, "charArray":[C
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/huawei/ims/HexEncoder;->decodeHex([C)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 165
    .end local v1    # "charArray":[C
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HexEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method protected decode([B)[B
    .locals 5
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/ims/COMException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    .line 142
    .local v0, "byteArray":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 143
    .local v1, "string":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/ims/HexEncoder;->decodeHex([C)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 146
    .end local v1    # "string":Ljava/lang/String;
    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HexEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method protected encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "word"    # Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "string":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/ims/HexEncoder;->encodeHex([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 182
    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "HexEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v0
.end method

.method protected encode([B)[B
    .locals 6
    .param p1, "array"    # [B

    .line 119
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/huawei/ims/HexEncoder;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 120
    .local v0, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 123
    .local v1, "byteArray":[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HexEncoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method
