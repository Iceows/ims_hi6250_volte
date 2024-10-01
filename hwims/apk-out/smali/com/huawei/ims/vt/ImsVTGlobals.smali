.class public Lcom/huawei/ims/vt/ImsVTGlobals;
.super Ljava/lang/Object;
.source "ImsVTGlobals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;,
        Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_SWITCH_STATE_CHANGE:Ljava/lang/String; = "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

.field private static final CALLSESSION_MAX_SIZE:I = 0x1

.field private static final HME_V_CAMERA_TYPES:I = 0x0

.field private static final HME_V_ENCODER_USE_TYPES:I = 0x1

.field public static final IMS_SWITCH_STATE_CHANGE_PERMISSION:Ljava/lang/String; = "com.huawei.ims.permission.IMS_SWITCH_STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "ImsVTGlobals"

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
            "Lcom/huawei/ims/vt/ImsVTCallProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field static mChrReporter:Lcom/huawei/ims/SDKChrReport;

.field private static mContext:Landroid/content/Context;

.field private static mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

.field private static mIsBootCompleted:Z

.field private static mIsSdkInited:Z

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/huawei/ims/vt/ImsVTGlobals;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsSdkInited:Z

    .line 40
    sput-boolean v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsBootCompleted:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->sInstance:Lcom/huawei/ims/vt/ImsVTGlobals;

    .line 213
    new-instance v0, Lcom/huawei/ims/vt/ImsVTGlobals$1;

    invoke-direct {v0}, Lcom/huawei/ims/vt/ImsVTGlobals$1;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 28
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsSdkInited:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 28
    sput-boolean p0, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsBootCompleted:Z

    return p0
.end method

.method public static deInit()V
    .locals 3

    .line 106
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    const-string v1, "ImsVTGlobals"

    const-string v2, "ImsVTGlobals deInit"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->deInitImsThinClient()I

    .line 109
    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->unRegisterImsSwitchBoardcast()V

    .line 110
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsSdkInited:Z

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getActiveCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 4
    .param p0, "subid"    # I

    .line 248
    const-string v0, "ImsVTGlobals"

    const-string v1, "getActiveCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v0, v0, p0

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    .line 250
    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v0

    .line 251
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "ImsVTGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple Active Calls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/HwImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method private static getBackgroundCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 4
    .param p0, "subid"    # I

    .line 276
    const-string v0, "ImsVTGlobals"

    const-string v1, "getBackgroundCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v0, v0, p0

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    .line 278
    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v0

    .line 279
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "ImsVTGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple Background Calls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/HwImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method private static getCallSession(I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "subid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    :cond_0
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVTGlobals;->getActiveCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    .line 288
    .local v0, "sessionActive":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v0, :cond_1

    .line 289
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVTGlobals;->getBackgroundCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    .line 292
    .local v1, "sessionBackgroud":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v1, :cond_2

    .line 293
    sget-object v2, Lcom/huawei/ims/vt/ImsVTGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_2
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVTGlobals;->getOutgoingCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v2

    .line 296
    .local v2, "sessionOutgoing":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v2, :cond_3

    .line 297
    sget-object v3, Lcom/huawei/ims/vt/ImsVTGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_3
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVTGlobals;->getIncomingCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v3

    .line 300
    .local v3, "sessionIncoming":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v3, :cond_4

    .line 301
    sget-object v4, Lcom/huawei/ims/vt/ImsVTGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_4
    sget-object v4, Lcom/huawei/ims/vt/ImsVTGlobals;->imsCallSessionArrayList:Ljava/util/ArrayList;

    return-object v4
.end method

