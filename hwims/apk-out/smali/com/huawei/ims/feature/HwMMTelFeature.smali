.class public Lcom/huawei/ims/feature/HwMMTelFeature;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "HwMMTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;,
        Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;
    }
.end annotation


# static fields
.field private static final EVENT_SIM_STATE_CHANGED:I = 0x2

.field private static final LAST_CALL_TYPE_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HwMMTelFeature"


# instance fields
.field private featureCapabilitesChangedListener:Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;

.field private incomingListener:Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;

.field private mHandler:Landroid/os/Handler;

.field private mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

.field private mImsPhoneId:I

.field private mSubId:I

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/huawei/ims/HwImsServiceImpl;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 73
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    .line 41
    new-instance v0, Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;

    invoke-direct {v0, p0}, Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;-><init>(Lcom/huawei/ims/feature/HwMMTelFeature;)V

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->incomingListener:Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;

    .line 42
    new-instance v0, Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;-><init>(Lcom/huawei/ims/feature/HwMMTelFeature;Lcom/huawei/ims/feature/HwMMTelFeature$1;)V

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->featureCapabilitesChangedListener:Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/huawei/ims/feature/HwMMTelFeature;->initialize(Landroid/content/Context;I)V

    .line 76
    iput-object p3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 77
    iput p2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwMMTelFeature constructor: mSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    .line 81
    .local v0, "isMultiSims":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HwMMTelFeature constructor: isMultiSims = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDualIms = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x2

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v2, :cond_0

    .line 84
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    .line 85
    iget v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    iget v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    if-ne v2, v3, :cond_1

    .line 86
    invoke-virtual {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HwMMTelFeature constructor: setFeatureState ready! mImsPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    .line 91
    const-string v1, "HwMMTelFeature constructor: setFeatureState ready!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 94
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huawei/ims/feature/HwMMTelFeature;->initSubscriptionStatus()V

    .line 95
    return-void
.end method

.method private createHandler()V
    .locals 1

    .line 98
    new-instance v0, Lcom/huawei/ims/feature/HwMMTelFeature$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/feature/HwMMTelFeature$1;-><init>(Lcom/huawei/ims/feature/HwMMTelFeature;)V

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method private handleSimStateChanged(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 139
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 140
    .local v0, "mNumPhones":I
    const/4 v1, 0x0

    .line 141
    .local v1, "mPhoneChanged":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimStateChanged: NumPhones:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Ims PhoneID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault4GSlotId()I

    move-result v2

    .line 144
    .local v2, "default4GSlotId":I
    iget v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    if-eq v3, v2, :cond_0

    .line 145
    iput v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    .line 146
    const/4 v1, 0x1

    .line 148
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSimStateChanged: mPhoneChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 150
    if-eqz v1, :cond_2

    .line 155
    iget-object v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget v4, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    invoke-virtual {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->registerForPhoneId(I)V

    .line 156
    iget v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    iget v4, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mImsPhoneId:I

    if-eq v3, v4, :cond_1

    .line 157
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    goto :goto_0

    .line 159
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/huawei/ims/feature/HwMMTelFeature;->setFeatureState(I)V

    .line 162
    :cond_2
    :goto_0
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 4

    .line 120
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/huawei/ims/feature/HwMMTelFeature;->createHandler()V

    .line 124
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 125
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "UiccController getInstance Exception!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 129
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    const-string v0, "initSubscriptionStatus: registered for EVENT_SIM_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_0
    const-string v0, "initSubscriptionStatus: Not multi-sim..."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 132
    iput-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 133
    iput-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHandler:Landroid/os/Handler;

    .line 135
    :goto_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwMMTelFeature["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwMMTelFeature["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

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

    .line 274
    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 4
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 200
    if-nez p1, :cond_0

    .line 201
    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 205
    .local v1, "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->changeFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;I)V

    .line 206
    .end local v1    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 209
    .restart local v1    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v3, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->changeFeatureValue(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;I)V

    .line 210
    .end local v1    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_1

    .line 211
    :cond_2
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 1
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 166
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v0, :cond_0

    .line 167
    const-string v0, "mHwImsServiceImpl = null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/HwImsServiceImpl;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/huawei/ims/feature/HwMMTelFeature;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object p1

    return-object p1
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 175
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v0, :cond_0

    .line 176
    const-string v0, "mHwImsServiceImpl = null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/huawei/ims/HwImsServiceImpl;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getEcbm()Lcom/huawei/ims/HwImsEcbmImpl;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallType(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 255
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 256
    const-string v0, "GetLastCallType:: mHwImsServiceImpl is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 257
    return v1

    .line 260
    :cond_0
    iget v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mSubId:I

    if-eq p1, v0, :cond_1

    .line 261
    const-string v0, "getLastCallType:: slotId does not equal to mSubId."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 262
    return v1

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getLastCallType()I

    move-result v0

    return v0
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getUt()Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 113
    const-string v0, "Unknown msg!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    const-string v0, "Received event: EVENT_SIM_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/huawei/ims/feature/HwMMTelFeature;->handleSimStateChanged(Landroid/os/Message;)V

    .line 111
    nop

    .line 116
    :goto_0
    return-void
.end method

.method public onFeatureReady()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->incomingListener:Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;

    iget-object v2, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->featureCapabilitesChangedListener:Lcom/huawei/ims/feature/HwMMTelFeature$CapabilitiesStatusListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->createImsServiceCallTracker(ILcom/huawei/ims/ImsServiceCallTracker$InComingListener;Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V

    .line 245
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->removeImsServiceCallTracker(I)V

    .line 250
    return-void
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 2
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 185
    iget-object v0, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v0, :cond_0

    .line 186
    const-string v0, "SetUiTTYMode:: mHwImsServiceImpl is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->loge(Ljava/lang/String;)V

    .line 187
    return-void

    .line 190
    :cond_0
    const-string v0, "setUiTTYMode"

    invoke-direct {p0, v0}, Lcom/huawei/ims/feature/HwMMTelFeature;->logd(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "serviceId":I
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v1, v0, p1, p2}, Lcom/huawei/ims/HwImsServiceImpl;->setUiTTYMode(IILandroid/os/Message;)V

    .line 193
    return-void
.end method
