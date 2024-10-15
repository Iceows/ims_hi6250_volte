.class public final Lcom/huawei/ims/ImsRIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "ImsRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsRIL$ImsRilHandler;,
        Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field private static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field private static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field private static final FOR_ACK_WAKELOCK:I = 0x1

.field private static final FOR_WAKELOCK:I = 0x0

.field static final INVALID_WAKELOCK:I = -0x1

.field private static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xbb8

.field private static final LENGTH_OF_IMS_END_CAUSE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "RILJ_IMS"

.field private static final NO_ERROR:I = 0x0

.field private static final RADIO_STATE_UNKNOWN:I = -0x1

.field private static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "RILJ_ACK_WL"

.field private static final RIL_APPTYPE_UNKNOWN:I

.field private static final SOCKET_NAME_IMSRILS:[Ljava/lang/String;


# instance fields
.field private final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mAckWakeLockTimeout:I

.field private volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field private mContext:Landroid/content/Context;

.field protected mHandoverStatusRegistrants:Landroid/os/RegistrantList;

.field protected mHoldingToneRegistrants:Landroid/os/RegistrantList;

.field protected mImsCsRedialRegistrations:Landroid/os/RegistrantList;

.field protected mImsDmcnRegistrants:Landroid/os/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImsRegModeRegistrants:Landroid/os/RegistrantList;

.field private mImsRilDefaultWorkSource:Landroid/os/WorkSource;

.field private final mImsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

.field protected mLtePdcpInfoRegistrants:Landroid/os/RegistrantList;

.field protected mLteRrcInfoRegistrants:Landroid/os/RegistrantList;

.field protected mModifyCallRegistrants:Landroid/os/RegistrantList;

.field protected mModifyCallResultRegistrants:Landroid/os/RegistrantList;

.field protected mMtStatusReportRegistrants:Landroid/os/RegistrantList;

.field private final mPhoneId:Ljava/lang/Integer;

.field private mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

.field private volatile mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

.field private final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

.field private mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

.field private mRequestMessagesPending:I

.field private mRequestMessagesWaiting:I

.field private final mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/ImsRilRequest;",
            ">;"
        }
    .end annotation
.end field

.field protected mRingRegistrant:Landroid/os/Registrant;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected mSpeechInfoRegistrants:Landroid/os/RegistrantList;

.field protected mSrvStatusRegistrations:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field private mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected mVowifiRegErrReportRegistrations:Landroid/os/RegistrantList;

.field protected mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockCount:I

.field private final mWakeLockTimeout:I

.field private volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 270
    const-string v0, "rildi"

    const-string v1, "rildi2"

    const-string v2, "rildi3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/ImsRIL;->SOCKET_NAME_IMSRILS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/Integer;

    .line 461
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 302
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 307
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 312
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 317
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsCsRedialRegistrations:Landroid/os/RegistrantList;

    .line 324
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsDmcnRegistrants:Landroid/os/RegistrantList;

    .line 329
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVowifiRegErrReportRegistrations:Landroid/os/RegistrantList;

    .line 334
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mLtePdcpInfoRegistrants:Landroid/os/RegistrantList;

    .line 339
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mLteRrcInfoRegistrants:Landroid/os/RegistrantList;

    .line 344
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    .line 349
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    .line 354
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    .line 359
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 364
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 369
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 374
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    .line 379
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    .line 384
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    .line 389
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 394
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 397
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    .line 401
    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    .line 403
    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    .line 405
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 417
    new-instance v2, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v2}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 421
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    .line 463
    iput-object p1, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    .line 466
    iput-object p2, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    .line 469
    new-instance v2, Lcom/huawei/ims/ImsRadioResponse;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRadioResponse;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

    .line 470
    new-instance v2, Lcom/huawei/ims/ImsRadioIndication;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRadioIndication;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

    .line 471
    new-instance v2, Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mImsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    .line 472
    new-instance v2, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    .line 473
    if-eqz p1, :cond_e1

    .line 474
    new-instance v2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 476
    :cond_e1
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    .line 477
    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    .line 479
    if-eqz p1, :cond_114

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/os/PowerManager;

    if-eqz v3, :cond_114

    .line 480
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 481
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "RILJ_IMS"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 482
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 483
    const-string v3, "RILJ_ACK_WL"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 484
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 485
    .end local v0    # "pm":Landroid/os/PowerManager;
    goto :goto_11d

    .line 486
    :cond_114
    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 487
    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 488
    const-string v0, "The context is null."

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 490
    :goto_11d
    const v0, 0xea60

    .line 491
    const-string v2, "ro.ril.wake_lock_timeout"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    .line 492
    const/16 v0, 0xc8

    .line 493
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLockTimeout:I

    .line 494
    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    .line 495
    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    .line 496
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 497
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsRIL;)Lcom/huawei/ims/ImsRIL$ImsRilHandler;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;

    .line 247
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsRIL;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;

    .line 247
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsRIL;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;

    .line 247
    iget v0, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/huawei/ims/ImsRIL;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;
    .param p1, "x1"    # I

    .line 247
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/huawei/ims/ImsRIL;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;

    .line 247
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/ims/ImsRIL;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;

    .line 247
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/ims/ImsRIL;Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;
    .param p1, "x1"    # Landroid/os/Message;

    .line 247
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v0

    return-object v0
.end method

.method private acquireWakeLock(Lcom/huawei/ims/ImsRilRequest;I)V
    .registers 10
    .param p1, "rr"    # Lcom/huawei/ims/ImsRilRequest;
    .param p2, "wakeLockType"    # I

    .line 3771
    monitor-enter p1

    .line 3772
    :try_start_1
    iget v0, p1, Lcom/huawei/ims/ImsRilRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 3773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to aquire wakelock for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3774
    monitor-exit p1

    return-void

    .line 3777
    :cond_20
    const/4 v0, 0x1

    if-eqz p2, :cond_61

    if-eq p2, v0, :cond_3b

    .line 3812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquiring Invalid Wakelock type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3813
    monitor-exit p1

    return-void

    .line 3802
    :cond_3b
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_c2

    .line 3803
    :try_start_3e
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3804
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    .line 3806
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3807
    .local v0, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 3808
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mImsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3809
    nop

    .end local v0    # "msg":Landroid/os/Message;
    monitor-exit v1

    .line 3810
    goto :goto_bb

    .line 3809
    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_3e .. :try_end_60} :catchall_5e

    .end local p0    # "this":Lcom/huawei/ims/ImsRIL;
    .end local p1    # "rr":Lcom/huawei/ims/ImsRilRequest;
    .end local p2    # "wakeLockType":I
    :try_start_60
    throw v0

    .line 3779
    .restart local p0    # "this":Lcom/huawei/ims/ImsRIL;
    .restart local p1    # "rr":Lcom/huawei/ims/ImsRilRequest;
    .restart local p2    # "wakeLockType":I
    :cond_61
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_c2

    .line 3780
    :try_start_64
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3781
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3782
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    .line 3784
    iget-object v0, p1, Lcom/huawei/ims/ImsRilRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v0

    .line 3785
    .local v0, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 3786
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_8d

    .line 3787
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/huawei/ims/ImsRilRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_91

    .line 3789
    :cond_8d
    iget-object v2, p1, Lcom/huawei/ims/ImsRilRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3791
    :goto_91
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3794
    :cond_98
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/huawei/ims/ImsRilRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    iget v5, p1, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    iget v6, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 3796
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mImsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3797
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 3798
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mImsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3799
    nop

    .end local v0    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_64 .. :try_end_ba} :catchall_bf

    .line 3800
    nop

    .line 3815
    :goto_bb
    :try_start_bb
    iput p2, p1, Lcom/huawei/ims/ImsRilRequest;->mWakeLockType:I

    .line 3816
    monitor-exit p1
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_c2

    .line 3817
    return-void

    .line 3799
    :catchall_bf
    move-exception v0

    :try_start_c0
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    .end local p0    # "this":Lcom/huawei/ims/ImsRIL;
    .end local p1    # "rr":Lcom/huawei/ims/ImsRilRequest;
    .end local p2    # "wakeLockType":I
    :try_start_c1
    throw v0

    .line 3816
    .restart local p0    # "this":Lcom/huawei/ims/ImsRIL;
    .restart local p1    # "rr":Lcom/huawei/ims/ImsRilRequest;
    .restart local p2    # "wakeLockType":I
    :catchall_c2
    move-exception v0

    monitor-exit p1
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c2

    throw v0
.end method

.method private addRequest(Lcom/huawei/ims/ImsRilRequest;)V
    .registers 4
    .param p1, "rr"    # Lcom/huawei/ims/ImsRilRequest;

    .line 2480
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRIL;->acquireWakeLock(Lcom/huawei/ims/ImsRilRequest;I)V

    .line 2481
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2482
    :try_start_7
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2483
    monitor-exit v0

    .line 2484
    return-void

    .line 2483
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 3426
    .local p0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_4

    .line 3427
    const/4 v0, 0x0

    return-object v0

    .line 3429
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 3430
    .local v0, "rets":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 3431
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 3430
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3433
    .end local v1    # "i":I
    :cond_1d
    return-object v0
.end method

