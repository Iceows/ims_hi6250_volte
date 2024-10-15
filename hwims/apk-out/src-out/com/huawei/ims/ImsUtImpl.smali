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

.field private static final DYADIC_ARRAY:[[Ljava/lang/String;

.field private static final IMS_UT_SERVICE_NAME:Ljava/lang/String; = "ims_ut"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUtImpl"

.field private static final UT_INVALID:I = -0x1

.field private static sHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

.field private static volatile sInstance:Lcom/huawei/ims/ImsUtImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHwInnerService:Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
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

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/ims/ImsUtImpl;->sInstance:Lcom/huawei/ims/ImsUtImpl;

    .line 54
    sput-object v0, Lcom/huawei/ims/ImsUtImpl;->sHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 58
    new-instance v0, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;

    invoke-direct {v0, p0, p0}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;-><init>(Lcom/huawei/ims/ImsUtImpl;Lcom/huawei/ims/ImsUtImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsUtImpl;->mHwInnerService:Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;

    .line 66
    const-string v0, "ImsUtImpl"

    const-string v1, "ImsUtImpl::ImsUtImpl()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsUtImpl;I)Lcom/huawei/ims/HwImsUtImpl;
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/ImsUtImpl;
    .param p1, "x1"    # I

    .line 31
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsUtImpl;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method protected static checkAccessPermission()V
    .registers 3

    .line 451
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 452
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_15

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 456
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_15
    :goto_15
    return-void
.end method

.method private getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;
    .registers 6
    .param p1, "slotId"    # I

    .line 526
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ImsUtImpl"

    if-nez v0, :cond_f

    .line 527
    const-string v0, "getHwImsUtImpl: slotId is invalid"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-object v1

    .line 531
    :cond_f
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->sHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    if-nez v0, :cond_19

    .line 532
    const-string v0, "getHwImsUtImpl: sHwImsUtImpl is null"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-object v1

    .line 536
    :cond_19
    aget-object v0, v0, p1

    .line 537
    .local v0, "hwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    if-nez v0, :cond_36

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHwImsUtImpl: HwImsUtImpl["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_36
    return-object v0
.end method

.method static getInstance()Lcom/huawei/ims/ImsUtImpl;
    .registers 3

    .line 75
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 77
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->sInstance:Lcom/huawei/ims/ImsUtImpl;

    if-nez v0, :cond_38

    .line 78
    const-class v0, Lcom/huawei/ims/ImsUtImpl;

    monitor-enter v0

    .line 79
    :try_start_a
    sget-object v1, Lcom/huawei/ims/ImsUtImpl;->sInstance:Lcom/huawei/ims/ImsUtImpl;

    if-nez v1, :cond_33

    .line 80
    new-instance v1, Lcom/huawei/ims/ImsUtImpl;

    invoke-direct {v1}, Lcom/huawei/ims/ImsUtImpl;-><init>()V

    sput-object v1, Lcom/huawei/ims/ImsUtImpl;->sInstance:Lcom/huawei/ims/ImsUtImpl;

    .line 81
    const-string v1, "ImsUtImpl"

    const-string v2, "add ims_ut service"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v1, "ims_ut"

    sget-object v2, Lcom/huawei/ims/ImsUtImpl;->sInstance:Lcom/huawei/ims/ImsUtImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsUtImpl;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 83
    invoke-static {}, Lcom/huawei/ims/HwImsService;->getNumSubscriptions()I

    move-result v1

    new-array v1, v1, [Lcom/huawei/ims/HwImsUtImpl;

    sput-object v1, Lcom/huawei/ims/ImsUtImpl;->sHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    .line 85
    :cond_33
    monitor-exit v0

    goto :goto_3f

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_35

    throw v1

    .line 87
    :cond_38
    const-string v0, "ImsUtImpl"

    const-string v1, "sInstance is already exist!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_3f
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->sInstance:Lcom/huawei/ims/ImsUtImpl;

    return-object v0
.end method

.method private logUnexpectedMethodCall(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 460
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

    .line 461
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ERROR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUtImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method


# virtual methods
.method public broadcastUtIdle(I)V
    .registers 6
    .param p1, "slotId"    # I

    .line 516
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 517
    .local v0, "otherSlotId":I
    :goto_5
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v1

    .line 518
    .local v1, "otherHwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    if-nez v1, :cond_27

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastUtIdle: HwImsUtImpl["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsUtImpl"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void

    .line 522
    :cond_27
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsUtImpl;->receiveOtherSubUtIdle()V

    .line 523
    return-void
.end method

.method clear()V
    .registers 2

    .line 443
    const-string v0, "clear"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public close()V
    .registers 2

    .line 155
    const-string v0, "close"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 559
    if-nez p2, :cond_3

    .line 560
    return-void

    .line 562
    :cond_3
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->sHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    array-length v2, v0

    if-eqz v2, :cond_13

    .line 563
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    .line 566
    :cond_13
    iget-object v0, p0, Lcom/huawei/ims/ImsUtImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4b

    .line 567
    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4b

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump ims_ut from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    const-string v0, "ImsUtImpl"

    const-string v1, "dump,no permission return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 574
    :cond_4b
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    if-eqz v0, :cond_84

    array-length v0, v0

    if-eqz v0, :cond_84

    .line 575
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_53
    sget-object v2, Lcom/huawei/ims/ImsUtImpl;->DYADIC_ARRAY:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_84

    .line 576
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

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 579
    .end local v0    # "i":I
    :cond_84
    return-void
.end method

.method public endOtherImsConnectivity(I)Z
    .registers 7
    .param p1, "slotId"    # I

    .line 474
    const/4 v0, 0x0

    if-nez p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 475
    .local v1, "otherSlotId":I
    :goto_6
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsUtImpl;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v2

    .line 476
    .local v2, "hwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    if-nez v2, :cond_28

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOtherConnectivityEnd: HwImsUtImpl["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsUtImpl"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return v0

    .line 480
    :cond_28
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl;->endCurrentImsConnectivity()Z

    move-result v0

    return v0
.end method

.method public getHwInnerService()Landroid/os/IBinder;
    .registers 2

    .line 582
    iget-object v0, p0, Lcom/huawei/ims/ImsUtImpl;->mHwInnerService:Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;

    return-object v0
.end method

.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .registers 2

    .line 395
    const-string v0, "getUtIMPUFromNetwork"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtInterface(Lcom/huawei/ims/HwImsServiceImpl;I)Lcom/huawei/ims/HwImsUtImpl;
    .registers 6
    .param p1, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p2, "slotId"    # I

    .line 101
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 103
    const/4 v0, 0x0

    const-string v1, "ImsUtImpl"

    if-nez p1, :cond_e

    .line 104
    const-string v2, "getUtInterface - hwImsServiceImpl is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object v0

    .line 108
    :cond_e
    invoke-static {p2}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 109
    const-string v2, "getUtInterface - slotId is invalid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-object v0

    .line 113
    :cond_1a
    sget-object v2, Lcom/huawei/ims/ImsUtImpl;->sHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    if-nez v2, :cond_24

    .line 114
    const-string v2, "getUtInterface - sHwImsUtImpl is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v0

    .line 118
    :cond_24
    aget-object v0, v2, p2

    if-eqz v0, :cond_46

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUtInterface - mImsUtImpl [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is already exist!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->sHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v0, p2

    return-object v0

    .line 123
    :cond_46
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {v0, p1, p2, p0}, Lcom/huawei/ims/HwImsUtImpl;-><init>(Lcom/huawei/ims/HwImsServiceImpl;ILcom/huawei/ims/ImsUtImpl;)V

    aput-object v0, v2, p2

    .line 124
    sget-object v0, Lcom/huawei/ims/ImsUtImpl;->sHwImsUtImpl:[Lcom/huawei/ims/HwImsUtImpl;

    aget-object v0, v0, p2

    return-object v0
.end method

.method handleImsGetImpuDone(Ljava/lang/String;)V
    .registers 3
    .param p1, "impu"    # Ljava/lang/String;

    .line 420
    const-string v0, "handleImsGetImpuDone"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method handleSimCardAbsent()V
    .registers 2

    .line 415
    const-string v0, "handleSimCardAbsent"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method handleSimRecordsLoaded(Ljava/lang/String;)V
    .registers 3
    .param p1, "newImsi"    # Ljava/lang/String;

    .line 425
    const-string v0, "handleSimRecordsLoaded"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method isAirModeResetCwInModem()Z
    .registers 2

    .line 410
    const-string v0, "isAirModeResetCwInModem"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public isOtherSubUtIdle(I)Z
    .registers 4
    .param p1, "slotId"    # I

    .line 490
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 491
    .local v0, "otherSlotId":I
    :goto_5
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->isUtIdle(I)Z

    move-result v1

    return v1
.end method

.method public isSupportCFT()Z
    .registers 2

    .line 435
    const-string v0, "isSupportCFT"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public isUtIdle(I)Z
    .registers 5
    .param p1, "slotId"    # I

    .line 501
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsUtImpl;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 502
    .local v0, "hwImsUtImpl":Lcom/huawei/ims/HwImsUtImpl;
    if-nez v0, :cond_23

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUtIdle: HwImsUtImpl["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsUtImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v1, 0x1

    return v1

    .line 507
    :cond_23
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v1

    return v1
.end method

.method public processECT()V
    .registers 2

    .line 386
    const-string v0, "processECT"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method queryAndSyncCallWaitingToCs()V
    .registers 2

    .line 400
    const-string v0, "queryAndSyncCallWaitingToCs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method queryAndSyncCallWaitingToImsSdk()V
    .registers 2

    .line 405
    const-string v0, "queryAndSyncCallWaitingToImsSdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public queryCLIP()I
    .registers 2

    .line 223
    const-string v0, "queryCLIP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 224
    const/4 v0, -0x1

    return v0
.end method

.method public queryCLIR()I
    .registers 2

    .line 212
    const-string v0, "queryCLIR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 213
    const/4 v0, -0x1

    return v0
.end method

.method public queryCOLP()I
    .registers 2

    .line 245
    const-string v0, "queryCOLP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 246
    const/4 v0, -0x1

    return v0
.end method

.method public queryCOLR()I
    .registers 2

    .line 234
    const-string v0, "queryCOLR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 235
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallBarring(I)I
    .registers 3
    .param p1, "cbType"    # I

    .line 166
    const-string v0, "queryCallBarring"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 167
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .registers 4
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 178
    const-string v0, "queryCallForward"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 179
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallForwardForServiceClass(ILjava/lang/String;I)I
    .registers 5
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 191
    const-string v0, "queryCallForwardForServiceClass"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 192
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallWaiting()I
    .registers 2

    .line 201
    const-string v0, "queryCallWaiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 202
    const/4 v0, -0x1

    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/ims/internal/IImsUtListener;

    .line 147
    const-string v0, "setListener"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 136
    const-string v0, "Unsupported API transact() called."

    invoke-static {v0}, Lcom/huawei/ims/ImsUtImpl;->loge(Ljava/lang/String;)V

    .line 138
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIP(Z)I
    .registers 3
    .param p1, "isEnable"    # Z

    .line 354
    const-string v0, "updateCLIP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 355
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIR(I)I
    .registers 3
    .param p1, "clirMode"    # I

    .line 342
    const-string v0, "updateCLIR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 343
    const/4 v0, -0x1

    return v0
.end method

.method public updateCOLP(Z)I
    .registers 3
    .param p1, "isEnable"    # Z

    .line 378
    const-string v0, "updateCOLP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 379
    const/4 v0, -0x1

    return v0
.end method

.method public updateCOLR(I)I
    .registers 3
    .param p1, "presentation"    # I

    .line 366
    const-string v0, "updateCOLR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 367
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .registers 5
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 271
    const-string v0, "updateCallBarring"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 272
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarring(IZ[Ljava/lang/String;)I
    .registers 5
    .param p1, "cbType"    # I
    .param p2, "isAction"    # Z
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 258
    const-string v0, "updateCallBarring"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 259
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarringOption(Ljava/lang/String;IZ[Ljava/lang/String;)I
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "isAction"    # Z
    .param p4, "barrList"    # [Ljava/lang/String;

    .line 285
    const-string v0, "updateCallBarringOption"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 286
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .registers 7
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 300
    const-string v0, "updateCallForward"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 301
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .registers 9
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .line 318
    const-string v0, "updateCallForwardUncondTimer"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .registers 4
    .param p1, "isEnable"    # Z
    .param p2, "serviceClass"    # I

    .line 330
    const-string v0, "updateCallWaiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsUtImpl;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 331
    const/4 v0, -0x1

    return v0
.end method
