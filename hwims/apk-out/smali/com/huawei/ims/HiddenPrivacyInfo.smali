.class public Lcom/huawei/ims/HiddenPrivacyInfo;
.super Ljava/lang/Object;
.source "HiddenPrivacyInfo.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final GBA_INFO_HIDDEN_BEGIN:I = 0x4

.field private static final GBA_INFO_HIDDEN_END:I = 0xc

.field public static final GBA_INFO_TYPE:I = 0x4

.field private static final GBA_LENGTH_LEAST:I = 0x10

.field public static final IMPI_INFO_TYPE:I = 0x3

.field public static final IMPU_INFO_TYPE:I = 0x2

.field public static final IMSI_INFO_TYPE:I = 0x1

.field private static final INFO_HIDDEN_LENGTH:I = 0x4

.field private static final INFO_RESERVE_BEGIN:I = 0x0

.field private static final INFO_RESERVE_LENGTH:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "HiddenPrivacyInfo"

.field public static final MMI_INFO_TYPE:I = 0x5

.field public static final OTHER_PRIVACY_INFO_TYPE:I = -0x1

.field public static final TELEPHONE_NUMBER_INFO_TYPE:I

.field private static final TELEPHONE_NUMBER_RESERVE_LENGTH:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .line 281
    return-void
.end method

.method private static putHalfMosaicOnTeleNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "telephoneNumber"    # Ljava/lang/String;

    .line 259
    if-nez p0, :cond_0

    .line 260
    const-string v0, "telephoneNumber is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    return-object v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 266
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 267
    .local v1, "length":I
    div-int/lit8 v2, v1, 0x2

    .line 269
    .local v2, "reserveLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    sub-int v5, v1, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\S"

    const-string v6, "*"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s"

    const-string v6, "*"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v4, v1, v2

    .line 270
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    return-object v0
.end method

.method public static putMosaic(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string v0, "info is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 66
    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 82
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_0
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnMmi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    goto :goto_0

    .line 75
    :pswitch_1
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnGbaParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    goto :goto_0

    .line 72
    :pswitch_2
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnImpu_i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    nop

    .line 86
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static putMosaic([BI)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "type"    # I

    .line 94
    if-nez p0, :cond_0

    .line 95
    const-string v0, "byte array is null"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static putMosaicOnGbaParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "GbaParameter"    # Ljava/lang/String;

    .line 190
    if-nez p0, :cond_0

    .line 191
    const-string v0, "GbaParameter is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 196
    .local v0, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 197
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 199
    .local v2, "key":Ljava/lang/String;
    const/16 v3, 0x10

    if-gt v3, v0, :cond_2

    if-eqz v1, :cond_2

    .line 200
    const/4 v3, 0x4

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_1

    .line 201
    const/16 v4, 0x2a

    aput-char v4, v1, v3

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    move-object v2, v3

    goto :goto_1

    .line 205
    :cond_2
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    :goto_1
    return-object v2
.end method

.method private static putMosaicOnImpu_i(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "impu_i"    # Ljava/lang/String;

    .line 148
    if-nez p0, :cond_0

    .line 149
    const-string v0, "impu_i is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 156
    .local v0, "length":I
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 157
    .local v1, "atPosition":I
    const/4 v2, 0x0

    .line 159
    .local v2, "key":Ljava/lang/String;
    const/4 v3, -0x1

    if-ne v3, v1, :cond_1

    .line 160
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    return-object v2

    .line 165
    :cond_1
    const/4 v3, 0x7

    .line 166
    .local v3, "leastNumLen":I
    add-int/lit8 v4, v1, -0x4

    add-int/lit8 v4, v4, -0x3

    .line 167
    .local v4, "offset":I
    const/4 v5, 0x0

    .line 168
    .local v5, "beginKey":Ljava/lang/String;
    const/4 v6, 0x0

    .line 170
    .local v6, "endKey":Ljava/lang/String;
    const/4 v7, 0x0

    if-gt v3, v1, :cond_2

    .line 171
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 172
    add-int/lit8 v7, v1, -0x3

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "***"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    :goto_0
    return-object v2
.end method

.method private static putMosaicOnMmi(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "mmi"    # Ljava/lang/String;

    .line 219
    if-nez p0, :cond_0

    .line 220
    const-string v0, "mmi is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 225
    .local v0, "length":I
    const/4 v1, 0x0

    .line 227
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x3

    if-ge v2, v0, :cond_1

    .line 228
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "beginKey":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "endKey":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .end local v2    # "endKey":Ljava/lang/String;
    .end local v3    # "beginKey":Ljava/lang/String;
    goto :goto_0

    .line 233
    :cond_1
    move-object v1, p0

    .line 236
    :goto_0
    return-object v1
.end method

.method private static putMosaicOnTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "telephoneNumber"    # Ljava/lang/String;

    .line 115
    if-nez p0, :cond_0

    .line 116
    const-string v0, "telephoneNumber is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 122
    .local v0, "length":I
    const/4 v1, 0x4

    .line 123
    .local v1, "leastTeleNumLen":I
    const/4 v2, 0x0

    .line 125
    .local v2, "key":Ljava/lang/String;
    if-gt v1, v0, :cond_1

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, -0x4

    const/4 v5, 0x0

    sub-int/2addr v4, v5

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "****"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x0

    .line 128
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putHalfMosaicOnTeleNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    :goto_0
    return-object v2
.end method

.method private static transToMosaic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 244
    if-nez p0, :cond_0

    .line 245
    const-string v0, "string is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->logd(Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_0
    const-string v0, "\\S"

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
