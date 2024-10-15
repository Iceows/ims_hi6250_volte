.class public Lcom/huawei/ims/vt/ImsVtGlobals;
.super Ljava/lang/Object;
.source "ImsVtGlobals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/vt/ImsVtGlobals$InitSdkHandler;,
        Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;,
        Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_SWITCH_STATE_CHANGE:Ljava/lang/String; = "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

.field private static final CALLSESSION_MAX_SIZE:I = 0x1

.field private static final EVENT_RETRY_TO_INIT_SDK:I = 0x1

.field private static final HME_V_CAMERA_TYPES:I = 0x0

.field private static final HME_V_ENCODER_USE_TYPES:I = 0x1

.field public static final IMS_SWITCH_STATE_CHANGE_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.IMS_SWITCH_STATE_CHANGE"

.field private static final IMS_VIDEO_GLOBALS_LOCK:Ljava/lang/Object;

.field private static final INIT_SDK_DELAY:I = 0x3e8

.field private static final INIT_SDK_DELAY_MAX_TIMES:I = 0x2

.field private static final INIT_SDK_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsVtGlobals"

.field private static imsCallSessionArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static imsVideoCallProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/vt/ImsVtCallProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field static sChrReporter:Lcom/huawei/ims/SdkChrReport;

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

.field private static sImsVideoCallProviderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            "Lcom/huawei/ims/vt/ImsVtCallProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static sInitSdkRetryTimes:I

.field private static sInstance:Lcom/huawei/ims/vt/ImsVtGlobals;

.field private static sIsBootCompleted:Z

.field private static sIsSdkInited:Z

.field private static sVideoDimensionCallBack:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->IMS_VIDEO_GLOBALS_LOCK:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z

    .line 83
    sput-boolean v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsBootCompleted:Z

    .line 88
    const/4 v1, 0x0

    sput-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sInstance:Lcom/huawei/ims/vt/ImsVtGlobals;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    .line 94
    new-instance v1, Lcom/huawei/ims/vt/ImsVtGlobals$InitSdkHandler;

    invoke-direct {v1}, Lcom/huawei/ims/vt/ImsVtGlobals$InitSdkHandler;-><init>()V

    sput-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sHandler:Landroid/os/Handler;

    .line 96
    sput v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sInitSdkRetryTimes:I

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sImsVideoCallProviderMap:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/huawei/ims/vt/ImsVtGlobals$1;

    invoke-direct {v0}, Lcom/huawei/ims/vt/ImsVtGlobals$1;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sVideoDimensionCallBack:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    .line 109
    new-instance v0, Lcom/huawei/ims/vt/ImsVtGlobals$2;

    invoke-direct {v0}, Lcom/huawei/ims/vt/ImsVtGlobals$2;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method static synthetic access$000(II)V
    .registers 2
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 35
    invoke-static {p0, p1}, Lcom/huawei/ims/vt/ImsVtGlobals;->changePeerDimensions(II)V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .line 35
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 35
    sget-boolean v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 35
    sput-boolean p0, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsBootCompleted:Z

    return p0
.end method

.method public static addImsVideoCallProvider(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/vt/ImsVtCallProviderImpl;)V
    .registers 3
    .param p0, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "imsVtCallProvider"    # Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    .line 537
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sImsVideoCallProviderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 538
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sImsVideoCallProviderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_d
    return-void
.end method

