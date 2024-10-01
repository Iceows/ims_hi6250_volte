.class public Lcom/huawei/ims/ImsCallProviderUtils;
.super Ljava/lang/Object;
.source "ImsCallProviderUtils.java"


# static fields
.field public static final BUSY_REJECT_CAUSE:I = 0x0

.field private static final DEVICE_TYPE_TABLET:Ljava/lang/String; = "tablet"

.field private static final HW_CDMA_VOLTE_ISIM:Ljava/lang/String; = "ro.config.hw_cdma_volte_isim"

.field private static final HW_VTLTE_ON:Ljava/lang/String; = "ro.config.hw_vtlte_on"

.field public static final IMS_DOMAIN_LTE:I = 0x0

.field public static final IMS_DOMAIN_UNKNOWN:I = 0x2

.field public static final IMS_DOMAIN_WIFI:I = 0x1

.field public static final IS_DUAL_IMS_AVAILABLE:Z

.field public static final IS_TABLET:Z

.field private static final IS_VILTE_ENHANCEMENT_SUPPORTED:Z

.field private static final IS_VOWIFI_PROP__ON:Z

.field public static final NO_REJECT_CAUSE:I = -0x1

.field private static final PRODUCT_CHARACTERISTICS:Ljava/lang/String; = "ro.build.characteristics"

.field private static TAG:Ljava/lang/String; = null

.field public static final USER_REJECT_CAUSE:I = 0x1

.field private static final mIsCdmaVolteISIM:Z

.field private static final mIsVtLteSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    const-string v0, "ImsCallProviderUtils"

    sput-object v0, Lcom/huawei/ims/ImsCallProviderUtils;->TAG:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/android/ims/HwImsManager;->isDualImsAvailable()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    .line 38
    const-string v0, "ro.config.hw_vtlte_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->mIsVtLteSupported:Z

    .line 39
    const-string v0, "ro.config.hw_vilte_enhancement"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_VILTE_ENHANCEMENT_SUPPORTED:Z

    .line 42
    const-string v0, "ro.config.hw_cdma_volte_isim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->mIsCdmaVolteISIM:Z

    .line 47
    const-string v0, "tablet"

    const-string v2, "ro.build.characteristics"

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_TABLET:Z

    .line 49
    const-string v0, "ro.vendor.config.hw_vowifi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_VOWIFI_PROP__ON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lcom/huawei/ims/HwImsCallSessionImpl;)Z
    .locals 1
    .param p0, "conn"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 100
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static convertCallTypeToVideoState(I)I
    .locals 2
    .param p0, "callType"    # I

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "videoState":I
    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_0
    const/4 v0, 0x3

    .line 213
    goto :goto_0

    .line 206
    :pswitch_1
    const/4 v0, 0x2

    .line 207
    goto :goto_0

    .line 209
    :pswitch_2
    const/4 v0, 0x1

    .line 210
    goto :goto_0

    .line 203
    :pswitch_3
    const/4 v0, 0x0

    .line 204
    goto :goto_0

    .line 220
    :cond_0
    const/16 v0, 0x8

    .line 221
    goto :goto_0

    .line 216
    :cond_1
    :pswitch_4
    const/4 v0, 0x4

    .line 217
    nop

    .line 229
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static convertImsErrorToUiError(I)I
    .locals 2
    .param p0, "error"    # I

    .line 269
    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    .line 270
    const/4 v0, 0x4

    return v0

    .line 271
    :cond_0
    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/16 v1, 0x10

    if-ne p0, v1, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    if-ne p0, v0, :cond_2

    .line 275
    const/16 v0, 0x64

    return v0

    .line 276
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 277
    const/16 v0, 0x65

    return v0

    .line 278
    :cond_3
    const/4 v1, 0x3

    if-ne p0, v1, :cond_4

    .line 279
    const/16 v0, 0x66

    return v0

    .line 282
    :cond_4
    return v0

    .line 272
    :cond_5
    :goto_0
    return v0
.end method

