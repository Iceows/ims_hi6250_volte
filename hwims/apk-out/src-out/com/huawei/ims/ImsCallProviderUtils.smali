.class public Lcom/huawei/ims/ImsCallProviderUtils;
.super Ljava/lang/Object;
.source "ImsCallProviderUtils.java"


# static fields
.field public static final BUSY_REJECT_CAUSE:I = 0x0

.field public static final DEVICE_TYPE_TABLET:Ljava/lang/String; = "tablet"

.field private static final HW_CDMA_VOLTE_ISIM:Ljava/lang/String; = "ro.config.hw_cdma_volte_isim"

.field private static final HW_VTLTE_ON:Ljava/lang/String; = "ro.config.hw_vtlte_on"

.field public static final IMS_DOMAIN_LTE:I = 0x0

.field public static final IMS_DOMAIN_UNKNOWN:I = 0x2

.field public static final IMS_DOMAIN_WIFI:I = 0x1

.field private static final INVALID_SLOT_ID:I = -0x1

.field private static final IS_CDMA_VOLTE_ISIM_SUPPORTED:Z

.field public static final IS_DUAL_IMS_AVAILABLE:Z

.field public static final IS_TABLET:Z

.field private static final IS_VILTE_ENHANCEMENT_SUPPORTED:Z

.field private static final IS_VOWIFI_PROP_ON:Z

.field private static final IS_VTLTE_ON:Z

.field public static final NO_REJECT_CAUSE:I = -0x1

.field private static final NR_MODE_SA:I = 0x2

.field private static final NR_MODE_SA_AND_NSA:I = 0x3

.field private static final NR_MODE_UNKNOWN:I = 0x0

.field private static final NR_OPTION_MODE:Ljava/lang/String; = "nr_option_mode"

.field public static final PRODUCT_CHARACTERISTICS:Ljava/lang/String; = "ro.build.characteristics"

.field private static final TAG:Ljava/lang/String; = "ImsCallProviderUtils"

.field public static final USER_REJECT_CAUSE:I = 0x1

.field private static sIsNrModeSa:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    invoke-static {}, Lcom/android/ims/HwImsManager;->isDualImsAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    .line 80
    nop

    .line 81
    const-string v0, "ro.build.characteristics"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_TABLET:Z

    .line 85
    const/4 v0, 0x0

    const-string v1, "ro.config.hw_vtlte_on"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_VTLTE_ON:Z

    .line 87
    nop

    .line 88
    const-string v1, "ro.config.hw_vilte_enhancement"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_VILTE_ENHANCEMENT_SUPPORTED:Z

    .line 92
    const-string v1, "ro.config.hw_cdma_volte_isim"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_CDMA_VOLTE_ISIM_SUPPORTED:Z

    .line 94
    const-string v1, "ro.vendor.config.hw_vowifi"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_VOWIFI_PROP_ON:Z

    .line 108
    sput-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->sIsNrModeSa:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lcom/huawei/ims/HwImsCallSessionImpl;)Z
    .registers 3
    .param p0, "conn"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 180
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 181
    return v0

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isCallActive()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public static convertCallTypeToVideoState(I)I
    .registers 3
    .param p0, "callType"    # I

    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "videoState":I
    if-eqz p0, :cond_22

    const/4 v1, 0x1

    if-eq p0, v1, :cond_20

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1c

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1a

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1a

    const/16 v1, 0x8

    if-eq p0, v1, :cond_17

    goto :goto_24

    .line 331
    :cond_17
    const/16 v0, 0x8

    .line 332
    goto :goto_24

    .line 328
    :cond_1a
    const/4 v0, 0x4

    .line 329
    goto :goto_24

    .line 324
    :cond_1c
    const/4 v0, 0x3

    .line 325
    goto :goto_24

    .line 318
    :cond_1e
    const/4 v0, 0x2

    .line 319
    goto :goto_24

    .line 321
    :cond_20
    const/4 v0, 0x1

    .line 322
    goto :goto_24

    .line 315
    :cond_22
    const/4 v0, 0x0

    .line 316
    nop

    .line 336
    :goto_24
    return v0
.end method

