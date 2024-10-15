.class public Lcom/huawei/ims/HwImsService;
.super Landroid/telephony/ims/ImsService;
.source "HwImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_VONR_SWITCH_DB:I = 0x0

.field private static final DUAL_IMS_MAX_SUBSCRIPTIONS:I = 0x2

.field private static final IS_HW_VOLTE_ON:Z

.field private static final IS_JP:Z

.field private static final IS_SUPPORT_CMCC_ENCRYPT:Z

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsService"

.field private static final SINGLE_IMS_MAX_SUBSCRIPTIONS:I = 0x1

.field private static final SLOT_0:I = 0x0

.field private static final UPDATE_SIM_IMSI_INFO_SETTINGS_0:Ljava/lang/String; = "update_sim_imsi_info_settings_0"

.field private static final UPDATE_SIM_IMSI_INFO_SETTINGS_1:Ljava/lang/String; = "update_sim_imsi_info_settings_1"

.field private static final VONR_SWITCH_DB:Ljava/lang/String; = "vonr_hd_call"


# instance fields
.field private mHwImsServiceImpls:[Lcom/huawei/ims/HwImsServiceImpl;

.field private mVoNrSwitchObserver:Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const/4 v0, 0x0

    const-string v1, "ro.config.hw_volte_on"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/HwImsService;->IS_HW_VOLTE_ON:Z

    .line 42
    nop

    .line 43
    const-string v1, "ro.config.cmcc.volteencrypt"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsService;->IS_SUPPORT_CMCC_ENCRYPT:Z

    .line 57
    const-string v0, "ro.hw.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsService;->IS_JP:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsService;->mVoNrSwitchObserver:Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/HwImsService;)[Lcom/huawei/ims/HwImsServiceImpl;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsService;

    .line 31
    iget-object v0, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpls:[Lcom/huawei/ims/HwImsServiceImpl;

    return-object v0
.end method

.method public static getNumSubscriptions()I
    .registers 1

    .line 70
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_6

    .line 71
    const/4 v0, 0x2

    return v0

    .line 74
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private getRealSlot(I)I
    .registers 4
    .param p1, "slotId"    # I

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "serviceSubIndex":I
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_6

    .line 226
    move v0, p1

    .line 228
    :cond_6
    return v0
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .line 239
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    move v1, v2

    :cond_f
    return v1
.end method

.method private setDbValue(II)V
    .registers 5
    .param p1, "slotId"    # I
    .param p2, "value"    # I

    .line 250
    if-nez p1, :cond_c

    .line 251
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_sim_imsi_info_settings_0"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_15

    .line 253
    :cond_c
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "update_sim_imsi_info_settings_1"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    :goto_15
    return-void
.end method


# virtual methods
.method public createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .registers 7
    .param p1, "slotId"    # I

    .line 165
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "HwImsService"

    if-nez v0, :cond_1e

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMmTelFeature: Invalid slotId, slotId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_1e
    const/4 v0, 0x0

    .line 174
    .local v0, "serviceSubIndex":I
    sget-boolean v2, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v2, :cond_24

    .line 175
    move v0, p1

    .line 178
    :cond_24
    new-instance v2, Lcom/huawei/ims/feature/HwMmTelFeature;

    iget-object v3, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpls:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v3, v3, v0

    invoke-direct {v2, p0, p1, v3}, Lcom/huawei/ims/feature/HwMmTelFeature;-><init>(Landroid/content/Context;ILcom/huawei/ims/HwImsServiceImpl;)V

    .line 181
    .local v2, "hwMmTelFeature":Landroid/telephony/ims/feature/MmTelFeature;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateMMTelImsFeature:hwMmTelFeature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " serviceSubIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v2
.end method

.method public disableIms(I)V
    .registers 2
    .param p1, "slotId"    # I

    .line 197
    return-void
.end method

.method public enableIms(I)V
    .registers 2
    .param p1, "slotId"    # I

    .line 193
    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .registers 4
    .param p1, "slotId"    # I

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig: isValidSlotId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSlotId(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "HwImsService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_2a
    iget-object v0, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpls:[Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsService;->getRealSlot(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getConfig()Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .registers 4
    .param p1, "slotId"    # I

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistration: isValidSlotId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSlotId(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "HwImsService"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_2a
    iget-object v0, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpls:[Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsService;->getRealSlot(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsRegistrationImpl()Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 146
    sget-boolean v0, Lcom/huawei/ims/HwImsService;->IS_HW_VOLTE_ON:Z

    const/4 v1, 0x0

    const-string v2, "HwImsService"

    if-nez v0, :cond_d

    .line 147
    const-string v0, "onBind: not support VoLTE, renturn null"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v1

    .line 151
    :cond_d
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_2b

    .line 155
    :cond_16
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.telephony.ims.ImsService"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 156
    const-string v0, "HwImsService Bound."

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/huawei/ims/HwImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 159
    :cond_2a
    return-object v1

    .line 152
    :cond_2b
    :goto_2b
    const-string v0, "onBind: intent or intent.getAction() is null"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v1
.end method

.method public onCreate()V
    .registers 7

    .line 81
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onCreate()V

    .line 82
    const-string v0, "HwImsService"

    const-string v1, "HwImsService created!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-boolean v1, Lcom/huawei/ims/HwImsService;->IS_HW_VOLTE_ON:Z

    if-eqz v1, :cond_9d

    .line 85
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/ims/HwImsServiceImpl;

    iput-object v1, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpls:[Lcom/huawei/ims/HwImsServiceImpl;

    .line 86
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v1

    .line 87
    .local v1, "numSubscriptions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_29

    .line 89
    iget-object v3, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpls:[Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {v4, v2, p0}, Lcom/huawei/ims/HwImsServiceImpl;-><init>(ILandroid/content/Context;)V

    aput-object v4, v3, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 92
    .end local v2    # "i":I
    :cond_29
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtSupported()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 93
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->init(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtFlowInfo()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 96
    iget-object v2, p0, Lcom/huawei/ims/HwImsService;->mHwImsServiceImpls:[Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/vt/ImsVtGlobals;->setHwImsServiceImpl([Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 100
    :cond_3d
    sget-boolean v2, Lcom/huawei/ims/HwImsService;->IS_SUPPORT_CMCC_ENCRYPT:Z

    if-eqz v2, :cond_48

    .line 101
    invoke-static {p0}, Lcom/huawei/ims/HemihuaLoaderManager;->getInstance(Landroid/content/Context;)Lcom/huawei/ims/HemihuaLoaderManager;

    move-result-object v2

    .line 102
    .local v2, "mLoaderManager":Lcom/huawei/ims/HemihuaLoaderManager;
    invoke-virtual {v2}, Lcom/huawei/ims/HemihuaLoaderManager;->startHemihuaLoader()V

    .line 104
    .end local v2    # "mLoaderManager":Lcom/huawei/ims/HemihuaLoaderManager;
    :cond_48
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/HwTelephonyManager;->isNrSupported()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6e

    .line 105
    new-instance v2, Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;-><init>(Lcom/huawei/ims/HwImsService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsService;->mVoNrSwitchObserver:Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;

    .line 106
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "vonr_hd_call"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/ims/HwImsService;->mVoNrSwitchObserver:Lcom/huawei/ims/HwImsService$VoNrSwitchObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 109
    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: isDeviceProvisioned IS_JP "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/huawei/ims/HwImsService;->IS_JP:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-boolean v2, Lcom/huawei/ims/HwImsService;->IS_JP:Z

    if-eqz v2, :cond_9c

    invoke-direct {p0}, Lcom/huawei/ims/HwImsService;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_9c

    .line 111
    const-string v2, "onCreate: isDeviceProvisioned"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_94
    if-ge v2, v1, :cond_9c

    .line 113
    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsService;->setDbValue(II)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 116
    .end local v1    # "numSubscriptions":I
    .end local v2    # "i":I
    :cond_9c
    goto :goto_a2

    .line 117
    :cond_9d
    const-string v1, "onCreate: not support VoLTE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_a2
    const-string v1, "HwImsService onCreate done"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 126
    const-string v0, "HwImsService"

    const-string v1, "Ims Service Destroyed Successfully..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-boolean v0, Lcom/huawei/ims/HwImsService;->IS_HW_VOLTE_ON:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 130
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->deInit()V

    .line 134
    :cond_14
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onDestroy()V

    .line 135
    return-void
.end method

.method public readyForFeatureCreation()V
    .registers 1

    .line 189
    return-void
.end method