.method public static getCallVideoProvider(I)Ljava/util/ArrayList;
    .locals 4
    .param p0, "subid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/vt/ImsVTCallProviderImpl;",
            ">;"
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 314
    :cond_0
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVTGlobals;->getCallSession(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 315
    .local v0, "size":I
    if-nez v0, :cond_1

    .line 316
    const/4 v1, 0x0

    return-object v1

    .line 318
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 319
    sget-object v2, Lcom/huawei/ims/vt/ImsVTGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVTGlobals;->getCallSession(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v3}, Lcom/huawei/ims/vt/ImsVTGlobals;->getImsVTCallProviderImpl(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->imsVideoCallProviderList:Ljava/util/ArrayList;

    return-object v1
.end method

.method private static getImsVTCallProviderImpl(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
    .locals 1
    .param p0, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 307
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsVTCallProviderImpl()Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getIncomingCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 4
    .param p0, "subid"    # I

    .line 268
    const-string v0, "ImsVTGlobals"

    const-string v1, "getIncomingCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v0, v0, p0

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    .line 270
    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "ImsVTGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple Incoming Calls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/HwImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method private static getOutgoingCallSession(I)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 4
    .param p0, "subid"    # I

    .line 256
    const-string v0, "ImsVTGlobals"

    const-string v1, "getOutgoingCallSession"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v0, v0, p0

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    .line 258
    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    aget-object v1, v1, p0

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;

    move-result-object v0

    .line 263
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "ImsVTGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple Outgoing Calls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/HwImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    const-string v1, "ImsVTGlobals"

    const-string v2, "ImsVTGlobals init"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sput-object p0, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->initDev()V

    .line 84
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/ims/vt/VTUtils;->isImsSwitchOn(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/vt/ImsVTGlobals;->initVTSdk(Z)V

    .line 86
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/ims/vt/ImsMediaProvider;->getInstance()Lcom/huawei/ims/vt/ImsMediaProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/vt/CameraManager;->init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V

    .line 87
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/huawei/ims/vt/ImsMediaProvider;->getInstance()Lcom/huawei/ims/vt/ImsMediaProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/vt/MediaManager;->init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V

    .line 88
    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->registerImsSwitchBoardcast()V

    .line 89
    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->registerBootCompleted()V

    .line 91
    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->registerShutDown()V

    .line 94
    new-instance v1, Lcom/huawei/ims/SDKChrReport;

    sget-object v2, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/ims/SDKChrReport;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mChrReporter:Lcom/huawei/ims/SDKChrReport;

    .line 96
    const-string v1, "ImsVTGlobals"

    const-string v2, "ImsVTGlobals init done"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    monitor-exit v0

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initDev()V
    .locals 3

    .line 115
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    const-string v0, "ImsVTGlobals"

    const-string v1, "start to load so libs"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v0, "hw_sys"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 119
    const-string v0, "HME-Video"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 120
    const-string v0, "login"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    const-string v0, "hw_media"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 122
    const-string v0, "mvd_hme_vt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 123
    const-string v0, "sci"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 124
    const-string v0, "vsc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ImsVTGlobals"

    const-string v2, "load vt so UnsatisfiedLinkError"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_1

    .line 125
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImsVTGlobals"

    const-string v2, "load vt so exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 131
    :cond_0
    :goto_1
    return-void
.end method

.method private static initVTSdk(Z)V
    .locals 3
    .param p0, "needInitSdk"    # Z

    .line 136
    const-string v0, "ImsVTGlobals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVTSdk: mIsSdkInited is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsSdkInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needInitSdk : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "ImsVTGlobals"

    const-string v1, "mContext == null, do not support VT,so do not initVTSdk"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 143
    :cond_0
    sget-boolean v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsSdkInited:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 146
    const-string v0, "ImsVTGlobals"

    const-string v1, "initVTSdk start to initImsThinClient"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->initImsThinClient(Landroid/content/Context;)I

    .line 148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsSdkInited:Z

    .line 149
    const/4 v1, 0x0

    sget-object v2, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->HME_V_CAMERA2:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;

    invoke-virtual {v2}, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_CAMERA_TYPE;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/vtproxy/ImsCameraClient;->setCameraParameter(ILjava/lang/Object;)I

    .line 150
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->HME_V_Encoder_SURFACE:Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/ImsVTGlobals$HME_V_ENCODER_USE_TYPE;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/vtproxy/ImsCameraClient;->setCameraParameter(ILjava/lang/Object;)I

    .line 152
    :cond_1
    return-void
.end method

.method public static declared-synchronized reInitVtSdk(Z)V
    .locals 3
    .param p0, "needInitSdk"    # Z

    const-class v0, Lcom/huawei/ims/vt/ImsVTGlobals;

    monitor-enter v0

    .line 161
    :try_start_0
    sget-boolean v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsSdkInited:Z

    if-nez v1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVTGlobals;->initVTSdk(Z)V

    .line 165
    sget-boolean v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsSdkInited:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mIsBootCompleted:Z

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "ImsVTGlobals"

    const-string v2, "create HME log folder after SDK inited"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogFolder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_1
    monitor-exit v0

    return-void

    .line 162
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 160
    .end local p0    # "needInitSdk":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static registerBootCompleted()V
    .locals 3

    .line 185
    const-string v0, "ImsVTGlobals"

    const-string v1, "registerBootCompleted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 189
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/ims/vt/ImsVTGlobals;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    :cond_0
    return-void
.end method

.method private static registerImsSwitchBoardcast()V
    .locals 5

    .line 173
    const-string v0, "ImsVTGlobals"

    const-string v1, "registerImsSwitchBoardcast"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 180
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/ims/vt/ImsVTGlobals;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.huawei.ims.permission.IMS_SWITCH_STATE_CHANGE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 182
    :cond_0
    return-void
.end method

.method private static registerShutDown()V
    .locals 3

    .line 195
    const-string v0, "ImsVTGlobals"

    const-string v1, "registerShutDown"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 199
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/ims/vt/ImsVTGlobals;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    :cond_0
    return-void
.end method

.method public static setHwImsServiceImpl([Lcom/huawei/ims/HwImsServiceImpl;)V
    .locals 0
    .param p0, "hwImsServiceImpl"    # [Lcom/huawei/ims/HwImsServiceImpl;

    .line 101
    sput-object p0, Lcom/huawei/ims/vt/ImsVTGlobals;->mHwImsServiceImpl:[Lcom/huawei/ims/HwImsServiceImpl;

    .line 102
    return-void
.end method

.method private static unRegisterImsSwitchBoardcast()V
    .locals 3

    .line 205
    const-string v0, "ImsVTGlobals"

    const-string v1, "unRegisterImsSwitchBoardcast"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 209
    sget-object v1, Lcom/huawei/ims/vt/ImsVTGlobals;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/huawei/ims/vt/ImsVTGlobals;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    :cond_0
    return-void
.end method
