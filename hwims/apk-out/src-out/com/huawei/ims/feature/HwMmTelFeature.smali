.class public Lcom/huawei/ims/feature/HwMmTelFeature;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "HwMmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/feature/HwMmTelFeature$CapabilitiesStatusListener;,
        Lcom/huawei/ims/feature/HwMmTelFeature$InCallListener;
    }
.end annotation


# static fields
.field private static final EVENT_SIM_STATE_CHANGED:I = 0x2

.field private static final LAST_CALL_TYPE_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HwMmTelFeature"


# instance fields
.field private featureCapabilitesChangedListener:Lcom/huawei/ims/feature/HwMmTelFeature$CapabilitiesStatusListener;

.field private incomingListener:Lcom/huawei/ims/feature/HwMmTelFeature$InCallListener;

.field private mHandler:Landroid/os/Handler;

.field private mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

.field private mImsPhoneId:I

.field private mSubId:I

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/huawei/ims/HwImsServiceImpl;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 110
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mImsPhoneId:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mSubId:I

    .line 58
    new-instance v0, Lcom/huawei/ims/feature/HwMmTelFeature$InCallListener;

    invoke-direct {v0, p0}, Lcom/huawei/ims/feature/HwMmTelFeature$InCallListener;-><init>(Lcom/huawei/ims/feature/HwMmTelFeature;)V

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->incomingListener:Lcom/huawei/ims/feature/HwMmTelFeature$InCallListener;

    .line 60
    new-instance v0, Lcom/huawei/ims/feature/HwMmTelFeature$CapabilitiesStatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/feature/HwMmTelFeature$CapabilitiesStatusListener;-><init>(Lcom/huawei/ims/feature/HwMmTelFeature;Lcom/huawei/ims/feature/HwMmTelFeature$1;)V

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->featureCapabilitesChangedListener:Lcom/huawei/ims/feature/HwMmTelFeature$CapabilitiesStatusListener;

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/huawei/ims/feature/HwMmTelFeature;->initialize(Landroid/content/Context;I)V

    .line 113
    iput-object p3, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 114
    iput p2, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mSubId:I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwMmTelFeature constructor: mSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    .line 118
    .local v0, "isMultiSims":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HwMmTelFeature constructor: isMultiSims = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDualIms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x2

    if-eqz v0, :cond_8c

    sget-boolean v2, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v2, :cond_8c

    .line 121
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mImsPhoneId:I

    .line 122
    iget v2, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mSubId:I

    iget v3, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mImsPhoneId:I

    if-ne v2, v3, :cond_94

    .line 123
    invoke-virtual {p0, v1}, Lcom/huawei/ims/feature/HwMmTelFeature;->setFeatureState(I)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HwMmTelFeature constructor: setFeatureState ready! mImsPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mImsPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    goto :goto_94

    .line 127
    :cond_8c
    invoke-virtual {p0, v1}, Lcom/huawei/ims/feature/HwMmTelFeature;->setFeatureState(I)V

    .line 128
    const-string v1, "HwMmTelFeature constructor: setFeatureState ready!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    .line 131
    :cond_94
    :goto_94
    invoke-direct {p0}, Lcom/huawei/ims/feature/HwMmTelFeature;->initSubscriptionStatus()V

    .line 132
    return-void
.end method