.method public static convertImsErrorToUiError(I)I
    .registers 3
    .param p0, "error"    # I

    .line 391
    const/4 v0, 0x7

    if-ne p0, v0, :cond_5

    .line 392
    const/4 v0, 0x4

    return v0

    .line 393
    :cond_5
    const/4 v0, 0x1

    if-eqz p0, :cond_1f

    const/16 v1, 0x10

    if-ne p0, v1, :cond_d

    goto :goto_1f

    .line 395
    :cond_d
    if-ne p0, v0, :cond_12

    .line 396
    const/16 v0, 0x64

    return v0

    .line 397
    :cond_12
    const/4 v0, 0x2

    if-ne p0, v0, :cond_18

    .line 398
    const/16 v0, 0x65

    return v0

    .line 399
    :cond_18
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1e

    .line 400
    const/16 v0, 0x66

    return v0

    .line 402
    :cond_1e
    return v0

    .line 394
    :cond_1f
    :goto_1f
    return v0
.end method

.method public static convertRilCauseCodeToImsCode(I)I
    .registers 2
    .param p0, "causeCode"    # I

    .line 413
    move v0, p0

    .line 415
    .local v0, "cause":I
    sparse-switch v0, :sswitch_data_40

    goto :goto_3e

    .line 495
    :sswitch_5
    const/16 v0, 0xbb9

    .line 496
    goto :goto_3e

    .line 491
    :sswitch_8
    const/16 v0, 0x44c

    .line 492
    goto :goto_3e

    .line 483
    :sswitch_b
    const/16 v0, 0x169

    .line 484
    goto :goto_3e

    .line 479
    :sswitch_e
    const/16 v0, 0x161

    .line 480
    goto :goto_3e

    .line 475
    :sswitch_11
    const/16 v0, 0x160

    .line 476
    goto :goto_3e

    .line 471
    :sswitch_14
    const/16 v0, 0x15f

    .line 472
    goto :goto_3e

    .line 467
    :sswitch_17
    const/16 v0, 0x153

    .line 468
    goto :goto_3e

    .line 463
    :sswitch_1a
    const/16 v0, 0x152

    .line 464
    goto :goto_3e

    .line 458
    :sswitch_1d
    const/16 v0, 0x151

    .line 459
    goto :goto_3e

    .line 454
    :sswitch_20
    const/16 v0, 0x150

    .line 455
    goto :goto_3e

    .line 450
    :sswitch_23
    const/16 v0, 0x14e

    .line 451
    goto :goto_3e

    .line 444
    :sswitch_26
    const/16 v0, 0x155

    .line 445
    goto :goto_3e

    .line 439
    :sswitch_29
    const/16 v0, 0x14f

    .line 440
    goto :goto_3e

    .line 435
    :sswitch_2c
    const/16 v0, 0x154

    .line 436
    goto :goto_3e

    .line 429
    :sswitch_2f
    const/16 v0, 0x14d

    .line 430
    goto :goto_3e

    .line 425
    :sswitch_32
    const/16 v0, 0x14c

    .line 426
    goto :goto_3e

    .line 421
    :sswitch_35
    const/16 v0, 0x14b

    .line 422
    goto :goto_3e

    .line 487
    :sswitch_38
    const/16 v0, 0x15

    .line 488
    goto :goto_3e

    .line 417
    :sswitch_3b
    const/16 v0, 0x1fe

    .line 418
    nop

    .line 501
    :goto_3e
    return v0

    nop

    :sswitch_data_40
    .sparse-switch
        0x0 -> :sswitch_3b
        0xf1 -> :sswitch_38
        0x4990 -> :sswitch_35
        0x4993 -> :sswitch_32
        0x4994 -> :sswitch_2f
        0x4996 -> :sswitch_2c
        0x4998 -> :sswitch_29
        0x499a -> :sswitch_26
        0x499f -> :sswitch_23
        0x49a0 -> :sswitch_23
        0x49a4 -> :sswitch_23
        0x49e0 -> :sswitch_20
        0x49e4 -> :sswitch_1d
        0x49e6 -> :sswitch_1a
        0x49e7 -> :sswitch_17
        0x49e8 -> :sswitch_2c
        0x49f5 -> :sswitch_14
        0x49f7 -> :sswitch_11
        0x49f8 -> :sswitch_e
        0x4a58 -> :sswitch_1a
        0x4a5b -> :sswitch_b
        0x4a5c -> :sswitch_26
        0x4a5e -> :sswitch_2c
        0x4c1b -> :sswitch_8
        0x4c1c -> :sswitch_5
    .end sparse-switch
