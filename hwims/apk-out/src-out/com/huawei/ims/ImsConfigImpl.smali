.class public Lcom/huawei/ims/ImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsConfigImpl$ImsConfigImplHandler;,
        Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    }
.end annotation


# static fields
.field protected static final CODE_IS_UNSUPPORT_MMI_CODE:I = 0xbb9

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field private static final EVENT_QUERY_VT_CALL_QUALITY:I = 0x2

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x3

.field private static final EVENT_SET_VT_CALL_QUALITY:I = 0x1

.field private static final IMS_CONFIG_SERVICE_NAME:Ljava/lang/String; = "ims_config"

.field private static final INVALID_VALUE:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConfigImpl"

.field private static volatile instance:Lcom/huawei/ims/ImsConfigImpl;

.field private static sHwImsConfigImpls:[Lcom/huawei/ims/HwImsConfigImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    .line 55
    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->sHwImsConfigImpls:[Lcom/huawei/ims/HwImsConfigImpl;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 62
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 63
    const-string v0, "ImsConfigImpl"

    const-string v1, "ImsConfigImpl::ImsConfigImpl()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/huawei/ims/ImsConfigImpl;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 32
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected static checkAccessPermission()V
    .registers 3

    .line 630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 631
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_15

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 635
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    :cond_15
    :goto_15
    return-void
.end method

.method private getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .registers 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 232
    if-nez p1, :cond_8

    .line 233
    const-string v0, "AsyncResult is null."

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_27

    .line 234
    :cond_8
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_13

    .line 235
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 236
    :cond_13
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v0, :cond_22

    .line 237
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 238
    .local v0, "featureAccessWrapper":Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    # getter for: Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mListener:Lcom/android/ims/ImsConfigListener;
    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->access$900(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)Lcom/android/ims/ImsConfigListener;

    move-result-object v1

    return-object v1

    .line 240
    .end local v0    # "featureAccessWrapper":Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    :cond_22
    const-string v0, "getImsConfigListener just skip."

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logi(Ljava/lang/String;)V

    .line 243
    :goto_27
    const-string v0, "getImsConfigListener returns null"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method static getInstance()Lcom/huawei/ims/ImsConfigImpl;
    .registers 3

    .line 72
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 74
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    if-nez v0, :cond_38

    .line 75
    const-class v0, Lcom/huawei/ims/ImsConfigImpl;

    monitor-enter v0

    .line 76
    :try_start_a
    sget-object v1, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    if-nez v1, :cond_33

    .line 77
    new-instance v1, Lcom/huawei/ims/ImsConfigImpl;

    invoke-direct {v1}, Lcom/huawei/ims/ImsConfigImpl;-><init>()V

    sput-object v1, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    .line 78
    const-string v1, "ImsConfigImpl"

    const-string v2, "add ims_config service"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "ims_config"

    sget-object v2, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsConfigImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 80
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/ims/HwImsConfigImpl;

    sput-object v1, Lcom/huawei/ims/ImsConfigImpl;->sHwImsConfigImpls:[Lcom/huawei/ims/HwImsConfigImpl;

    .line 82
    :cond_33
    monitor-exit v0

    goto :goto_3d

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_35

    throw v1

    .line 84
    :cond_38
    const-string v0, "instance is already exist!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logi(Ljava/lang/String;)V

    .line 87
    :goto_3d
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    return-object v0
.end method

.method private getOperationStatus(Z)I
    .registers 3
    .param p1, "isOperationSuccess"    # Z

    .line 227
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    .line 228
    :cond_4
    const/4 v0, 0x1

    .line 227
    :goto_5
    return v0
.end method

.method private static logUnexpectedMethodCall(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "() is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ERROR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 643
    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method private onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .registers 5
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 179
    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    .line 181
    :try_start_4
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 182
    .local v0, "status":I
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_15

    .line 183
    const/4 v1, -0x1

    goto :goto_1d

    .line 184
    :cond_15
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1d
    nop

    .line 185
    .local v1, "result":I
    invoke-interface {p1, v0, v1}, Lcom/android/ims/ImsConfigListener;->onGetVideoQuality(II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .end local v0    # "status":I
    .end local v1    # "result":I
    goto :goto_28

    .line 186
    :catch_22
    move-exception v0

    .line 187
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "onGetVideoCallQualityDone failed."

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 188
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_28
    goto :goto_2e

    .line 190
    :cond_29
    const-string v0, "onGetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 192
    :goto_2e
    return-void
.end method

.method private onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .registers 8
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 208
    if-eqz p1, :cond_34

    if-eqz p2, :cond_34

    .line 210
    :try_start_4
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 211
    .local v0, "status":I
    const/4 v1, 0x0

    .line 212
    .local v1, "wrapper":Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v2, :cond_1b

    .line 213
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    move-object v1, v2

    .line 215
    :cond_1b
    if-eqz v1, :cond_33

    .line 216
    # getter for: Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mFeature:I
    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->access$600(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v2

    # getter for: Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mNetwork:I
    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->access$700(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v3

    # getter for: Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->mValue:I
    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->access$800(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v4

    invoke-interface {p1, v2, v3, v4, v0}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2c} :catch_2d

    goto :goto_33

    .line 218
    .end local v0    # "status":I
    .end local v1    # "wrapper":Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    :catch_2d
    move-exception v0

    .line 219
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "onSetFeatureResponseDone failed."

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 220
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_33
    :goto_33
    goto :goto_39

    .line 222
    :cond_34
    const-string v0, "onSetFeatureResponseDone listener is not valid !!!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 224
    :goto_39
    return-void
.end method

.method private onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .registers 5
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 195
    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    .line 197
    :try_start_4
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 198
    .local v0, "status":I
    invoke-interface {p1, v0}, Lcom/android/ims/ImsConfigListener;->onSetVideoQuality(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    .end local v0    # "status":I
    goto :goto_19

    .line 199
    :catch_13
    move-exception v0

    .line 200
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "onSetVideoCallQualityDone failed."

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 201
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_19
    goto :goto_1f

    .line 203
    :cond_1a
    const-string v0, "onSetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 205
    :goto_1f
    return-void
.end method


# virtual methods
.method getBoolFromSp(Ljava/lang/String;Landroid/content/Context;Z)Z
    .registers 5
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isDefValue"    # Z

    .line 613
    const-string v0, "getBoolFromSp"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method getBsfAddrFromSim()Ljava/lang/String;
    .registers 2

    .line 573
    const-string v0, "getBsfAddrFromSim"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 574
    const/4 v0, 0x0

    return-object v0
.end method

.method getCallWaitingMode()I
    .registers 2

    .line 464
    const-string v0, "getCallWaitingMode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 465
    const/4 v0, -0x1

    return v0
.end method

.method getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;
    .registers 2

    .line 588
    const-string v0, "getCallWaitingSource"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfigInterface(Lcom/huawei/ims/HwImsServiceImpl;I)Lcom/huawei/ims/HwImsConfigImpl;
    .registers 6
    .param p1, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p2, "slotId"    # I

    .line 98
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 100
    const/4 v0, 0x0

    const-string v1, "ImsConfigImpl"

    if-eqz p1, :cond_51

    iget-object v2, p1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_d

    goto :goto_51

    .line 105
    :cond_d
    invoke-static {p2}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 106
    const-string v2, "getConfigInterface - slotId is invalid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v0

    .line 110
    :cond_19
    sget-object v2, Lcom/huawei/ims/ImsConfigImpl;->sHwImsConfigImpls:[Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v2, :cond_23

    .line 111
    const-string v2, "getConfigInterface - sHwImsConfigImpls is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v0

    .line 115
    :cond_23
    aget-object v0, v2, p2

    if-eqz v0, :cond_45

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigInterface - sHwImsConfigImpls [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is already exist!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->sHwImsConfigImpls:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    return-object v0

    .line 120
    :cond_45
    new-instance v0, Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {v0, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;-><init>(Lcom/huawei/ims/HwImsServiceImpl;I)V

    aput-object v0, v2, p2

    .line 122
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->sHwImsConfigImpls:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    return-object v0

    .line 101
    :cond_51
    :goto_51
    const-string v2, "getConfigInterface - hwImsServiceImpl or context is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v0
.end method

.method getContentTypeMode()I
    .registers 2

    .line 409
    const-string v0, "getContentTypeMode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method getDefaultNoReplyTimer()I
    .registers 2

    .line 404
    const-string v0, "getDefaultNoReplyTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 405
    const/4 v0, -0x1

    return v0
.end method

.method getImpiFromSim()Ljava/lang/String;
    .registers 2

    .line 568
    const-string v0, "getImpiFromSim"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x0

    return-object v0
.end method

.method getImpuFromSim()Ljava/lang/String;
    .registers 2

    .line 563
    const-string v0, "getImpuFromSim"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsConfig(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "configKey"    # Ljava/lang/String;

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method getImsi()Ljava/lang/String;
    .registers 2

    .line 524
    const-string v0, "isMissedCallTipsDelay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 525
    const/4 v0, 0x0

    return-object v0
.end method

.method getMissedCallTipsDelayTimer()I
    .registers 2

    .line 354
    const-string v0, "getMissedCallTipsDelayTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 355
    const/4 v0, -0x1

    return v0
.end method

.method getMissedCallTipsRingTimer()I
    .registers 2

    .line 349
    const-string v0, "getMissedCallTipsRingTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 350
    const/4 v0, -0x1

    return v0
.end method

.method getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 603
    const-string v0, "getSharedPreferences"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtBsfPort()I
    .registers 2

    .line 474
    const-string v0, "getUtBsfPort"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 475
    const/4 v0, -0x1

    return v0
.end method

.method getUtBsfSrvAddr()Ljava/lang/String;
    .registers 2

    .line 489
    const-string v0, "getUtBsfSrvAddr"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtGbaType()I
    .registers 2

    .line 479
    const-string v0, "getUtGbaType"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 480
    const/4 v0, -0x1

    return v0
.end method

.method declared-synchronized getUtIMPUFromNetwork()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 504
    :try_start_1
    const-string v0, "getUtIMPUFromNetwork"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 505
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 503
    .end local p0    # "this":Lcom/huawei/ims/ImsConfigImpl;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getUtImpi()Ljava/lang/String;
    .registers 2

    .line 514
    const-string v0, "getUtImpi"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtImpu(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 509
    const-string v0, "getUtImpu"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtNafPort()I
    .registers 2

    .line 469
    const-string v0, "getUtNafPort"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 470
    const/4 v0, -0x1

    return v0
.end method

.method getUtNafSrvAddr()Ljava/lang/String;
    .registers 2

    .line 484
    const-string v0, "getUtNafSrvAddr"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtRetryInterval(I)I
    .registers 3
    .param p1, "index"    # I

    .line 598
    const-string v0, "getUtRetryInterval"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 599
    const/4 v0, -0x1

    return v0
.end method

.method getUtRetryMaxCounts()I
    .registers 2

    .line 593
    const-string v0, "getUtRetryMaxCounts"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 594
    const/4 v0, -0x1

    return v0
.end method

.method getUtUseApn()I
    .registers 2

    .line 394
    const-string v0, "getUtUseApn"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 395
    const/4 v0, -0x1

    return v0
.end method

.method getUtX3gppIntendId()Ljava/lang/String;
    .registers 2

    .line 519
    const-string v0, "getUtX3gppIntendId"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtXcapRootUri()Ljava/lang/String;
    .registers 2

    .line 494
    const-string v0, "getUtXcapRootUri"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method isCallWaitingSyncToCs()Z
    .registers 2

    .line 583
    const-string v0, "isCallWaitingSyncToCs"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method isCallWaitingSyncToImsSdk()Z
    .registers 2

    .line 578
    const-string v0, "isCallWaitingSyncToImsSdk"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method isCardMccMncPreferToUseUt(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cardMccMnc"    # Ljava/lang/String;

    .line 379
    const-string v0, "isCardMccMncPreferToUseUt"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method isCardTypePreferToUseUt(I)Z
    .registers 3
    .param p1, "cardType"    # I

    .line 374
    const-string v0, "isCardTypePreferToUseUt"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method isCfnrcChangeWithCfnl()Z
    .registers 2

    .line 399
    const-string v0, "isCfnrcChangeWithCfnl"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method isCheckServiceWhenIncomingCall()Z
    .registers 2

    .line 359
    const-string v0, "isCheckServiceWhenIncomingCall"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method isHangUpWhenLostNet()Z
    .registers 2

    .line 622
    const-string v0, "isHangUpWhenLostNet"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 623
    const/4 v0, 0x0

    return v0
.end method

.method public isHwCustCode(I)Z
    .registers 3
    .param p1, "code"    # I

    .line 318
    const/16 v0, 0xbb9

    if-eq p1, v0, :cond_c

    .line 320
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVowifiPropOn()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 321
    const/4 v0, 0x0

    return v0

    .line 325
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method isImpuConfigured()Z
    .registers 2

    .line 533
    const-string v0, "isImpuConfigured"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method isImsSsBeUsed()Z
    .registers 2

    .line 364
    const-string v0, "isImsSsBeUsed"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method isImsStateFollowVoiceDomain()Z
    .registers 2

    .line 414
    const-string v0, "isImsStateFollowVoiceDomain"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallDisplay()Z
    .registers 2

    .line 339
    const-string v0, "isMissedCallDisplay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTips()Z
    .registers 2

    .line 419
    const-string v0, "isMissedCallTips"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTipsDelay()Z
    .registers 2

    .line 344
    const-string v0, "isMissedCallTipsDelay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTipsInternal()Z
    .registers 2

    .line 334
    const-string v0, "isMissedCallTipsInternal"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method isSsForbidFallbackCs(I)Z
    .registers 3
    .param p1, "ssType"    # I

    .line 389
    const-string v0, "isSsForbidFallbackCs"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method isSsUseCsOnly(I)Z
    .registers 3
    .param p1, "ssType"    # I

    .line 384
    const-string v0, "isSsUseCsOnly"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method isUnSupportMmiCode(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mmiCode"    # Ljava/lang/String;

    .line 329
    const-string v0, "isUnSupportMmiCode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method isUtBsfUseHttps()Z
    .registers 2

    .line 429
    const-string v0, "isUtBsfUseHttps"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method isUtCsBeUsed()Z
    .registers 2

    .line 434
    const-string v0, "isUtCsBeUsed"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method isUtForbiddenWhenVolteSwitchOff()Z
    .registers 2

    .line 369
    const-string v0, "isUtForbiddenWhenVolteSwitchOff"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method isUtKsnafEncodedByBase64()Z
    .registers 2

    .line 459
    const-string v0, "isUtKsnafEncodedByBase64"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method isUtNafUseHttps()Z
    .registers 2

    .line 424
    const-string v0, "isUtNafUseHttps"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method isUtOpenHrsLog()Z
    .registers 2

    .line 449
    const-string v0, "isUtOpenHrsLog"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseNodeSelector()Z
    .registers 2

    .line 439
    const-string v0, "isUtUseNodeSelector"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseTmpi()Z
    .registers 2

    .line 454
    const-string v0, "isUtUseTmpi"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseXcapNameSpace()Z
    .registers 2

    .line 444
    const-string v0, "isUtUseXcapNameSpace"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransact, code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz p2, :cond_5e

    if-nez p3, :cond_1b

    goto :goto_5e

    .line 283
    :cond_1b
    const/4 v0, 0x0

    .line 285
    .local v0, "isTransactOk":Z
    const/16 v2, 0xbb9

    if-eq p1, v2, :cond_21

    goto :goto_5d

    .line 288
    :cond_21
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 290
    const-string v2, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .local v2, "slotId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTransact, slotId read from data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-boolean v3, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v3, :cond_4b

    .line 295
    const-string v3, "onTransact, single ims, set subId to 0"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v2, 0x0

    .line 299
    :cond_4b
    sget-object v1, Lcom/huawei/ims/ImsConfigImpl;->sHwImsConfigImpls:[Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v1, :cond_5d

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 300
    sget-object v1, Lcom/huawei/ims/ImsConfigImpl;->sHwImsConfigImpls:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/huawei/ims/HwImsConfigImpl;->processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 301
    const/4 v0, 0x1

    .line 308
    .end local v2    # "slotId":I
    :cond_5d
    :goto_5d
    return v0

    .line 281
    .end local v0    # "isTransactOk":Z
    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    return v0
.end method

.method setBoolToSp(Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 5
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "isSpValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 618
    const-string v0, "setBoolToSp"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method setBsfAddrFromSim(Ljava/lang/String;)V
    .registers 3
    .param p1, "bsfAddr"    # Ljava/lang/String;

    .line 550
    const-string v0, "setBsfAddrFromSim"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method setCurrentImsi(Ljava/lang/String;)V
    .registers 3
    .param p1, "imsi"    # Ljava/lang/String;

    .line 538
    const-string v0, "setCurrentImsi"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .registers 5
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 256
    return-void
.end method

.method setImpiFromSim(Ljava/lang/String;)V
    .registers 3
    .param p1, "impi"    # Ljava/lang/String;

    .line 546
    const-string v0, "setImpiFromSim"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public setImsConfig(Ljava/lang/String;Landroid/os/PersistableBundle;)I
    .registers 4
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "configValue"    # Landroid/os/PersistableBundle;

    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method setImsi(Ljava/lang/String;)V
    .registers 3
    .param p1, "imsi"    # Ljava/lang/String;

    .line 529
    const-string v0, "setIMSI"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 530
    return-void
.end method

.method setNafAddrFromSim(Ljava/lang/String;)V
    .registers 3
    .param p1, "nsfAddr"    # Ljava/lang/String;

    .line 554
    const-string v0, "setNafAddrFromSim"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 608
    const-string v0, "setSharedPreferences"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method setSpliceMncMcc(Ljava/lang/String;)V
    .registers 3
    .param p1, "spliceMncMcc"    # Ljava/lang/String;

    .line 542
    const-string v0, "setSpliceMncMcc"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method spliceMncMcc()Ljava/lang/String;
    .registers 2

    .line 558
    const-string v0, "spliceMncMcc"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x0

    return-object v0
.end method
