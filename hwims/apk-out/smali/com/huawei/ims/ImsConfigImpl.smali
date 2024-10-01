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

.field private static final DEBUG:Z = false

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field private static final EVENT_QUERY_VT_CALL_QUALITY:I = 0x2

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x3

.field private static final EVENT_SET_VT_CALL_QUALITY:I = 0x1

.field private static final IMS_CONFIG_SERVICE_NAME:Ljava/lang/String; = "ims_config"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConfigImpl"

.field private static volatile instance:Lcom/huawei/ims/ImsConfigImpl;

.field private static mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->mLock:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    .line 44
    sput-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 56
    const-string v0, "ImsConfigImpl"

    const-string v1, "ImsConfigImpl::ImsConfigImpl()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 30
    invoke-static {p0}, Lcom/huawei/ims/ImsConfigImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsConfigImpl;Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 30
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsConfigImpl;->getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/ims/ImsConfigImpl;Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsConfigImpl;
    .param p1, "x1"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "x2"    # Landroid/os/AsyncResult;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 30
    invoke-static {p0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected static checkAccessPermission()V
    .locals 3

    .line 581
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 582
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_1
    :goto_0
    return-void
.end method

.method private getImsConfigListener(Landroid/os/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 205
    if-nez p1, :cond_0

    .line 206
    const-string v0, "AsyncResult is null."

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 209
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 214
    :cond_2
    :goto_0
    const-string v0, "getImsConfigListener returns null"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method static getInstance()Lcom/huawei/ims/ImsConfigImpl;
    .locals 3

    .line 63
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 65
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/huawei/ims/ImsConfigImpl;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/huawei/ims/ImsConfigImpl;

    invoke-direct {v1}, Lcom/huawei/ims/ImsConfigImpl;-><init>()V

    sput-object v1, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    .line 72
    const-string v1, "ImsConfigImpl"

    const-string v2, "add ims_config service"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v1, "ims_config"

    sget-object v2, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsConfigImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 74
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/ims/HwImsConfigImpl;

    sput-object v1, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    .line 76
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 78
    :cond_1
    const-string v0, "instance is already exist!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logd(Ljava/lang/String;)V

    .line 81
    :goto_0
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->instance:Lcom/huawei/ims/ImsConfigImpl;

    return-object v0
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .line 200
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_0
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0
.end method

.method private static logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 590
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

    .line 591
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 594
    const-string v0, "ImsConfigImpl"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 598
    const-string v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-void
.end method

.method private onGetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 157
    if-eqz p1, :cond_2

    .line 159
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 160
    .local v0, "status":I
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 161
    const/4 v1, -0x1

    goto :goto_1

    .line 162
    :cond_1
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 163
    .local v1, "result":I
    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/android/ims/ImsConfigListener;->onGetVideoQuality(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    .end local v1    # "result":I
    goto :goto_2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "onGetVideoCallQualityDone failed. "

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 166
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_3

    .line 168
    :cond_2
    const-string v0, "onGetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 170
    :goto_3
    return-void
.end method

.method private onSetFeatureResponseDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 186
    if-eqz p1, :cond_1

    .line 188
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 189
    .local v0, "status":I
    iget-object v1, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 190
    .local v1, "f":Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->access$600(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v2

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->access$700(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v3

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;->access$800(Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;)I

    move-result v4

    invoke-interface {p1, v2, v3, v4, v0}, Lcom/android/ims/ImsConfigListener;->onSetFeatureResponse(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    .end local v1    # "f":Lcom/huawei/ims/ImsConfigImpl$FeatureAccessWrapper;
    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "onSetFeatureResponseDone failed."

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 193
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 195
    :cond_1
    const-string v0, "onSetFeatureResponseDone listener is not valid !!!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 197
    :goto_2
    return-void
.end method

.method private onSetVideoCallQualityDone(Lcom/android/ims/ImsConfigListener;Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "imsConfigListener"    # Lcom/android/ims/ImsConfigListener;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 173
    if-eqz p1, :cond_1

    .line 175
    :try_start_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v0

    .line 176
    .local v0, "status":I
    invoke-interface {p1, v0}, Lcom/android/ims/ImsConfigListener;->onSetVideoQuality(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "status":I
    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "onSetVideoCallQualityDone failed."

    invoke-static {v1}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 179
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_2

    .line 181
    :cond_1
    const-string v0, "onSetVideoCallQualityDone listener is not valid !!!"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->loge(Ljava/lang/String;)V

    .line 183
    :goto_2
    return-void
.end method


# virtual methods
.method getBoolFromSP(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "defValue"    # Z

    .line 565
    const-string v0, "getBoolFromSP"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method getBsfAddrFromSIM()Ljava/lang/String;
    .locals 1

    .line 525
    const-string v0, "getBsfAddrFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method getCallWaitingMode()I
    .locals 1

    .line 414
    const-string v0, "getCallWaitingMode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 415
    const/4 v0, -0x1

    return v0
.end method

.method getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CALL_WAITING_SOURCE;
    .locals 1

    .line 540
    const-string v0, "getCallWaitingSource"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 541
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfigInterface(Lcom/huawei/ims/HwImsServiceImpl;I)Lcom/huawei/ims/HwImsConfigImpl;
    .locals 3
    .param p1, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p2, "subId"    # I

    .line 88
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 90
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p2}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    const-string v1, "ImsConfigImpl"

    const-string v2, "getConfigInterface - subId is invalid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v0

    .line 100
    :cond_1
    sget-object v1, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v1, :cond_2

    .line 101
    const-string v1, "ImsConfigImpl"

    const-string v2, "getConfigInterface - mHwImsConfigImpl is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v0

    .line 105
    :cond_2
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    if-eqz v0, :cond_3

    .line 106
    const-string v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigInterface - mHwImsConfigImpl [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is already exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    return-object v0

    .line 110
    :cond_3
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    new-instance v1, Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {v1, p1, p2}, Lcom/huawei/ims/HwImsConfigImpl;-><init>(Lcom/huawei/ims/HwImsServiceImpl;I)V

    aput-object v1, v0, p2

    .line 112
    sget-object v0, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v0, v0, p2

    return-object v0

    .line 91
    :cond_4
    :goto_0
    const-string v1, "ImsConfigImpl"

    const-string v2, "getConfigInterface - hwImsServiceImpl or context is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v0
.end method

.method getContentTypeMode()I
    .locals 1

    .line 359
    const-string v0, "getContentTypeMode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method getDefaultNoReplyTimer()I
    .locals 1

    .line 354
    const-string v0, "getDefaultNoReplyTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 355
    const/4 v0, -0x1

    return v0
.end method

.method getIMSI()Ljava/lang/String;
    .locals 1

    .line 476
    const-string v0, "isMissedCallTipsDelay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method getImpiFromSIM()Ljava/lang/String;
    .locals 1

    .line 520
    const-string v0, "getImpiFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 521
    const/4 v0, 0x0

    return-object v0
.end method

.method getImpuFromSIM()Ljava/lang/String;
    .locals 1

    .line 515
    const-string v0, "getImpuFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsConfig(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method getMissedCallTipsDelayTimer()I
    .locals 1

    .line 304
    const-string v0, "getMissedCallTipsDelayTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 305
    const/4 v0, -0x1

    return v0
.end method

.method getMissedCallTipsRingTimer()I
    .locals 1

    .line 299
    const-string v0, "getMissedCallTipsRingTimer"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 300
    const/4 v0, -0x1

    return v0
.end method

.method getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 555
    const-string v0, "getSharedPreferences"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtBsfPort()I
    .locals 1

    .line 424
    const-string v0, "getUtBsfPort"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 425
    const/4 v0, -0x1

    return v0
.end method

.method getUtBsfSrvAddr()Ljava/lang/String;
    .locals 1

    .line 439
    const-string v0, "getUtBsfSrvAddr"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtGbaType()I
    .locals 1

    .line 429
    const-string v0, "getUtGbaType"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 430
    const/4 v0, -0x1

    return v0
.end method

.method getUtIMPI()Ljava/lang/String;
    .locals 1

    .line 466
    const-string v0, "getUtIMPI"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtIMPU(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 461
    const-string v0, "getUtIMPU"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method declared-synchronized getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 455
    :try_start_0
    const-string v0, "getUtIMPUFromNetwork"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/ims/ImsConfigImpl;
    throw v0
.end method

.method getUtNafPort()I
    .locals 1

    .line 419
    const-string v0, "getUtNafPort"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 420
    const/4 v0, -0x1

    return v0
.end method

.method getUtNafSrvAddr()Ljava/lang/String;
    .locals 1

    .line 434
    const-string v0, "getUtNafSrvAddr"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtRetryInterval(I)I
    .locals 1
    .param p1, "index"    # I

    .line 550
    const-string v0, "getUtRetryInterval"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 551
    const/4 v0, -0x1

    return v0
.end method

.method getUtRetryMaxCounts()I
    .locals 1

    .line 545
    const-string v0, "getUtRetryMaxCounts"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 546
    const/4 v0, -0x1

    return v0
.end method

.method getUtUseApn()I
    .locals 1

    .line 344
    const-string v0, "getUtUseApn"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 345
    const/4 v0, -0x1

    return v0
.end method

.method getUtX3gppIntendId()Ljava/lang/String;
    .locals 1

    .line 471
    const-string v0, "getUtX3gppIntendId"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method getUtXcapRootUri()Ljava/lang/String;
    .locals 1

    .line 445
    const-string v0, "getUtXcapRootUri"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method isCFNRcChangeWithCFNL()Z
    .locals 1

    .line 349
    const-string v0, "isCFNRcChangeWithCFNL"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method isCallWaitingSyncToCs()Z
    .locals 1

    .line 535
    const-string v0, "isCallWaitingSyncToCs"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method isCallWaitingSyncToImsSdk()Z
    .locals 1

    .line 530
    const-string v0, "isCallWaitingSyncToImsSdk"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method isCardMccMncPreferToUseUT(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cardMccMnc"    # Ljava/lang/String;

    .line 329
    const-string v0, "isCardMccMncPreferToUseUT"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method isCardTypePreferToUseUT(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .line 324
    const-string v0, "isCardTypePreferToUseUT"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method isCheckServiceWhenIncomingCall()Z
    .locals 1

    .line 309
    const-string v0, "isCheckServiceWhenIncomingCall"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method isHangUpWhenLostNet()Z
    .locals 1

    .line 575
    const-string v0, "isHangUpWhenLostNet"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public isHwCustCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 268
    const/16 v0, 0xbb9

    if-eq p1, v0, :cond_0

    .line 270
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVowifiPropOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    return v0

    .line 275
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method isIMPUConfigured()Z
    .locals 1

    .line 485
    const-string v0, "isIMPUConfigured"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method isImsSsBeUsed()Z
    .locals 1

    .line 314
    const-string v0, "isImsSsBeUsed"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method isImsStateFollowVoiceDomain()Z
    .locals 1

    .line 364
    const-string v0, "isImsStateFollowVoiceDomain"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallDisplay()Z
    .locals 1

    .line 289
    const-string v0, "isMissedCallDisplay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTips()Z
    .locals 1

    .line 369
    const-string v0, "isMissedCallTips"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTipsDelay()Z
    .locals 1

    .line 294
    const-string v0, "isMissedCallTipsDelay"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method isMissedCallTipsInternal()Z
    .locals 1

    .line 284
    const-string v0, "isMissedCallTipsInternal"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method isSSForbidFallbackCS(I)Z
    .locals 1
    .param p1, "ssType"    # I

    .line 339
    const-string v0, "isSSForbidFallbackCS"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method isSSUseCsOnly(I)Z
    .locals 1
    .param p1, "ssType"    # I

    .line 334
    const-string v0, "isSSUseCsOnly"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method isUnSupportMMICode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "MMIcode"    # Ljava/lang/String;

    .line 279
    const-string v0, "isUnSupportMMICode"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method isUtBsfUseHttps()Z
    .locals 1

    .line 379
    const-string v0, "isUtBsfUseHttps"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method isUtCSBeUsed()Z
    .locals 1

    .line 384
    const-string v0, "isUtCSBeUsed"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method isUtForbiddenWhenVolteSwitchOff()Z
    .locals 1

    .line 319
    const-string v0, "isUtForbiddenWhenVolteSwitchOff"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method isUtKsnafEncodedByBase64()Z
    .locals 1

    .line 409
    const-string v0, "isUtKsnafEncodedByBase64"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method isUtNafUseHttps()Z
    .locals 1

    .line 374
    const-string v0, "isUtNafUseHttps"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method isUtOpenHrsLog()Z
    .locals 1

    .line 399
    const-string v0, "isUtOpenHrsLog"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseNodeSelector()Z
    .locals 1

    .line 389
    const-string v0, "isUtUseNodeSelector"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseTmpi()Z
    .locals 1

    .line 404
    const-string v0, "isUtUseTmpi"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method isUtUseXcapNameSpace()Z
    .locals 1

    .line 394
    const-string v0, "isUtUseXcapNameSpace"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    const-string v0, "ImsConfigImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransact, code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "result":Z
    const/16 v1, 0xbb9

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {}, Lcom/huawei/ims/ImsConfigImpl;->checkAccessPermission()V

    .line 246
    const-string v1, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .local v1, "subId":I
    const-string v2, "ImsConfigImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTransact , subId read from data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-boolean v2, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v2, :cond_1

    .line 251
    const-string v2, "ImsConfigImpl"

    const-string v3, "onTransact, single ims, set subId to 0"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v1, 0x0

    .line 255
    :cond_1
    sget-object v2, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    sget-object v2, Lcom/huawei/ims/ImsConfigImpl;->mHwImsConfigImpl:[Lcom/huawei/ims/HwImsConfigImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/huawei/ims/HwImsConfigImpl;->processOnTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 257
    const/4 v0, 0x1

    .line 263
    .end local v1    # "subId":I
    :cond_2
    :goto_0
    return v0
.end method

.method setBoolToSP(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 570
    const-string v0, "setBoolToSP"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method setBsfAddrFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "bsfAddr"    # Ljava/lang/String;

    .line 502
    const-string v0, "setBsfAddrFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method setCurrentImsi(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .line 490
    const-string v0, "setCurrentImsi"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 0
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;

    .line 221
    return-void
.end method

.method setIMSI(Ljava/lang/String;)V
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .line 481
    const-string v0, "setIMSI"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method setImpiFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "impi"    # Ljava/lang/String;

    .line 498
    const-string v0, "setImpiFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public setImsConfig(Ljava/lang/String;Landroid/os/PersistableBundle;)I
    .locals 1
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "configValue"    # Landroid/os/PersistableBundle;

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method setNafAddrFromSIM(Ljava/lang/String;)V
    .locals 1
    .param p1, "nsfAddr"    # Ljava/lang/String;

    .line 506
    const-string v0, "setNafAddrFromSIM"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "spKey"    # Ljava/lang/String;
    .param p2, "spValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 560
    const-string v0, "setSharedPreferences"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method setSpliceMncMcc(Ljava/lang/String;)V
    .locals 1
    .param p1, "spliceMncMcc"    # Ljava/lang/String;

    .line 494
    const-string v0, "setSpliceMncMcc"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method spliceMncMcc()Ljava/lang/String;
    .locals 1

    .line 510
    const-string v0, "spliceMncMcc"

    invoke-static {v0}, Lcom/huawei/ims/ImsConfigImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 511
    const/4 v0, 0x0

    return-object v0
.end method