.end method

.method public static convertToInternalCallType(I)I
    .registers 4
    .param p0, "imsCallProfileCallType"    # I

    .line 346
    const/16 v0, 0xa

    .line 347
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_28

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertToInternalCallType invalid calltype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsCallProviderUtils"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 357
    :pswitch_1c
    const/4 v0, 0x4

    .line 358
    goto :goto_26

    .line 363
    :pswitch_1e
    const/4 v0, 0x2

    .line 364
    goto :goto_26

    .line 360
    :pswitch_20
    const/4 v0, 0x1

    .line 361
    goto :goto_26

    .line 354
    :pswitch_22
    const/4 v0, 0x3

    .line 355
    goto :goto_26

    .line 350
    :pswitch_24
    const/4 v0, 0x0

    .line 351
    nop

    .line 369
    :goto_26
    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_22
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method public static convertToVideoProfile(II)Landroid/telecom/VideoProfile;
    .registers 4
    .param p0, "callType"    # I
    .param p1, "callQuality"    # I

    .line 380
    new-instance v0, Landroid/telecom/VideoProfile;

    invoke-static {p0}, Lcom/huawei/ims/ImsCallProviderUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 381
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .registers 3
    .param p0, "videoState"    # I

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "callType":I
    if-eqz p0, :cond_1f

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1b

    const/4 v1, 0x3

    if-eq p0, v1, :cond_19

    const/4 v1, 0x4

    if-eq p0, v1, :cond_17

    const/16 v1, 0x8

    if-eq p0, v1, :cond_14

    goto :goto_21

    .line 297
    :cond_14
    const/16 v0, 0x8

    .line 298
    goto :goto_21

    .line 294
    :cond_17
    const/4 v0, 0x4

    .line 295
    goto :goto_21

    .line 291
    :cond_19
    const/4 v0, 0x3

    .line 292
    goto :goto_21

    .line 285
    :cond_1b
    const/4 v0, 0x2

    .line 286
    goto :goto_21

    .line 288
    :cond_1d
    const/4 v0, 0x1

    .line 289
    goto :goto_21

    .line 282
    :cond_1f
    const/4 v0, 0x0

    .line 283
    nop

    .line 302
    :goto_21
    return v0
.end method

.method public static getImsCallRejectCause(I)I
    .registers 3
    .param p0, "reason"    # I

    .line 608
    const/4 v0, -0x1

    .line 609
    .local v0, "cause":I
    const/16 v1, 0x208

    if-eq p0, v1, :cond_d

    const/16 v1, 0x209

    if-eq p0, v1, :cond_b

    .line 617
    const/4 v0, -0x1

    goto :goto_f

    .line 614
    :cond_b
    const/4 v0, 0x1

    .line 615
    goto :goto_f

    .line 611
    :cond_d
    const/4 v0, 0x0

    .line 612
    nop

    .line 620
    :goto_f
    return v0
.end method

.method public static getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "subId"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .local v0, "storeKey":Ljava/lang/StringBuilder;
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_10

    .line 575
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 577
    :cond_10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :goto_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSlotId(I)I
    .registers 4
    .param p0, "currentSlotId"    # I

    .line 544
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 545
    .local v0, "slotId":I
    invoke-static {p0}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSlotId: invalid slotId, slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsCallProviderUtils"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return v0

    .line 549
    :cond_25
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_2a

    .line 550
    move v0, p0

    .line 552
    :cond_2a
    return v0
.end method

