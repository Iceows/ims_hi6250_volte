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

.field private static final DEFAULT_BLOCKING_MESSAGE_RESPONSE_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field private static final EVENT_EXIT_EMERGENCY_CALLBACK_RESPONSE:I = 0x1a

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_SEND:I = 0x1

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xbb8

.field private static final LENGTH_OF_REQUEST_GETLTEINFO:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "RILJ_IMS"

.field static final MAX_COMMAND_BYTES:I = 0x2000

.field static final MAX_RETRY_COUNT:I = 0x8

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field static final RILJ_ACK_WAKELOCK_NAME:Ljava/lang/String; = "RILJ_ACK_WL"

.field static final RIL_HISTOGRAM_BUCKET_COUNT:I = 0x5

.field static final SOCKET_NAME_IMSRIL:[Ljava/lang/String;

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field public static final VIDEO_RING_TONES:Ljava/lang/String; = "ims_video_ring"

.field static mRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected imsRILDefaultWorkSource:Landroid/os/WorkSource;

.field final imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field protected mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field protected final mCallModifyRegistrants:Landroid/os/RegistrantList;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field private final mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

.field private mContext:Landroid/content/Context;

.field protected mHandoverStatusRegistrants:Landroid/os/RegistrantList;

.field public mHoldingToneRegistrants:Landroid/os/RegistrantList;

.field protected mImsCSRedialRegistrations:Landroid/os/RegistrantList;

.field protected mImsDMCNRegistrants:Landroid/os/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mImsRegModeRegistrants:Landroid/os/RegistrantList;

.field protected mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

.field protected mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

.field protected mModifyCallRegistrants:Landroid/os/RegistrantList;

.field protected final mModifyCallResultRegistrants:Landroid/os/RegistrantList;

.field protected mMtStatusReportRegistrants:Landroid/os/RegistrantList;

.field final mPhoneId:Ljava/lang/Integer;

.field mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

.field volatile mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

.field final mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

.field mRequestMessagesPending:I

.field mRequestMessagesWaiting:I

.field mRequestsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/ImsRILRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mRingRegistrant:Landroid/os/Registrant;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected mSpeechInfoRegistrants:Landroid/os/RegistrantList;

.field protected mSrvStatusRegistrations:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 309
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/huawei/ims/ImsRIL;->mRilTimeHistograms:Landroid/util/SparseArray;

    .line 335
    const-string v0, "rildi"

    const-string v1, "rildi2"

    const-string v2, "rildi3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/ImsRIL;->SOCKET_NAME_IMSRIL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/Integer;

    .line 603
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    .line 307
    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    .line 308
    new-instance v1, Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-direct {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    .line 316
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    .line 319
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 338
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    .line 339
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    .line 344
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    .line 349
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    .line 352
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

    .line 379
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    .line 380
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    .line 421
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    .line 433
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    .line 441
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    .line 449
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 457
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 466
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 477
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    .line 490
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    .line 491
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2479
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 2491
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 2999
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    .line 3001
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    .line 3250
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    .line 605
    iput-object p1, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    .line 608
    iput-object p2, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    .line 611
    new-instance v2, Lcom/huawei/ims/ImsRadioResponse;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRadioResponse;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

    .line 612
    new-instance v2, Lcom/huawei/ims/ImsRadioIndication;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRadioIndication;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

    .line 613
    new-instance v2, Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    .line 614
    new-instance v2, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    invoke-direct {v2, p0}, Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;-><init>(Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    .line 615
    new-instance v2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 616
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 617
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    .line 618
    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    .line 620
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 621
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "RILJ_IMS"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 622
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 623
    const-string v2, "RILJ_ACK_WL"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 624
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 625
    const-string v2, "ro.ril.wake_lock_timeout"

    const v3, 0xea60

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    .line 627
    const-string v2, "ro.ril.wake_lock_timeout"

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLockTimeout:I

    .line 629
    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    .line 630
    iput v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    .line 631
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 632
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsRIL;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;
    .param p1, "x1"    # I

    .line 264
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsRIL;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;

    .line 264
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsRIL;Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsRIL;
    .param p1, "x1"    # Landroid/os/Message;

    .line 264
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v0

    return-object v0
.end method

.method private acquireWakeLock(Lcom/huawei/ims/ImsRILRequest;I)V
    .locals 7
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;
    .param p2, "wakeLockType"    # I

    .line 3280
    monitor-enter p1

    .line 3281
    :try_start_0
    iget v0, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to aquire wakelock for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3283
    monitor-exit p1

    return-void

    .line 3286
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 3322
    new-instance v0, Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 3312
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3313
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3314
    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    .line 3316
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3317
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 3318
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3319
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 3320
    goto :goto_1

    .line 3319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 3288
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3289
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3290
    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3291
    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    .line 3293
    iget-object v1, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 3294
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3295
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_1

    .line 3296
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_0

    .line 3298
    :cond_1
    iget-object v2, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3300
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3303
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v3, p1, Lcom/huawei/ims/ImsRILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    iget v5, p1, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    iget v6, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/telephony/ClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 3306
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3307
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 3308
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3309
    .end local v1    # "clientId":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3310
    nop

    .line 3325
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    .line 3326
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3327
    return-void

    .line 3309
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 3322
    :goto_2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquiring Invalid Wakelock type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 3323
    monitor-exit p1

    return-void

    .line 3326
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addRequest(Lcom/huawei/ims/ImsRILRequest;)V
    .locals 2
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;

    .line 950
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRIL;->acquireWakeLock(Lcom/huawei/ims/ImsRILRequest;I)V

    .line 951
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    monitor-exit v0

    .line 954
    return-void

    .line 953
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 2026
    .local p0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2027
    .local v0, "ret":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2028
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 2027
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2030
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private clearRequestList(IZ)V
    .locals 5
    .param p1, "error"    # I
    .param p2, "loggable"    # Z

    .line 3395
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3396
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3397
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3398
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRILRequest;

    .line 3399
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/huawei/ims/ImsRILRequest;->onError(ILjava/lang/Object;)V

    .line 3400
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsRIL;->decrementWakeLock(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3401
    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 3397
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3403
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3404
    .end local v1    # "count":I
    monitor-exit v0

    .line 3405
    return-void

    .line 3404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearWakeLock(I)Z
    .locals 5
    .param p1, "wakeLockType"    # I

    .line 3368
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 3369
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3370
    :try_start_0
    iget v3, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 3371
    :cond_0
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

    .line 3373
    iput v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3374
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3375
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 3376
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3377
    monitor-exit v2

    return v0

    .line 3378
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3380
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 3381
    :try_start_1
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 3382
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3383
    monitor-exit v2

    return v0

    .line 3384
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method static convertHalImsEndCause(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;Lcom/huawei/ims/ImsRIL;)[I
    .locals 6
    .param p0, "imsEndCause"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .line 2034
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2035
    .local v0, "imsEndCauseResponse":[I
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;->callIndex:I

    .line 2036
    .local v1, "imsCallIndex":I
    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;->err:I

    .line 2038
    .local v2, "imsErr":I
    const-string v3, "RILJ_IMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RILImsModifyEndCause received: callIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callErr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    const/4 v3, 0x0

    aput v1, v0, v3

    .line 2043
    const/4 v3, 0x1

    aput v2, v0, v3

    .line 2044
    return-object v0
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 3182
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    .locals 5
    .param p1, "type"    # I
    .param p2, "rand"    # [B
    .param p3, "auth"    # [B

    .line 1440
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;-><init>()V

    .line 1441
    .local v0, "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1442
    .local v1, "rands":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1443
    .local v2, "auths":Ljava/lang/String;
    iput p1, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authType:I

    .line 1444
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;->randLen:I

    .line 1445
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iput v4, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;->authLen:I

    .line 1446
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;

    iput-object v1, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;->rand:Ljava/lang/String;

    .line 1447
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;

    iput-object v2, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHPARAMS;->auth:Ljava/lang/String;

    .line 1448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "randlens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authlens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rands = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auths = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.authType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->authType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1453
    return-object v0
.end method

.method private createRilUpdateFile(I[B)Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;
    .locals 4
    .param p1, "file_id"    # I
    .param p2, "data"    # [B

    .line 1494
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;-><init>()V

    .line 1495
    .local v0, "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 1496
    .local v1, "datas":Ljava/lang/String;
    array-length v2, p2

    .line 1497
    .local v2, "dataLen":I
    const/4 v3, 0x0

    iput v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;->appType:I

    .line 1498
    iput p1, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;->fileId:I

    .line 1499
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;->fileParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMFILEPARAMS;

    iput v2, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMFILEPARAMS;->len:I

    .line 1500
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;->fileParams:Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMFILEPARAMS;

    iput-object v1, v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMFILEPARAMS;->data:Ljava/lang/String;

    .line 1501
    return-object v0
.end method

.method private decrementWakeLock(Lcom/huawei/ims/ImsRILRequest;)V
    .locals 8
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;

    .line 3330
    monitor-enter p1

    .line 3331
    :try_start_0
    iget v0, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    .line 3361
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3357
    :pswitch_0
    goto/16 :goto_3

    .line 3333
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3334
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    iget-object v2, p1, Lcom/huawei/ims/ImsRILRequest;->mClientId:Ljava/lang/String;

    iget v3, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    iget v4, p1, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    .line 3336
    iget v5, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v5, v7, :cond_0

    iget v5, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    sub-int/2addr v5, v7

    goto :goto_0

    .line 3334
    :cond_0
    move v5, v6

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 3337
    iget-object v1, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;

    move-result-object v1

    .line 3338
    .local v1, "clientId":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mClientWakelockTracker:Lcom/android/internal/telephony/ClientWakelockTracker;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_2

    .line 3340
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v3, p1, Lcom/huawei/ims/ImsRILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 3341
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3342
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 3344
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3347
    :cond_2
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    if-le v2, v7, :cond_3

    .line 3348
    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    sub-int/2addr v2, v7

    iput v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    goto :goto_1

    .line 3350
    :cond_3
    iput v6, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockCount:I

    .line 3351
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3353
    .end local v1    # "clientId":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    .line 3354
    goto :goto_3

    .line 3353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 3359
    :pswitch_2
    goto :goto_3

    .line 3361
    :goto_2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decrementing Invalid Wakelock type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logw(Ljava/lang/String;)V

    .line 3363
    :goto_3
    const/4 v0, -0x1

    iput v0, p1, Lcom/huawei/ims/ImsRILRequest;->mWakeLockType:I

    .line 3364
    monitor-exit p1

    .line 3365
    return-void

    .line 3364
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/huawei/ims/ImsRILRequest;
    .locals 5
    .param p1, "serial"    # I

    .line 3408
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3409
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 3410
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRILRequest;

    .line 3411
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    if-ne v4, p1, :cond_1

    .line 3412
    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3413
    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    if-lez v4, :cond_0

    .line 3414
    iget v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    .line 3415
    :cond_0
    monitor-exit v0

    return-object v3

    .line 3409
    .end local v3    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3418
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    monitor-exit v0

    .line 3419
    const/4 v0, 0x0

    return-object v0

    .line 3418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .line 556
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    return-object v0

    .line 562
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 565
    .local v1, "huaweiRadio1_0":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    :try_start_0
    sget-object v2, Lcom/huawei/ims/ImsRIL;->SOCKET_NAME_IMSRIL:[Ljava/lang/String;

    .line 566
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    aget-object v2, v2, v3

    .line 565
    invoke-static {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v2

    move-object v1, v2

    .line 567
    iput-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    goto :goto_1

    .line 568
    :catch_0
    move-exception v2

    .line 569
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioProxy: huaweiradioProxy got V1_0 exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 572
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    if-eqz v2, :cond_2

    .line 573
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyDeathRecipient:Lcom/huawei/ims/ImsRIL$RadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 574
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 573
    invoke-interface {v2, v3, v4, v5}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 575
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioResponse:Lcom/huawei/ims/ImsRadioResponse;

    iget-object v4, p0, Lcom/huawei/ims/ImsRIL;->mRadioIndication:Lcom/huawei/ims/ImsRadioIndication;

    invoke-interface {v2, v3, v4}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setResponseFunctionsHuawei(Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 582
    .end local v1    # "huaweiRadio1_0":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    :cond_2
    goto :goto_2

    .line 579
    :catch_1
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResponseFunctions occurs exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 583
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    if-nez v1, :cond_4

    .line 584
    if-eqz p1, :cond_3

    .line 585
    const/4 v1, 0x1

    .line 586
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 585
    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 587
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 589
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 590
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 589
    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    return-object v0
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 3263
    if-eqz p1, :cond_0

    .line 3264
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

    .line 3267
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V
    .locals 2
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "rr"    # Lcom/huawei/ims/ImsRILRequest;

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    .line 553
    return-void
.end method

.method private releaseWakeLockIfDone()V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 648
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    if-nez v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->imsRilHandler:Lcom/huawei/ims/ImsRIL$ImsRilHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL$ImsRilHandler;->removeMessages(I)V

    .line 652
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 654
    :cond_0
    monitor-exit v0

    .line 655
    return-void

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .line 711
    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    sparse-switch p0, :sswitch_data_0

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown request> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 786
    :sswitch_0
    const-string v0, "RIL_REQUEST_HW_IMS_REJ_CALL"

    return-object v0

    .line 750
    :sswitch_1
    const-string v0, "RIL_REQUEST_HW_SET_VT_LTE_QUALITY_RPT_CFG"

    return-object v0

    .line 734
    :sswitch_2
    const-string v0, "HW_IMS_ADD_CONFERENCE_MEMBER"

    return-object v0

    .line 731
    :sswitch_3
    const-string v0, "HW_IMS_IMPU"

    return-object v0

    .line 723
    :sswitch_4
    const-string v0, "HW_IMS_ANSWER"

    return-object v0

    .line 758
    :sswitch_5
    const-string v0, "RIL_REQUEST_HW_RESTRAT_RILD"

    return-object v0

    .line 712
    :sswitch_6
    const-string v0, "IMS_REGISTRATION_STATE"

    return-object v0

    .line 782
    :sswitch_7
    const-string v0, "HW_IMS_REQUEST_EXPLICIT_CALL_TRANSFER"

    return-object v0

    .line 728
    :sswitch_8
    const-string v0, "HW_IMS_SET_MUTE"

    return-object v0

    .line 724
    :sswitch_9
    const-string v0, "HW_IMS_DTMF"

    return-object v0

    .line 793
    :pswitch_0
    const-string v0, "RIL_REQUEST_HW_VOWIFI_SET_REG_ERR_RPT"

    return-object v0

    .line 790
    :pswitch_1
    const-string v0, "HW_GET_IMS_SMS_CONFIG"

    return-object v0

    .line 789
    :pswitch_2
    const-string v0, "HW_SET_IMS_SMS_CONFIG"

    return-object v0

    .line 784
    :pswitch_3
    const-string v0, "RIL_REQUEST_HW_VOLTE_IMPI"

    return-object v0

    .line 783
    :pswitch_4
    const-string v0, "RIL_REQUEST_HW_VOLTE_DOMAIN"

    return-object v0

    .line 754
    :pswitch_5
    const-string v0, "RIL_REQUEST_CANCEL_IMS_VIDEO_CALL"

    return-object v0

    .line 720
    :pswitch_6
    const-string v0, "HW_IMS_LAST_CALL_FAIL_CAUSE"

    return-object v0

    .line 780
    :pswitch_7
    const-string v0, "RIL_REQUEST_HW_SET_IMSVT_CAPABILITY"

    return-object v0

    .line 777
    :pswitch_8
    const-string v0, "RIL_REQUEST_HW_IMS_BATTERY_STATUS"

    return-object v0

    .line 774
    :pswitch_9
    const-string v0, "HW_SET_WIFI_EMERGENCY_AID"

    return-object v0

    .line 771
    :pswitch_a
    const-string v0, "HW_IMS_GET_DM_USER"

    return-object v0

    .line 770
    :pswitch_b
    const-string v0, "HW_IMS_GET_DM_SMS"

    return-object v0

    .line 769
    :pswitch_c
    const-string v0, "HW_IMS_GET_DM_DYN"

    return-object v0

    .line 768
    :pswitch_d
    const-string v0, "HW_IMS_GET_DM_TIMER"

    return-object v0

    .line 767
    :pswitch_e
    const-string v0, "HW_IMS_GET_DM_PCSCF"

    return-object v0

    .line 766
    :pswitch_f
    const-string v0, "HW_IMS_SET_DM_SMS"

    return-object v0

    .line 765
    :pswitch_10
    const-string v0, "HW_IMS_SET_DM_TIMER"

    return-object v0

    .line 764
    :pswitch_11
    const-string v0, "HW_IMS_SET_DM_DYN"

    return-object v0

    .line 763
    :pswitch_12
    const-string v0, "HW_IMS_SET_DM_PCSCF"

    return-object v0

    .line 756
    :pswitch_13
    const-string v0, "HW_IMS_MODIFY_CALL_CONFIRM"

    return-object v0

    .line 752
    :pswitch_14
    const-string v0, "HW_IMS_MODIFY_CALL_INITIATE"

    return-object v0

    .line 747
    :pswitch_15
    const-string v0, "RIL_REQUEST_HW_UICC_KS_NAF"

    return-object v0

    .line 746
    :pswitch_16
    const-string v0, "RIL_REQUEST_HW_GET_UICC_FILE"

    return-object v0

    .line 745
    :pswitch_17
    const-string v0, "RIL_REQUEST_HW_UICC_FILE_UPDATE"

    return-object v0

    .line 744
    :pswitch_18
    const-string v0, "RIL_REQUEST_HW_UICC_GBA_BOOTSTRAP"

    return-object v0

    .line 743
    :pswitch_19
    const-string v0, "RIL_REQUEST_HW_UICC_AUTH"

    return-object v0

    .line 740
    :pswitch_1a
    const-string v0, "HW_IMS_SET_CALL_WAITING"

    return-object v0

    .line 737
    :pswitch_1b
    const-string v0, "HW_IMS_SET_CLIR"

    return-object v0

    .line 714
    :pswitch_1c
    const-string v0, "HW_IMS_GET_CURRENT_CALLS"

    return-object v0

    .line 713
    :pswitch_1d
    const-string v0, "HW_IMS_DIAL"

    return-object v0

    .line 726
    :pswitch_1e
    const-string v0, "HW_IMS_DTMF_STOP"

    return-object v0

    .line 725
    :pswitch_1f
    const-string v0, "HW_IMS_DTMF_START"

    return-object v0

    .line 722
    :pswitch_20
    const-string v0, "HW_IMS_UDUB"

    return-object v0

    .line 729
    :pswitch_21
    const-string v0, "HW_IMS_CONFERENCE"

    return-object v0

    .line 727
    :pswitch_22
    const-string v0, "HW_IMS_SWITCH_WAITING_OR_HOLDING_AND_ACTIVE"

    return-object v0

    .line 718
    :pswitch_23
    const-string v0, "HW_IMS_HANGUP_FOREGROUND_RESUME_BACKGROUND"

    return-object v0

    .line 717
    :pswitch_24
    const-string v0, "HW_IMS_HANGUP_WAITING_OR_BACKGROUND"

    return-object v0

    .line 716
    :pswitch_25
    const-string v0, "HW_IMS_HANGUP"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7fb
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x81e
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x821
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x831
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x85a
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x865
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_9
        0x35 -> :sswitch_8
        0x48 -> :sswitch_7
        0x70 -> :sswitch_6
        0x7d5 -> :sswitch_5
        0x806 -> :sswitch_4
        0x815 -> :sswitch_3
        0x81c -> :sswitch_2
        0x854 -> :sswitch_1
        0x87a -> :sswitch_0
    .end sparse-switch
.end method

.method private resetProxyAndRequestList()V
    .locals 2

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRadioProxy:Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    .line 546
    invoke-static {}, Lcom/huawei/ims/ImsRILRequest;->resetSerial()V

    .line 547
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/ImsRIL;->clearRequestList(IZ)V

    .line 548
    return-void
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # I

    .line 801
    sparse-switch p0, :sswitch_data_0

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown response> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 838
    :sswitch_0
    const-string v0, "RIL_UNSOL_HW_VOWIFI_REG_ERR_REPORT"

    return-object v0

    .line 835
    :sswitch_1
    const-string v0, "RIL_UNSOL_HW_IMS_REG_TYPE_IND"

    return-object v0

    .line 832
    :sswitch_2
    const-string v0, "RIL_UNSOL_HW_IMS_HOLD_TONE_IND"

    return-object v0

    .line 828
    :sswitch_3
    const-string v0, "RIL_UNSOL_HW_IMS_DMCN"

    return-object v0

    .line 809
    :sswitch_4
    const-string v0, "RIL_UNSOL_HW_LTE_RRC_INFO"

    return-object v0

    .line 808
    :sswitch_5
    const-string v0, "RIL_UNSOL_HW_LTE_PDCP_INFO"

    return-object v0

    .line 824
    :sswitch_6
    const-string v0, "RIL_UNSOL_HW_IMS_CS_REDIAL_NOTIFY"

    return-object v0

    .line 821
    :sswitch_7
    const-string v0, "UNSOL_HW_IMS_MT_STATUS_REPORT"

    return-object v0

    .line 819
    :sswitch_8
    const-string v0, "UNSOL_HW_IMS_RESPONSE_MODIFY_END_CAUSE"

    return-object v0

    .line 818
    :sswitch_9
    const-string v0, "UNSOL_HW_IMS_RESPONSE_MODIFY_IND"

    return-object v0

    .line 806
    :sswitch_a
    const-string v0, "UNSOL_HW_IMS_VOICE_BAND_INFO"

    return-object v0

    .line 815
    :sswitch_b
    const-string v0, "UNSOL_HW_IMS_SUPP_SVC_NOTIFICATION"

    return-object v0

    .line 812
    :sswitch_c
    const-string v0, "UNSOL_HW_IMS_SRV_STATUS_UPDATE"

    return-object v0

    .line 817
    :sswitch_d
    const-string v0, "UNSOL_HW_IMS_RESPONSE_HANDOVER"

    return-object v0

    .line 805
    :sswitch_e
    const-string v0, "UNSOL_HW_IMS_RINGBACK_TONE"

    return-object v0

    .line 804
    :sswitch_f
    const-string v0, "UNSOL_HW_IMS_CALL_RING"

    return-object v0

    .line 803
    :sswitch_10
    const-string v0, "UNSOL_HW_IMS_RESPONSE_CALL_STATE_CHANGED"

    return-object v0

    .line 802
    :sswitch_11
    const-string v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40d -> :sswitch_11
        0xbc3 -> :sswitch_10
        0xbc4 -> :sswitch_f
        0xbc5 -> :sswitch_e
        0xbc6 -> :sswitch_d
        0xbc7 -> :sswitch_c
        0xbca -> :sswitch_b
        0xbcb -> :sswitch_a
        0xbd5 -> :sswitch_9
        0xbd6 -> :sswitch_8
        0xbdc -> :sswitch_7
        0xbde -> :sswitch_6
        0xbe5 -> :sswitch_5
        0xbe6 -> :sswitch_4
        0xbec -> :sswitch_3
        0xbee -> :sswitch_2
        0xbef -> :sswitch_1
        0xbf0 -> :sswitch_0
    .end sparse-switch
.end method

.method private retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "req"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 660
    if-nez p2, :cond_0

    .line 661
    const-string v0, ""

    return-object v0

    .line 666
    :cond_0
    instance-of v0, p2, [I

    if-eqz v0, :cond_2

    .line 667
    move-object v0, p2

    check-cast v0, [I

    .line 668
    .local v0, "intArray":[I
    array-length v1, v0

    .line 669
    .local v1, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_1

    .line 671
    const/4 v3, 0x0

    .line 672
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .local v4, "i":I
    aget v3, v0, v3

    .end local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    :goto_0
    if-ge v4, v1, :cond_1

    .line 674
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i":I
    aget v4, v0, v4

    .end local v4    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 673
    move v4, v3

    goto :goto_0

    .line 677
    .end local v3    # "i":I
    :cond_1
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "s":Ljava/lang/String;
    goto :goto_3

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 680
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    .line 681
    .local v0, "strings":[Ljava/lang/String;
    array-length v1, v0

    .line 682
    .restart local v1    # "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_3

    .line 684
    const/4 v3, 0x0

    .line 685
    .restart local v3    # "i":I
    add-int/lit8 v4, v3, 0x1

    .restart local v4    # "i":I
    aget-object v3, v0, v3

    .end local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :goto_1
    if-ge v4, v1, :cond_3

    .line 687
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i":I
    aget-object v4, v0, v4

    .end local v4    # "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    move v4, v3

    goto :goto_1

    .line 690
    .end local v3    # "i":I
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "s":Ljava/lang/String;
    goto :goto_3

    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "length":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/16 v0, 0x7fc

    if-ne p1, v0, :cond_6

    .line 693
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    .line 694
    .local v0, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 696
    .local v2, "callListSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 697
    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 699
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    .end local v2    # "callListSize":I
    .local v0, "s":Ljava/lang/String;
    goto :goto_3

    .line 701
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    .restart local v0    # "s":Ljava/lang/String;
    :goto_3
    return-object v0
.end method

.method private sendAck()V
    .locals 4

    .line 1983
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/16 v2, 0x320

    invoke-static {v2, v1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1986
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1987
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1989
    :try_start_0
    invoke-interface {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1993
    :goto_0
    goto :goto_1

    .line 1990
    :catch_0
    move-exception v2

    .line 1991
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->resetProxyAndRequestList()V

    .line 1992
    const-string v3, "sendAck occues RemoteException or RuntimeException"

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1995
    :cond_0
    const-string v2, "Error trying to send ack, radioProxy = null"

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1997
    :goto_1
    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 1998
    return-void
.end method


# virtual methods
.method public acceptCall(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1689
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1690
    return-void
.end method

.method public acceptCall(Landroid/os/Message;I)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptCall callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 960
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    const-string v1, "HwIms"

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v2

    const-string v3, "AP_FLOW_SUC"

    const/4 v4, 0x2

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x806

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 966
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 967
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 968
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 969
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 971
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->acceptImsCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    goto :goto_0

    .line 972
    :catch_0
    move-exception v2

    .line 973
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "acceptCall"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 976
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public acceptCall(Landroid/os/Message;II)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callType"    # I
    .param p3, "presentation"    # I

    .line 981
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 982
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "ackPdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1803
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1804
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1798
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1799
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1793
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1794
    return-void
.end method

.method public addToConference(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1273
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1274
    const/16 v1, 0x81c

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1279
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1280
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1281
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1282
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1285
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->addImsConfMember(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    goto :goto_0

    .line 1286
    :catch_0
    move-exception v2

    .line 1287
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "addToConference"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1290
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2109
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2110
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .line 1640
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1641
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1627
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1628
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1631
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1632
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2301
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2302
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "oldPin"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aidPtr"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2295
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2296
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1255
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x10

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1258
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1260
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1261
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1262
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1264
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->conference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    goto :goto_0

    .line 1265
    :catch_0
    move-exception v2

    .line 1266
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "conference"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1269
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1780
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1781
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1744
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1745
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1740
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1741
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1652
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1653
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .line 1657
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1658
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/huawei/ims/ImsCallProfiles;Landroid/os/Message;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "imsCallProfile"    # Lcom/huawei/ims/ImsCallProfiles;
    .param p4, "result"    # Landroid/os/Message;

    .line 917
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

    .line 923
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    const-string v2, "HwIms"

    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v3

    const-string v4, "AP_FLOW_SUC"

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x7fb

    invoke-static {v1, p4, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 929
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;-><init>()V

    .line 930
    .local v1, "dialInfo":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;
    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    iput-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;->address:Ljava/lang/String;

    .line 931
    iput p2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;->clir:I

    .line 932
    if-eqz p3, :cond_1

    .line 933
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v3, p3, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    .line 934
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v3, p3, Lcom/huawei/ims/ImsCallProfiles;->call_domain:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    .line 936
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 937
    invoke-direct {p0, p4}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v2

    .line 938
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v2, :cond_2

    .line 939
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 942
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v3, v1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->imsDial(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    goto :goto_1

    .line 943
    :catch_0
    move-exception v3

    .line 944
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "dial"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 947
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 893
    const-string v0, "ImsRIL:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 896
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mWakeLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLockTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsRIL;->mWakeLockTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 901
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestMessagesPending="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesPending:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestMessagesWaiting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestMessagesWaiting:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 904
    .local v0, "count":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mRequestList count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 906
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/ImsRILRequest;

    .line 907
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    .end local v3    # "rr":Lcom/huawei/ims/ImsRILRequest;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
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

    .line 912
    return-void

    .line 909
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 897
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .line 2257
    const-string v0, "exitEmergencyCallbackMode"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 2259
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v0, :cond_1

    .line 2260
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2261
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_1

    .line 2262
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 2263
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 2264
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2266
    :cond_0
    return-void

    .line 2270
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2271
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1294
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1295
    const/16 v1, 0x48

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1297
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1298
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1299
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1300
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1302
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->explicitCallTransfer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    goto :goto_0

    .line 1303
    :catch_0
    move-exception v2

    .line 1304
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "explicitCallTransfer"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1307
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getAllowedCarriers(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2899
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2900
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2082
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2083
    return-void
.end method

.method public getBalongSim(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2915
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2916
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2101
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2102
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2213
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2214
    return-void
.end method

.method public getCHRReportPhoneId()I
    .locals 3

    .line 1086
    const/4 v0, 0x0

    .line 1087
    .local v0, "phoneid":I
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1090
    :cond_0
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 1092
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCHRReportPhoneId phoneid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1093
    return v0
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .line 1817
    const-string v0, "getCLIR"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1819
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2241
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2242
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2192
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2193
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1028
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x7fc

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1030
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1033
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1034
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1035
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1037
    :try_start_0
    const-string v2, "getCurrentCalls,call getCurrentImsCallsV1_2"

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1039
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getCurrentImsCallsV1_2(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    goto :goto_0

    .line 1041
    :catch_0
    move-exception v2

    .line 1042
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getCurrentCalls"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1047
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDMDYN(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3116
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x860

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3118
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3119
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3120
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3121
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3123
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getDmDynamicPram(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3126
    goto :goto_0

    .line 3124
    :catch_0
    move-exception v2

    .line 3125
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDMDYN"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3128
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDMPCSCF(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3086
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85e

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3088
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3089
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3090
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3091
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3093
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getDmPcscf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3096
    goto :goto_0

    .line 3094
    :catch_0
    move-exception v2

    .line 3095
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDMPCSCF"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3098
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDMSMS(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3131
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x861

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3133
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3134
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3135
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3136
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3138
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getSmsPsi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3141
    goto :goto_0

    .line 3139
    :catch_0
    move-exception v2

    .line 3140
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDMSMS"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3143
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDMTIMER(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3101
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85f

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3103
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3104
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3105
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3106
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3108
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getDmTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3111
    goto :goto_0

    .line 3109
    :catch_0
    move-exception v2

    .line 3110
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDMTIMER"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3113
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDMUSER(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3146
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x862

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3148
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3149
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3150
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3151
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3153
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getDmUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3156
    goto :goto_0

    .line 3154
    :catch_0
    move-exception v2

    .line 3155
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getDMUSER"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3158
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1648
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1649
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1709
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1710
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2209
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2210
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2196
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2197
    return-void
.end method

.method public getHardwareConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2954
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1669
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1670
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1673
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1674
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1661
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1662
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1665
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1666
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1607
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1608
    return-void
.end method

.method public getIccSlotsStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2995
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2996
    return-void
.end method

.method public getImsImpu(ILandroid/os/Message;)V
    .locals 4
    .param p1, "source"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1067
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1068
    const/16 v1, 0x815

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1070
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1072
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1073
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1074
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1076
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getImsImpu(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    goto :goto_0

    .line 1077
    :catch_0
    move-exception v2

    .line 1078
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsImpu"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1081
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsRegistrationState(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1050
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x70

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1052
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1053
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1054
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1055
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1057
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getImsRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    goto :goto_0

    .line 1058
    :catch_0
    move-exception v2

    .line 1059
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsRegistrationState"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1062
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getImsSmsConfig(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 3213
    const-string v0, "getImsSmsConfig ENTER"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3214
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 3215
    const/16 v1, 0x86c

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3216
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3217
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3218
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3219
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3221
    :try_start_0
    const-string v2, "Calling getImsSmsConfig -VENDOR 1.2"

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3222
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getImsSmsConfig(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3225
    goto :goto_0

    .line 3223
    :catch_0
    move-exception v2

    .line 3224
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getImsSmsConfig no support in vendor.huawei.hardware.radio.V1_1.IRadio "

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3227
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1008
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x867

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1012
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1014
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1015
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1016
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1019
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getLastImsCallFailCause(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    goto :goto_0

    .line 1021
    :catch_0
    move-exception v2

    .line 1022
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "getLastCallFailCause"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1025
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1693
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1694
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2351
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2352
    return-void
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .line 2875
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2876
    const/4 v0, 0x0

    return v0
.end method

.method public getModemActivityInfo(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 3230
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 1697
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1698
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2167
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2168
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2078
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2079
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1713
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1714
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2356
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2357
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2163
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2164
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1681
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1682
    return-void
.end method

.method public getQosStatus(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1776
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1777
    return-void
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .line 2362
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2363
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1701
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1702
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2175
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2176
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2306
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2307
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 1705
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1706
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 2155
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2156
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangupConnection: ImsIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xc

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 991
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 994
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 995
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 996
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 998
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->hangup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    goto :goto_0

    .line 999
    :catch_0
    move-exception v2

    .line 1000
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupConnection"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1003
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1219
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xe

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1222
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1224
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1225
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1226
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1228
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->hangupForegroundResumeBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    goto :goto_0

    .line 1229
    :catch_0
    move-exception v2

    .line 1230
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupForegroundResumeBackground"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1233
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1237
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xd

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1240
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1242
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1243
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1244
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1246
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->hangupWaitingOrBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    goto :goto_0

    .line 1247
    :catch_0
    move-exception v2

    .line 1248
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "hangupWaitingOrBackground"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1251
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2865
    return-void
.end method

.method public iccCloseLogicalChannel(ILandroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2944
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .line 2859
    return-void
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2869
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2870
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .line 1808
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1809
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
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

    .line 1813
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1814
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2862
    return-void
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "p2"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 2941
    return-void
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .line 2952
    return-void
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "response"    # Landroid/os/Message;

    .line 2949
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 2117
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2118
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2121
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2122
    return-void
.end method

.method public isSupportCnap()Z
    .locals 4

    .line 3424
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 3425
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3426
    .local v0, "manager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3427
    return v1

    .line 3430
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v2

    .line 3431
    .local v2, "subId":I
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3432
    .local v3, "bundle":Landroid/os/PersistableBundle;
    if-nez v3, :cond_1

    .line 3433
    return v1

    .line 3436
    :cond_1
    const-string v1, "suppport_cnap_bool"

    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isSupportVideoRingTones()Z
    .locals 5

    .line 3441
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 3442
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 3443
    .local v0, "manager":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3444
    return v1

    .line 3447
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v2

    .line 3448
    .local v2, "subId":I
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 3450
    .local v3, "bundle":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_1

    const-string v4, "ims_video_ring"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3451
    const-string v1, "ims_video_ring"

    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 3453
    :cond_1
    return v1
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 845
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

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-void
.end method

.method public logUnimplemented()V
    .locals 2

    .line 866
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 869
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "Unimplemented method. Stack trace: "

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 871
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 849
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

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 853
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

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 857
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

    .line 858
    return-void
.end method

.method public modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallConfirm callModify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x832

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1159
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1161
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;-><init>()V

    .line 1162
    .local v1, "imsCallModify":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;
    iget v2, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->call_index:I

    iput v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->callIndex:I

    .line 1163
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->curr_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v3, v3, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    .line 1164
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->curr_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v3, v3, Lcom/huawei/ims/ImsCallProfiles;->call_domain:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    .line 1165
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v3, v3, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    .line 1166
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v3, v3, Lcom/huawei/ims/ImsCallProfiles;->call_domain:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    .line 1167
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v2

    .line 1168
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v2, :cond_0

    .line 1169
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1172
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v3, v1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->modifyImsCallConfirm(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    goto :goto_0

    .line 1173
    :catch_0
    move-exception v3

    .line 1174
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "modifyCallConfirm"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1177
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public modifyCallInitiate(Landroid/os/Message;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallInitiate callModify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x831

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1107
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1109
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;-><init>()V

    .line 1110
    .local v1, "imsCallModify":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;
    iget v2, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->call_index:I

    iput v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->callIndex:I

    .line 1111
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->curr_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v3, v3, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    .line 1112
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->curr_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v3, v3, Lcom/huawei/ims/ImsCallProfiles;->call_domain:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    .line 1113
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v3, v3, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    .line 1114
    iget-object v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v3, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v3, v3, Lcom/huawei/ims/ImsCallProfiles;->call_domain:I

    iput v3, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    .line 1115
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v2

    .line 1116
    .local v2, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v2, :cond_0

    .line 1117
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radioProxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1120
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v2, v3, v1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->modifyImsCallInitiate(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    goto :goto_0

    .line 1121
    :catch_0
    move-exception v3

    .line 1122
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "modifyCallInitiate"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1125
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public modifyCallUpgradeCancel(Landroid/os/Message;I)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "callId"    # I

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallUpgradeCancel callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x868

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1141
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1143
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1144
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1145
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1147
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->cancelImsVideoCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    goto :goto_0

    .line 1148
    :catch_0
    move-exception v2

    .line 1149
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "modifyCallUpgradeCancel"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1152
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public modifyQos(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p3, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1764
    .local p2, "qosFlows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1765
    return-void
.end method

.method public nvReadItem(ILandroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2963
    return-void
.end method

.method public nvResetConfig(ILandroid/os/Message;)V
    .locals 0
    .param p1, "resetType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2957
    return-void
.end method

.method public nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0
    .param p1, "preferredRoamingList"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .line 2960
    return-void
.end method

.method public nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2966
    return-void
.end method

.method processIndication(I)V
    .locals 1
    .param p1, "indicationType"    # I

    .line 1970
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1971
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->sendAck()V

    .line 1972
    const-string v0, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1976
    :cond_0
    return-void
.end method

.method processRequestAck(I)V
    .locals 4
    .param p1, "serial"    # I

    .line 2002
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2004
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2005
    .local v1, "size":I
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 2006
    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/ImsRILRequest;

    .local v2, "rr":Lcom/huawei/ims/ImsRILRequest;
    goto :goto_0

    .line 2008
    .end local v2    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRequestAck: Unexpected serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2009
    const/4 v2, 0x0

    .end local v1    # "size":I
    .restart local v2    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :goto_0
    move-object v1, v2

    .line 2012
    .end local v2    # "rr":Lcom/huawei/ims/ImsRILRequest;
    .local v1, "rr":Lcom/huawei/ims/ImsRILRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2013
    if-nez v1, :cond_1

    .line 2014
    const-string v0, "processRequestAck: Unexpected solicited ack response! "

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2016
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rr.serialString() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Ack < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 2018
    :goto_1
    return-void

    .line 2012
    .end local v1    # "rr":Lcom/huawei/ims/ImsRILRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;
    .locals 6
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 1909
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->serial:I

    .line 1910
    .local v0, "serial":I
    iget v1, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->type:I

    .line 1912
    .local v1, "type":I
    const/4 v2, 0x0

    .line 1915
    .local v2, "ret":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->findAndRemoveRequestFromList(I)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v3

    .line 1916
    .local v3, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-nez v3, :cond_0

    .line 1917
    const/4 v4, 0x0

    return-object v4

    .line 1922
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1923
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 1924
    invoke-static {v5}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Sending ack to ril.cpp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1923
    invoke-virtual {p0, v4}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1932
    :cond_1
    iget v4, v3, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 1938
    invoke-direct {p0}, Lcom/huawei/ims/ImsRIL;->releaseWakeLockIfDone()V

    .line 1939
    return-object v3
.end method

.method processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 3
    .param p1, "rr"    # Lcom/huawei/ims/ImsRILRequest;
    .param p2, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p3, "ret"    # Ljava/lang/Object;

    .line 1950
    iget v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v0, :cond_1

    .line 1951
    const/16 v0, 0x815

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    if-ne v0, v1, :cond_0

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 1953
    invoke-direct {p0, v1, p3}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1952
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1955
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    .line 1956
    invoke-direct {p0, v1, p3}, Lcom/huawei/ims/ImsRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1955
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1959
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v1}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1961
    iget v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p1, v0, p3}, Lcom/huawei/ims/ImsRILRequest;->onError(ILjava/lang/Object;)V

    .line 1963
    :goto_0
    iget v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->type:I

    if-nez v0, :cond_2

    .line 1964
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->decrementWakeLock(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1966
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 1967
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2138
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2139
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .line 2096
    const-string v0, "queryClip"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2098
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2092
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2093
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 1841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCallWaiting serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1842
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1843
    return-void
.end method

.method public queryCardType(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2925
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2926
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2217
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2218
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 2318
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2319
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .line 2324
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2325
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2229
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2230
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2760
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2761
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2399
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2400
    return-void
.end method

.method public registerForCallModifyResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3015
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3016
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3017
    return-void
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 451
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 452
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 453
    return-void
.end method

.method public registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2710
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2711
    return-void
.end method

.method public registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2455
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2456
    return-void
.end method

.method public registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2785
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2786
    return-void
.end method

.method public registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2816
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2817
    return-void
.end method

.method public registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2806
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2807
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2700
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2701
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2828
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v0, :cond_0

    .line 2829
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 2831
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2834
    :goto_0
    return-void
.end method

.method public registerForHandoverStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 362
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 364
    return-void
.end method

.method public registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2606
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2607
    return-void
.end method

.method public registerForImsCSRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 402
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 403
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 404
    return-void
.end method

.method public registerForImsDMCN(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 412
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 413
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 414
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 459
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 460
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 461
    return-void
.end method

.method public registerForImsRegMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 479
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 480
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 481
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2494
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2495
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2496
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2482
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2483
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2485
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2750
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2751
    return-void
.end method

.method public registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2445
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2446
    return-void
.end method

.method public registerForModifyCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3006
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3007
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3008
    return-void
.end method

.method public registerForMtStatusReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 443
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 444
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 445
    return-void
.end method

.method public registerForNetworkScanResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2465
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2466
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2409
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2410
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2730
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2731
    return-void
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2419
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2420
    return-void
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2389
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2390
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3253
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3254
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3255
    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2368
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2369
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2740
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2741
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2795
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2796
    return-void
.end method

.method public registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2849
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2850
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 468
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 469
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 470
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2720
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2721
    return-void
.end method

.method public registerForSrvStatusUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 371
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 373
    return-void
.end method

.method public registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2506
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2507
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2770
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2771
    return-void
.end method

.method public registerForUnsolLTE_PDCPInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 383
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 385
    return-void
.end method

.method public registerForUnsolLTE_RRCInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 392
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 393
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 394
    return-void
.end method

.method public registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 435
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 437
    return-void
.end method

.method public registerForVoWiFiRegErrReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 3474
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3475
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 3476
    return-void
.end method

.method public registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2378
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2379
    return-void
.end method

.method public registerForVtFlowInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 423
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 425
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1310
    nop

    .line 1311
    const/16 v0, 0x11

    invoke-static {v0, p1}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1314
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1315
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1316
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1317
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1320
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->rejectCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    goto :goto_0

    .line 1321
    :catch_0
    move-exception v2

    .line 1322
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "rejectCall"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1325
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public rejectImsCallForCause(IILandroid/os/Message;)V
    .locals 4
    .param p1, "callIndex"    # I
    .param p2, "cause"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectImsCallForCause , cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1329
    nop

    .line 1330
    const/16 v0, 0x87a

    invoke-static {v0, p3}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1333
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1334
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1335
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1336
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1339
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->rejectCallWithReason(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    goto :goto_0

    .line 1340
    :catch_0
    move-exception v2

    .line 1341
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "rejectImsCallForCause"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1344
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public releaseQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1760
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1761
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "available"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2183
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2184
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2187
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2188
    return-void
.end method

.method public requestGetLTEInfo(IILandroid/os/Message;)V
    .locals 4
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1541
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1542
    const/16 v1, 0x854

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1544
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

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

    .line 1547
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1548
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1550
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1554
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setVtLlteQualityRptCfg(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1557
    goto :goto_0

    .line 1555
    :catch_0
    move-exception v2

    .line 1556
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestGetLTEInfo"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1559
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestGetUiccFile(ILandroid/os/Message;)V
    .locals 4
    .param p1, "file_id"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1505
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x824

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1507
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1509
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1510
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1511
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1514
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getUiccFile(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    goto :goto_0

    .line 1515
    :catch_0
    move-exception v2

    .line 1516
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestGetUiccFile"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1519
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "authContext"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2938
    return-void
.end method

.method public requestReadHomeDomainName(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1869
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1870
    const/16 v1, 0x869

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1871
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1872
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1873
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1874
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1877
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getVolteDomain(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    goto :goto_0

    .line 1878
    :catch_0
    move-exception v2

    .line 1879
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestReadHomeDomainName"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1882
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestReadIsimIMPI(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1887
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1888
    const/16 v1, 0x86a

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1889
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1890
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1891
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1892
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1895
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->getVolteImpi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    goto :goto_0

    .line 1896
    :catch_0
    move-exception v2

    .line 1897
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestReadIsimIMPI"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1900
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestSetImsVtCapability(IILandroid/os/Message;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "enabled"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1563
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1564
    const/16 v1, 0x866

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1566
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

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

    .line 1569
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1570
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1572
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1575
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setImsvtCapability(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    goto :goto_0

    .line 1576
    :catch_0
    move-exception v2

    .line 1577
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestSetImsVtCapability"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1580
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestUiccAuth([B[BLandroid/os/Message;)V
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "auth"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .line 1419
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x821

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1422
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1422
    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1426
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1427
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1428
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1430
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;

    move-result-object v2

    .line 1432
    .local v2, "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->uiccAuth(ILvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1435
    goto :goto_0

    .line 1433
    :catch_0
    move-exception v3

    .line 1434
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "requestUiccAuth"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1437
    .end local v2    # "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestUiccFileUpdate(I[BLandroid/os/Message;)V
    .locals 5
    .param p1, "file_id"    # I
    .param p2, "data"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .line 1476
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x823

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1478
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1478
    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1480
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1481
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1482
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1484
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUpdateFile(I[B)Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;

    move-result-object v2

    .line 1486
    .local v2, "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->updateUiccFile(ILvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    goto :goto_0

    .line 1487
    :catch_0
    move-exception v3

    .line 1488
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "requestUiccFileUpdate"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1491
    .end local v2    # "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestUiccGbaBootstrap([B[BLandroid/os/Message;)V
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "auth"    # [B
    .param p3, "result"    # Landroid/os/Message;

    .line 1458
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x822

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1460
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1460
    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1462
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1463
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1464
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1466
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, p2}, Lcom/huawei/ims/ImsRIL;->createRilUiccAuth(I[B[B)Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;

    move-result-object v2

    .line 1468
    .local v2, "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    :try_start_0
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v3, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->uiccGbaBootStrap(ILvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    goto :goto_0

    .line 1469
    :catch_0
    move-exception v3

    .line 1470
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "requestUiccGbaBootstrap"

    invoke-direct {p0, v4, v3, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1473
    .end local v2    # "msg":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestUiccKsNaf(ILandroid/os/Message;)V
    .locals 4
    .param p1, "file_id"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1522
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x825

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1524
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fileid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1526
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1527
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1528
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1536
    :cond_0
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .line 2113
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2114
    return-void
.end method

.method public restartRild(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1584
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1585
    const/16 v1, 0x7d5

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1587
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1589
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1590
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1591
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1594
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->restartRILD(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1595
    :catch_0
    move-exception v2

    .line 1596
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "restartRild"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1597
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1599
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/huawei/ims/ImsRILRequest;->onError(ILjava/lang/Object;)V

    .line 1600
    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->release()V

    .line 1602
    :goto_1
    return-void
.end method

.method public resumeQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1772
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1773
    return-void
.end method

.method public riseCdmaCutoffFreq(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2887
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2888
    return-void
.end method

.method public sendBatteryStatus(ILandroid/os/Message;)V
    .locals 4
    .param p1, "batterySattus"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3234
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x865

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3236
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3237
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3238
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3239
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3241
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->informBatteryStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3244
    goto :goto_0

    .line 3242
    :catch_0
    move-exception v2

    .line 3243
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendBatteryStatus"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3246
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 1718
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1719
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "FeatureCode"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2237
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2238
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 1726
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1727
    return-void
.end method

.method public sendDeviceState(IZLandroid/os/Message;)V
    .locals 0
    .param p1, "stateType"    # I
    .param p2, "state"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2050
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2051
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1348
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1349
    const/16 v1, 0x18

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1351
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1352
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1353
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1354
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1357
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->sendDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    goto :goto_0

    .line 1358
    :catch_0
    move-exception v2

    .line 1359
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "sendDtmf"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1362
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2146
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2147
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2150
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2151
    return-void
.end method

.method public sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "retry"    # I
    .param p3, "messageRef"    # I
    .param p4, "response"    # Landroid/os/Message;

    .line 1736
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1737
    return-void
.end method

.method public sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "retry"    # I
    .param p4, "messageRef"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 1731
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1732
    return-void
.end method

.method public sendImsRegistrationState(ILandroid/os/Message;)V
    .locals 0
    .param p1, "imsRegState"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1099
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1100
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1722
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1723
    return-void
.end method

.method public sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "smscPDU"    # Ljava/lang/String;
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 2930
    return-void
.end method

.method public sendSMSSetLong(ILandroid/os/Message;)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2934
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2142
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2143
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2105
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2106
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1685
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1686
    return-void
.end method

.method public setAllowedCarriers(Ljava/util/List;Landroid/os/Message;)V
    .locals 0
    .param p2, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 2904
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/carrier/CarrierIdentifier;>;"
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2905
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2134
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2135
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 4
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCLIR clirmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1824
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x81e

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1827
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1828
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1829
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1830
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1832
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setClir(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    goto :goto_0

    .line 1833
    :catch_0
    move-exception v2

    .line 1834
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCLIR"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1838
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .line 2087
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2088
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .line 1848
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

    .line 1850
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x81f

    invoke-static {v1, p3, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1853
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1854
    invoke-direct {p0, p3}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1855
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logv(Ljava/lang/String;)V

    .line 1856
    if-eqz v1, :cond_0

    .line 1857
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1859
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setImsCallWaiting(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1862
    goto :goto_0

    .line 1860
    :catch_0
    move-exception v2

    .line 1861
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setCallWaiting"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1864
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 2440
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2441
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 2253
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2254
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .line 2245
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2246
    return-void
.end method

.method public setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 2249
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2250
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2221
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2222
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscription"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2225
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2226
    return-void
.end method

.method public setDMDYN(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3041
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85b

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3043
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3044
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3045
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3046
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3048
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setDmDynamicPram(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3051
    goto :goto_0

    .line 3049
    :catch_0
    move-exception v2

    .line 3050
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDMDYN"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3053
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDMPCSCF(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3026
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85a

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3028
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3029
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3030
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3031
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3033
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setDmPcscf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3036
    goto :goto_0

    .line 3034
    :catch_0
    move-exception v2

    .line 3035
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDMPCSCF"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3038
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDMSMS(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3071
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85d    # 3.0E-42f

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3073
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3074
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3075
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3076
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3078
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setDmSmsPsi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3081
    goto :goto_0

    .line 3079
    :catch_0
    move-exception v2

    .line 3080
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDMSMS"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3083
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDMTIMER(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 3056
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x85c

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3058
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3059
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3060
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3061
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3063
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setDmTimer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3066
    goto :goto_0

    .line 3064
    :catch_0
    move-exception v2

    .line 3065
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setDMTIMER"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3068
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setDataProfile([Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dps"    # [Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2055
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2056
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2780
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2781
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2330
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2331
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .line 2336
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2337
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 2204
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2205
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "config"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "response"    # Landroid/os/Message;

    .line 2200
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2201
    return-void
.end method

.method public setISMCOEX(Ljava/lang/String;)V
    .locals 0
    .param p1, "strings"    # Ljava/lang/String;

    .line 2126
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2127
    return-void
.end method

.method public setImsSmsConfig(ILandroid/os/Message;)V
    .locals 4
    .param p1, "enabled"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3193
    const-string v0, "setImsSmsConfig ENTER "

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3194
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x86b

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3196
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3197
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3198
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 3199
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3201
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setImsSmsConfiYou g -VENDOR 1.2 with enabled= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3202
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setImsSmsConfig(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3205
    goto :goto_0

    .line 3203
    :catch_0
    move-exception v2

    .line 3204
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsSmsConfig no support in vendor.huawei.hardware.radio.V1_1.IRadio"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3207
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "result"    # Landroid/os/Message;

    .line 2893
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2894
    return-void
.end method

.method public setLTEReleaseVersion(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 2919
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2920
    return-void
.end method

.method public setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .locals 0
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDlKbps"    # I
    .param p3, "hysteresisUlKbps"    # I
    .param p4, "thresholdsDlKbps"    # [I
    .param p5, "thresholdsUlKbps"    # [I
    .param p6, "ran"    # I
    .param p7, "result"    # Landroid/os/Message;

    .line 2971
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 2171
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2172
    return-void
.end method

.method public setLogicalToPhysicalSlotMapping([ILandroid/os/Message;)V
    .locals 0
    .param p1, "physicalSlots"    # [I
    .param p2, "result"    # Landroid/os/Message;

    .line 2990
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2991
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableMute"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .line 1400
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1401
    const/16 v1, 0x35

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1403
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1405
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1406
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1407
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1409
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setMute(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    goto :goto_0

    .line 1410
    :catch_0
    move-exception v2

    .line 1411
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setMute"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1414
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2069
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2070
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .line 2074
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2075
    return-void
.end method

.method public setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2690
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2691
    return-void
.end method

.method public setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2680
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2681
    return-void
.end method

.method public setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2670
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2671
    return-void
.end method

.method public setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2660
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2661
    return-void
.end method

.method public setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2616
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2617
    return-void
.end method

.method public setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2596
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2597
    return-void
.end method

.method public setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2566
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2567
    return-void
.end method

.method public setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2526
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2527
    return-void
.end method

.method public setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2536
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2537
    return-void
.end method

.method public setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2516
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2517
    return-void
.end method

.method public setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2636
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2637
    return-void
.end method

.method public setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2586
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2587
    return-void
.end method

.method public setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2546
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2547
    return-void
.end method

.method public setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2556
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2557
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2647
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    .line 2649
    return-void
.end method

.method public setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2576
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2577
    return-void
.end method

.method public setPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .line 888
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

    .line 889
    iput p1, p0, Lcom/huawei/ims/ImsRIL;->mPhoneType:I

    .line 890
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2159
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2160
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1677
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1678
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1784
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1785
    return-void
.end method

.method public setSignalStrengthReportingCriteria(II[IILandroid/os/Message;)V
    .locals 0
    .param p1, "hysteresisMs"    # I
    .param p2, "hysteresisDb"    # I
    .param p3, "thresholdsDbm"    # [I
    .param p4, "ran"    # I
    .param p5, "result"    # Landroid/os/Message;

    .line 2975
    return-void
.end method

.method public setSimCardPower(ILandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2060
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2061
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 2179
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2180
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 1788
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1789
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "ttyMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .line 2233
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2234
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 2312
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2313
    return-void
.end method

.method public setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 0
    .param p1, "filter"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2065
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2066
    return-void
.end method

.method public setVoWiFiRegErrReportEnable(ILandroid/os/Message;)V
    .locals 4
    .param p1, "enabled"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 3459
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v0

    .line 3460
    .local v0, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v0, :cond_0

    .line 3461
    const/16 v1, 0x86d

    iget-object v2, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-static {v1, p2, v2}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v1

    .line 3463
    .local v1, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v3}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3464
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3466
    :try_start_0
    iget v2, v1, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v0, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setImsRegErrReport(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3469
    goto :goto_0

    .line 3467
    :catch_0
    move-exception v2

    .line 3468
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setVoWiFiRegErrReportEnable"

    invoke-direct {p0, v3, v2, v1}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3471
    .end local v1    # "rr":Lcom/huawei/ims/ImsRILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setWifiEmergencyAid(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .line 3162
    const-string v0, "[Wifi-Call] setWifiEmergencyAid"

    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3163
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x863

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 3165
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3166
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 3167
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_1

    .line 3168
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 3170
    :try_start_0
    const-string v2, ""

    .line 3171
    .local v2, "data":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3172
    iget-object v3, p0, Lcom/huawei/ims/ImsRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "att_address_id_value"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 3174
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Wifi-Call] setWifiEmergencyAid data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 3175
    iget v3, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsRIL;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->setWifiEmergencyAid(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3178
    .end local v2    # "data":Ljava/lang/String;
    goto :goto_0

    .line 3176
    :catch_0
    move-exception v2

    .line 3177
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setWifiEmergencyAid"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 3180
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 0
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "result"    # Landroid/os/Message;

    .line 2343
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2344
    return-void
.end method

.method public setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .param p1, "callId"    # I
    .param p3, "result"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1756
    .local p2, "qosFlows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1757
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1365
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1366
    const/16 v1, 0x31

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1368
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1369
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1370
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1371
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1374
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->startDtmf(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    goto :goto_0

    .line 1375
    :catch_0
    move-exception v2

    .line 1376
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "startDtmf"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1379
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 0
    .param p1, "contextId"    # I
    .param p2, "packetData"    # Landroid/net/KeepalivePacketData;
    .param p3, "intervalMillis"    # I
    .param p4, "result"    # Landroid/os/Message;

    .line 2985
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2986
    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 0
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "response"    # Landroid/os/Message;

    .line 2429
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2430
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1382
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1383
    const/16 v1, 0x32

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1386
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1387
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1388
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1389
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioProxy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/ims/ImsRIL;->log(Ljava/lang/String;)V

    .line 1392
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->stopDtmf(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    goto :goto_0

    .line 1393
    :catch_0
    move-exception v2

    .line 1394
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "stopDtmf"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1397
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public stopNattKeepalive(ILandroid/os/Message;)V
    .locals 0
    .param p1, "sessionHandle"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 2979
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2980
    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .line 2434
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2435
    return-void
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 1644
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1645
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1611
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1612
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1619
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1620
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2285
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2286
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 2275
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2276
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1615
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1616
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .line 1623
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1624
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2290
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2291
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 2280
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2281
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .line 1635
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1636
    return-void
.end method

.method public suspendQos(ILandroid/os/Message;)V
    .locals 0
    .param p1, "qosId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1768
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1769
    return-void
.end method

.method public switchBalongSim(IILandroid/os/Message;)V
    .locals 0
    .param p1, "modem1ToSlot"    # I
    .param p2, "modem2ToSlot"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 2910
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2911
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 1181
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xf

    invoke-static {v1, p1, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1184
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1186
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1187
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1188
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1190
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->switchWaitingOrHoldingAndActive(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    goto :goto_0

    .line 1191
    :catch_0
    move-exception v2

    .line 1192
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1195
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V
    .locals 4
    .param p1, "calltype"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 1201
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->imsRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0xf

    invoke-static {v1, p2, v0}, Lcom/huawei/ims/ImsRILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 1203
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mRequest:I

    invoke-static {v2}, Lcom/huawei/ims/ImsRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 1204
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsRIL;->getRadioProxy(Landroid/os/Message;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;

    move-result-object v1

    .line 1205
    .local v1, "radioProxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
    if-eqz v1, :cond_0

    .line 1206
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsRIL;->addRequest(Lcom/huawei/ims/ImsRILRequest;)V

    .line 1208
    :try_start_0
    iget v2, v0, Lcom/huawei/ims/ImsRILRequest;->mSerial:I

    invoke-interface {v1, v2, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;->switchImsWaitingOrHoldingAndActiveWithType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    goto :goto_0

    .line 1209
    :catch_0
    move-exception v2

    .line 1210
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "switchWaitingOrHoldingAndActiveForIms "

    invoke-direct {p0, v3, v2, v0}, Lcom/huawei/ims/ImsRIL;->handleRadioProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;Lcom/huawei/ims/ImsRILRequest;)V

    .line 1214
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public testingEmergencyCall()V
    .locals 0

    .line 2881
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2882
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2627
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2629
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    .line 2631
    :cond_0
    return-void
.end method

.method public unSetOnCatCallSetUp(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2695
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2696
    return-void
.end method

.method public unSetOnCatEvent(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2685
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2686
    return-void
.end method

.method public unSetOnCatProactiveCmd(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2675
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2676
    return-void
.end method

.method public unSetOnCatSessionEnd(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2665
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2666
    return-void
.end method

.method public unSetOnIccSmsFull(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2601
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2602
    return-void
.end method

.method public unSetOnNITZTime(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2571
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2572
    return-void
.end method

.method public unSetOnNewCdmaSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2531
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2532
    return-void
.end method

.method public unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2541
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2542
    return-void
.end method

.method public unSetOnNewGsmSms(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2521
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2522
    return-void
.end method

.method public unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2641
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2642
    return-void
.end method

.method public unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2591
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2592
    return-void
.end method

.method public unSetOnSmsOnSim(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2551
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2552
    return-void
.end method

.method public unSetOnSmsStatus(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2561
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2562
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2654
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 2656
    return-void
.end method

.method public unSetOnUSSD(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2581
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2582
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2404
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2405
    return-void
.end method

.method public unregisterForCallModifyResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3020
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3021
    return-void
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 455
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 456
    return-void
.end method

.method public unregisterForCallWaitingInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2715
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2716
    return-void
.end method

.method public unregisterForCarrierInfoForImsiEncryption(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2460
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2461
    return-void
.end method

.method public unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2790
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2791
    return-void
.end method

.method public unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2821
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2822
    return-void
.end method

.method public unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2811
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2812
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2705
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2706
    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2839
    sget-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v0, :cond_0

    .line 2840
    invoke-super {p0, p1}, Lcom/android/internal/telephony/BaseCommands;->unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V

    goto :goto_0

    .line 2842
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2845
    :goto_0
    return-void
.end method

.method public unregisterForHandoverStatusChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 367
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 368
    return-void
.end method

.method public unregisterForIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2611
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2612
    return-void
.end method

.method public unregisterForImsCSRedial(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 407
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 408
    return-void
.end method

.method public unregisterForImsDMCN(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 416
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 417
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 463
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 464
    return-void
.end method

.method public unregisterForImsRegMode(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 483
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 484
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2500
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2501
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 2489
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2490
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2755
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2756
    return-void
.end method

.method public unregisterForModemReset(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2450
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2451
    return-void
.end method

.method public unregisterForModifyCall(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3011
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3012
    return-void
.end method

.method public unregisterForMtStatusReport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 447
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 448
    return-void
.end method

.method public unregisterForNetworkScanResult(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2470
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2471
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2414
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2415
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2735
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2736
    return-void
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2424
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2425
    return-void
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2394
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2395
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3258
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3259
    return-void
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2373
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2374
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2745
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2746
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2800
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2801
    return-void
.end method

.method public unregisterForRilConnected(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2854
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2855
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 472
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 473
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2725
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2726
    return-void
.end method

.method public unregisterForSrvStatusUpdate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 376
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 377
    return-void
.end method

.method public unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2511
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2512
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2775
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2776
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2765
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2766
    return-void
.end method

.method public unregisterForUnsolLTE_PDCPInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 388
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 389
    return-void
.end method

.method public unregisterForUnsolLTE_RRCInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 397
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 398
    return-void
.end method

.method public unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 439
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 440
    return-void
.end method

.method public unregisterForVoWiFiRegErrReport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 3479
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3480
    return-void
.end method

.method public unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2383
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2384
    return-void
.end method

.method public unregisterForVtFlowInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 427
    iget-object v0, p0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 428
    return-void
.end method

.method public unsetOnIccRefresh(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .line 2621
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 2622
    return-void
.end method

.method public unsljLog(I)V
    .locals 2
    .param p1, "response"    # I

    .line 874
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

    .line 875
    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 878
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

    .line 879
    return-void
.end method

.method public unsljLogvRet(ILjava/lang/Object;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .line 882
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

    .line 883
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "pdu"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .line 1752
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1753
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .line 1748
    invoke-virtual {p0}, Lcom/huawei/ims/ImsRIL;->logUnimplemented()V

    .line 1749
    return-void
.end method
