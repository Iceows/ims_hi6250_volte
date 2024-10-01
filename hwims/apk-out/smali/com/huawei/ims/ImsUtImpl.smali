.class public Lcom/huawei/ims/ImsUtImpl;
.super Landroid/telephony/ims/stub/ImsUtImplBase;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;
    }
.end annotation


# static fields
.field private static final ARRAY_INDEX_ONE:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DYADIC_ARRAY:[[Ljava/lang/String;

.field private static final IMS_UT_SERVICE_NAME:Ljava/lang/String; = "ims_ut"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtImpl"

.field private static final UT_INVALID:I = -0x1

.field private static volatile instance:Lcom/huawei/ims/ImsUtImpl;

.field private static mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field mHwInnerService:Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    .line 37
    sput-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "persist.ut.forbiddenWVSO"

    const-string v2, "utForbiddenWhenVolteSwitchOff"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "persist.ut.bearType"

    const-string v2, "utBearType"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "persist.ut.nafsrvaddr"

    const-string v2, "utNafSrvAddr"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "persist.ut.nafport"

    const-string v2, "utNafPort"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "persist.ut.bsfsrvaddr"

    const-string v2, "utBsfSrvAddr"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "persist.ut.bsfport"

    const-string v2, "utBsfPort"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "persist.ut.ssTypeUseCsOnly"

    const-string v2, "ssTypeUseCsOnly"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "persist.ims.cwlocalset"

    const-string v2, "callWaitingMode"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "persist.ut.xcapRootUri"

    const-string v2, "utXcapRootUri"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "persist.ut.preferToUseUT"

    const-string v2, "preferToUseUT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 447
    new-instance v0, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;

    invoke-direct {v0, p0, p0}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;-><init>(Lcom/huawei/ims/ImsUtImpl;Lcom/huawei/ims/ImsUtImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsUtImpl;->mHwInnerService:Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;

    .line 62
    const-string v0, "ImsUtImpl"

    const-string v1, "ImsUtImpl::ImsUtImpl()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsUtImpl;I)Lcom/huawei/ims/HwImsUtImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsUtImpl;
    .param p1, "x1"    # I

    .line 26
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsUtImpl;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method protected static checkAccessPermission()V
    .locals 3

    .line 359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 360
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_1
    :goto_0
    return-void
.end method

.method private getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;
    .locals 4
    .param p1, "subId"    # I

    .line 407
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 408
    const-string v0, "ImsUtImpl"

    const-string v2, "getHwImsUtImpl: subId is invalid"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-object v1

    .line 412
    :cond_0
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    if-nez v0, :cond_1

    .line 413
    const-string v0, "ImsUtImpl"

    const-string v2, "getHwImsUtImpl: mHwImsUtImpl is null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object v1

    .line 417
    :cond_1
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v0, p1

    .line 418
    .local v0, "hwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    if-nez v0, :cond_2

    .line 419
    const-string v1, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHwImsUtImpl: HwImsUtImpl["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_2
    return-object v0
.end method

.method static getInstance()Lcom/huawei/ims/ImsUtImpl;
    .locals 3

    .line 69
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 71
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/huawei/ims/ImsUtImpl;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/huawei/ims/ImsUtImpl;

    invoke-direct {v1}, Lcom/huawei/ims/ImsUtImpl;-><init>()V

    sput-object v1, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    .line 78
    const-string v1, "ImsUtImpl"

    const-string v2, "add ims_ut service"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "ims_ut"

    sget-object v2, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsUtImpl;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 80
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/ims/HwImsUtImpl;

    sput-object v1, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    .line 82
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 84
    :cond_1
    const-string v0, "ImsUtImpl"

    const-string v1, "instance is already exist!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->instance:Lcom/huawei/ims/ImsUtImpl;

    return-object v0
.end method

.method private logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "() is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsUtImpl;->loge(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 376
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void
.end method


# virtual methods
.method public broadcastUtIdle(I)V
    .locals 5
    .param p1, "subId"    # I

    .line 396
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 397
    .local v0, "otherSubId":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v1

    .line 398
    .local v1, "otherHwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    if-nez v1, :cond_1

    .line 399
    const-string v2, "ImsUtImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastUtIdle: HwImsUtImpl["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 403
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl;->receiveOtherSubUtIdle()V

    .line 404
    return-void
.end method

.method clear()V
    .locals 1

    .line 354
    const-string v0, "clear"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public close()V
    .locals 1

    .line 145
    const-string v0, "close"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 428
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump ims_ut from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    const-string v0, "ImsUtImpl"

    const-string v1, "dump,no permission return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void

    .line 440
    :cond_1
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 441
    move v0, v1

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public getHwInnerService()Landroid/os/IBinder;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/huawei/ims/ImsUtImpl;->mHwInnerService:Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;

    return-object v0
.end method

.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 1

    .line 305
    const-string v0, "getUtIMPUFromNetwork"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtInterface(Lcom/huawei/ims/HwImsServiceImpl;I)Lcom/huawei/ims/HwImsUtImpl;
    .locals 3
    .param p1, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p2, "subId"    # I

    .line 94
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 97
    const-string v1, "ImsUtImpl"

    const-string v2, "getUtInterface - hwImsServiceImpl is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v0

    .line 101
    :cond_0
    invoke-static {p2}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const-string v1, "ImsUtImpl"

    const-string v2, "getUtInterface - subId is invalid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v0

    .line 106
    :cond_1
    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    if-nez v1, :cond_2

    .line 107
    const-string v1, "ImsUtImpl"

    const-string v2, "getUtInterface - mHwImsUtImpl is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-object v0

    .line 111
    :cond_2
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v0, p2

    if-eqz v0, :cond_3

    .line 112
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUtInterface - mImsUtImpl [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is already exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v0, p2

    return-object v0

    .line 117
    :cond_3
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    new-instance v1, Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {v1, p1, p2, p0}, Lcom/huawei/ims/HwImsUtImpl;-><init>(Lcom/huawei/ims/HwImsServiceImpl;ILcom/huawei/ims/ImsUtImpl;)V

    aput-object v1, v0, p2

    .line 120
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->mHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v0, p2

    return-object v0
.end method

.method handleImsGetImpuDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "impu"    # Ljava/lang/String;

    .line 333
    const-string v0, "handleImsGetImpuDone"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method handleSimCardAbsent()V
    .locals 1

    .line 328
    const-string v0, "handleSimCardAbsent"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method handleSimRecordsLoaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "newImsi"    # Ljava/lang/String;

    .line 338
    const-string v0, "handleSimRecordsLoaded"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method isAirModeResetCWInModem()Z
    .locals 1

    .line 322
    const-string v0, "isAirModeResetCWInModem"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public isOtherSubUtIdle(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 381
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 382
    .local v0, "otherSubId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->isUtIdle(I)Z

    move-result v1

    return v1
.end method

.method public isSupportCFT()Z
    .locals 1

    .line 346
    const-string v0, "isSupportCFT"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public isUtIdle(I)Z
    .locals 4
    .param p1, "subId"    # I

    .line 386
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsUtImpl;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 387
    .local v0, "hwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    if-nez v0, :cond_0

    .line 388
    const-string v1, "ImsUtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUtIdle: HwImsUtImpl["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v1, 0x1

    return v1

    .line 392
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v1

    return v1
.end method

.method public processECT()V
    .locals 1

    .line 297
    const-string v0, "processECT"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method queryAndSyncCallWaitingToCs()V
    .locals 1

    .line 312
    const-string v0, "queryAndSyncCallWaitingToCs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method queryAndSyncCallWaitingToImsSdk()V
    .locals 1

    .line 317
    const-string v0, "queryAndSyncCallWaitingToImsSdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public queryCLIP()I
    .locals 1

    .line 192
    const-string v0, "queryCLIP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 193
    const/4 v0, -0x1

    return v0
.end method

.method public queryCLIR()I
    .locals 1

    .line 184
    const-string v0, "queryCLIR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 185
    const/4 v0, -0x1

    return v0
.end method

.method public queryCOLP()I
    .locals 1

    .line 208
    const-string v0, "queryCOLP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 209
    const/4 v0, -0x1

    return v0
.end method

.method public queryCOLR()I
    .locals 1

    .line 200
    const-string v0, "queryCOLR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 201
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallBarring(I)I
    .locals 1
    .param p1, "cbType"    # I

    .line 153
    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 154
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 161
    const-string v0, "queryCallForward"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 162
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallForwardForServiceClass(ILjava/lang/String;I)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 167
    const-string v0, "queryCallForwardForServiceClass"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 168
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallWaiting()I
    .locals 1

    .line 176
    const-string v0, "queryCallWaiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 177
    const/4 v0, -0x1

    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .line 137
    const-string v0, "setListener"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 128
    const-string v0, "Unsupported API transact() called."

    invoke-static {v0}, Lcom/huawei/ims/ImsUtImpl;->loge(Ljava/lang/String;)V

    .line 130
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIP(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 273
    const-string v0, "updateCLIP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 274
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIR(I)I
    .locals 1
    .param p1, "clirMode"    # I

    .line 265
    const-string v0, "updateCLIR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 266
    const/4 v0, -0x1

    return v0
.end method

.method public updateCOLP(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 289
    const-string v0, "updateCOLP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 290
    const/4 v0, -0x1

    return v0
.end method

.method public updateCOLR(I)I
    .locals 1
    .param p1, "presentation"    # I

    .line 281
    const-string v0, "updateCOLR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 282
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 224
    const-string v0, "updateCallBarring"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 225
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarring(IZ[Ljava/lang/String;)I
    .locals 1
    .param p1, "cbType"    # I
    .param p2, "action"    # Z
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 216
    const-string v0, "updateCallBarring"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarringOption(Ljava/lang/String;IZ[Ljava/lang/String;)I
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "action"    # Z
    .param p4, "barrList"    # [Ljava/lang/String;

    .line 232
    const-string v0, "updateCallBarringOption"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 233
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 1
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 240
    const-string v0, "updateCallForward"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 241
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .locals 1
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .line 249
    const-string v0, "updateCallForwardUncondTimer"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 250
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 257
    const-string v0, "updateCallWaiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 258
    const/4 v0, -0x1

    return v0
.end method