.method public static getSubIdUsingSlotId(I)I
    .registers 6
    .param p0, "slotId"    # I

    .line 639
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 640
    .local v0, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 641
    return v1

    .line 644
    :cond_8
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 645
    .local v2, "subIdList":[I
    if-eqz v2, :cond_16

    const/4 v3, 0x0

    aget v4, v2, v3

    if-ltz v4, :cond_16

    .line 646
    aget v1, v2, v3

    return v1

    .line 648
    :cond_16
    return v1
.end method

.method public static isAvpRetryDialing(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/DriverImsCall;)Z
    .registers 11
    .param p0, "conn"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 214
    const/4 v0, 0x0

    if-eqz p0, :cond_45

    if-nez p1, :cond_6

    goto :goto_45

    .line 217
    :cond_6
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 218
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v2

    .line 219
    .local v2, "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v3

    .line 220
    .local v3, "nextCallType":I
    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 222
    .local v4, "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_27

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v2, v5, :cond_25

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v2, v5, :cond_27

    :cond_25
    move v5, v6

    goto :goto_28

    :cond_27
    move v5, v0

    .line 224
    .local v5, "isMoVideoCall":Z
    :goto_28
    if-eqz v5, :cond_36

    .line 225
    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v7

    if-eqz v7, :cond_36

    sget-object v7, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v4, v7, :cond_36

    move v7, v6

    goto :goto_37

    :cond_36
    move v7, v0

    .line 226
    .local v7, "isDialingAvpRetry":Z
    :goto_37
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/huawei/ims/ImsCallAdapter;->isAvpRetryAllowed()Z

    move-result v8

    if-eqz v8, :cond_44

    if-eqz v7, :cond_44

    move v0, v6

    :cond_44
    return v0

    .line 215
    .end local v1    # "currCallType":I
    .end local v2    # "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    .end local v3    # "nextCallType":I
    .end local v4    # "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    .end local v5    # "isMoVideoCall":Z
    .end local v7    # "isDialingAvpRetry":Z
    :cond_45
    :goto_45
    return v0
.end method

.method public static isAvpRetryUpgrade(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/DriverImsCall;)Z
    .registers 10
    .param p0, "conn"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 237
    const/4 v0, 0x0

    if-eqz p0, :cond_38

    if-nez p1, :cond_6

    goto :goto_38

    .line 240
    :cond_6
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 241
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v2

    .line 242
    .local v2, "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v3

    .line 243
    .local v3, "nextCallType":I
    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 245
    .local v4, "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    const/4 v5, 0x1

    if-nez v1, :cond_29

    sget-object v6, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v2, v6, :cond_29

    .line 247
    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    if-eqz v6, :cond_29

    sget-object v6, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v4, v6, :cond_29

    move v6, v5

    goto :goto_2a

    :cond_29
    move v6, v0

    .line 248
    .local v6, "isUpgradeAvpRetry":Z
    :goto_2a
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/ims/ImsCallAdapter;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_37

    if-eqz v6, :cond_37

    move v0, v5

    :cond_37
    return v0

    .line 238
    .end local v1    # "currCallType":I
    .end local v2    # "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    .end local v3    # "nextCallType":I
    .end local v4    # "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    .end local v6    # "isUpgradeAvpRetry":Z
    :cond_38
    :goto_38
    return v0
.end method

.method public static isCdmaVoLteAndIsim()Z
    .registers 1

    .line 629
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_CDMA_VOLTE_ISIM_SUPPORTED:Z

    return v0
.end method

.method public static isSaModeSupported(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 659
    if-nez p0, :cond_5

    .line 660
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->sIsNrModeSa:Z

    return v0

    .line 662
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "nr_option_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 663
    .local v0, "nrMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSaModeSupported, nrMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsCallProviderUtils"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v2, 0x2

    if-eq v0, v2, :cond_2c

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2d

    :cond_2c
    const/4 v1, 0x1

    :cond_2d
    sput-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->sIsNrModeSa:Z

    .line 665
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->sIsNrModeSa:Z

    return v1
.end method

.method public static isValidRilModifyCallType(I)Z
    .registers 3
    .param p0, "callType"    # I

    .line 137
    const/4 v0, 0x1

    if-eqz p0, :cond_14

    if-eq p0, v0, :cond_14

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    const/4 v1, 0x4

    if-eq p0, v1, :cond_14

    const/16 v1, 0x8

    if-eq p0, v1, :cond_14

    .line 146
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_14
    return v0
.end method

.method public static isValidServiceSubIndex(I)Z
    .registers 2
    .param p0, "index"    # I

    .line 589
    if-ltz p0, :cond_a

    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v0

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isValidSlotId(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .line 562
    if-ltz p0, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isVideoCall(I)Z
    .registers 3
    .param p0, "callType"    # I

    .line 117
    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    const/4 v1, 0x4

    if-eq p0, v1, :cond_14

    const/4 v1, 0x6

    if-eq p0, v1, :cond_14

    const/4 v1, 0x7

    if-eq p0, v1, :cond_14

    .line 126
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_14
    return v0
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .registers 3
    .param p0, "callType"    # I

    .line 258
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_b

    const/4 v1, 0x2

    if-eq p0, v1, :cond_b

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .registers 2
    .param p0, "callType"    # I

    .line 269
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static isVideoPaused(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/DriverImsCall;)Z
    .registers 10
    .param p0, "conn"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 158
    const/4 v0, 0x0

    if-eqz p0, :cond_4b

    if-nez p1, :cond_6

    goto :goto_4b

    .line 161
    :cond_6
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 162
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v2

    .line 163
    .local v2, "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v3

    .line 164
    .local v3, "nextCallType":I
    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 166
    .local v4, "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2d

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v2, v5, :cond_2d

    .line 167
    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v4, v5, :cond_2d

    move v5, v6

    goto :goto_2e

    :cond_2d
    move v5, v0

    .line 168
    .local v5, "isHoldingPaused":Z
    :goto_2e
    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v7

    if-eqz v7, :cond_44

    sget-object v7, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v2, v7, :cond_44

    .line 169
    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v7

    if-eqz v7, :cond_44

    sget-object v7, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v4, v7, :cond_44

    move v7, v6

    goto :goto_45

    :cond_44
    move v7, v0

    .line 170
    .local v7, "isActivePaused":Z
    :goto_45
    if-nez v5, :cond_49

    if-eqz v7, :cond_4a

    :cond_49
    move v0, v6

    :cond_4a
    return v0

    .line 159
    .end local v1    # "currCallType":I
    .end local v2    # "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    .end local v3    # "nextCallType":I
    .end local v4    # "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    .end local v5    # "isHoldingPaused":Z
    .end local v7    # "isActivePaused":Z
    :cond_4b
    :goto_4b
    return v0
.end method

.method public static isVideoResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/DriverImsCall;)Z
    .registers 8
    .param p0, "conn"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 194
    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    if-nez p1, :cond_6

    goto :goto_2e

    .line 197
    :cond_6
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 198
    .local v1, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v2

    .line 199
    .local v2, "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v3

    .line 200
    .local v3, "nextCallType":I
    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 202
    .local v4, "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v2, v5, :cond_2c

    .line 203
    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v4, v5, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 202
    :goto_2d
    return v0

    .line 195
    .end local v1    # "currCallType":I
    .end local v2    # "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    .end local v3    # "nextCallType":I
    .end local v4    # "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    :cond_2e
    :goto_2e
    return v0
.end method

.method public static isVilteEnhancementSupported()Z
    .registers 1

    .line 598
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_VTLTE_ON:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_VILTE_ENHANCEMENT_SUPPORTED:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isVowifiPropOn()Z
    .registers 1

    .line 510
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_VOWIFI_PROP_ON:Z

    return v0
.end method

.method public static isVtUpgradeCallType(III)Z
    .registers 7
    .param p0, "curCallType"    # I
    .param p1, "destCallType"    # I
    .param p2, "callType"    # I

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "isValidCallType":Z
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p2, :cond_d

    if-eq p2, v2, :cond_d

    const/4 v3, 0x2

    if-eq p2, v3, :cond_d

    if-eq p2, v1, :cond_d

    goto :goto_f

    .line 528
    :cond_d
    const/4 v0, 0x1

    .line 529
    nop

    .line 533
    :goto_f
    if-nez p0, :cond_16

    if-ne p1, v1, :cond_16

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2
.end method
