.class public Lcom/huawei/ims/vt/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/huawei/ims/vt/ImsMediaProvider$CameraListener;
.implements Lcom/huawei/ims/IImsCallListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;
    }
.end annotation


# static fields
.field public static final CAAS_EVENT_PARAM_READY:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

.field private static final CALL_TYPE_MO:I = 0x1

.field private static final CALL_TYPE_MT:I = 0x2

.field private static final EVENT_RETRY_TO_OPEN_CARMERA:I = 0x1

.field private static final INVALID_RETURN_VALUE:I = 0x1

.field private static final INVALID_SESSION_ID:I = -0x1

.field private static final MAX_CAMERA_RADIO:I = 0x1

.field private static final OPEN_CAMERA_DELAY:I = 0x64

.field private static final OPEN_CAMERA_FAIL_RETRY:I = -0x2

.field private static final PREVIEW_HEIGHT:I = 0x5a0

.field private static final PREVIEW_WIDTH:I = 0x438

.field private static final STATE_DEFAULT:I = -0x1

.field private static final STATE_HOLDING:I = 0x0

.field private static final STATE_RESUME:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static mCallSessionState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCameraIdForSessoion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mImsSDKResIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/huawei/ims/vt/CameraManager;


# instance fields
.field private mBgVideoCallShouldResume:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCAMERASesId:I

.field private mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

.field private mConferencedSession:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

.field private mFristToMergeCall:Z

.field private mHandler:Landroid/os/Handler;

.field private mHavePauseAndStop:Z

.field mHoldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            "Ljava/util/Set<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIMSSDKResId:I

.field private mIsHandupCurrentCallSession:Z

.field private mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

.field private mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

.field private mPreSetSurface:Landroid/view/Surface;

.field private mSDKCameraOpen:Z

