.class public Lcom/huawei/ims/ImsCallProfiles;
.super Ljava/lang/Object;
.source "ImsCallProfiles.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_SMS:I = 0x5

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_PAUSE:I = 0x6

.field public static final CALL_TYPE_VT_RESUME:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final CALL_TYPE_VT_UPGRADE_CANCEL:I = 0x8

.field public static final EXTRAS_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRAS_HANDOVER_INFORMATION:Ljava/lang/String; = "handoverInfo"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"

.field private static final EXTRA_KEY_BACKUP_NUMBER:Ljava/lang/String; = "nexti_backup_number"

.field private static final EXTRA_KEY_SEARCH_NUMBER:Ljava/lang/String; = "nexti_search_number"

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field private static final KEY_LENGTH:I = 0x2

.field public static final MEDIA_ID_UNKNOWN:I = -0x1

.field private static final NUMBERMARKINFO_NUMBER:Ljava/lang/String; = "numbermarkinfo_number"

.field private static final SPIT_FLAG:Ljava/lang/String; = "="

.field public static final VIDEO_PAUSE_STATE_PAUSED:I = 0x1

.field public static final VIDEO_PAUSE_STATE_RESUMED:I = 0x2


# instance fields
.field public callMediaId:I

.field public callsubstate:I

.field public extras:[Ljava/lang/String;

.field public isEncrypt:I

.field public localAbility:[Lcom/huawei/ims/ImsServiceState;

.field private mCallDomain:I

.field private mCallType:I

.field private mVideoPauseState:I

.field public peerAbility:[Lcom/huawei/ims/ImsServiceState;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 219
    const/16 v0, 0xa

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .registers 5
    .param p1, "callType"    # I
    .param p2, "callDomain"    # I
    .param p3, "extraparams"    # [Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->callMediaId:I

    .line 209
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->mVideoPauseState:I

    .line 230
    iput p1, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallType:I

    .line 231
    iput p2, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallDomain:I

    .line 232
    iput-object p3, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 233
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/ImsCallProfiles;)V
    .registers 3
    .param p1, "srcCall"    # Lcom/huawei/ims/ImsCallProfiles;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->callMediaId:I

    .line 209
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->mVideoPauseState:I

    .line 241
    if-eqz p1, :cond_2e

    .line 242
    iget v0, p1, Lcom/huawei/ims/ImsCallProfiles;->mCallType:I

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallType:I

    .line 243
    iget v0, p1, Lcom/huawei/ims/ImsCallProfiles;->mCallDomain:I

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallDomain:I

    .line 245
    iget v0, p1, Lcom/huawei/ims/ImsCallProfiles;->isEncrypt:I

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->isEncrypt:I

    .line 247
    iget v0, p1, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    .line 248
    iget v0, p1, Lcom/huawei/ims/ImsCallProfiles;->callMediaId:I

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->callMediaId:I

    .line 249
    iget-object v0, p1, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 250
    iget-object v0, p1, Lcom/huawei/ims/ImsCallProfiles;->localAbility:[Lcom/huawei/ims/ImsServiceState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallProfiles;->localAbility:[Lcom/huawei/ims/ImsServiceState;

    .line 251
    iget-object v0, p1, Lcom/huawei/ims/ImsCallProfiles;->peerAbility:[Lcom/huawei/ims/ImsServiceState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallProfiles;->peerAbility:[Lcom/huawei/ims/ImsServiceState;

    .line 253
    :cond_2e
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;)V
    .registers 3
    .param p1, "imsCallDetails"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->callMediaId:I

    .line 209
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->mVideoPauseState:I

    .line 261
    if-eqz p1, :cond_16

    .line 262
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callType:I

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallType:I

    .line 263
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callDomain:I

    iput v0, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallDomain:I

    .line 265
    :cond_16
    return-void
.end method

.method private addExtra(Ljava/lang/String;)V
    .registers 5
    .param p1, "extra"    # Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 327
    array-length v2, v0

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    array-length v2, v0

    sub-int/2addr v2, v1

    aput-object p1, v0, v2

    goto :goto_1d

    .line 330
    :cond_16
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 332
    :goto_1d
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 341
    .local p0, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 343
    .local v0, "extras":[Ljava/lang/String;
    if-nez p0, :cond_5

    .line 344
    const/4 v1, 0x0

    return-object v1

    .line 348
    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 352
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 353
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move v1, v4

    goto :goto_14

    .line 354
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_4b
    return-object v0
.end method

.method private getStringOfExtrasResult()Ljava/lang/String;
    .registers 12

    .line 462
    const-string v0, ""

    .line 463
    .local v0, "extrasResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    if-eqz v1, :cond_66

    .line 464
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 465
    .local v1, "stringBuffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v3, :cond_62

    aget-object v6, v2, v5

    .line 467
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_5f

    .line 468
    move-object v7, v6

    .line 469
    .local v7, "string":Ljava/lang/String;
    const-string v8, "numbermarkinfo_number"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 470
    const-string v8, "nexti_backup_number"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2f

    const-string v8, "nexti_search_number"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 471
    :cond_2f
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 472
    .local v9, "before":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 473
    .local v8, "after":Ljava/lang/String;
    invoke-static {v8, v4}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 474
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 476
    .end local v8    # "after":Ljava/lang/String;
    .end local v9    # "before":Ljava/lang/String;
    :cond_5c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "string":Ljava/lang/String;
    :cond_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 480
    :cond_62
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .end local v1    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_66
    return-object v0
.end method

.method private getStringOfLocalSrvAbility()Ljava/lang/String;
    .registers 13

    .line 486
    const-string v0, ""

    .line 487
    .local v0, "localSrvAbility":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallProfiles;->localAbility:[Lcom/huawei/ims/ImsServiceState;

    if-eqz v1, :cond_53

    .line 488
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 489
    .local v1, "buf":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/huawei/ims/ImsCallProfiles;->localAbility:[Lcom/huawei/ims/ImsServiceState;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v3, :cond_4f

    aget-object v6, v2, v5

    .line 490
    .local v6, "srv":Lcom/huawei/ims/ImsServiceState;
    if-nez v6, :cond_17

    .line 491
    goto :goto_4c

    .line 493
    :cond_17
    const-string v7, "isValid = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v7, v6, Lcom/huawei/ims/ImsServiceState;->isValid:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 494
    const-string v7, " type = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v7, v6, Lcom/huawei/ims/ImsServiceState;->type:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 495
    const-string v7, " state = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v7, v6, Lcom/huawei/ims/ImsServiceState;->state:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 496
    iget-object v7, v6, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    if-eqz v7, :cond_4c

    .line 497
    iget-object v7, v6, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v8, v7

    move v9, v4

    :goto_3d
    if-ge v9, v8, :cond_4c

    aget-object v10, v7, v9

    .line 498
    .local v10, "at":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    const-string v11, " accTechStatus "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 497
    .end local v10    # "at":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 489
    .end local v6    # "srv":Lcom/huawei/ims/ImsServiceState;
    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 502
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    :cond_53
    return-object v0
.end method

.method private getStringOfPeerSrvAbility()Ljava/lang/String;
    .registers 13

    .line 508
    const-string v0, ""

    .line 509
    .local v0, "peerSrvAbility":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/ImsCallProfiles;->peerAbility:[Lcom/huawei/ims/ImsServiceState;

    if-eqz v1, :cond_52

    .line 510
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 511
    .local v1, "buf":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/huawei/ims/ImsCallProfiles;->peerAbility:[Lcom/huawei/ims/ImsServiceState;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v3, :cond_4e

    aget-object v6, v2, v5

    .line 512
    .local v6, "srv":Lcom/huawei/ims/ImsServiceState;
    if-eqz v6, :cond_4b

    .line 513
    const-string v7, "isValid = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v7, v6, Lcom/huawei/ims/ImsServiceState;->isValid:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 514
    const-string v7, " type = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v7, v6, Lcom/huawei/ims/ImsServiceState;->type:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 515
    const-string v7, " state = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v7, v6, Lcom/huawei/ims/ImsServiceState;->state:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 516
    iget-object v7, v6, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    if-eqz v7, :cond_4b

    .line 517
    iget-object v7, v6, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v8, v7

    move v9, v4

    :goto_3c
    if-ge v9, v8, :cond_4b

    aget-object v10, v7, v9

    .line 518
    .local v10, "at":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    const-string v11, " accTechStatus "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 517
    .end local v10    # "at":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    .line 511
    .end local v6    # "srv":Lcom/huawei/ims/ImsServiceState;
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 523
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    :cond_52
    return-object v0
.end method


# virtual methods
.method public getCallDomain()I
    .registers 2

    .line 561
    iget v0, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallDomain:I

    return v0
.end method

.method public getCallType()I
    .registers 2

    .line 543
    iget v0, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallType:I

    return v0
.end method

.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-eqz p1, :cond_26

    array-length v1, p1

    if-ge v0, v1, :cond_26

    .line 401
    aget-object v1, p1, v0

    if-eqz v1, :cond_23

    .line 402
    aget-object v1, p1, v0

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "currKey":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 404
    const/4 v2, 0x1

    aget-object v2, v1, v2

    return-object v2

    .line 400
    .end local v1    # "currKey":[Ljava/lang/String;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoPauseState()I
    .registers 2

    .line 389
    iget v0, p0, Lcom/huawei/ims/ImsCallProfiles;->mVideoPauseState:I

    return v0
.end method

.method public hasMediaIdValid()Z
    .registers 3

    .line 439
    iget v0, p0, Lcom/huawei/ims/ImsCallProfiles;->callMediaId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public setCallDomain(I)V
    .registers 2
    .param p1, "callDomain"    # I

    .line 552
    iput p1, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallDomain:I

    .line 553
    return-void
.end method

.method public setCallType(I)V
    .registers 2
    .param p1, "callType"    # I

    .line 534
    iput p1, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallType:I

    .line 535
    return-void
.end method

.method public setExtras([Ljava/lang/String;)V
    .registers 2
    .param p1, "extraparams"    # [Ljava/lang/String;

    .line 322
    iput-object p1, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 363
    .local p1, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProfiles;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "extras"    # [Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 420
    if-eqz p1, :cond_25

    .line 421
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_25

    .line 422
    aget-object v1, p1, v0

    if-eqz v1, :cond_22

    .line 423
    aget-object v1, p1, v0

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "currKey":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 425
    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 421
    .end local v1    # "currKey":[Ljava/lang/String;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 430
    .end local v0    # "i":I
    :cond_25
    return-object p1
.end method

.method public setVideoPauseState(I)V
    .registers 3
    .param p1, "videoPauseState"    # I

    .line 373
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    goto :goto_a

    .line 376
    :cond_7
    iput p1, p0, Lcom/huawei/ims/ImsCallProfiles;->mVideoPauseState:I

    .line 377
    nop

    .line 381
    :goto_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 444
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallProfiles;->getStringOfExtrasResult()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "extrasResult":Ljava/lang/String;
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallProfiles;->getStringOfLocalSrvAbility()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "localSrvAbility":Ljava/lang/String;
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallProfiles;->getStringOfPeerSrvAbility()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "peerSrvAbility":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mCallType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCallDomain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallDomain:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isEncrypt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huawei/ims/ImsCallProfiles;->isEncrypt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " extrasResult "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callSubState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " videoPauseState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huawei/ims/ImsCallProfiles;->mVideoPauseState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mediaId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huawei/ims/ImsCallProfiles;->callMediaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Local Ability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Peer Ability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Lcom/huawei/ims/ImsCallProfiles;)Z
    .registers 10
    .param p1, "update"    # Lcom/huawei/ims/ImsCallProfiles;

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "hasChanged":Z
    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 276
    return v1

    .line 278
    :cond_5
    iget v2, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallType:I

    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 279
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsCallProfiles;->setCallType(I)V

    .line 280
    const/4 v0, 0x1

    .line 282
    :cond_15
    iget v2, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallDomain:I

    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v3

    if-eq v2, v3, :cond_24

    .line 283
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/ImsCallProfiles;->mCallDomain:I

    .line 284
    const/4 v0, 0x1

    .line 286
    :cond_24
    iget v2, p0, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    iget v3, p1, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    if-eq v2, v3, :cond_2d

    .line 287
    iput v3, p0, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    .line 288
    const/4 v0, 0x1

    .line 291
    :cond_2d
    iget-object v2, p1, Lcom/huawei/ims/ImsCallProfiles;->localAbility:[Lcom/huawei/ims/ImsServiceState;

    iput-object v2, p0, Lcom/huawei/ims/ImsCallProfiles;->localAbility:[Lcom/huawei/ims/ImsServiceState;

    .line 292
    iget-object v2, p1, Lcom/huawei/ims/ImsCallProfiles;->peerAbility:[Lcom/huawei/ims/ImsServiceState;

    iput-object v2, p0, Lcom/huawei/ims/ImsCallProfiles;->peerAbility:[Lcom/huawei/ims/ImsServiceState;

    .line 294
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    iget-object v3, p1, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    if-eqz v3, :cond_75

    array-length v4, v3

    if-ge v2, v4, :cond_75

    .line 295
    aget-object v3, v3, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "currKeyValuePair":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_72

    .line 297
    iget-object v4, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    aget-object v5, v3, v1

    invoke-virtual {p0, v4, v5}, Lcom/huawei/ims/ImsCallProfiles;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "oldVal":Ljava/lang/String;
    if-eqz v4, :cond_6a

    .line 301
    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 302
    iget-object v6, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    aget-object v7, v3, v1

    aget-object v5, v3, v5

    invoke-virtual {p0, v6, v7, v5}, Lcom/huawei/ims/ImsCallProfiles;->setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 304
    const/4 v0, 0x1

    goto :goto_72

    .line 307
    :cond_6a
    const/4 v0, 0x1

    .line 308
    iget-object v5, p1, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v5}, Lcom/huawei/ims/ImsCallProfiles;->addExtra(Ljava/lang/String;)V

    .line 294
    .end local v3    # "currKeyValuePair":[Ljava/lang/String;
    .end local v4    # "oldVal":Ljava/lang/String;
    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 312
    .end local v2    # "i":I
    :cond_75
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallProfiles;->getVideoPauseState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsCallProfiles;->setVideoPauseState(I)V

    .line 313
    return v0
.end method
