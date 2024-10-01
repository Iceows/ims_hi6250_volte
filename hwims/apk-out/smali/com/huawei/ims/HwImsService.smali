.class public Lcom/huawei/ims/HwImsService;
.super Landroid/telephony/ims/ImsService;
.source "HwImsService.java"


# static fields
.field private static final DUAL_IMS_MAX_SUBSCRIPTIONS:I = 0x2

.field private static final HW_VOLTE_ON:Z

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsService"

.field private static final SINGLE_IMS_MAX_SUBSCRIPTIONS:I = 0x1


# instance fields
.field private mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "ro.config.hw_volte_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsService;->HW_VOLTE_ON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;-><init>()V

    return-void
.end method

.method public static getNumSubscriptions()I
    .locals 1

    .line 38
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x2

    return v0

    .line 41
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getRealSlot(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "serviceSubIndex":I
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_0

    .line 166
    move v0, p1

    .line 168
    :cond_0
    return v0
.end method


# virtual methods
.method public createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 5
    .param p1, "subId"    # I

    .line 105
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSubId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "HwImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMmTelFeature: Invalid subId, subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    .line 113
    .local v0, "serviceSubIndex":I
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_1

    .line 114
    move v0, p1

    .line 117
    :cond_1
    new-instance v1, Lcom/huawei/ims/feature/HwMMTelFeature;

    iget-object v2, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v2, v2, v0

    invoke-direct {v1, p0, p1, v2}, Lcom/huawei/ims/feature/HwMMTelFeature;-><init>(Landroid/content/Context;ILcom/huawei/ims/HwImsServiceImpl;)V

    .line 120
    .local v1, "hwMmTelFeature":Landroid/telephony/ims/feature/MmTelFeature;
    const-string v2, "HwImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateMMTelImsFeature:hwMmTelFeature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " serviceSubIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object v1
.end method

.method public disableIms(I)V
    .locals 0
    .param p1, "slotId"    # I

    .line 136
    return-void
.end method

.method public enableIms(I)V
    .locals 0
    .param p1, "slotId"    # I

    .line 132
    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 3
    .param p1, "slotId"    # I

    .line 140
    const-string v0, "HwImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfig: isValidSubId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSubId(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSubId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsService;->getRealSlot(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getConfig()Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 3
    .param p1, "slotId"    # I

    .line 152
    const-string v0, "HwImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegistration: isValidSubId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSubId(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSubId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsService;->getRealSlot(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsRegistrationImpl()Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 90
    sget-boolean v0, Lcom/huawei/ims/HwImsService;->HW_VOLTE_ON:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "HwImsService"

    const-string v2, "onBind: not support VoLTE, renturn null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v1

    .line 95
    :cond_0
    const-string v0, "android.telephony.ims.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "HwImsService"

    const-string v1, "HwImsService Bound."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/huawei/ims/HwImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 99
    :cond_1
    return-object v1
.end method

.method public onCreate()V
    .locals 4

    .line 48
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onCreate()V

    .line 49
    const-string v0, "HwImsService"

    const-string v1, "HwImsService created!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-boolean v0, Lcom/huawei/ims/HwImsService;->HW_VOLTE_ON:Z

    if-eqz v0, :cond_2

    .line 52
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v0

    new-array v0, v0, [Lcom/huawei/ims/HwImsServiceImpl;

    iput-object v0, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    .line 53
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v0

    .line 54
    .local v0, "numSubscriptions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    iget-object v2, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v3, Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {v3, v1, p0}, Lcom/huawei/ims/HwImsServiceImpl;-><init>(ILandroid/content/Context;)V

    aput-object v3, v2, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_0
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVTGlobals;->init(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/vt/ImsVTGlobals;->setHwImsServiceImpl([Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 67
    .end local v0    # "numSubscriptions":I
    :cond_1
    goto :goto_1

    .line 68
    :cond_2
    const-string v0, "HwImsService"

    const-string v1, "onCreate: not support VoLTE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_1
    const-string v0, "HwImsService"

    const-string v1, "HwImsService onCreate done"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 76
    const-string v0, "HwImsService"

    const-string v1, "Ims Service Destroyed Successfully..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-boolean v0, Lcom/huawei/ims/HwImsService;->HW_VOLTE_ON:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->deInit()V

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onDestroy()V

    .line 85
    return-void
.end method

.method public readyForFeatureCreation()V
    .locals 0

    .line 128
    return-void
.end method