.field private mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraManager;->mCallSessionState:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/vt/CameraManager;->mImsSDKResIdSet:Ljava/util/Set;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mSDKCameraOpen:Z

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 83
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mFristToMergeCall:Z

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSession:Ljava/util/ArrayList;

    .line 86
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 88
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mBgVideoCallShouldResume:Z

    .line 93
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHavePauseAndStop:Z

    .line 108
    new-instance v0, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;-><init>(Lcom/huawei/ims/vt/CameraManager;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    .line 119
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIMSSDKResId:I

    .line 120
    iput v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    .line 544
    new-instance v0, Lcom/huawei/ims/vt/CameraManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraManager$1;-><init>(Lcom/huawei/ims/vt/CameraManager;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mSDKCameraOpen:Z

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 83
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mFristToMergeCall:Z

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSession:Ljava/util/ArrayList;

    .line 86
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 88
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mBgVideoCallShouldResume:Z

    .line 93
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHavePauseAndStop:Z

    .line 108
    new-instance v0, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;-><init>(Lcom/huawei/ims/vt/CameraManager;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    .line 119
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIMSSDKResId:I

    .line 120
    iput v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    .line 544
    new-instance v0, Lcom/huawei/ims/vt/CameraManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraManager$1;-><init>(Lcom/huawei/ims/vt/CameraManager;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 481
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    .line 482
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraManager;->mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 483
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

    invoke-virtual {v0, p0}, Lcom/huawei/ims/vt/ImsMediaProvider;->setCameraListener(Lcom/huawei/ims/vt/ImsMediaProvider$CameraListener;)V

    .line 484
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/huawei/vtproxy/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

    .line 485
    invoke-direct {p0}, Lcom/huawei/ims/vt/CameraManager;->registerVTBroadcast()V

    .line 486
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/vt/CameraManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraManager;

    .line 35
    iget v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIMSSDKResId:I

    return v0
.end method

.method static synthetic access$002(Lcom/huawei/ims/vt/CameraManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraManager;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/huawei/ims/vt/CameraManager;->mIMSSDKResId:I

    return p1
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .line 35
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mImsSDKResIdSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/vt/CameraManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraManager;

    .line 35
    iget v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    return v0
.end method

.method static synthetic access$300(Lcom/huawei/ims/vt/CameraManager;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraManager;

    .line 35
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/ims/vt/CameraManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraManager;
    .param p1, "x1"    # I

    .line 35
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraManager;->resumeImsRTPStream(I)V

    return-void
.end method

.method public static getInstance()Lcom/huawei/ims/vt/CameraManager;
    .locals 2

    .line 475
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sInstance:Lcom/huawei/ims/vt/CameraManager;

    monitor-exit v0

    return-object v1

    .line 477
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 128
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sInstance:Lcom/huawei/ims/vt/CameraManager;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lcom/huawei/ims/vt/CameraManager;

    invoke-direct {v1, p0, p1}, Lcom/huawei/ims/vt/CameraManager;-><init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V

    sput-object v1, Lcom/huawei/ims/vt/CameraManager;->sInstance:Lcom/huawei/ims/vt/CameraManager;

    .line 132
    :cond_0
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private noticeCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "hasFailed"    # Z

    .line 298
    if-nez p1, :cond_0

    .line 299
    const-string v0, "CameraManager"

    const-string v1, "sendCameraStatus: session is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 303
    :cond_0
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCameraStatus: Notifying Session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsVTCallProviderImpl()Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    move-result-object v0

    .line 305
    .local v0, "provider":Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0, p2}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->sendCameraStatus(Z)V

    .line 309
    :cond_1
    return-void
.end method

.method private pauseImsRTPStream(I)V
    .locals 5
    .param p1, "currentCallType"    # I

    .line 808
    invoke-static {p1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 809
    .local v0, "direction":I
    invoke-static {v0}, Lcom/huawei/ims/vt/RTPController;->pauseRTPStream(I)I

    move-result v1

    .line 810
    .local v1, "result":I
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallSessionHold result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method

.method private pauseVideoAndStopPreview(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "cp"    # Landroid/telephony/ims/ImsCallProfile;

    .line 782
    const-string v0, "CameraManager"

    const-string v1, "pauseVideoAndStopPreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-nez p2, :cond_0

    .line 784
    const-string v0, "CameraManager"

    const-string v1, "pauseVideoAndStopPreview cp null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void

    .line 787
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huawei/ims/vt/CameraManager;->setPreviewSurface(Landroid/view/Surface;)V

    .line 788
    iget v0, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->convertCallTypeToVideoState(I)I

    move-result v0

    .line 789
    .local v0, "currentVideoState":I
    new-instance v1, Landroid/telecom/VideoProfile;

    or-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 790
    .local v1, "requestProfile":Landroid/telecom/VideoProfile;
    new-instance v2, Landroid/telecom/VideoProfile;

    invoke-direct {v2, v0}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 791
    .local v2, "fromProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsVTCallProviderImpl()Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    move-result-object v3

    .line 792
    .local v3, "provider":Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
    if-nez v3, :cond_1

    .line 793
    const-string v4, "CameraManager"

    const-string v5, "pauseVideoAndStopPreview,provider is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void

    .line 796
    :cond_1
    invoke-virtual {v3, v2, v1}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 797
    iget-object v4, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 798
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraManager;->mHavePauseAndStop:Z

    .line 800
    :cond_2
    return-void
.end method

.method private recoverToSetCurrentSessionId(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 830
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 831
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 832
    .local v0, "enableSetCurrentSessionId":Z
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 833
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 834
    .local v1, "currentSessionId":I
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 836
    .end local v1    # "currentSessionId":I
    :cond_1
    return-void
.end method

.method private registerVTBroadcast()V
    .locals 3

    .line 587
    const-string v0, "CameraManager"

    const-string v1, "registerVTBroadcast"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 589
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 591
    return-void
.end method

.method private removeInvalidCallSession()V
    .locals 4

    .line 874
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 875
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 877
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 878
    .local v2, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverImsCall;

    move-result-object v3

    if-nez v3, :cond_0

    .line 879
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 881
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    .end local v2    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 882
    :cond_1
    return-void
.end method

.method private replaceConferenceSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 278
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceConferenceSession session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 289
    :cond_0
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 294
    return-void
.end method

.method private resumeImsRTPStream(I)V
    .locals 5
    .param p1, "currentCallType"    # I

    .line 819
    invoke-static {p1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 820
    .local v0, "direction":I
    invoke-static {v0}, Lcom/huawei/ims/vt/RTPController;->resumeRTPStream(I)I

    move-result v1

    .line 821
    .local v1, "result":I
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCallSessionResumed result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return-void
.end method


# virtual methods
.method public cleanPreStatus()V
    .locals 1

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    .line 113
    return-void
.end method

.method public close(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .locals 8
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isHangUpCall"    # Z

    .line 326
    const-string v0, "CameraManager"

    const-string v1, "close camera"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSession:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSession:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSession:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraManager;->replaceConferenceSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSession:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 338
    const-string v0, "CameraManager"

    const-string v1, "There are other sessions in conference, so we don\'t release conf session in IMS SDK"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 343
    :cond_1
    :goto_0
    if-eqz p1, :cond_10

    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 350
    :cond_2
    const/4 v0, 0x1

    .line 351
    .local v0, "shouldCameraRelease":Z
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 352
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 353
    .local v1, "sessionId":I
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    move-result v4

    .line 354
    .local v4, "result":I
    const-string v5, "CameraManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close sure set now CurrentSessionID  result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-ne v4, v3, :cond_3

    .line 356
    const/4 v0, 0x0

    .line 359
    .end local v1    # "sessionId":I
    .end local v4    # "result":I
    :cond_3
    iget-boolean v1, p0, Lcom/huawei/ims/vt/CameraManager;->mSDKCameraOpen:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_5

    if-eqz v0, :cond_5

    .line 360
    const-string v1, "CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSDKCameraOpen is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/huawei/ims/vt/CameraManager;->mSDKCameraOpen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isMT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMT()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMT()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 363
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraRelease(I)I

    goto :goto_1

    .line 365
    :cond_4
    invoke-static {v3}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraRelease(I)I

    .line 367
    :goto_1
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 368
    .restart local v1    # "sessionId":I
    sget-object v4, Lcom/huawei/ims/vt/CameraManager;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 369
    sget-object v4, Lcom/huawei/ims/vt/CameraManager;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 373
    .end local v1    # "sessionId":I
    :cond_5
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 374
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    iput-object v4, p0, Lcom/huawei/ims/vt/CameraManager;->mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 379
    :cond_6
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 380
    const-string v1, "CameraManager"

    const-string v5, "close camera mConferenceCallSession = null"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iput-object v4, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 384
    :cond_7
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 385
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_8
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 388
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_9
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 391
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 392
    .local v1, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 393
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .end local v1    # "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :cond_a
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->getHoldCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    .line 396
    .local v1, "holdCallSessionImp":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v1, :cond_b

    sget-object v5, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v2, :cond_b

    .line 397
    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 403
    :cond_b
    if-eqz p2, :cond_c

    .line 404
    const-string v2, "CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHangUpCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-direct {p0}, Lcom/huawei/ims/vt/CameraManager;->removeInvalidCallSession()V

    goto :goto_2

    .line 409
    :cond_c
    sget-object v5, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :goto_2
    if-eqz v0, :cond_d

    .line 413
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraManager;->recoverToSetCurrentSessionId(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 417
    :cond_d
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_e

    .line 418
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraManager;->mSDKCameraOpen:Z

    .line 420
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 421
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 422
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 423
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 425
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraManager;->mFristToMergeCall:Z

    .line 429
    :cond_e
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 430
    iput-object v4, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 431
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraManager;->mHavePauseAndStop:Z

    .line 432
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraManager;->mBgVideoCallShouldResume:Z

    .line 437
    :cond_f
    const-string v2, "CameraManager"

    const-string v3, "close camera end"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 344
    .end local v0    # "shouldCameraRelease":Z
    .end local v1    # "holdCallSessionImp":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_10
    :goto_3
    const-string v0, "CameraManager"

    const-string v1, "close don\'t contains Key return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 5

    .line 313
    const-string v0, "CameraManager"

    const-string v1, "getCameraCapabilities"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Landroid/telecom/VideoProfile$CameraCapabilities;

    const/16 v1, 0x438

    const/16 v2, 0x5a0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    return-object v0
.end method

.method public getCureentCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v0
.end method

.method public getHoldCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 4

    .line 899
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 900
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 902
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 903
    const-string v2, "CameraManager"

    const-string v3, "getHoldCallSessionImp"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v2

    .line 906
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 907
    :cond_1
    const-string v1, "CameraManager"

    const-string v2, "getHoldCallSessionImp return null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOtherCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 4

    .line 886
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 887
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 889
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 890
    const-string v2, "CameraManager"

    const-string v3, "getOtherCallSessionImp "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v2

    .line 893
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 894
    :cond_1
    const-string v1, "CameraManager"

    const-string v2, "getOtherCallSessionImp return null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v1, 0x0

    return-object v1
.end method

.method public initBgVideoCallShouldResume()V
    .locals 1

    .line 916
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mBgVideoCallShouldResume:Z

    .line 917
    return-void
.end method

.method public isBgVideoCallShouldResume()Z
    .locals 1

    .line 913
    iget-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mBgVideoCallShouldResume:Z

    return v0
.end method

.method public isCurrentHaveMoreThanOneVideoCall()Z
    .locals 6

    .line 840
    const/4 v0, 0x0

    .line 841
    .local v0, "videoCallNum":I
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 842
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 844
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 845
    add-int/lit8 v0, v0, 0x1

    .line 846
    const-string v3, "CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCurrentHaveMoreThanOneVideoCall videoCallNum  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 850
    :cond_1
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 851
    const-string v3, "CameraManager"

    const-string v4, "isCurrentHaveMoreThanOneVideoCall return true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return v2

    .line 854
    :cond_2
    const-string v2, "CameraManager"

    const-string v3, "isCurrentHaveMoreThanOneVideoCall return false"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const/4 v2, 0x0

    return v2
.end method

.method public isCurrentHaveVideoCall()Z
    .locals 4

    .line 859
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 860
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 862
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 863
    const-string v2, "CameraManager"

    const-string v3, "isCurrentHaveVideoCall return true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v2, 0x1

    return v2

    .line 866
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 867
    :cond_1
    const-string v1, "CameraManager"

    const-string v2, "isCurrentHaveVideoCall return false"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v1, 0x0

    return v1
.end method

.method public isParamReady()Z
    .locals 2

    .line 576
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mImsSDKResIdSet:Ljava/util/Set;

    iget v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x1

    return v0

    .line 579
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraConfigChanged(IISLandroid/view/Surface;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # S
    .param p4, "surface"    # Landroid/view/Surface;

    .line 493
    return-void
.end method

.method public onImsCallSessionAdded(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 3
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 521
    if-nez p1, :cond_0

    .line 522
    const-string v0, "CameraManager"

    const-string v1, "onImsCallSessionAdded callSession==null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void

    .line 525
    :cond_0
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsCallSessionAdded currentCallType set default session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 527
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_1
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mCallSessionState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 530
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mCallSessionState:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_2
    return-void
.end method

.method public onImsCallSessionRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 3
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 540
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsCallSessionRemoved only to know is doClose"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void
.end method

.method public onMediaDeinitialized()V
    .locals 0

    .line 511
    return-void
.end method

.method public onRecordingDisabled()V
    .locals 0

    .line 505
    return-void
.end method

.method public onRecordingEnabled()V
    .locals 0

    .line 499
    return-void
.end method

.method public open(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 142
    if-nez p1, :cond_0

    .line 143
    const-string v0, "CameraManager"

    const-string v1, "open: Invalid camera id or session is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 147
    :cond_0
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: camearId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "cameraOpened":Z
    const/4 v1, 0x0

    .line 153
    .local v1, "cameraIdChanged":Z
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSession:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eq p2, v2, :cond_1

    .line 154
    const-string v2, "CameraManager"

    const-string v3, "another callsession in conference try to open camera"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, p2}, Lcom/huawei/ims/vt/CameraManager;->replaceConferenceSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 158
    :cond_1
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    const/4 v0, 0x1

    .line 160
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    .local v2, "currentCameraId":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 162
    const/4 v1, 0x1

    .line 166
    .end local v2    # "currentCameraId":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_3

    .line 167
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_3
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 171
    const-string v2, "CameraManager"

    const-string v3, "open: already open the Camera"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 173
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 174
    .local v2, "sesId":I
    invoke-static {v2}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 175
    invoke-direct {p0, p2, v4}, Lcom/huawei/ims/vt/CameraManager;->noticeCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 176
    iput v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    .line 177
    return-void

    .line 181
    .end local v2    # "sesId":I
    :cond_4
    const/4 v2, 0x1

    if-eqz v0, :cond_8

    :try_start_0
    sget-object v5, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_5

    goto :goto_1

    .line 252
    :cond_5
    if-eqz v1, :cond_7

    .line 253
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->switchCameras()I

    move-result v3

    .line 255
    .local v3, "result":I
    const-string v5, "CameraManager"

    const-string v6, "switchCameras"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez v3, :cond_6

    .line 258
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-direct {p0, p2, v4}, Lcom/huawei/ims/vt/CameraManager;->noticeCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    goto :goto_0

    .line 263
    :cond_6
    const-string v4, "CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch camera failed, the cameraId is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0, p2, v2}, Lcom/huawei/ims/vt/CameraManager;->noticeCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 268
    .end local v3    # "result":I
    :goto_0
    goto/16 :goto_4

    .line 269
    :cond_7
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open the camera again, ignore, the cameraId is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 271
    :catch_0
    move-exception v2

    goto/16 :goto_5

    .line 183
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 188
    iget-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mHavePauseAndStop:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    if-nez v3, :cond_9

    .line 190
    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraManager;->mHavePauseAndStop:Z

    goto :goto_2

    .line 192
    :cond_9
    const-string v3, "CameraManager"

    const-string v5, "open mHavePauseAndStop is false need pauseVideoAndStopPreview"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    iget-object v5, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/huawei/ims/vt/CameraManager;->pauseVideoAndStopPreview(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    .line 196
    :cond_a
    :goto_2
    if-eqz p2, :cond_c

    .line 198
    invoke-virtual {p2}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMT()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraOpen(II)I

    move-result v3

    iput v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    goto :goto_3

    .line 201
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v2}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraOpen(II)I

    move-result v3

    iput v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    .line 203
    :goto_3
    const-string v3, "CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open camera result session id is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "call type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMT()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_c
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 208
    iget v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    if-ltz v3, :cond_e

    .line 209
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->mCameraIdForSessoion:Ljava/util/Map;

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iput-boolean v2, p0, Lcom/huawei/ims/vt/CameraManager;->mSDKCameraOpen:Z

    .line 215
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 216
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    iget v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    invoke-static {v2}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 219
    iget-boolean v2, p0, Lcom/huawei/ims/vt/CameraManager;->mFristToMergeCall:Z

    if-eqz v2, :cond_d

    .line 220
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open mFristToMergeCall is true , mConferenceCallSession "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 222
    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraManager;->mFristToMergeCall:Z

    .line 227
    :cond_d
    invoke-direct {p0, p2, v4}, Lcom/huawei/ims/vt/CameraManager;->noticeCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    goto :goto_4

    .line 229
    :cond_e
    iget v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCAMERASesId:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_f

    .line 230
    const-string v3, "CameraManager"

    const-string v4, "open the camera failed, wrong call type"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-boolean v2, p0, Lcom/huawei/ims/vt/CameraManager;->mSDKCameraOpen:Z

    .line 233
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraManager;->mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 235
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 236
    .local v3, "msg":Landroid/os/Message;
    iput v2, v3, Landroid/os/Message;->what:I

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 238
    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 240
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_4

    .line 241
    :cond_f
    const-string v3, "CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open the camera failed, the cameraId is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, p2, v2}, Lcom/huawei/ims/vt/CameraManager;->noticeCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 246
    sget-object v2, Lcom/huawei/ims/vt/ImsVTGlobals;->mChrReporter:Lcom/huawei/ims/SDKChrReport;

    if-eqz v2, :cond_10

    .line 247
    sget-object v2, Lcom/huawei/ims/vt/ImsVTGlobals;->mChrReporter:Lcom/huawei/ims/SDKChrReport;

    invoke-virtual {v2}, Lcom/huawei/ims/SDKChrReport;->getCameraOpenFailedReason()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_10
    :goto_4
    goto :goto_6

    .line 271
    :goto_5
    nop

    .line 272
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "CameraManager"

    const-string v4, "NumberFormatException when open camera"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_6
    return-void
.end method

.method public setCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .locals 6
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "mtHold"    # Z

    .line 603
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallSessionHold session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentCallSession:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    const-string v0, "CameraManager"

    const-string v1, "setCallSessionHold map don\'t contains key retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void

    .line 609
    :cond_0
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 610
    const-string v0, "CameraManager"

    const-string v1, "setCallSessionHold have default session return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 614
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 616
    .local v0, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v1

    .line 617
    .local v1, "currentCallType":I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v2

    .line 619
    .local v2, "isVideoCallType":Z
    if-eqz v2, :cond_5

    .line 620
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->mCallSessionState:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 624
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 625
    .local v3, "sessionId":I
    invoke-static {v3}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 627
    .end local v3    # "sessionId":I
    :cond_2
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 628
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 629
    .local v3, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .end local v3    # "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 632
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 633
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :goto_0
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    if-nez v3, :cond_4

    .line 637
    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraManager;->mBgVideoCallShouldResume:Z

    .line 639
    :cond_4
    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/CameraManager;->pauseImsRTPStream(I)V

    .line 641
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraManager;->recoverToSetCurrentSessionId(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 644
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    .line 645
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/vt/CameraManager;->pauseVideoAndStopPreview(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    .line 648
    :cond_5
    return-void
.end method

.method public setCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .locals 10
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "mtResume"    # Z

    .line 656
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallSessionResumed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "HwImsCallSessionImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    const-string v0, "CameraManager"

    const-string v1, "setCallSessionResumed map don\'t contains key retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 663
    .local v0, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 665
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .end local v0    # "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 670
    .local v0, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v1

    .line 671
    .local v1, "currentCallType":I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v2

    .line 672
    .local v2, "isVideoCallType":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 673
    sget-object v4, Lcom/huawei/ims/vt/CameraManager;->mCallSessionState:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-boolean v4, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    if-nez v4, :cond_a

    .line 675
    sget-object v4, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v3

    .line 676
    .local v4, "onlyHaveOneCall":Z
    :goto_0
    const/4 v6, 0x0

    .line 677
    .local v6, "shouldResume":Z
    iget-object v7, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 678
    :cond_4
    const/4 v6, 0x1

    .line 680
    :cond_5
    iget-object v7, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    .line 682
    const/4 v7, 0x0

    .line 683
    .local v7, "mIsVideoPaused":Z
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsVTCallProviderImpl()Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    move-result-object v8

    .line 684
    .local v8, "provider":Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
    if-eqz v8, :cond_6

    .line 685
    invoke-virtual {v8}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->isVideoPaused()Z

    move-result v7

    .line 687
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz p2, :cond_8

    :cond_7
    if-eqz p2, :cond_9

    if-nez v7, :cond_9

    .line 689
    :cond_8
    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/CameraManager;->resumeImsRTPStream(I)V

    goto :goto_1

    .line 691
    :cond_9
    if-eqz p2, :cond_a

    iget-object v9, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    if-nez v9, :cond_a

    .line 692
    iput-boolean v5, p0, Lcom/huawei/ims/vt/CameraManager;->mBgVideoCallShouldResume:Z

    .line 698
    .end local v4    # "onlyHaveOneCall":Z
    .end local v6    # "shouldResume":Z
    .end local v7    # "mIsVideoPaused":Z
    .end local v8    # "provider":Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
    :cond_a
    :goto_1
    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 699
    return-void
.end method

.method public setCurrentSessionMerged()V
    .locals 6

    .line 732
    const-string v0, "CameraManager"

    const-string v1, "setCurrentSessionMerged"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    const-string v0, "CameraManager"

    const-string v1, "voice conference merged, we don\'t need to handle!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-nez v0, :cond_2

    .line 740
    const-string v0, "CameraManager"

    const-string v1, "setCurrentSessionMerged mFristToMergeCall = true "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mFristToMergeCall:Z

    .line 743
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 744
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 746
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add session to conference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSession:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 750
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 751
    :cond_1
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 752
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    goto/16 :goto_2

    .line 753
    :cond_2
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSessionMerged remove callSession only mConferenceCallSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v0, -0x1

    .line 755
    .local v0, "confSessionId":I
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 756
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 757
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 758
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 759
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 762
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSession:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 763
    const-string v3, "CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after merge, add new session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSession:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->mImsSDKResIdSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 768
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_4
    goto :goto_1

    .line 769
    :cond_5
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 770
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .end local v0    # "confSessionId":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHavePauseAndStop:Z

    .line 774
    return-void
.end method

.method public setCurrentSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 5
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 707
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSessionStarted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "HwImsCallSessionImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    const-string v0, "CameraManager"

    const-string v1, "setCallSessionHold map don\'t contains key retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void

    .line 713
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 714
    .local v0, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v1

    .line 715
    .local v1, "currentCallType":I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v2

    .line 716
    .local v2, "isVideoCallType":Z
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 719
    .local v3, "isCurrentSession":Z
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->getOtherCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->getOtherCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/huawei/ims/vt/CameraManager;->pauseVideoAndStopPreview(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 724
    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 726
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/huawei/ims/vt/CameraManager;->close(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 729
    :cond_2
    :goto_0
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 447
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSurface, surface is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-nez p1, :cond_0

    .line 450
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->stopCameraPreview()I

    .line 452
    const-string v0, "CameraManager"

    const-string v1, "stopCameraPreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    .line 455
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_1

    .line 459
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    .line 460
    invoke-static {p1}, Lcom/huawei/vtproxy/ImsCameraClient;->setNearEndSurface(Landroid/view/Surface;)I

    .line 461
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->startCameraPreview()I

    .line 463
    const-string v0, "CameraManager"

    const-string v1, "start to setNearEndSurface and startCameraPreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    return-void
.end method