.method private static changePeerDimensions(II)V
    .registers 7
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 563
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sImsVideoCallProviderMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4d

    .line 564
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 565
    .local v1, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v1, :cond_c

    invoke-static {v1}, Lcom/huawei/ims/vt/ImsVtGlobals;->isCallActiveOrDialing(Lcom/huawei/ims/HwImsCallSessionImpl;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 566
    goto :goto_c

    .line 568
    :cond_21
    sget-object v2, Lcom/huawei/ims/vt/ImsVtGlobals;->sImsVideoCallProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    .line 569
    .local v2, "imsVtCallProvider":Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    if-eqz v2, :cond_4c

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changePeerDimensions : video dimension change CallBack, width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsVtGlobals"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v2, p0, p1}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->changePeerDimensions(II)V

    .line 574
    .end local v1    # "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    .end local v2    # "imsVtCallProvider":Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    :cond_4c
    goto :goto_c

    .line 576
    :cond_4d
    return-void
.end method

.method public static deInit()V
    .registers 3

    .line 252
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->IMS_VIDEO_GLOBALS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_3
    const-string v1, "ImsVtGlobals"

    const-string v2, "ImsVtGlobals deInit"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/huawei/ims/vt/ImsVtGlobals;->removeMassages(I)V

    .line 255
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->deInitImsThinClient()I

    .line 256
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->unRegisterImsSwitchBoardcast()V

    .line 257
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private static getActiveCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 6
    .param p0, "subId"    # I

    .line 376
    const-string v0, "ImsVtGlobals"

    const-string v1, "getActiveCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->isHwImsServiceImplInit(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 378
    const-string v1, "getActiveCallSession error."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-object v2

    .line 382
    :cond_14
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v1, v1, p0

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v1

    .line 384
    .local v1, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_39

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple Active Calls: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_48

    :cond_40
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    :goto_48
    return-object v2
.end method

.method private static getBackgroundCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 6
    .param p0, "subId"    # I

    .line 423
    const-string v0, "ImsVtGlobals"

    const-string v1, "getBackgroundCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->isHwImsServiceImplInit(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 425
    const-string v1, "getBackgroundCallSession error."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-object v2

    .line 428
    :cond_14
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v1, v1, p0

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v1

    .line 430
    .local v1, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_39

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple Background Calls: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_48

    :cond_40
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    :goto_48
    return-object v2
.end method

.method private static getCallSession(I)Ljava/util/ArrayList;
    .registers 6
    .param p0, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 443
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 445
    :cond_d
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->getActiveCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    .line 446
    .local v0, "sessionActive":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v0, :cond_18

    .line 447
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_18
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->getBackgroundCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    .line 450
    .local v1, "sessionBackgroud":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v1, :cond_23

    .line 451
    sget-object v2, Lcom/huawei/ims/vt/ImsVtGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_23
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->getOutgoingCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v2

    .line 454
    .local v2, "sessionOutgoing":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v2, :cond_2e

    .line 455
    sget-object v3, Lcom/huawei/ims/vt/ImsVtGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_2e
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->getIncomingCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v3

    .line 458
    .local v3, "sessionIncoming":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v3, :cond_39

    .line 459
    sget-object v4, Lcom/huawei/ims/vt/ImsVtGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_39
    sget-object v4, Lcom/huawei/ims/vt/ImsVtGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    return-object v4
.end method

.method public static getCallVideoProvider(I)Ljava/util/ArrayList;
    .registers 5
    .param p0, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/vt/ImsVtCallProviderImpl;",
            ">;"
        }
    .end annotation

    .line 475
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 476
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 478
    :cond_d
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->getCallSession(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 479
    .local v0, "size":I
    if-nez v0, :cond_19

    .line 480
    const/4 v1, 0x0

    return-object v1

    .line 482
    :cond_19
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_32

    .line 483
    sget-object v2, Lcom/huawei/ims/vt/ImsVtGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->getCallSession(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v3}, Lcom/huawei/ims/vt/ImsVtGlobals;->getImsVtCallProviderImpl(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 485
    .end local v1    # "i":I
    :cond_32
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    return-object v1
.end method

.method private static getImsVtCallProviderImpl(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    .registers 2
    .param p0, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 465
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsVtCallProviderImpl()Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method private static getIncomingCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 6
    .param p0, "subId"    # I

    .line 409
    const-string v0, "ImsVtGlobals"

    const-string v1, "getIncomingCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->isHwImsServiceImplInit(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 411
    const-string v1, "getIncomingCallSession error"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-object v2

    .line 414
    :cond_14
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v1, v1, p0

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v1

    .line 416
    .local v1, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_39

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple Incoming Calls: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_39
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_48

    :cond_40
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    :goto_48
    return-object v2
.end method

.method private static getOutgoingCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 6
    .param p0, "subId"    # I

    .line 391
    const-string v0, "ImsVtGlobals"

    const-string v1, "getOutgoingCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->isHwImsServiceImplInit(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 393
    const-string v1, "getOutgoingCallSession error."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-object v2

    .line 396
    :cond_14
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v1, v1, p0

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v1

    .line 398
    .local v1, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 399
    sget-object v3, Lcom/huawei/ims/vt/ImsVtGlobals;->sHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v3, v3, p0

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v1

    .line 402
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_49

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple Outgoing Calls: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_58

    :cond_50
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    :goto_58
    return-object v2
.end method

.method public static getVideoDimensionCallBack()Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;
    .registers 1

    .line 559
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sVideoDimensionCallBack:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 223
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->IMS_VIDEO_GLOBALS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    const-string v1, "ImsVtGlobals"

    const-string v2, "ImsVtGlobals init"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sput-object p0, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    .line 226
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->initDev()V

    .line 227
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/ims/vt/VtUtils;->isImsSwitchOn(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/vt/ImsVtGlobals;->initVtSdk(Z)V

    .line 228
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/ims/vt/ImsMediaProvider;->getInstance()Lcom/huawei/ims/vt/ImsMediaProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/vt/CameraManager;->init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V

    .line 229
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/ims/vt/ImsMediaProvider;->getInstance()Lcom/huawei/ims/vt/ImsMediaProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/vt/MediaManager;->init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V

    .line 230
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->registerImsSwitchBoardcast()V

    .line 231
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->registerBootCompleted()V

    .line 232
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->registerShutDown()V

    .line 233
    new-instance v1, Lcom/huawei/ims/SdkChrReport;

    sget-object v2, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/ims/SdkChrReport;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sChrReporter:Lcom/huawei/ims/SdkChrReport;

    .line 235
    const-string v1, "ImsVtGlobals"

    const-string v2, "ImsVtGlobals init done"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method private static initDev()V
    .registers 3

    .line 262
    const-string v0, "ImsVtGlobals"

    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtSupported()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 264
    :try_start_8
    const-string v1, "start to load so libs"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v1, "hw_sys"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 266
    const-string v1, "login"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 267
    const-string v1, "hw_media"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 268
    const-string v1, "mvd_hme_vt"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 269
    const-string v1, "sci"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 270
    const-string v1, "vsc"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_2b} :catch_2c

    .line 273
    goto :goto_32

    .line 271
    :catch_2c
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "load vt so UnsatisfiedLinkError"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_32
    :goto_32
    return-void
.end method

.method private static initVtSdk(Z)V
    .registers 6
    .param p0, "isInitSdk"    # Z

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initVtSdk: sIsSdkInited is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInitSdk : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtGlobals"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    if-nez v0, :cond_2a

    .line 285
    const-string v0, "sContext == null, do not support VT, so do not initVtSdk"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 288
    :cond_2a
    sget-boolean v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z

    if-nez v0, :cond_9d

    if-eqz p0, :cond_9d

    .line 289
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 290
    const-string v0, "EVENT_RETRY_TO_INIT_SDK message already run"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void

    .line 293
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVtSdk start to initImsThinClient sInitSdkRetryTimes = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/huawei/ims/vt/ImsVtGlobals;->sInitSdkRetryTimes:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->initImsThinClient(Landroid/content/Context;)I

    move-result v0

    .line 295
    .local v0, "sdkInitResult":I
    if-eqz v0, :cond_7b

    .line 296
    sget v3, Lcom/huawei/ims/vt/ImsVtGlobals;->sInitSdkRetryTimes:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_68

    .line 297
    const-string v2, "initVtSdk initImsThinClient fail!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 300
    :cond_68
    add-int/2addr v3, v2

    sput v3, Lcom/huawei/ims/vt/ImsVtGlobals;->sInitSdkRetryTimes:I

    .line 301
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 302
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 303
    sget-object v2, Lcom/huawei/ims/vt/ImsVtGlobals;->sHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 304
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_9d

    .line 305
    :cond_7b
    const-string v3, "initVtSdk initImsThinClient success!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sput-boolean v2, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z

    .line 307
    const/4 v1, 0x0

    sget-object v3, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;

    .line 308
    invoke-virtual {v3}, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoCameraType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 307
    invoke-static {v1, v3}, Lcom/huawei/vtproxy/ImsCameraClient;->setCameraParameter(ILjava/lang/Object;)I

    .line 309
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;

    .line 310
    invoke-virtual {v1}, Lcom/huawei/ims/vt/ImsVtGlobals$HmeVideoEncoderUseType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 309
    invoke-static {v2, v1}, Lcom/huawei/vtproxy/ImsCameraClient;->setCameraParameter(ILjava/lang/Object;)I

    .line 313
    .end local v0    # "sdkInitResult":I
    :cond_9d
    :goto_9d
    return-void
.end method

.method private static isCallActiveOrDialing(Lcom/huawei/ims/HwImsCallSessionImpl;)Z
    .registers 4
    .param p0, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 579
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 580
    return v0

    .line 582
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getDriverCallState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v1

    .line 583
    .local v1, "dcState":Lcom/huawei/ims/DriverImsCall$State;
    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v1, v2, :cond_14

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v1, v2, :cond_14

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v1, v2, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method private static isHwImsServiceImplInit(I)Z
    .registers 2
    .param p0, "subId"    # I

    .line 437
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v0, v0, p0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static isVtSdkInited()Z
    .registers 1

    .line 495
    sget-boolean v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z

    return v0
.end method

.method public static declared-synchronized reInitVtSdk(Z)V
    .registers 4
    .param p0, "isInitSdk"    # Z

    const-class v0, Lcom/huawei/ims/vt/ImsVtGlobals;

    monitor-enter v0

    .line 322
    :try_start_3
    sget-boolean v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z

    if-nez v1, :cond_21

    if-nez p0, :cond_a

    goto :goto_21

    .line 325
    :cond_a
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->initVtSdk(Z)V

    .line 326
    sget-boolean v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z

    if-eqz v1, :cond_1f

    sget-boolean v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sIsBootCompleted:Z

    if-eqz v1, :cond_1f

    .line 327
    const-string v1, "ImsVtGlobals"

    const-string v2, "create HME log folder after SDK inited"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogFolder()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    .line 330
    :cond_1f
    monitor-exit v0

    return-void

    .line 323
    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    .line 321
    .end local p0    # "isInitSdk":Z
    :catchall_23
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static registerBootCompleted()V
    .registers 3

    .line 343
    const-string v0, "ImsVtGlobals"

    const-string v1, "registerBootCompleted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 345
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_1a

    .line 347
    sget-object v2, Lcom/huawei/ims/vt/ImsVtGlobals;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    :cond_1a
    return-void
.end method

.method private static registerImsSwitchBoardcast()V
    .registers 5

    .line 333
    const-string v0, "ImsVtGlobals"

    const-string v1, "registerImsSwitchBoardcast"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_22

    .line 338
    sget-object v2, Lcom/huawei/ims/vt/ImsVtGlobals;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "com.huawei.ims.permission.IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 340
    :cond_22
    return-void
.end method

.method private static registerShutDown()V
    .registers 3

    .line 352
    const-string v0, "ImsVtGlobals"

    const-string v1, "registerShutDown"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_1a

    .line 356
    sget-object v2, Lcom/huawei/ims/vt/ImsVtGlobals;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    :cond_1a
    return-void
.end method

.method public static removeImsVideoCallProvider(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 2
    .param p0, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 548
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sImsVideoCallProviderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 549
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sImsVideoCallProviderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_d
    return-void
.end method

.method private static removeMassages(I)V
    .registers 2
    .param p0, "what"    # I

    .line 524
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 525
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    :cond_d
    return-void
.end method

.method public static setHwImsServiceImpl([Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 1
    .param p0, "hwImsServiceImpl"    # [Lcom/huawei/ims/HwImsServiceImpl;

    .line 245
    sput-object p0, Lcom/huawei/ims/vt/ImsVtGlobals;->sHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    .line 246
    return-void
.end method

.method private static unRegisterImsSwitchBoardcast()V
    .registers 3

    .line 361
    const-string v0, "ImsVtGlobals"

    const-string v1, "unRegisterImsSwitchBoardcast"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 363
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    sget-object v1, Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;

    if-eqz v1, :cond_1a

    .line 365
    sget-object v2, Lcom/huawei/ims/vt/ImsVtGlobals;->sBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 367
    :cond_1a
    return-void
.end method
