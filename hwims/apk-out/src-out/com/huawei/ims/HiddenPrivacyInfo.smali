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

.field private static final INIT_POSITION:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HiddenPrivacyInfo"

.field public static final MMI_INFO_TYPE:I = 0x5

.field private static final OTHER_PRIVACY_INFO_TYPE:I = -0x1

.field public static final TELEPHONE_NUMBER_INFO_TYPE:I

.field private static final TELEPHONE_NUMBER_RESERVE_LENGTH:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 1
    .param p0, "s"    # Ljava/lang/String;

    .line 313
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .registers 1
    .param p0, "s"    # Ljava/lang/String;

    .line 307
    return-void
.end method

.method private static putHalfMosaicOnTeleNum(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "telephoneNumber"    # Ljava/lang/String;

    .line 286
    if-nez p0, :cond_9

    .line 287
    const-string v0, "telephoneNumber is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->loge(Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_9
    const/4 v0, 0x0

    .line 292
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 295
    .local v1, "length":I
    div-int/lit8 v2, v1, 0x2

    .line 297
    .local v2, "reserveLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    sub-int v5, v1, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "*"

    const-string v6, "\\S"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\\s"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v4, v1, v2

    .line 298
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    return-object v0
.end method

.method public static putMosaic(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "info"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 81
    if-nez p0, :cond_9

    .line 82
    const-string v0, "info is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->loge(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_9
    const/4 v0, 0x0

    .line 87
    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_2c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_27

    const/4 v1, 0x3

    if-eq p1, v1, :cond_27

    const/4 v1, 0x4

    if-eq p1, v1, :cond_22

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1d

    .line 103
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 99
    :cond_1d
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnMmi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    goto :goto_31

    .line 96
    :cond_22
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnGbaParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    goto :goto_31

    .line 93
    :cond_27
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnImpuOrImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    goto :goto_31

    .line 89
    :cond_2c
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaicOnTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    nop

    .line 106
    :goto_31
    return-object v0
.end method

.method public static putMosaic([BI)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [B
    .param p1, "type"    # I

    .line 117
    if-nez p0, :cond_9

    .line 118
    const-string v0, "byte array is null"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->loge(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_9
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static putMosaicOnGbaParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "gbaParameter"    # Ljava/lang/String;

    .line 204
    if-nez p0, :cond_9

    .line 205
    const-string v0, "gbaParameter is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->loge(Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 210
    .local v0, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 211
    .local v1, "bufs":[C
    const/4 v2, 0x0

    .line 212
    .local v2, "key":Ljava/lang/String;
    const/16 v3, 0x10

    if-lt v0, v3, :cond_2b

    if-eqz v1, :cond_2b

    .line 213
    const/4 v3, 0x4

    .local v3, "i":I
    :goto_19
    const/16 v4, 0xc

    if-ge v3, v4, :cond_24

    .line 214
    const/16 v4, 0x2a

    aput-char v4, v1, v3

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 216
    .end local v3    # "i":I
    :cond_24
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    move-object v2, v3

    goto :goto_2f

    .line 218
    :cond_2b
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    :goto_2f
    return-object v2
.end method

.method private static putMosaicOnImpuOrImpi(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "impuOrImpi"    # Ljava/lang/String;

    .line 162
    if-nez p0, :cond_9

    .line 163
    const-string v0, "impu or impi is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->loge(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 170
    .local v0, "length":I
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 171
    .local v1, "atPosition":I
    const/4 v2, 0x0

    .line 173
    .local v2, "key":Ljava/lang/String;
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1c

    .line 174
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    return-object v2

    .line 178
    :cond_1c
    const/4 v3, 0x7

    .line 179
    .local v3, "leastNumLen":I
    add-int/lit8 v4, v1, -0x4

    add-int/lit8 v4, v4, -0x3

    .line 180
    .local v4, "offset":I
    const/4 v5, 0x0

    .line 181
    .local v5, "beginKey":Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .local v6, "endKey":Ljava/lang/String;
    const/4 v7, 0x0

    if-gt v3, v1, :cond_49

    .line 184
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 185
    add-int/lit8 v7, v1, -0x3

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-static {v6}, Lcom/huawei/ims/HiddenPrivacyInfo;->transMccMncToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "***"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_68

    .line 189
    :cond_49
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-static {v6}, Lcom/huawei/ims/HiddenPrivacyInfo;->transMccMncToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    :goto_68
    return-object v2
.end method

.method private static putMosaicOnMmi(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "mmi"    # Ljava/lang/String;

    .line 230
    if-nez p0, :cond_9

    .line 231
    const-string v0, "mmi is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->loge(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 236
    .local v0, "length":I
    const/4 v1, 0x0

    .line 238
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x3

    if-le v0, v2, :cond_2e

    .line 239
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "beginKey":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "endKey":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->transToMosaic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .end local v2    # "endKey":Ljava/lang/String;
    .end local v3    # "beginKey":Ljava/lang/String;
    goto :goto_2f

    .line 243
    :cond_2e
    move-object v1, p0

    .line 245
    :goto_2f
    return-object v1
.end method

.method private static putMosaicOnTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "telephoneNumber"    # Ljava/lang/String;

    .line 134
    if-nez p0, :cond_9

    .line 135
    const-string v0, "telephoneNumber is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->loge(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 140
    .local v0, "length":I
    const/4 v1, 0x4

    .line 141
    .local v1, "leastTeleNumLen":I
    const/4 v2, 0x0

    .line 142
    .local v2, "key":Ljava/lang/String;
    if-gt v1, v0, :cond_34

    .line 143
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

    .line 145
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_38

    .line 147
    :cond_34
    invoke-static {p0}, Lcom/huawei/ims/HiddenPrivacyInfo;->putHalfMosaicOnTeleNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    :goto_38
    return-object v2
.end method

.method public static transMccMncToMosaic(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .line 272
    if-nez p0, :cond_9

    .line 273
    const-string v0, "string is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->loge(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    return-object v0

    .line 276
    :cond_9
    const-string v0, "mcc\\d+"

    const-string v1, "mcc***"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnc\\d+"

    const-string v2, "mnc***"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static transToMosaic(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .line 255
    if-nez p0, :cond_9

    .line 256
    const-string v0, "string is null, please check it"

    invoke-static {v0}, Lcom/huawei/ims/HiddenPrivacyInfo;->loge(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 259
    :cond_9
    const-string v0, "*"

    const-string v1, "\\S"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