.method private clearRequestList(I)V
    .registers 7
    .param p1, "error"    # I

    .line 3886
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3887
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3888
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_21

    .line 3889
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRilRequest;

    .line 3890
    .local v3, "rr":Lcom/huawei/ims/ImsRilRequest;
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/huawei/ims/ImsRilRequest;->onError(ILjava/lang/Object;)V

    .line 3891
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->decrementWakeLock(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3892
    invoke-virtual {v3}, Lcom/huawei/ims/ImsRilRequest;->release()V

    .line 3888
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3894
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/huawei/ims/ImsRilRequest;
    :cond_21
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3895
    .end local v1    # "count":I
    monitor-exit v0

    .line 3896
    return-void

    .line 3895
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private clearWakeLock(I)Z
    .registers 7
    .param p1, "wakeLockType"    # I

    .line 3856
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_44

    .line 3857
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3858
    :try_start_7
    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_15

    .line 3859
    monitor-exit v2

    return v1

    .line 3861
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTE: mWakeLockCount is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "at time of clearing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3862
    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3863
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3864
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 3865
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3866
    monitor-exit v2

    return v0

    .line 3867
    :catchall_41
    move-exception v0

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v0

    .line 3869
    :cond_44
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3870
    :try_start_47
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_51

    .line 3871
    monitor-exit v2

    return v1

    .line 3873
    :cond_51
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3874
    monitor-exit v2

    return v0

    .line 3875
    :catchall_58
    move-exception v0

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method static convertHalImsEndCause(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;Lcom/huawei/ims/ImsRIL;)[I
    .registers 7
    .param p0, "imsEndCause"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .line 3444
    if-nez p0, :cond_4

    .line 3445
    const/4 v0, 0x0

    return-object v0

    .line 3447
    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3448
    .local v0, "imsEndCauseResponses":[I
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;->callIndex:I

    .line 3449
    .local v1, "imsCallIndex":I
    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;->err:I

    .line 3450
    .local v2, "imsErr":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RILImsModifyEndCause received: callIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " callErr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RILJ_IMS"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    const/4 v3, 0x0

    aput v1, v0, v3

    .line 3452
    const/4 v3, 0x1

    aput v2, v0, v3

    .line 3453
    return-object v0
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 3684
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    const-string v0, ""

    :goto_6
    return-object v0
.end method

.method private createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;
    .registers 9
    .param p1, "type"    # I
    .param p2, "rand"    # [B
    .param p3, "auth"    # [B

    .line 3036
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;-><init>()V

    .line 3037
    .local v0, "msg":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 3038
    .local v1, "rands":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 3039
    .local v2, "auths":Ljava/lang/String;
    iput p1, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;->authType:I

    .line 3040
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHPARAMS;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHPARAMS;->randLen:I

    .line 3041
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHPARAMS;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHPARAMS;->authLen:I

    .line 3042
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHPARAMS;

    iput-object v1, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHPARAMS;->rand:Ljava/lang/String;

    .line 3043
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHPARAMS;

    iput-object v2, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHPARAMS;->auth:Ljava/lang/String;

    .line 3044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "randlens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " authlens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rands = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " auths = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " msg.authType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;->authType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3046
    return-object v0
.end method

.method private createRilUpdateFile(I[B)Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;
    .registers 7
    .param p1, "fileId"    # I
    .param p2, "data"    # [B

    .line 3099
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;-><init>()V

    .line 3100
    .local v0, "msg":Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;
    const/4 v1, 0x0

    iput v1, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;->appType:I

    .line 3101
    iput p1, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;->fileId:I

    .line 3102
    array-length v1, p2

    .line 3103
    .local v1, "dataLen":I
    iget-object v2, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;->fileParams:Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMFILEPARAMS;

    iput v1, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMFILEPARAMS;->len:I

    .line 3104
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    .line 3105
    .local v2, "datas":Ljava/lang/String;
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;->fileParams:Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMFILEPARAMS;

    iput-object v2, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMFILEPARAMS;->data:Ljava/lang/String;

    .line 3106
    return-object v0
.end method

.method private decrementWakeLock(Lcom/huawei/ims/ImsRilRequest;)V
    .registers 11
    .param p1, "rr"    # Lcom/huawei/ims/ImsRilRequest;

    .line 3820
    monitor-enter p1

    .line 3821
    :try_start_1
    iget v0, p1, Lcom/huawei/ims/ImsRilRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7c

    const/4 v2, 0x1

    if-eqz v0, :cond_23

    if-eq v0, v2, :cond_22

    .line 3849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/ImsRilRequest;->mWakeLockType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logw(Ljava/lang/String;)V

    goto :goto_7d

    .line 3845
    :cond_22
    goto :goto_7d

    .line 3823
    :cond_23
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_81

    .line 3824
    :try_start_26
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v4, p1, Lcom/huawei/ims/ImsRilRequest;->mClientId:Ljava/lang/String;

    iget v5, p1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    iget v6, p1, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    .line 3825
    iget v7, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    const/4 v8, 0x0

    if-le v7, v2, :cond_37

    iget v7, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    sub-int/2addr v7, v2

    goto :goto_38

    :cond_37
    move v7, v8

    .line 3824
    :goto_38
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 3826
    iget-object v3, p1, Lcom/huawei/ims/ImsRilRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v3

    .line 3827
    .local v3, "clientId":Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_66

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v4, :cond_66

    .line 3828
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v5, p1, Lcom/huawei/ims/ImsRilRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 3829
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4}, Landroid/os/WorkSource;->size()I

    move-result v4

    if-nez v4, :cond_5f

    .line 3830
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3832
    :cond_5f
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3835
    :cond_66
    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    if-le v4, v2, :cond_70

    .line 3836
    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    goto :goto_77

    .line 3838
    :cond_70
    iput v8, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3839
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3841
    .end local v3    # "clientId":Ljava/lang/String;
    :goto_77
    monitor-exit v0

    .line 3842
    goto :goto_7d

    .line 3841
    :catchall_79
    move-exception v1

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_26 .. :try_end_7b} :catchall_79

    .end local p0    # "this":Lcom/huawei/ims/ImsRIL;
    .end local p1    # "rr":Lcom/huawei/ims/ImsRilRequest;
    :try_start_7b
    throw v1

    .line 3847
    .restart local p0    # "this":Lcom/huawei/ims/ImsRIL;
    .restart local p1    # "rr":Lcom/huawei/ims/ImsRilRequest;
    :cond_7c
    nop

    .line 3851
    :goto_7d
    iput v1, p1, Lcom/huawei/ims/ImsRilRequest;->mWakeLockType:I

    .line 3852
    monitor-exit p1

    .line 3853
    return-void

    .line 3852
    :catchall_81
    move-exception v0

    monitor-exit p1
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_81

    throw v0
.end method

.method private findAndRemoveRequestFromList(I)Lcom/huawei/ims/ImsRilRequest;
    .registers 7
    .param p1, "serial"    # I

    .line 3899
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3900
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_4
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_a
    if-ge v1, v2, :cond_2c

    .line 3901
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRilRequest;

    .line 3902
    .local v3, "rr":Lcom/huawei/ims/ImsRilRequest;
    iget v4, v3, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    if-ne v4, p1, :cond_29

    .line 3903
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3904
    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    if-lez v4, :cond_27

    .line 3905
    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    .line 3907
    :cond_27
    monitor-exit v0

    return-object v3

    .line 3900
    .end local v3    # "rr":Lcom/huawei/ims/ImsRilRequest;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3910
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2c
    monitor-exit v0

    .line 3911
    const/4 v0, 0x0

    return-object v0

    .line 3910
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    .registers 8
    .param p1, "result"    # Landroid/os/Message;

    .line 1090
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    if-eqz v0, :cond_7

    .line 1091
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    return-object v0

    .line 1095
    :cond_7
    const/4 v0, 0x0

    .line 1098
    .local v0, "huaweiRadio":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    const/4 v1, 0x0

    :try_start_9
    sget-object v2, Lcom/huawei/ims/ImsRIL;->SOCKET_NAME_IMSRILS:[Ljava/lang/String;

    .line 1099
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v3, :cond_11

    const/4 v3, 0x0

    goto :goto_17

    :cond_11
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_17
    aget-object v2, v2, v3

    invoke-static {v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v2

    move-object v0, v2

    .line 1100
    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_20} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_20} :catch_21

    .line 1103
    goto :goto_27

    .line 1101
    :catch_21
    move-exception v2

    .line 1102
    .local v2, "e":Ljava/lang/Exception;
    :try_start_22
    const-string v3, "getRadioProxy: huaweiradioProxy got V2_0 exception"

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1105
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_27
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    if-eqz v2, :cond_41

    .line 1106
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1107
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

    invoke-interface {v2, v3, v4}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setResponseFunctionsHuawei(Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse;Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_41} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_41} :catch_42

    .line 1114
    .end local v0    # "huaweiRadio":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    :cond_41
    goto :goto_4a

    .line 1111
    :catch_42
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    .line 1113
    const-string v2, "setResponseFunctions occurs exception"

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4a
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    if-nez v0, :cond_71

    .line 1116
    if-eqz p1, :cond_5b

    .line 1117
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1118
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1120
    :cond_5b
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1121
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 1120
    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1124
    :cond_71
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    return-object v0
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .registers 5
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 3756
    if-eqz p1, :cond_24

    .line 3757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3759
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V
    .registers 4
    .param p1, "caller"    # Ljava/lang/String;

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception in + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    .line 1087
    return-void
.end method

.method private logUnimplemented()V
    .registers 2

    .line 1294
    const-string v0, "Unimplemented method."

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method private releaseWakeLockIfDone()V
    .registers 4

    .line 1135
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1136
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    if-nez v1, :cond_1e

    .line 1137
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->removeMessages(I)V

    .line 1138
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1140
    :cond_1e
    monitor-exit v0

    .line 1141
    return-void

    .line 1140
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static requestToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "request"    # I

    .line 927
    const/16 v0, 0x18

    if-eq p0, v0, :cond_f3

    const/16 v0, 0x35

    if-eq p0, v0, :cond_f0

    const/16 v0, 0x48

    if-eq p0, v0, :cond_ed

    const/16 v0, 0x70

    if-eq p0, v0, :cond_ea

    const/16 v0, 0x7d5

    if-eq p0, v0, :cond_e7

    const/16 v0, 0x806

    if-eq p0, v0, :cond_e4

    const/16 v0, 0x815

    if-eq p0, v0, :cond_e1

    const/16 v0, 0x81c

    if-eq p0, v0, :cond_de

    const/16 v0, 0x854

    if-eq p0, v0, :cond_db

    const/16 v0, 0x87a

    if-eq p0, v0, :cond_d8

    const/16 v0, 0x31

    if-eq p0, v0, :cond_d5

    const/16 v0, 0x32

    if-eq p0, v0, :cond_d2

    const/16 v0, 0x7fb

    if-eq p0, v0, :cond_cf

    const/16 v0, 0x7fc

    if-eq p0, v0, :cond_cc

    const/16 v0, 0x81e

    if-eq p0, v0, :cond_c9

    const/16 v0, 0x81f

    if-eq p0, v0, :cond_c6

    const/16 v0, 0x831

    if-eq p0, v0, :cond_c3

    const/16 v0, 0x832

    if-eq p0, v0, :cond_c0

    packed-switch p0, :pswitch_data_f6

    packed-switch p0, :pswitch_data_106

    packed-switch p0, :pswitch_data_114

    packed-switch p0, :pswitch_data_12c

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1023
    :pswitch_66
    const-string v0, "RIL_REQUEST_HW_VOWIFI_SET_REG_ERR_RPT"

    return-object v0

    .line 1021
    :pswitch_69
    const-string v0, "HW_GET_IMS_SMS_CONFIG"

    return-object v0

    .line 1019
    :pswitch_6c
    const-string v0, "HW_SET_IMS_SMS_CONFIG"

    return-object v0

    .line 1015
    :pswitch_6f
    const-string v0, "RIL_REQUEST_HW_VOLTE_IMPI"

    return-object v0

    .line 1013
    :pswitch_72
    const-string v0, "RIL_REQUEST_HW_VOLTE_DOMAIN"

    return-object v0

    .line 981
    :pswitch_75
    const-string v0, "RIL_REQUEST_CANCEL_IMS_VIDEO_CALL"

    return-object v0

    .line 941
    :pswitch_78
    const-string v0, "HW_IMS_LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 1009
    :pswitch_7b
    const-string v0, "RIL_REQUEST_HW_SET_IMSVT_CAPABILITY"

    return-object v0

    .line 1007
    :pswitch_7e
    const-string v0, "RIL_REQUEST_HW_IMS_BATTERY_STATUS"

    return-object v0

    .line 1005
    :pswitch_81
    const-string v0, "HW_SET_WIFI_EMERGENCY_AID"

    return-object v0

    .line 1003
    :pswitch_84
    const-string v0, "HW_IMS_GET_DM_USER"

    return-object v0

    .line 1001
    :pswitch_87
    const-string v0, "HW_IMS_GET_DM_SMS"

    return-object v0

    .line 999
    :pswitch_8a
    const-string v0, "HW_IMS_GET_DM_DYN"

    return-object v0

    .line 997
    :pswitch_8d
    const-string v0, "HW_IMS_GET_DM_TIMER"

    return-object v0

    .line 995
    :pswitch_90
    const-string v0, "HW_IMS_GET_DM_PCSCF"

    return-object v0

    .line 993
    :pswitch_93
    const-string v0, "HW_IMS_SET_DM_SMS"

    return-object v0

    .line 991
    :pswitch_96
    const-string v0, "HW_IMS_SET_DM_TIMER"

    return-object v0

    .line 989
    :pswitch_99
    const-string v0, "HW_IMS_SET_DM_DYN"

    return-object v0

    .line 987
    :pswitch_9c
    const-string v0, "HW_IMS_SET_DM_PCSCF"

    return-object v0

    .line 975
    :pswitch_9f
    const-string v0, "RIL_REQUEST_HW_UICC_KS_NAF"

    return-object v0

    .line 973
    :pswitch_a2
    const-string v0, "RIL_REQUEST_HW_GET_UICC_FILE"

    return-object v0

    .line 971
    :pswitch_a5
    const-string v0, "RIL_REQUEST_HW_UICC_FILE_UPDATE"

    return-object v0

    .line 969
    :pswitch_a8
    const-string v0, "RIL_REQUEST_HW_UICC_GBA_BOOTSTRAP"

    return-object v0

    .line 967
    :pswitch_ab
    const-string v0, "RIL_REQUEST_HW_UICC_AUTH"

    return-object v0

    .line 943
    :pswitch_ae
    const-string v0, "HW_IMS_UDUB"

    return-object v0

    .line 957
    :pswitch_b1
    const-string v0, "HW_IMS_CONFERENCE"

    return-object v0

    .line 953
    :pswitch_b4
    const-string v0, "HW_IMS_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 939
    :pswitch_b7
    const-string v0, "HW_IMS_HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 937
    :pswitch_ba
    const-string v0, "HW_IMS_HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 935
    :pswitch_bd
    const-string v0, "HW_IMS_HANGUP"

    return-object v0

    .line 983
    :cond_c0
    const-string v0, "HW_IMS_MODIFY_CALL_CONFIRM"

    return-object v0

    .line 979
    :cond_c3
    const-string v0, "HW_IMS_MODIFY_CALL_INITIATE"

    return-object v0

    .line 965
    :cond_c6
    const-string v0, "HW_IMS_SET_CALL_WAITING"

    return-object v0

    .line 963
    :cond_c9
    const-string v0, "HW_IMS_SET_CLIR"

    return-object v0

    .line 933
    :cond_cc
    const-string v0, "HW_IMS_GET_CURRENT_CALLS"

    return-object v0

    .line 931
    :cond_cf
    const-string v0, "HW_IMS_DIAL"

    return-object v0

    .line 951
    :cond_d2
    const-string v0, "HW_IMS_DTMF_STOP"

    return-object v0

    .line 949
    :cond_d5
    const-string v0, "HW_IMS_DTMF_START"

    return-object v0

    .line 1017
    :cond_d8
    const-string v0, "RIL_REQUEST_HW_IMS_REJ_CALL"

    return-object v0

    .line 977
    :cond_db
    const-string v0, "RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG"

    return-object v0

    .line 961
    :cond_de
    const-string v0, "HW_IMS_ADD_CONFERENCE_MEMBER"

    return-object v0

    .line 959
    :cond_e1
    const-string v0, "HW_IMS_IMPU"

    return-object v0

    .line 945
    :cond_e4
    const-string v0, "HW_IMS_ANSWER"

    return-object v0

    .line 985
    :cond_e7
    const-string v0, "RIL_REQUEST_HW_RESTRAT_RILD"

    return-object v0

    .line 929
    :cond_ea
    const-string v0, "IMS_REGISTRATION_STATE"

    return-object v0

    .line 1011
    :cond_ed
    const-string v0, "HW_IMS_REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 955
    :cond_f0
    const-string v0, "HW_IMS_SET_MUTE"

    return-object v0

    .line 947
    :cond_f3
    const-string v0, "HW_IMS_DTMF"

    return-object v0

    :pswitch_data_f6
    .packed-switch 0xc
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
    .end packed-switch

    :pswitch_data_106
    .packed-switch 0x821
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x85a
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x865
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
    .end packed-switch
.end method

.method private resetProxyAndRequestList()V
    .registers 2

    .line 1079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    .line 1080
    invoke-static {}, Lcom/huawei/ims/ImsRilRequest;->resetSerial()V

    .line 1081
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->clearRequestList(I)V

    .line 1082
    return-void
.end method

.method static responseToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "request"    # I

    .line 1036
    const/16 v0, 0x40d

    if-eq p0, v0, :cond_73

    const/16 v0, 0xbdc

    if-eq p0, v0, :cond_70

    const/16 v0, 0xbde

    if-eq p0, v0, :cond_6d

    const/16 v0, 0xbec

    if-eq p0, v0, :cond_6a

    const/16 v0, 0xbca

    if-eq p0, v0, :cond_67

    const/16 v0, 0xbcb

    if-eq p0, v0, :cond_64

    const/16 v0, 0xbd5

    if-eq p0, v0, :cond_61

    const/16 v0, 0xbd6

    if-eq p0, v0, :cond_5e

    const/16 v0, 0xbe5

    if-eq p0, v0, :cond_5b

    const/16 v0, 0xbe6

    if-eq p0, v0, :cond_58

    packed-switch p0, :pswitch_data_76

    packed-switch p0, :pswitch_data_84

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1072
    :pswitch_40
    const-string v0, "RIL_UNSOL_HW_IMS_REG_ERR_REPORT"

    return-object v0

    .line 1070
    :pswitch_43
    const-string v0, "RIL_UNSOL_HW_IMS_REG_TYPE_IND"

    return-object v0

    .line 1068
    :pswitch_46
    const-string v0, "RIL_UNSOL_HW_IMS_HOLD_TONE_IND"

    return-object v0

    .line 1052
    :pswitch_49
    const-string v0, "UNSOL_HW_IMS_SRV_STATUS_UPDATE"

    return-object v0

    .line 1056
    :pswitch_4c
    const-string v0, "UNSOL_HW_IMS_RESPONSE_HANDOVER"

    return-object v0

    .line 1044
    :pswitch_4f
    const-string v0, "UNSOL_HW_IMS_RINGBACK_TONE"

    return-object v0

    .line 1042
    :pswitch_52
    const-string v0, "UNSOL_HW_IMS_CALL_RING"

    return-object v0

    .line 1040
    :pswitch_55
    const-string v0, "UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 1050
    :cond_58
    const-string v0, "RIL_UNSOL_HW_LTE_RRC_INFO"

    return-object v0

    .line 1048
    :cond_5b
    const-string v0, "RIL_UNSOL_HW_LTE_PDCP_INFO"

    return-object v0

    .line 1060
    :cond_5e
    const-string v0, "UNSOL_HW_IMS_RESPONSE_MODIFY_END_CAUSE"

    return-object v0

    .line 1058
    :cond_61
    const-string v0, "UNSOL_HW_IMS_RESPONSE_MODIFY_IND"

    return-object v0

    .line 1046
    :cond_64
    const-string v0, "UNSOL_HW_IMS_VOICE_BAND_INFO"

    return-object v0

    .line 1054
    :cond_67
    const-string v0, "UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 1066
    :cond_6a
    const-string v0, "RIL_UNSOL_HW_IMS_DMCN"

    return-object v0

    .line 1064
    :cond_6d
    const-string v0, "RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY"

    return-object v0

    .line 1062
    :cond_70
    const-string v0, "UNSOL_HW_IMS_MT_STATUS_REPORT"

    return-object v0

    .line 1038
    :cond_73
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    :pswitch_data_76
    .packed-switch 0xbc3
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
    .end packed-switch

    :pswitch_data_84
    .packed-switch 0xbee
        :pswitch_46
        :pswitch_43
        :pswitch_40
    .end packed-switch
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .registers 10
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1144
    if-nez p2, :cond_5

    .line 1145
    const-string v0, ""

    return-object v0

    .line 1150
    :cond_5
    instance-of v0, p2, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_39

    .line 1151
    move-object v0, p2

    check-cast v0, [I

    .line 1152
    .local v0, "intArray":[I
    array-length v4, v0

    .line 1153
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 1154
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_31

    .line 1155
    const/4 v5, 0x0

    .line 1156
    .local v5, "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1157
    :goto_23
    if-ge v6, v4, :cond_31

    .line 1158
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_23

    .line 1161
    .end local v5    # "i":I
    :cond_31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, "str":Ljava/lang/String;
    goto :goto_99

    .end local v0    # "str":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_39
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 1164
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 1165
    .local v0, "strings":[Ljava/lang/String;
    array-length v4, v0

    .line 1166
    .restart local v4    # "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 1167
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    if-lez v4, :cond_5f

    .line 1168
    const/4 v5, 0x0

    .line 1169
    .restart local v5    # "i":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .restart local v6    # "i":I
    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    :goto_51
    if-ge v6, v4, :cond_5f

    .line 1171
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget-object v6, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v5

    goto :goto_51

    .line 1174
    .end local v5    # "i":I
    :cond_5f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, "str":Ljava/lang/String;
    goto :goto_99

    .end local v0    # "str":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :cond_67
    const/16 v0, 0x7fc

    if-ne p1, v0, :cond_95

    .line 1177
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    .line 1178
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1179
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1180
    .local v2, "callListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7a
    if-ge v3, v2, :cond_90

    .line 1181
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    .line 1183
    .end local v3    # "i":I
    :cond_90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1184
    .end local v2    # "callListSize":I
    .local v0, "str":Ljava/lang/String;
    goto :goto_99

    .line 1185
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_95
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .restart local v0    # "str":Ljava/lang/String;
    :goto_99
    return-object v0
.end method

.method private sendAck()V
    .registers 5

    .line 3379
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/16 v2, 0x320

    invoke-static {v2, v1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3380
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3381
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_1d

    .line 3383
    :try_start_f
    invoke-interface {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->responseAcknowledgement()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_13

    .line 3387
    :goto_12
    goto :goto_22

    .line 3384
    :catch_13
    move-exception v2

    .line 3385
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    .line 3386
    const-string v3, "sendAck occues RemoteException or RuntimeException"

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_12

    .line 3389
    :cond_1d
    const-string v2, "Error trying to send ack, radioProxy = null"

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3391
    :goto_22
    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->release()V

    .line 3392
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2488
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2489
    return-void
.end method

.method public acceptCall(Landroid/os/Message;I)V
    .registers 8
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .line 2498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptCall callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2501
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->getChrReportPhoneId()I

    move-result v1

    const-string v2, "HwIms"

    const/4 v3, 0x2

    const-string v4, "AP_FLOW_SUC"

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 2505
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x806

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2506
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2507
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2508
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_62

    .line 2509
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2511
    :try_start_56
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->acceptImsCall(II)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_5b} :catch_5c

    .line 2514
    goto :goto_62

    .line 2512
    :catch_5c
    move-exception v2

    .line 2513
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acceptCall"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2516
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_62
    :goto_62
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "isSuccess"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1490
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1491
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .registers 4
    .param p1, "isSuccess"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1485
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1486
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .registers 4
    .param p1, "isSuccess"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1480
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1481
    return-void
.end method

.method public addToConference(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2847
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 2848
    const/16 v1, 0x81c

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2849
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2850
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2851
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_52

    .line 2852
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2855
    :try_start_46
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->addImsConfMember(ILjava/lang/String;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 2858
    goto :goto_52

    .line 2856
    :catch_4c
    move-exception v2

    .line 2857
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "addToConference"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2860
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1581
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1582
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 1340
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1341
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1325
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1326
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1330
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1331
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1767
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1768
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1762
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1763
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2826
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x10

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2827
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2828
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2829
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 2830
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2832
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->conference(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 2835
    goto :goto_3e

    .line 2833
    :catch_38
    move-exception v2

    .line 2834
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "conference"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2837
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .registers 4
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1465
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1466
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1450
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1451
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1445
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1446
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/huawei/ims/ImsCallProfiles;Landroid/os/Message;)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "imsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p4, "result"    # Landroid/os/Message;

    .line 2441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dial address= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clirMode= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " imsCallProfile= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2444
    if-eqz p3, :cond_3d

    invoke-virtual {p3}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3d

    .line 2445
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->isVtSdkInited()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2446
    const-string v0, "dial vt call, but vt sdk init failed"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logw(Ljava/lang/String;)V

    .line 2450
    :cond_3d
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->getChrReportPhoneId()I

    move-result v2

    const-string v3, "HwIms"

    const-string v4, "AP_FLOW_SUC"

    invoke-interface {v0, v3, v2, v1, v4}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 2454
    const/16 v0, 0x7fb

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    invoke-static {v0, p4, v1}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2455
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2456
    invoke-direct {p0, p4}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2457
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_d9

    .line 2458
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2462
    :try_start_92
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;-><init>()V

    .line 2463
    .local v2, "dialInfo":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;
    if-eqz p1, :cond_9b

    move-object v3, p1

    goto :goto_9d

    :cond_9b
    const-string v3, ""

    :goto_9d
    iput-object v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;->address:Ljava/lang/String;

    .line 2464
    iput p2, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;->clir:I

    .line 2465
    if-eqz p3, :cond_cd

    .line 2466
    iget-object v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;->callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {p3}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callType:I

    .line 2467
    iget-object v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;->callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {p3}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callDomain:I

    .line 2468
    iget v3, p3, Lcom/huawei/ims/ImsCallProfiles;->isEncrypt:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;->encryptState:I

    .line 2469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsCallProfile.isEncrypt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p3, Lcom/huawei/ims/ImsCallProfiles;->isEncrypt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2471
    :cond_cd
    iget v3, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v3, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->imsDial(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;)V
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_d2} :catch_d3
    .catch Ljava/lang/RuntimeException; {:try_start_92 .. :try_end_d2} :catch_d3

    .line 2475
    .end local v2    # "dialInfo":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;
    goto :goto_d9

    .line 2473
    :catch_d3
    move-exception v2

    .line 2474
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "dial"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2477
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d9
    :goto_d9
    return-void
.end method

.method public dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clirMode"    # I
    .param p6, "result"    # Landroid/os/Message;

    .line 2421
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2422
    return-void
.end method

.method public dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "isEmergencyCall"    # Z
    .param p3, "emergencyNumber"    # Landroid/telephony/emergency/EmergencyNumber;
    .param p4, "hasKnownUserIntentEmergency"    # Z
    .param p5, "clirMode"    # I
    .param p6, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p7, "result"    # Landroid/os/Message;

    .line 2427
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2428
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1270
    if-nez p2, :cond_3

    .line 1271
    return-void

    .line 1273
    :cond_3
    const-string v0, "ImsRIL:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1276
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mWakeLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_d2

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLockTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1281
    :try_start_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestMessagesPending="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestMessagesWaiting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1284
    .local v0, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRequestList count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_82
    if-ge v2, v0, :cond_b3

    .line 1286
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRilRequest;

    .line 1287
    .local v3, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    .end local v3    # "rr":Lcom/huawei/ims/ImsRilRequest;
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 1289
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_3b .. :try_end_b4} :catchall_cf

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTestingEmergencyCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    return-void

    .line 1289
    :catchall_cf
    move-exception v0

    :try_start_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v0

    .line 1277
    :catchall_d2
    move-exception v1

    :try_start_d3
    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v1
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .registers 5
    .param p1, "response"    # Landroid/os/Message;

    .line 3462
    const-string v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 3464
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->IS_VZW:Z

    if-eqz v0, :cond_2e

    .line 3465
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3466
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_2e

    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_2e

    .line 3467
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 3468
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_2d

    .line 3469
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3471
    :cond_2d
    return-void

    .line 3475
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2e
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2868
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x48

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2869
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2870
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2871
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 2872
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2874
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->explicitCallTransfer(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 2877
    goto :goto_3e

    .line 2875
    :catch_38
    move-exception v2

    .line 2876
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "explicitCallTransfer"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2879
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1549
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1550
    return-void
.end method

.method public getBalongSim(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2338
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2339
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1571
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1572
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1692
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1693
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .registers 3
    .param p1, "result"    # Landroid/os/Message;

    .line 1507
    const-string v0, "getCLIR"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1508
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1509
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1727
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1728
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1666
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1667
    return-void
.end method

.method public getChrReportPhoneId()I
    .registers 4

    .line 2638
    const/4 v0, 0x0

    .line 2639
    .local v0, "phoneId":I
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_c

    .line 2640
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_14

    .line 2642
    :cond_c
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 2644
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChrReportPhoneId phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 2645
    return v0
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2568
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x7fc

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2569
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2572
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2573
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_43

    .line 2574
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2577
    :try_start_32
    const-string v2, "getCurrentCalls,call getCurrentImsCalls"

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2579
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getCurrentImsCalls(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_3c} :catch_3d

    .line 2584
    goto :goto_43

    .line 2582
    :catch_3d
    move-exception v2

    .line 2583
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCurrentCalls"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2588
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_43
    :goto_43
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1350
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1351
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1410
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1411
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1687
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1688
    return-void
.end method

.method public getDmDyn(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3604
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x860

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3605
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3606
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3607
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 3608
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3610
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getDmDynamicPram(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3613
    goto :goto_3e

    .line 3611
    :catch_38
    move-exception v2

    .line 3612
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDmDyn"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3615
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public getDmPcscf(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3566
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85e

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3567
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3568
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3569
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 3570
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3572
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getDmPcscf(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3575
    goto :goto_3e

    .line 3573
    :catch_38
    move-exception v2

    .line 3574
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDmPcscf"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3577
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public getDmSms(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3623
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x861

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3624
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3625
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3626
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 3627
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3629
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getSmsPsi(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3632
    goto :goto_3e

    .line 3630
    :catch_38
    move-exception v2

    .line 3631
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDmSms"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3634
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public getDmTimer(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3585
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85f

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3586
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3587
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3588
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 3589
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3591
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getDmTimer(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3594
    goto :goto_3e

    .line 3592
    :catch_38
    move-exception v2

    .line 3593
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDmTimer"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3596
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public getDmUser(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3642
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x862

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3643
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3644
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3645
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 3646
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3648
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getDmUser(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3651
    goto :goto_3e

    .line 3649
    :catch_38
    move-exception v2

    .line 3650
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDmUser"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3653
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1671
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1672
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2378
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1365
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1366
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1370
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1371
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1355
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1356
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1360
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1361
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1300
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1301
    return-void
.end method

.method public getIccSlotsStatus(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2415
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2416
    return-void
.end method

.method public getImsImpu(ILandroid/os/Message;)V
    .registers 7
    .param p1, "source"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2618
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x815

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2619
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2620
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2621
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_46

    .line 2622
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2624
    :try_start_3a
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getImsImpu(II)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3f} :catch_40

    .line 2627
    goto :goto_46

    .line 2625
    :catch_40
    move-exception v2

    .line 2626
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsImpu"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2629
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .registers 7
    .param p1, "result"    # Landroid/os/Message;

    .line 2596
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x70

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2597
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2598
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2599
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_45

    .line 2600
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2601
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;-><init>()V

    .line 2603
    .local v2, "payload":Lvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;
    :try_start_37
    iget v3, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    const/16 v4, 0x1f4

    invoke-interface {v1, v3, v4, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->imsRequest(IILvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3e} :catch_3f

    .line 2606
    goto :goto_45

    .line 2604
    :catch_3f
    move-exception v3

    .line 2605
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "getImsRegistrationState"

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2608
    .end local v2    # "payload":Lvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_45
    :goto_45
    return-void
.end method

.method public getImsSmsConfig(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3717
    const-string v0, "getImsSmsConfig ENTER"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3718
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x86c

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3719
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3720
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3721
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_48

    .line 3722
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3724
    :try_start_37
    const-string v2, "Calling getImsSmsConfig"

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3725
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getImsSmsConfig(I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_41} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_41} :catch_42

    .line 3729
    goto :goto_48

    .line 3726
    :catch_42
    move-exception v2

    .line 3727
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsSmsConfig no support"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3731
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_48
    :goto_48
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2546
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x867

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2548
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2549
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2550
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 2551
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2554
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getLastImsCallFailCause(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 2558
    goto :goto_3e

    .line 2556
    :catch_38
    move-exception v2

    .line 2557
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getLastCallFailCause"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2560
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1390
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1391
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1811
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1812
    return-void
.end method

.method public getLteOnCdmaMode()I
    .registers 2

    .line 2312
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2313
    const/4 v0, 0x0

    return v0
.end method

.method public getMute(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1395
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1396
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1544
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1545
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1415
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1416
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1816
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1817
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1636
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1637
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1380
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1381
    return-void
.end method

.method public getRadioState()I
    .registers 2

    .line 1821
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1822
    const/4 v0, -0x1

    return v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1400
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1401
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1646
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1647
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1772
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1773
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1405
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1406
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "isAccept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1626
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1627
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2525
    const-string v0, "hangupConnection"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2526
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v2, 0xc

    invoke-static {v2, p2, v1}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v1

    .line 2527
    .local v1, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2528
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v2

    .line 2529
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v2, :cond_49

    .line 2530
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2532
    :try_start_3f
    iget v3, v1, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v2, v3, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->hangup(II)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_44} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_44} :catch_45

    .line 2535
    goto :goto_49

    .line 2533
    :catch_45
    move-exception v3

    .line 2534
    .local v3, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2537
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_49
    :goto_49
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2786
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 2787
    const/16 v1, 0xe

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2788
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2789
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2790
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 2791
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2793
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->hangupForegroundResumeBackground(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 2796
    goto :goto_3e

    .line 2794
    :catch_38
    move-exception v2

    .line 2795
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupForegroundResumeBackground"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2798
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2806
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 2807
    const/16 v1, 0xd

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2808
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2809
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2810
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 2811
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2813
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->hangupWaitingOrBackground(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 2816
    goto :goto_3e

    .line 2814
    :catch_38
    move-exception v2

    .line 2815
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupWaitingOrBackground"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2818
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .registers 3
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2364
    return-void
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2307
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2308
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 10
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .line 1496
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1497
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .line 1502
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1503
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2360
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 8
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .line 2374
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .registers 9
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .line 2369
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 1591
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1592
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1596
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1597
    return-void
.end method

.method public isSupportCnap()Z
    .registers 5

    .line 3920
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3921
    .local v0, "manager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 3922
    return v1

    .line 3924
    :cond_e
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v2

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v2

    .line 3925
    .local v2, "subId":I
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3926
    .local v3, "bundle":Landroid/os/PersistableBundle;
    if-nez v3, :cond_23

    .line 3927
    return v1

    .line 3929
    :cond_23
    const-string v1, "suppport_cnap_bool"

    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public log(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 1223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILJ_IMS["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .registers 8
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallConfirm callModify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 2711
    if-eqz p2, :cond_ba

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getCurrCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v0

    if-eqz v0, :cond_ba

    .line 2712
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getDestCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v0

    if-nez v0, :cond_24

    goto/16 :goto_ba

    .line 2715
    :cond_24
    const/16 v0, 0x832

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 2716
    invoke-static {v0, p1, v1}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2717
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2718
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;-><init>()V

    .line 2719
    .local v1, "imsCallModify":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getCallIndex()I

    move-result v2

    iput v2, v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->callIndex:I

    .line 2720
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getCurrCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v3

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callType:I

    .line 2721
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getCurrCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v3

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callDomain:I

    .line 2722
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getDestCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v3

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callType:I

    .line 2723
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getDestCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v3

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callDomain:I

    .line 2724
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v2

    .line 2725
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v2, :cond_b9

    .line 2726
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2729
    :try_start_ad
    iget v3, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v2, v3, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->modifyImsCallConfirm(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b2} :catch_b3
    .catch Ljava/lang/RuntimeException; {:try_start_ad .. :try_end_b2} :catch_b3

    .line 2732
    goto :goto_b9

    .line 2730
    :catch_b3
    move-exception v3

    .line 2731
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "modifyCallConfirm"

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2734
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b9
    :goto_b9
    return-void

    .line 2713
    .end local v0    # "rr":Lcom/huawei/ims/ImsRilRequest;
    .end local v1    # "imsCallModify":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;
    .end local v2    # "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    :cond_ba
    :goto_ba
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .registers 9
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 2655
    const-string v0, "modifyCallInitiate"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 2656
    if-nez p2, :cond_d

    .line 2657
    const-string v0, "modifyCallInitiate callModify is null"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2658
    return-void

    .line 2660
    :cond_d
    const/16 v1, 0x831

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 2661
    invoke-static {v1, p1, v2}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v1

    .line 2662
    .local v1, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2663
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;-><init>()V

    .line 2664
    .local v2, "imsCallModify":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getCallIndex()I

    move-result v3

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->callIndex:I

    .line 2665
    iget-object v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getCurrCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callType:I

    .line 2666
    iget-object v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getCurrCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callDomain:I

    .line 2667
    iget-object v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getDestCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callType:I

    .line 2668
    iget-object v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getDestCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callDomain:I

    .line 2669
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v3

    .line 2670
    .local v3, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v3, :cond_a0

    .line 2671
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "radioProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2674
    :try_start_96
    iget v4, v1, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v3, v4, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->modifyImsCallInitiate(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_9b} :catch_9c
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_9b} :catch_9c

    .line 2677
    goto :goto_a0

    .line 2675
    :catch_9c
    move-exception v4

    .line 2676
    .local v4, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2679
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a0
    :goto_a0
    return-void
.end method

.method public modifyCallUpgradeCancel(Landroid/os/Message;I)V
    .registers 7
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 2689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallUpgradeCancel callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 2690
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x868

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2691
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2692
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2693
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_5a

    .line 2694
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2696
    :try_start_4e
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->cancelImsVideoCall(II)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_53} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_53} :catch_54

    .line 2699
    goto :goto_5a

    .line 2697
    :catch_54
    move-exception v2

    .line 2698
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "modifyCallUpgradeCancel"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2701
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5a
    :goto_5a
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .registers 3
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2382
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .registers 3
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 2386
    return-void
.end method

.method processIndication(I)V
    .registers 3
    .param p1, "indicationType"    # I

    .line 3369
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 3370
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->sendAck()V

    .line 3371
    const-string v0, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3373
    :cond_b
    return-void
.end method

.method processRequestAck(I)V
    .registers 6
    .param p1, "serial"    # I

    .line 3401
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3403
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3404
    .local v1, "size":I
    if-ltz p1, :cond_16

    if-ge p1, v1, :cond_16

    .line 3405
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsRilRequest;

    .local v2, "rr":Lcom/huawei/ims/ImsRilRequest;
    goto :goto_2b

    .line 3407
    .end local v2    # "rr":Lcom/huawei/ims/ImsRilRequest;
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequestAck: Unexpected serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3408
    const/4 v2, 0x0

    .line 3411
    .end local v1    # "size":I
    .restart local v2    # "rr":Lcom/huawei/ims/ImsRilRequest;
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_5b

    .line 3412
    if-nez v2, :cond_34

    .line 3413
    const-string v0, "processRequestAck: Unexpected solicited ack response! "

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    goto :goto_5a

    .line 3415
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rr.serialString() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Ack < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3417
    :goto_5a
    return-void

    .line 3411
    .end local v2    # "rr":Lcom/huawei/ims/ImsRilRequest;
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method processResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRilRequest;
    .registers 8
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 3314
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3315
    return-object v0

    .line 3317
    :cond_4
    iget v1, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->serial:I

    .line 3318
    .local v1, "serial":I
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->type:I

    .line 3319
    .local v2, "type":I
    const/4 v3, 0x0

    .line 3320
    .local v3, "ret":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->findAndRemoveRequestFromList(I)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v4

    .line 3321
    .local v4, "rr":Lcom/huawei/ims/ImsRilRequest;
    if-nez v4, :cond_10

    .line 3322
    return-object v0

    .line 3326
    :cond_10
    const/4 v0, 0x2

    if-ne v2, v0, :cond_3e

    .line 3327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response received for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Sending ack to ril.cpp"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3330
    :cond_3e
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->releaseWakeLockIfDone()V

    .line 3331
    return-object v4
.end method

.method processResponseDone(Lcom/huawei/ims/ImsRilRequest;Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 8
    .param p1, "rr"    # Lcom/huawei/ims/ImsRilRequest;
    .param p2, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 3343
    if-eqz p1, :cond_aa

    if-nez p2, :cond_6

    goto/16 :goto_aa

    .line 3346
    :cond_6
    iget v0, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    const-string v1, "< "

    if-nez v0, :cond_71

    .line 3347
    iget v0, p1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    const/16 v2, 0x815

    const-string v3, " "

    if-ne v0, v2, :cond_45

    .line 3348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    .line 3349
    invoke-direct {p0, v1, p3}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3348
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_9f

    .line 3351
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-direct {p0, v1, p3}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_9f

    .line 3354
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3355
    iget v0, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/huawei/ims/ImsRilRequest;->onError(ILjava/lang/Object;)V

    .line 3357
    :goto_9f
    iget v0, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_a6

    .line 3358
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->decrementWakeLock(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3360
    :cond_a6
    invoke-virtual {p1}, Lcom/huawei/ims/ImsRilRequest;->release()V

    .line 3361
    return-void

    .line 3344
    :cond_aa
    :goto_aa
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1606
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1607
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .registers 3
    .param p1, "response"    # Landroid/os/Message;

    .line 1565
    const-string v0, "queryClip"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1566
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1567
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1560
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1561
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .registers 5
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallWaiting serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1514
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1515
    return-void
.end method

.method public queryCardType(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 2343
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2344
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1697
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1698
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .registers 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1782
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1783
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 1788
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1789
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1712
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1713
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2210
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2211
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1857
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1858
    return-void
.end method

.method public registerForCallModifyResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 809
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 810
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 811
    return-void
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 702
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 703
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 704
    return-void
.end method

.method public registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2160
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2161
    return-void
.end method

.method public registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1912
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1913
    return-void
.end method

.method public registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2235
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2236
    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2265
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2266
    return-void
.end method

.method public registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2255
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2256
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2150
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2151
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2276
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->IS_VZW:Z

    if-eqz v0, :cond_8

    .line 2277
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_b

    .line 2279
    :cond_8
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2282
    :goto_b
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 509
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 510
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 511
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2056
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2057
    return-void
.end method

.method public registerForImsCsRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 593
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 594
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsCsRedialRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 595
    return-void
.end method

.method public registerForImsDmcn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 615
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 616
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsDmcnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 617
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 723
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 724
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 725
    return-void
.end method

.method public registerForImsRegMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 766
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 767
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 768
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1944
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1945
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1946
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1933
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1934
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1935
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2200
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2201
    return-void
.end method

.method public registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1902
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1903
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 788
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 789
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 790
    return-void
.end method

.method public registerForMtStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 681
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 682
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 683
    return-void
.end method

.method public registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1922
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1923
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1867
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1868
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2180
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2181
    return-void
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1877
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1878
    return-void
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1847
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1848
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 852
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 853
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 854
    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1827
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1828
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2190
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2191
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2245
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2246
    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2297
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2298
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 744
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 745
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 746
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2170
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2171
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 530
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 531
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 532
    return-void
.end method

.method public registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1956
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1957
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2220
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2221
    return-void
.end method

.method public registerForUnsolLtePdcpInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 551
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 552
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLtePdcpInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 553
    return-void
.end method

.method public registerForUnsolLteRrcInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 572
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 573
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLteRrcInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 574
    return-void
.end method

.method public registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 660
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 661
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 662
    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1837
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1838
    return-void
.end method

.method public registerForVowifiRegErrReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 830
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 831
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVowifiRegErrReportRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 832
    return-void
.end method

.method public registerForVtFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 637
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 638
    .local v0, "reg":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 639
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2887
    const/16 v0, 0x11

    invoke-static {v0, p1}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2888
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2889
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2890
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_50

    .line 2891
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2894
    :try_start_44
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->rejectCall(I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4a
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_49} :catch_4a

    .line 2897
    goto :goto_50

    .line 2895
    :catch_4a
    move-exception v2

    .line 2896
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "rejectCall"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2899
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_50
    :goto_50
    return-void
.end method

.method public rejectImsCallForCause(IILandroid/os/Message;)V
    .registers 8
    .param p1, "callIndex"    # I
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectImsCallForCause, cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2911
    const/16 v0, 0x87a

    invoke-static {v0, p3}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2912
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2913
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2914
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_64

    .line 2915
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2918
    :try_start_58
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->rejectCallWithReason(III)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_5d} :catch_5e

    .line 2921
    goto :goto_64

    .line 2919
    :catch_5e
    move-exception v2

    .line 2920
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "rejectImsCallForCause"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2923
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_64
    :goto_64
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "isAvailable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1656
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1657
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1661
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1662
    return-void
.end method

.method public requestGetLteInfo(IILandroid/os/Message;)V
    .registers 8
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3155
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 3156
    const/16 v1, 0x854

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3157
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "open="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3159
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3160
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_62

    .line 3161
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3166
    :try_start_56
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setVtLlteQualityRptCfg(III)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_5b} :catch_5c

    .line 3169
    goto :goto_62

    .line 3167
    :catch_5c
    move-exception v2

    .line 3168
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestGetLteInfo"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3171
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_62
    :goto_62
    return-void
.end method

.method public requestGetUiccFile(ILandroid/os/Message;)V
    .registers 7
    .param p1, "fileId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3116
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x824

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3117
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3118
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3119
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_5b

    .line 3120
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3123
    :try_start_4e
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getUiccFile(III)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_54} :catch_55

    .line 3126
    goto :goto_5b

    .line 3124
    :catch_55
    move-exception v2

    .line 3125
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestGetUiccFile"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3128
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5b
    :goto_5b
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2356
    return-void
.end method

.method public requestReadHomeDomainName(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3272
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x869

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3273
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3274
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3275
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_52

    .line 3276
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3279
    :try_start_46
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getVolteDomain(I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 3282
    goto :goto_52

    .line 3280
    :catch_4c
    move-exception v2

    .line 3281
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestReadHomeDomainName"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3284
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return-void
.end method

.method public requestReadIsimImpi(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3292
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x86a

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3293
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3294
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3295
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_52

    .line 3296
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3299
    :try_start_46
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->getVolteImpi(I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 3302
    goto :goto_52

    .line 3300
    :catch_4c
    move-exception v2

    .line 3301
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestReadIsimImpi"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3304
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return-void
.end method

.method public requestSetImsVtCapability(IILandroid/os/Message;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "enabled"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 3182
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x866

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3183
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "open="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3184
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3185
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_62

    .line 3186
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3189
    :try_start_56
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setImsvtCapability(III)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_5b} :catch_5c

    .line 3192
    goto :goto_62

    .line 3190
    :catch_5c
    move-exception v2

    .line 3191
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestSetImsVtCapability"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3194
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_62
    :goto_62
    return-void
.end method

.method public requestUiccAuth([B[BLandroid/os/Message;)V
    .registers 9
    .param p1, "rand"    # [B
    .param p2, "auth"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .line 3016
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x821

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3018
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3018
    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3022
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3023
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_7d

    .line 3024
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3026
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;

    move-result-object v2

    .line 3028
    .local v2, "msg":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;
    :try_start_71
    iget v3, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v3, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->uiccAuth(ILvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_76} :catch_77
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_76} :catch_77

    .line 3031
    goto :goto_7d

    .line 3029
    :catch_77
    move-exception v3

    .line 3030
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "requestUiccAuth"

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3033
    .end local v2    # "msg":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7d
    :goto_7d
    return-void
.end method

.method public requestUiccFileUpdate(I[BLandroid/os/Message;)V
    .registers 9
    .param p1, "fileId"    # I
    .param p2, "data"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .line 3082
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x823

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3083
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3084
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3083
    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3085
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3086
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_6f

    .line 3087
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3089
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUpdateFile(I[B)Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;

    move-result-object v2

    .line 3091
    .local v2, "msg":Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;
    :try_start_63
    iget v3, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v3, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->updateUiccFile(ILvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_68} :catch_69
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_68} :catch_69

    .line 3094
    goto :goto_6f

    .line 3092
    :catch_69
    move-exception v3

    .line 3093
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "requestUiccFileUpdate"

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3096
    .end local v2    # "msg":Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6f
    :goto_6f
    return-void
.end method

.method public requestUiccGbaBootStrap([B[BLandroid/os/Message;)V
    .registers 9
    .param p1, "rand"    # [B
    .param p2, "auth"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .line 3058
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x822

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3059
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3059
    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3061
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3062
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_74

    .line 3063
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3065
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;

    move-result-object v2

    .line 3067
    .local v2, "msg":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;
    :try_start_68
    iget v3, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v3, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->uiccGbaBootStrap(ILvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6d} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_6d} :catch_6e

    .line 3070
    goto :goto_74

    .line 3068
    :catch_6e
    move-exception v3

    .line 3069
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "requestUiccGbaBootStrap"

    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3072
    .end local v2    # "msg":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_74
    :goto_74
    return-void
.end method

.method public requestUiccKsNaf(ILandroid/os/Message;)V
    .registers 7
    .param p1, "fileId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3137
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x825

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3138
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3139
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3140
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_4e

    .line 3141
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3144
    :cond_4e
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .registers 2
    .param p1, "result"    # Landroid/os/Message;

    .line 1586
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1587
    return-void
.end method

.method public restartRild(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 3202
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 3203
    const/16 v1, 0x7d5

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3204
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3205
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3206
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_53

    .line 3207
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3210
    :try_start_46
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->restartRILD(I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4b} :catch_4c

    goto :goto_52

    .line 3211
    :catch_4c
    move-exception v2

    .line 3212
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "restartRild"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3213
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_52
    goto :goto_5b

    .line 3215
    :cond_53
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/huawei/ims/ImsRilRequest;->onError(ILjava/lang/Object;)V

    .line 3216
    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->release()V

    .line 3218
    :goto_5b
    return-void
.end method

.method public riseCdmaCutoffFreq(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "isOn"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2323
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2324
    return-void
.end method

.method public sendBatteryStatus(ILandroid/os/Message;)V
    .registers 7
    .param p1, "batterySattus"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3741
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x865

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3743
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3744
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3745
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 3746
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3748
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->informBatteryStatus(II)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3751
    goto :goto_3e

    .line 3749
    :catch_38
    move-exception v2

    .line 3750
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendBatteryStatus"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3753
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .registers 5
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1420
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1421
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "featureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1722
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1723
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .registers 3
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 1430
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1431
    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .registers 4
    .param p1, "stateType"    # I
    .param p2, "isOn"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1519
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1520
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 7
    .param p1, "ch"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 2932
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x18

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2933
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2934
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2935
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_56

    .line 2936
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2939
    :try_start_46
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->sendDtmf(ILjava/lang/String;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4f} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4f} :catch_50

    .line 2942
    goto :goto_56

    .line 2940
    :catch_50
    move-exception v2

    .line 2941
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendDtmf"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2944
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_56
    :goto_56
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1616
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1617
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1621
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1622
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .registers 5
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1440
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1441
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .registers 6
    .param p1, "smscPdu"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1435
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1436
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "smscPdu"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1425
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1426
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "smscPdu"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2348
    return-void
.end method

.method public sendSMSSetLong(ILandroid/os/Message;)V
    .registers 3
    .param p1, "flag"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2352
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1611
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1612
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1576
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1577
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .registers 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1385
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1386
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .registers 3
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1601
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1602
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .registers 7
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCLIR clirmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 3225
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x81e

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3228
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3229
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3230
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_52

    .line 3231
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3233
    :try_start_46
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setClir(II)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 3236
    goto :goto_52

    .line 3234
    :catch_4c
    move-exception v2

    .line 3235
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCLIR"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3239
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .registers 7
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 1555
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1556
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .registers 8
    .param p1, "isEnabled"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 3250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallWaiting enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 3251
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 3252
    const/16 v1, 0x81f

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3253
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3254
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3255
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 3256
    if-eqz v1, :cond_6e

    .line 3257
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3259
    :try_start_62
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setImsCallWaiting(IZI)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_67} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_67} :catch_68

    .line 3262
    goto :goto_6e

    .line 3260
    :catch_68
    move-exception v2

    .line 3261
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallWaiting"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3264
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6e
    :goto_6e
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .registers 3
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1897
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1898
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "isActivate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1737
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1738
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1732
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1733
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .registers 3
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1702
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1703
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .registers 3
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1707
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1708
    return-void
.end method

.method public setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .registers 4
    .param p1, "dps"    # [Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 1524
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1525
    return-void
.end method

.method public setDmDyn(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3507
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85b

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3508
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3509
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3510
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 3511
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3513
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setDmDynamicPram(ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3516
    goto :goto_3e

    .line 3514
    :catch_38
    move-exception v2

    .line 3515
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDmDyn"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3518
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setDmPcscf(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3487
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85a

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3488
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3489
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3490
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 3491
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3493
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setDmPcscf(ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3496
    goto :goto_3e

    .line 3494
    :catch_38
    move-exception v2

    .line 3495
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDmPcscf"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3498
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setDmSms(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3547
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85d    # 3.0E-42f

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3548
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3549
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3550
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 3551
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3553
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setDmSmsPsi(ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3556
    goto :goto_3e

    .line 3554
    :catch_38
    move-exception v2

    .line 3555
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDmSms"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3558
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setDmTimer(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3527
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85c

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3528
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3529
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3530
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 3531
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3533
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setDmTimer(ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3536
    goto :goto_3e

    .line 3534
    :catch_38
    move-exception v2

    .line 3535
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDmTimer"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3538
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2230
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2231
    return-void
.end method

.method public setEncryptVolteCallSwitch(ILandroid/os/Message;)V
    .registers 7
    .param p1, "flag"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEncryptVolteCallSwitch valid flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3963
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v0

    .line 3964
    .local v0, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v0, :cond_52

    .line 3965
    const/16 v1, 0x86e

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 3966
    invoke-static {v1, p2, v2}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v1

    .line 3967
    .local v1, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3968
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3970
    :try_start_46
    iget v2, v1, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setEncryptVolteCallSwitch(II)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 3973
    goto :goto_52

    .line 3971
    :catch_4c
    move-exception v2

    .line 3972
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setEncryptDeviceValidFlag"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3975
    .end local v1    # "rr":Lcom/huawei/ims/ImsRilRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .registers 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "isLockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1794
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1795
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .registers 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "isLockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .line 1800
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1801
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "isActivate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1681
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1682
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .registers 3
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 1676
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1677
    return-void
.end method

.method public setImsSmsConfig(ILandroid/os/Message;)V
    .registers 7
    .param p1, "isEnabled"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3695
    const-string v0, "setImsSmsConfig ENTER "

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3696
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x86b

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3697
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3698
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3699
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_57

    .line 3700
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3702
    :try_start_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setImsSmsConfig with isEnabled= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3703
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setImsSmsConfig(II)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_50} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_50} :catch_51

    .line 3707
    goto :goto_57

    .line 3704
    :catch_51
    move-exception v2

    .line 3705
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsSmsConfig no support"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3709
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_57
    :goto_57
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .registers 4
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2328
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2329
    return-void
.end method

.method public setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .registers 8
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDlKbps"    # I
    .param p3, "hysteresisUlKbps"    # I
    .param p4, "thresholdsDlKbps"    # [I
    .param p5, "thresholdsUlKbps"    # [I
    .param p6, "ran"    # I
    .param p7, "result"    # Landroid/os/Message;

    .line 2391
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "isEnable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1641
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1642
    return-void
.end method

.method public setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .registers 3
    .param p1, "physicalSlots"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 2410
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2411
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .registers 7
    .param p1, "isEnableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 2994
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x35

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2995
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2996
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2997
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_46

    .line 2998
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3000
    :try_start_3a
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setMute(IZ)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3f} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3f} :catch_40

    .line 3003
    goto :goto_46

    .line 3001
    :catch_40
    move-exception v2

    .line 3002
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setMute"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3005
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1534
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1535
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 1539
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1540
    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2140
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2141
    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2130
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2131
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2120
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2121
    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2110
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2111
    return-void
.end method

.method public setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2066
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2067
    return-void
.end method

.method public setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2046
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2047
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2016
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2017
    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1976
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1977
    return-void
.end method

.method public setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1986
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1987
    return-void
.end method

.method public setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1966
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1967
    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2086
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2087
    return-void
.end method

.method public setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2036
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2037
    return-void
.end method

.method public setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 1996
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1997
    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2006
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2007
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2097
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    .line 2099
    return-void
.end method

.method public setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "hanlder"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2026
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2027
    return-void
.end method

.method public setPhoneType(I)V
    .registers 4
    .param p1, "phoneType"    # I

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1259
    iput p1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    .line 1260
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .registers 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1631
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1632
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "isEnable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1375
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1376
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "isOn"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1470
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1471
    return-void
.end method

.method public setSignalStrengthReportingCriteria(II[IILandroid/os/Message;)V
    .registers 6
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDb"    # I
    .param p3, "thresholdsDbm"    # [I
    .param p4, "ran"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2396
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1651
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1652
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .registers 3
    .param p1, "isEnable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1475
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1476
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 3
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1717
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1718
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .registers 6
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1777
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1778
    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .registers 3
    .param p1, "filter"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1529
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1530
    return-void
.end method

.method public setVowifiRegErrReportEnable(ILandroid/os/Message;)V
    .registers 7
    .param p1, "enabled"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3940
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v0

    .line 3941
    .local v0, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v0, :cond_3e

    .line 3942
    const/16 v1, 0x86d

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 3943
    invoke-static {v1, p2, v2}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v1

    .line 3944
    .local v1, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3945
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3947
    :try_start_32
    iget v2, v1, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setImsRegErrReport(II)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 3950
    goto :goto_3e

    .line 3948
    :catch_38
    move-exception v2

    .line 3949
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVowifiRegErrReportEnable"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3952
    .end local v1    # "rr":Lcom/huawei/ims/ImsRilRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setWifiEmergencyAid(ZLandroid/os/Message;)V
    .registers 8
    .param p1, "isEnabled"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 3663
    const-string v0, "[Wifi-Call] setWifiEmergencyAid"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3664
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 3665
    const/16 v1, 0x863

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 3666
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3667
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 3668
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_6c

    .line 3669
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 3671
    :try_start_37
    const-string v2, ""

    .line 3672
    .local v2, "data":Ljava/lang/String;
    if-eqz p1, :cond_48

    .line 3673
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "att_address_id_value"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 3675
    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Wifi-Call] setWifiEmergencyAid data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3676
    iget v3, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->setWifiEmergencyAid(ILjava/lang/String;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_65} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_65} :catch_66

    .line 3679
    .end local v2    # "data":Ljava/lang/String;
    goto :goto_6c

    .line 3677
    :catch_66
    move-exception v2

    .line 3678
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWifiEmergencyAid"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 3681
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6c
    :goto_6c
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .registers 8
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "isAllowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "result"    # Landroid/os/Message;

    .line 1806
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1807
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .registers 7
    .param p1, "ch"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 2953
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x31

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2954
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2955
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2956
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_56

    .line 2957
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2960
    :try_start_46
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->startDtmf(ILjava/lang/String;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4f} :catch_50
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4f} :catch_50

    .line 2963
    goto :goto_56

    .line 2961
    :catch_50
    move-exception v2

    .line 2962
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "startDtmf"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2965
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_56
    :goto_56
    return-void
.end method

.method public startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .registers 5
    .param p1, "contextId"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalMillis"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2405
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2406
    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 3
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "response"    # Landroid/os/Message;

    .line 1887
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1888
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2973
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x32

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2974
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2975
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2976
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_52

    .line 2977
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2980
    :try_start_46
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->stopDtmf(I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4b} :catch_4c

    .line 2983
    goto :goto_52

    .line 2981
    :catch_4c
    move-exception v2

    .line 2982
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "stopDtmf"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2985
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
    return-void
.end method

.method public stopNattKeepalive(ILandroid/os/Message;)V
    .registers 3
    .param p1, "sessionHandle"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2400
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2401
    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .registers 2
    .param p1, "response"    # Landroid/os/Message;

    .line 1892
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1893
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .registers 4
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1345
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1346
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1305
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1306
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1315
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1316
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1752
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1753
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1742
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1743
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1310
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1311
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1320
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1321
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1757
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1758
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1747
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1748
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1335
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1336
    return-void
.end method

.method public switchBalongSim(IILandroid/os/Message;)V
    .registers 4
    .param p1, "modem1ToSlot"    # I
    .param p2, "modem2ToSlot"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2333
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2334
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .registers 6
    .param p1, "result"    # Landroid/os/Message;

    .line 2742
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 2743
    const/16 v1, 0xf

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2744
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2745
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2746
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 2747
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2749
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->switchWaitingOrHoldingAndActive(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 2752
    goto :goto_3e

    .line 2750
    :catch_38
    move-exception v2

    .line 2751
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2754
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V
    .registers 7
    .param p1, "callType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2765
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRilDefaultWorkSource:Landroid/os/WorkSource;

    .line 2766
    const/16 v1, 0xf

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRilRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 2767
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRilRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 2768
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;

    move-result-object v1

    .line 2769
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
    if-eqz v1, :cond_3e

    .line 2770
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRilRequest;)V

    .line 2772
    :try_start_32
    iget v2, v0, Lcom/huawei/ims/ImsRilRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;->switchImsWaitingOrHoldingAndActiveWithType(II)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_37} :catch_38

    .line 2775
    goto :goto_3e

    .line 2773
    :catch_38
    move-exception v2

    .line 2774
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "switchWaitingOrHoldingAndActiveForIms"

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRilReq(Ljava/lang/String;)V

    .line 2778
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public testingEmergencyCall()V
    .registers 1

    .line 2318
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2319
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .registers 3
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2077
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 2078
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2079
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    .line 2081
    :cond_12
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2145
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2146
    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2135
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2136
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2125
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2126
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2115
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2116
    return-void
.end method

.method public unSetOnIccSmsFull(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2051
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2052
    return-void
.end method

.method public unSetOnNITZTime(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2021
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2022
    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1981
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1982
    return-void
.end method

.method public unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1991
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1992
    return-void
.end method

.method public unSetOnNewGsmSms(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1971
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1972
    return-void
.end method

.method public unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2091
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2092
    return-void
.end method

.method public unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2041
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2042
    return-void
.end method

.method public unSetOnSmsOnSim(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2001
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2002
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2011
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2012
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .registers 3
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2104
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2106
    return-void
.end method

.method public unSetOnUSSD(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2031
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2032
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1862
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1863
    return-void
.end method

.method public unregisterForCallModifyResult(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 819
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 820
    return-void
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 712
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 713
    return-void
.end method

.method public unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2165
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2166
    return-void
.end method

.method public unregisterForCarrierInfoForImsiEncryption(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1917
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1918
    return-void
.end method

.method public unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2240
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2241
    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2270
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2271
    return-void
.end method

.method public unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2260
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2261
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2155
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2156
    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .registers 3
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2287
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->IS_VZW:Z

    if-eqz v0, :cond_8

    .line 2288
    invoke-super {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V

    goto :goto_b

    .line 2290
    :cond_8
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2293
    :goto_b
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 519
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 520
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2061
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2062
    return-void
.end method

.method public unregisterForImsCsRedial(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 603
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsCsRedialRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 604
    return-void
.end method

.method public unregisterForImsDmcn(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 625
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsDmcnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 626
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 733
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 734
    return-void
.end method

.method public unregisterForImsRegMode(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 776
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 777
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .registers 3
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1950
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1951
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .registers 3
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1939
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1940
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2205
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2206
    return-void
.end method

.method public unregisterForModemReset(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1907
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1908
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 798
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 799
    return-void
.end method

.method public unregisterForMtStatusReport(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 691
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 692
    return-void
.end method

.method public unregisterForNetworkScanResult(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1927
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1928
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1872
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1873
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2185
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2186
    return-void
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1882
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1883
    return-void
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1852
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1853
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 862
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 863
    return-void
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1832
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1833
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2195
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2196
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2250
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2251
    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2302
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2303
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 754
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 755
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2175
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2176
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 540
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 541
    return-void
.end method

.method public unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1961
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1962
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2225
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2226
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2215
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2216
    return-void
.end method

.method public unregisterForUnsolLtePdcpInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 561
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mLtePdcpInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 562
    return-void
.end method

.method public unregisterForUnsolLteRrcInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 582
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mLteRrcInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 583
    return-void
.end method

.method public unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 670
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 671
    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 1842
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1843
    return-void
.end method

.method public unregisterForVowifiRegErrReport(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 840
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVowifiRegErrReportRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 841
    return-void
.end method

.method public unregisterForVtFlowInfo(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 647
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 648
    return-void
.end method

.method public unsetOnIccRefresh(Landroid/os/Handler;)V
    .registers 2
    .param p1, "hanlder"    # Landroid/os/Handler;

    .line 2071
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2072
    return-void
.end method

.method public unsljLog(I)V
    .registers 4
    .param p1, "response"    # I

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/ims/ImsRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .registers 5
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/ims/ImsRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1243
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .registers 5
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/ims/ImsRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1253
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1460
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1461
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1455
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1456
    return-void
.end method
