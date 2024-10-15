.class public Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;
.super Ljava/lang/Object;
.source "P2pTransDataStructureUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil$P2pTransDataHeader;
    }
.end annotation


# static fields
.field public static final DATA_TYPE_LENGTH:I = 0x2

.field public static final DEVICE_ID_FIELD_TYPE:S = 0x1s

.field public static final MAX_VOICE_DATA_LENGTH:I = 0xffff

.field private static final SHORT_INT_LEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "P2pTransDataStructureUtil"

.field public static final VOICE_DATA_FIELD_TYPE:S = 0x2s


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyBytesToBody([B[BI)V
    .registers 5
    .param p0, "dest"    # [B
    .param p1, "src"    # [B
    .param p2, "pos"    # I

    .line 92
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    return-void
.end method

.method private static copyShortToBody([BSI)V
    .registers 6
    .param p0, "data"    # [B
    .param p1, "value"    # S
    .param p2, "pos"    # I

    .line 87
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-void
.end method

.method public static generateData(Ljava/lang/String;[B)[B
    .registers 7
    .param p0, "devId"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 112
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    array-length v1, p1

    const v2, 0xffff

    if-gt v1, v2, :cond_2d

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_2d

    .line 116
    :cond_10
    const/4 v1, 0x1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->generateField(S[B)[B

    move-result-object v1

    .line 117
    .local v1, "devIdDatas":[B
    const/4 v2, 0x2

    invoke-static {v2, p1}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->generateField(S[B)[B

    move-result-object v2

    .line 118
    .local v2, "voiceDatas":[B
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 119
    .local v3, "results":[B
    invoke-static {v3, v1, v0}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->copyBytesToBody([B[BI)V

    .line 120
    array-length v0, v1

    invoke-static {v3, v2, v0}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->copyBytesToBody([B[BI)V

    .line 121
    return-object v3

    .line 113
    .end local v1    # "devIdDatas":[B
    .end local v2    # "voiceDatas":[B
    .end local v3    # "results":[B
    :cond_2d
    :goto_2d
    new-array v0, v0, [B

    return-object v0
.end method

.method private static generateField(S[B)[B
    .registers 6
    .param p0, "type"    # S
    .param p1, "data"    # [B

    .line 96
    array-length v0, p1

    .line 97
    .local v0, "dataLen":I
    add-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    .line 98
    .local v1, "generateDataBytes":[B
    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->copyShortToBody([BSI)V

    .line 99
    int-to-short v2, v0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->copyShortToBody([BSI)V

    .line 100
    const/4 v2, 0x4

    invoke-static {v1, p1, v2}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->copyBytesToBody([B[BI)V

    .line 101
    return-object v1
.end method

.method private static getShortFromBody([BI)S
    .registers 3
    .param p0, "body"    # [B
    .param p1, "pos"    # I

    .line 57
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public static getTransDataLen([B)S
    .registers 3
    .param p0, "header"    # [B

    .line 80
    if-eqz p0, :cond_d

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto :goto_d

    .line 83
    :cond_7
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->getShortFromBody([BI)S

    move-result v0

    return v0

    .line 81
    :cond_d
    :goto_d
    const/4 v0, -0x1

    return v0
.end method

.method public static getTransDataType([B)S
    .registers 3
    .param p0, "header"    # [B

    .line 67
    if-eqz p0, :cond_d

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto :goto_d

    .line 70
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/ims/p2ptransport/P2pTransDataStructureUtil;->getShortFromBody([BI)S

    move-result v0

    return v0

    .line 68
    :cond_d
    :goto_d
    const/4 v0, -0x1

    return v0
.end method