.method private createHandler()V
    .registers 2

    .line 135
    new-instance v0, Lcom/huawei/ims/feature/HwMmTelFeature$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/feature/HwMmTelFeature$1;-><init>(Lcom/huawei/ims/feature/HwMmTelFeature;)V

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method private handleSimStateChanged(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 183
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 184
    .local v0, "mNumPhones":I
    const/4 v1, 0x0

    .line 185
    .local v1, "isPhoneChanged":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimStateChanged: NumPhones:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Ims PhoneID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mImsPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 187
    .local v2, "mainSlotId":I
    iget v3, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mImsPhoneId:I

    if-eq v3, v2, :cond_36

    .line 188
    iput v2, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mImsPhoneId:I

    .line 189
    const/4 v1, 0x1

    .line 191
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSimStateChanged: mPhoneChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    .line 193
    if-eqz v1, :cond_62

    .line 196
    iget-object v3, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget v4, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mImsPhoneId:I

    invoke-virtual {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->registerForPhoneId(I)V

    .line 197
    iget v3, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mSubId:I

    iget v4, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mImsPhoneId:I

    if-eq v3, v4, :cond_5e

    .line 198
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/huawei/ims/feature/HwMmTelFeature;->setFeatureStateHw(I)V

    goto :goto_62

    .line 200
    :cond_5e
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/huawei/ims/feature/HwMmTelFeature;->setFeatureStateHw(I)V

    .line 203
    :cond_62
    :goto_62
    return-void
.end method

.method private initSubscriptionStatus()V
    .registers 5

    .line 160
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v0, :cond_2d

    .line 162
    invoke-direct {p0}, Lcom/huawei/ims/feature/HwMmTelFeature;->createHandler()V

    .line 164
    :try_start_12
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 165
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_20} :catch_21

    .line 168
    goto :goto_27

    .line 166
    :catch_21
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "UiccController getInstance Exception!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMmTelFeature;->loge(Ljava/lang/String;)V

    .line 169
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_27
    const-string v0, "initSubscriptionStatus: registered for EVENT_SIM_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    goto :goto_36

    .line 171
    :cond_2d
    const-string v0, "initSubscriptionStatus: Not multi-sim..."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    .line 172
    iput-object v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 173
    iput-object v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHandler:Landroid/os/Handler;

    .line 175
    :goto_36
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 5
    .param p1, "string"    # Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwMmTelFeature["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "string"    # Ljava/lang/String;

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwMmTelFeature["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method

.method private sendImsServiceStateIntent(I)V
    .registers 5
    .param p1, "state"    # I

    .line 331
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3c

    iget v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mSubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_3c

    .line 335
    :cond_a
    const-string v0, "com.android.ims.IMS_SERVICE_DOWN"

    if-eqz p1, :cond_23

    const/4 v1, 0x1

    if-eq p1, v1, :cond_23

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1b

    .line 344
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .local v0, "intent":Landroid/content/Intent;
    goto :goto_2a

    .line 341
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_2a

    .line 338
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_23
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 339
    .restart local v0    # "intent":Landroid/content/Intent;
    nop

    .line 347
    :goto_2a
    iget v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mSubId:I

    const-string v2, "android:phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    const-string v1, "broadcast ims service state"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    .line 350
    return-void

    .line 332
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3c
    :goto_3c
    return-void
.end method

.method private setFeatureStateHw(I)V
    .registers 2
    .param p1, "state"    # I

    .line 326
    invoke-virtual {p0, p1}, Lcom/huawei/ims/feature/HwMmTelFeature;->setFeatureState(I)V

    .line 327
    invoke-direct {p0, p1}, Lcom/huawei/ims/feature/HwMmTelFeature;->sendImsServiceStateIntent(I)V

    .line 328
    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .registers 7
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "proxy"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 244
    if-nez p1, :cond_3

    .line 245
    return-void

    .line 248
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 249
    .local v1, "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v2, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->changeFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;I)V

    .line 250
    .end local v1    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_b

    .line 252
    :cond_1e
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 253
    .restart local v1    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v2, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->changeFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;I)V

    .line 254
    .end local v1    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_26

    .line 255
    :cond_39
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .registers 4
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 207
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v0, :cond_b

    .line 208
    const-string v0, "createCallProfile: mHwImsServiceImpl = null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->loge(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_b
    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/HwImsServiceImpl;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/huawei/ims/feature/HwMmTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object p1

    return-object p1
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 216
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v0, :cond_b

    .line 217
    const-string v0, "createCallSession: mHwImsServiceImpl = null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->loge(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/huawei/ims/HwImsServiceImpl;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getEcbm()Lcom/huawei/ims/HwImsEcbmImpl;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallType(I)I
    .registers 5
    .param p1, "slotId"    # I

    .line 312
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v1, -0x1

    if-nez v0, :cond_b

    .line 313
    const-string v0, "getLastCallType: mHwImsServiceImpl is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->loge(Ljava/lang/String;)V

    .line 314
    return v1

    .line 317
    :cond_b
    iget v2, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mSubId:I

    if-eq p1, v2, :cond_15

    .line 318
    const-string v0, "getLastCallType: slotId does not equal to mSubId."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    .line 319
    return v1

    .line 322
    :cond_15
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getLastCallType()I

    move-result v0

    return v0
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .registers 2

    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getUt()Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 150
    const-string v0, "Unknown msg!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    goto :goto_14

    .line 146
    :cond_b
    const-string v0, "Received event: EVENT_SIM_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/huawei/ims/feature/HwMmTelFeature;->handleSimStateChanged(Landroid/os/Message;)V

    .line 148
    nop

    .line 153
    :goto_14
    return-void
.end method

.method public onFeatureReady()V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->incomingListener:Lcom/huawei/ims/feature/HwMmTelFeature$InCallListener;

    iget-object v2, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->featureCapabilitesChangedListener:Lcom/huawei/ims/feature/HwMmTelFeature$CapabilitiesStatusListener;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->createImsServiceCallTracker(Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V

    .line 296
    return-void
.end method

.method public onFeatureRemoved()V
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->removeImsServiceCallTracker()V

    .line 301
    return-void
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .registers 5
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 226
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v0, :cond_a

    .line 227
    const-string v0, "setUiTtyMode: mHwImsServiceImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->loge(Ljava/lang/String;)V

    .line 228
    return-void

    .line 230
    :cond_a
    const-string v0, "setUiTtyMode"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMmTelFeature;->logi(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "serviceId":I
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v1, v0, p1, p2}, Lcom/huawei/ims/HwImsServiceImpl;->setUiTtyMode(IILandroid/os/Message;)V

    .line 233
    return-void
.end method