.method public static convertRilCauseCodeToImsCode(I)I
    .locals 1
    .param p0, "causeCode"    # I

    .line 291
    move v0, p0

    .line 293
    .local v0, "cause":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 375
    :sswitch_0
    const/16 v0, 0xbb9

    .line 376
    goto :goto_0

    .line 371
    :sswitch_1
    const/16 v0, 0x44c

    .line 372
    goto :goto_0

    .line 361
    :sswitch_2
    const/16 v0, 0x169

    .line 362
    goto :goto_0

    .line 357
    :sswitch_3
    const/16 v0, 0x161

    .line 358
    goto :goto_0

    .line 353
    :sswitch_4
    const/16 v0, 0x160

    .line 354
    goto :goto_0

    .line 349
    :sswitch_5
    const/16 v0, 0x15f

    .line 350
    goto :goto_0

    .line 345
    :sswitch_6
    const/16 v0, 0x153

    .line 346
    goto :goto_0

    .line 341
    :sswitch_7
    const/16 v0, 0x152

    .line 342
    goto :goto_0

    .line 336
    :sswitch_8
    const/16 v0, 0x151

    .line 337
    goto :goto_0

    .line 332
    :sswitch_9
    const/16 v0, 0x150

    .line 333
    goto :goto_0

    .line 328
    :sswitch_a
    const/16 v0, 0x14e

    .line 329
    goto :goto_0

    .line 322
    :sswitch_b
    const/16 v0, 0x155

    .line 323
    goto :goto_0

    .line 317
    :sswitch_c
    const/16 v0, 0x14f

    .line 318
    goto :goto_0

    .line 313
    :sswitch_d
    const/16 v0, 0x154

    .line 314
    goto :goto_0

    .line 307
    :sswitch_e
    const/16 v0, 0x14d

    .line 308
    goto :goto_0

    .line 303
    :sswitch_f
    const/16 v0, 0x14c

    .line 304
    goto :goto_0

    .line 299
    :sswitch_10
    const/16 v0, 0x14b

    .line 300
    goto :goto_0

    .line 366
    :sswitch_11
    const/16 v0, 0x15

    .line 367
    goto :goto_0

    .line 295
    :sswitch_12
    const/16 v0, 0x1fe

    .line 296
    nop

    .line 381
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0xf1 -> :sswitch_11
        0x4990 -> :sswitch_10
        0x4993 -> :sswitch_f
        0x4994 -> :sswitch_e
        0x4996 -> :sswitch_d
        0x4998 -> :sswitch_c
        0x499a -> :sswitch_b
        0x499f -> :sswitch_a
        0x49a0 -> :sswitch_a
        0x49a4 -> :sswitch_a
        0x49e0 -> :sswitch_9
        0x49e4 -> :sswitch_8
        0x49e6 -> :sswitch_7
        0x49e7 -> :sswitch_6
        0x49e8 -> :sswitch_d
        0x49f5 -> :sswitch_5
        0x49f7 -> :sswitch_4
        0x49f8 -> :sswitch_3
        0x4a58 -> :sswitch_7
        0x4a5b -> :sswitch_2
        0x4a5c -> :sswitch_b
        0x4a5e -> :sswitch_d
        0x4c1b -> :sswitch_1
        0x4c1c -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertToInternalCallType(I)I
    .locals 4
    .param p0, "imsCallProfileCallType"    # I

    .line 233
    const/16 v0, 0xa

    .line 234
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_0

    .line 255
    sget-object v1, Lcom/huawei/ims/ImsCallProviderUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToInternalCallType invalid calltype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :pswitch_0
    const/4 v0, 0x4

    .line 245
    goto :goto_0

    .line 252
    :pswitch_1
    const/4 v0, 0x2

    .line 253
    goto :goto_0

    .line 247
    :pswitch_2
    const/4 v0, 0x1

    .line 248
    goto :goto_0

    .line 241
    :pswitch_3
    const/4 v0, 0x3

    .line 242
    goto :goto_0

    .line 237
    :pswitch_4
    const/4 v0, 0x0

    .line 238
    nop

    .line 258
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToVideoProfile(II)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "callType"    # I
    .param p1, "callQuality"    # I

    .line 262
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 263
    invoke-static {p0}, Lcom/huawei/ims/ImsCallProviderUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 265
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 2
    .param p0, "videoState"    # I

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "callType":I
    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    const/4 v0, 0x4

    .line 185
    goto :goto_0

    .line 181
    :pswitch_1
    const/4 v0, 0x3

    .line 182
    goto :goto_0

    .line 175
    :pswitch_2
    const/4 v0, 0x2

    .line 176
    goto :goto_0

    .line 178
    :pswitch_3
    const/4 v0, 0x1

    .line 179
    goto :goto_0

    .line 172
    :pswitch_4
    const/4 v0, 0x0

    .line 173
    goto :goto_0

    .line 188
    :cond_0
    const/16 v0, 0x8

    .line 189
    nop

    .line 196
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImsCallRejectCause(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 440
    const/4 v0, -0x1

    .line 441
    .local v0, "cause":I
    packed-switch p0, :pswitch_data_0

    .line 449
    const/4 v0, -0x1

    goto :goto_0

    .line 446
    :pswitch_0
    const/4 v0, 0x1

    .line 447
    goto :goto_0

    .line 443
    :pswitch_1
    const/4 v0, 0x0

    .line 444
    nop

    .line 452
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x208
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImsStoredKeyWithSubId(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # I
    .param p1, "key"    # Ljava/lang/String;

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .local v0, "stroedKey":Ljava/lang/StringBuilder;
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSubId(I)I
    .locals 4
    .param p0, "currentSubId"    # I

    .line 398
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 399
    .local v0, "subId":I
    invoke-static {p0}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSubId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    sget-object v1, Lcom/huawei/ims/ImsCallProviderUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubId: invalid subId, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v0

    .line 403
    :cond_0
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_1

    .line 404
    move v0, p0

    .line 406
    :cond_1
    return v0
.end method

.method public static isAvpRetryDialing(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/DriverImsCall;)Z
    .locals 8
    .param p0, "conn"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 124
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 125
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v1

    .line 126
    .local v1, "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v2, v2, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    .line 127
    .local v2, "nextCallType":I
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 129
    .local v3, "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v1, v4, :cond_1

    .line 131
    :cond_0
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 132
    .local v4, "dialingAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/ims/ImsCallAdapter;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    move v5, v6

    nop

    :cond_2
    return v5
.end method

.method public static isAvpRetryUpgrade(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/DriverImsCall;)Z
    .locals 8
    .param p0, "conn"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 140
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 141
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v1

    .line 142
    .local v1, "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v2, v2, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    .line 143
    .local v2, "nextCallType":I
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 145
    .local v3, "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    sget-object v6, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v1, v6, :cond_0

    .line 147
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 149
    .local v6, "upgradeAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/huawei/ims/ImsCallAdapter;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    move v4, v5

    nop

    :cond_1
    return v4
.end method

.method public static isCdmaVoLTEAndISIM()Z
    .locals 1

    .line 457
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->mIsCdmaVolteISIM:Z

    return v0
.end method

.method public static isVTUpgradeCallType(III)Z
    .locals 3
    .param p0, "curCallType"    # I
    .param p1, "destCallType"    # I
    .param p2, "callType"    # I

    .line 390
    const/4 v0, 0x1

    if-nez p0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 66
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValidServiceSubIndex(I)Z
    .locals 1
    .param p0, "index"    # I

    .line 426
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSubId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .line 410
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoCall(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 55
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 156
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 165
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoPaused(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/DriverImsCall;)Z
    .locals 8
    .param p0, "conn"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 81
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 82
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v1

    .line 83
    .local v1, "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v2, v2, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    .line 84
    .local v2, "nextCallType":I
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 86
    .local v3, "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v1, v4, :cond_0

    .line 88
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    .line 90
    .local v4, "isHoldingPaused":Z
    :goto_0
    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v1, v7, :cond_1

    .line 92
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    .line 94
    .local v7, "isActivePaused":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v5, v6

    :goto_3
    return v5
.end method

.method public static isVideoResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/DriverImsCall;)Z
    .locals 5
    .param p0, "conn"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 108
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 109
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v1

    .line 110
    .local v1, "currCallState":Lcom/huawei/ims/DriverImsCall$State;
    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v2, v2, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    .line 111
    .local v2, "nextCallType":I
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 113
    .local v3, "nextCallState":Lcom/huawei/ims/DriverImsCall$State;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v1, v4, :cond_0

    .line 115
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 113
    :goto_0
    return v4
.end method

.method public static isVilteEnhancementSupported()Z
    .locals 1

    .line 431
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->mIsVtLteSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_VILTE_ENHANCEMENT_SUPPORTED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVowifiPropOn()Z
    .locals 1

    .line 386
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_VOWIFI_PROP__ON:Z

    return v0
.end method
