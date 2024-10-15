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
.field private static final CAAS_EVENT_PARAM_READY:Ljava/lang/String; = "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

.field private static final CALL_TYPE_MO:I = 0x1

.field private static final CALL_TYPE_MT:I = 0x2

.field private static final CAMERA_CONTROLLER_LOCK:Ljava/lang/Object;

.field private static final EVENT_RETRY_TO_OPEN_CARMERA:I = 0x1

.field private static final EVENT_SEND_IMAGE_DATA_TO_SDK:I = 0x2

.field private static final EVENT_SEND_IMAGE_DATA_TO_SDK_DELAYED:I = 0x1e

.field private static final IMS_SDK_CON_LEVEL:I = 0x1

.field private static final IMS_SDK_INIT_CAP:I = 0x8

.field private static final IMS_SDK_LOAD_FACTOR:F = 0.9f

.field private static final INVALID_RETURN_VALUE:I = 0x1

.field private static final INVALID_SESSION_ID:I = -0x1

.field private static final MAX_CAMERA_RADIO:I = 0x1

.field private static final OPEN_CAMERA_DELAY:I = 0x64

.field private static final OPEN_CAMERA_FAIL_RETRY:I = -0x2

.field private static final PREVIEW_HEIGHT:I = 0x5a0

.field private static final PREVIEW_WIDTH:I = 0x438

.field private static final SEND_H264_DATA_TO_SDK_MAX_TIMES:I = 0x4

.field private static final STATE_DEFAULT:I = -0x1

.field private static final STATE_HOLDING:I = 0x0

.field private static final STATE_RESUME:I = 0x1

.field private static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static sCallSessionStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraIdForSessoionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sImsSdkResIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/huawei/ims/vt/CameraManager;

.field private static sSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraSesId:I

.field private mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

.field private mConferencedSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

.field private mHandler:Landroid/os/Handler;

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

.field private mImageData:Lcom/huawei/vtproxy/ImageData;

.field private mImsSdkResId:I

.field private mIsBgVideoCallShouldResume:Z

.field private mIsFristToMergeCall:Z

.field private mIsHandupCurrentCallSession:Z

.field private mIsHavePauseAndStop:Z

.field private mIsSdkCameraOpen:Z

.field private mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

.field private mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

.field private mPreSetSurface:Landroid/view/Surface;

.field private mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraManager;->CAMERA_CONTROLLER_LOCK:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraManager;->sCallSessionStateMap:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/CameraManager;->sCameraIdForSessoionMap:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/vt/CameraManager;->sImsSdkResIdSet:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsSdkCameraOpen:Z

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 156
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsFristToMergeCall:Z

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSessions:Ljava/util/ArrayList;

    .line 160
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 162
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsBgVideoCallShouldResume:Z

    .line 164
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/huawei/ims/vt/CameraManager;->mImsSdkResId:I

    .line 166
    iput v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    .line 168
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHavePauseAndStop:Z

    .line 170
    iput-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mImageData:Lcom/huawei/vtproxy/ImageData;

    .line 172
    iput v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCount:I

    .line 174
    new-instance v0, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;-><init>(Lcom/huawei/ims/vt/CameraManager;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/huawei/ims/vt/CameraManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraManager$1;-><init>(Lcom/huawei/ims/vt/CameraManager;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsSdkCameraOpen:Z

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 156
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsFristToMergeCall:Z

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSessions:Ljava/util/ArrayList;

    .line 160
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 162
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsBgVideoCallShouldResume:Z

    .line 164
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/huawei/ims/vt/CameraManager;->mImsSdkResId:I

    .line 166
    iput v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    .line 168
    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHavePauseAndStop:Z

    .line 170
    iput-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mImageData:Lcom/huawei/vtproxy/ImageData;

    .line 172
    iput v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCount:I

    .line 174
    new-instance v0, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraManager$CameraManagerHandler;-><init>(Lcom/huawei/ims/vt/CameraManager;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/huawei/ims/vt/CameraManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/CameraManager$1;-><init>(Lcom/huawei/ims/vt/CameraManager;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraManager;->mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 197
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

    invoke-virtual {v0, p0}, Lcom/huawei/ims/vt/ImsMediaProvider;->setCameraListener(Lcom/huawei/ims/vt/ImsMediaProvider$CameraListener;)V

    .line 198
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/huawei/vtproxy/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

    .line 199
    invoke-direct {p0}, Lcom/huawei/ims/vt/CameraManager;->registerVtBroadcast()V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/vt/CameraManager;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 44
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraManager;->processCaasEventParamReadyIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/vt/CameraManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/vt/CameraManager;

    .line 44
    invoke-direct {p0}, Lcom/huawei/ims/vt/CameraManager;->sendImageDataToSdk()V

    return-void
.end method

.method private checkSessionStatus(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 4
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 519
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 520
    const-string v0, "CameraManager"

    const-string v1, "close camera mConferenceCallSession = null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 523
    :cond_12
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sCameraIdForSessoionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 524
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sCameraIdForSessoionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_1f
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sCallSessionStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 527
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sCallSessionStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_2c
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 530
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 531
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 532
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :cond_44
    return-void
.end method

.method public static getInstance()Lcom/huawei/ims/vt/CameraManager;
    .registers 2

    .line 650
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->CAMERA_CONTROLLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_3
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sInstance:Lcom/huawei/ims/vt/CameraManager;

    monitor-exit v0

    return-object v1

    .line 652
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 216
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->CAMERA_CONTROLLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sInstance:Lcom/huawei/ims/vt/CameraManager;

    if-nez v1, :cond_e

    .line 218
    new-instance v1, Lcom/huawei/ims/vt/CameraManager;

    invoke-direct {v1, p0, p1}, Lcom/huawei/ims/vt/CameraManager;-><init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V

    sput-object v1, Lcom/huawei/ims/vt/CameraManager;->sInstance:Lcom/huawei/ims/vt/CameraManager;

    .line 220
    :cond_e
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private isConferencedSessions(Lcom/huawei/ims/HwImsCallSessionImpl;)Z
    .registers 5
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 444
    const/4 v0, 0x1

    .line 445
    .local v0, "isReleaseSession":Z
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 446
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 451
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v1, :cond_21

    if-eq p1, v1, :cond_21

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSessions:Ljava/util/ArrayList;

    .line 452
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_21

    .line 453
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraManager;->replaceConferenceSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 454
    const/4 v0, 0x1

    goto :goto_37

    .line 457
    :cond_21
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "CameraManager"

    if-lez v1, :cond_32

    .line 458
    const-string v1, "There are other sessions in conference, so we don\'t release conf session in IMS SDK"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x0

    goto :goto_37

    .line 461
    :cond_32
    const-string v1, "error."

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_37
    :goto_37
    return v0
.end method

.method private isOnlyUpdateCurrentCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;ZZ)Z
    .registers 8
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isCameraOpened"    # Z
    .param p3, "isCameraIdChanged"    # Z

    .line 374
    const/4 v0, 0x0

    .line 377
    .local v0, "isUpdateCallSession":Z
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_13

    .line 378
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_13
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_44

    if-eqz p2, :cond_44

    if-nez p3, :cond_44

    .line 383
    const-string v1, "CameraManager"

    const-string v2, "open: already open the Camera"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 385
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 386
    .local v1, "sesId":I
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 387
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/huawei/ims/vt/CameraManager;->notifyCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 388
    iput v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    .line 389
    const/4 v0, 0x1

    .line 391
    .end local v1    # "sesId":I
    :cond_44
    return v0
.end method

.method private notifyCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .registers 6
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isFailed"    # Z

    .line 421
    const-string v0, "CameraManager"

    if-nez p1, :cond_a

    .line 422
    const-string v1, "sendCameraStatus: session is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 426
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCameraStatus: Notifying Session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsVtCallProviderImpl()Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    move-result-object v0

    .line 428
    .local v0, "provider":Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    if-eqz v0, :cond_2b

    .line 429
    invoke-virtual {v0, p2}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->sendCameraStatus(Z)V

    .line 431
    :cond_2b
    return-void
.end method

.method private openCameraFail(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 304
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 305
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 307
    :try_start_9
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_f} :catch_1e

    .line 311
    nop

    .line 312
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraManager;->mIsSdkCameraOpen:Z

    .line 314
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraManager;->mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 316
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 317
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 318
    return-void

    .line 308
    :catch_1e
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "CameraManager"

    const-string v3, "open method occur NumberFormatException, when mCameraSesId is OPEN_CAMERA_FAIL_RETRY"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method private openCameraSuccess(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 281
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sCameraIdForSessoionMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsSdkCameraOpen:Z

    .line 287
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 288
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    iget v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 291
    iget-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsFristToMergeCall:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open mIsFristToMergeCall is true , mConferenceCallSession "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iput-object p2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 294
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraManager;->mIsFristToMergeCall:Z

    .line 299
    :cond_39
    invoke-direct {p0, p2, v1}, Lcom/huawei/ims/vt/CameraManager;->notifyCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 301
    return-void
.end method

.method private pauseImsRtpStream(I)V
    .registers 6
    .param p1, "currentCallType"    # I

    .line 974
    invoke-static {p1}, Lcom/huawei/ims/vt/RtpController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 975
    .local v0, "direction":I
    invoke-static {v0}, Lcom/huawei/ims/vt/RtpController;->pauseRtpStream(I)I

    move-result v1

    .line 976
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallSessionHold result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void
.end method

.method private pauseVideoAndStopPreview(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 9
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "cp"    # Landroid/telephony/ims/ImsCallProfile;

    .line 948
    const-string v0, "CameraManager"

    const-string v1, "pauseVideoAndStopPreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    if-nez p2, :cond_f

    .line 950
    const-string v1, "pauseVideoAndStopPreview cp null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return-void

    .line 953
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/huawei/ims/vt/CameraManager;->setPreviewSurface(Landroid/view/Surface;)V

    .line 954
    iget v1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    .line 955
    .local v1, "currentVideoState":I
    new-instance v2, Landroid/telecom/VideoProfile;

    or-int/lit8 v3, v1, 0x4

    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 956
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 957
    .local v3, "fromProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsVtCallProviderImpl()Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    move-result-object v4

    .line 958
    .local v4, "provider":Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    if-nez v4, :cond_31

    .line 959
    const-string v5, "pauseVideoAndStopPreview, provider is null"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void

    .line 962
    :cond_31
    invoke-virtual {v4, v3, v2}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 963
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHavePauseAndStop:Z

    .line 966
    :cond_3f
    return-void
.end method

.method private processCaasEventParamReadyIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1148
    const-string v0, "CameraManager"

    if-nez p1, :cond_a

    .line 1149
    const-string v1, "processCaasEventParamReadyIntent, intent is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return-void

    .line 1153
    :cond_a
    :try_start_a
    const-string v1, "ims_sdk_res_id"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/huawei/ims/vt/CameraManager;->mImsSdkResId:I
    :try_end_14
    .catch Landroid/os/BadParcelableException; {:try_start_a .. :try_end_14} :catch_1c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_22

    .line 1156
    :catch_15
    move-exception v1

    .line 1157
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "processCaasEventParamReadyIntent RuntimeException"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1154
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1c
    move-exception v1

    .line 1155
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string v2, "processCaasEventParamReadyIntent BadParcelableException"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :goto_22
    nop

    .line 1159
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params ready broadcast received, mImsSdkResId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/vt/CameraManager;->mImsSdkResId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sImsSdkResIdSet:Ljava/util/Set;

    iget v2, p0, Lcom/huawei/ims/vt/CameraManager;->mImsSdkResId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1162
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sImsSdkResIdSet:Ljava/util/Set;

    iget v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 1163
    const-string v1, "processCaasEventParamReadyIntent, sImsSdkResIdSet doesn\'t contain mCameraSesId"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return-void

    .line 1167
    :cond_58
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-nez v1, :cond_62

    .line 1168
    const-string v1, "processCaasEventParamReadyIntent, mCurrentCallSession is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return-void

    .line 1172
    :cond_62
    invoke-static {}, Lcom/huawei/ims/vt/MediaManager;->getInstance()Lcom/huawei/ims/vt/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/vt/MediaManager;->isSetDisplaySurface()Z

    move-result v1

    .line 1173
    .local v1, "isSetSuccess":Z
    if-nez v1, :cond_72

    .line 1174
    const-string v2, "processCaasEventParamReadyIntent, isSetDisplaySurface failed"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return-void

    .line 1177
    :cond_72
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 1180
    .local v0, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v2, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v2

    .line 1181
    .local v2, "currentCallType":I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v3

    .line 1182
    .local v3, "isVideoCallType":Z
    if-eqz v3, :cond_87

    .line 1183
    invoke-direct {p0, v2}, Lcom/huawei/ims/vt/CameraManager;->resumeImsRtpStream(I)V

    .line 1185
    :cond_87
    return-void
.end method

.method private processVideoCallForMtOrMo(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 323
    const-string v0, "CameraManager"

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p2}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMtCall()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p2}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraOpen(II)I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    goto :goto_25

    .line 326
    :cond_1b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v1}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraOpen(II)I

    move-result v2

    iput v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_25} :catch_26

    .line 331
    :goto_25
    goto :goto_30

    .line 328
    :catch_26
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "open method occur NumberFormatException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    .line 332
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera result session id is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "call type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMtCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 336
    iget v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    if-ltz v2, :cond_5d

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/vt/CameraManager;->openCameraSuccess(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    goto :goto_89

    .line 338
    :cond_5d
    const/4 v3, -0x2

    if-ne v2, v3, :cond_69

    .line 339
    const-string v1, "open the camera failed, wrong call type"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/vt/CameraManager;->openCameraFail(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    goto :goto_89

    .line 342
    :cond_69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open the camera failed, the cameraId is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0, p2, v1}, Lcom/huawei/ims/vt/CameraManager;->notifyCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 347
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sChrReporter:Lcom/huawei/ims/SdkChrReport;

    if-eqz v0, :cond_89

    .line 348
    sget-object v0, Lcom/huawei/ims/vt/ImsVtGlobals;->sChrReporter:Lcom/huawei/ims/SdkChrReport;

    invoke-virtual {v0}, Lcom/huawei/ims/SdkChrReport;->getCameraOpenFailedReason()V

    .line 352
    :cond_89
    :goto_89
    return-void
.end method

.method private processVideoCallWhenCameraIdChanged(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 355
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->switchCameras()I

    move-result v0

    .line 357
    .local v0, "result":I
    const-string v1, "CameraManager"

    const-string v2, "switchCameras"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-nez v0, :cond_17

    .line 360
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sCameraIdForSessoionMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/huawei/ims/vt/CameraManager;->notifyCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    goto :goto_2f

    .line 365
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch camera failed, the cameraId is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/huawei/ims/vt/CameraManager;->notifyCameraFailed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 370
    :goto_2f
    return-void
.end method

.method private recoverToSetCurrentSessionId(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 5
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 997
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v0, :cond_1f

    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 998
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 999
    .local v0, "isSetCurrentSessionId":Z
    :goto_20
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    if-eqz v0, :cond_3b

    .line 1000
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1001
    .local v1, "currentSessionId":I
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 1003
    .end local v1    # "currentSessionId":I
    :cond_3b
    return-void
.end method

.method private registerVtBroadcast()V
    .registers 4

    .line 724
    const-string v0, "CameraManager"

    const-string v1, "registerVtBroadcast"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 726
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mLocalBroadcastManager:Lcom/huawei/vtproxy/LocalBroadcastManager;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/vtproxy/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 728
    return-void
.end method

.method private removeInvalidCallSession()V
    .registers 5

    .line 1049
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1050
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1051
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1052
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 1053
    .local v2, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverImsCall;

    move-result-object v3

    if-nez v3, :cond_25

    .line 1054
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1056
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    .end local v2    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_25
    goto :goto_a

    .line 1057
    :cond_26
    return-void
.end method

.method private replaceConferenceSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 4
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replaceConferenceSession session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 403
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 407
    :cond_38
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sCameraIdForSessoionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sCameraIdForSessoionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 412
    return-void
.end method

.method private resumeImsRtpStream(I)V
    .registers 6
    .param p1, "currentCallType"    # I

    .line 985
    invoke-static {p1}, Lcom/huawei/ims/vt/RtpController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 986
    .local v0, "direction":I
    invoke-static {v0}, Lcom/huawei/ims/vt/RtpController;->resumeRtpStream(I)I

    move-result v1

    .line 987
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallSessionResumed result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 988
    if-nez v1, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 987
    const-string v3, "CameraManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method

.method private sendImageDataToSdk()V
    .registers 9

    .line 625
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 626
    .local v0, "currentSessionId":I
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->getNegotiatedCodecType(I)I

    move-result v1

    .line 627
    .local v1, "videoEncodeType":I
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mImageData:Lcom/huawei/vtproxy/ImageData;

    const-string v3, "CameraManager"

    if-nez v2, :cond_49

    .line 628
    invoke-static {v1}, Lcom/huawei/ims/vt/ImageDataUtils;->getVideoEncodeFormat(I)I

    move-result v2

    .line 629
    .local v2, "encodeFormat":I
    iget-object v4, p0, Lcom/huawei/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/huawei/ims/vt/ImageDataUtils;->getImageDataFromAssets(Landroid/content/Context;I)[B

    move-result-object v4

    .line 630
    .local v4, "data":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendImageDataToSdk new ImageData, videoEncodeType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", encodeFormat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v5, Lcom/huawei/vtproxy/ImageData;

    const/16 v6, 0x1e0

    const/16 v7, 0x280

    invoke-direct {v5, v2, v6, v7, v4}, Lcom/huawei/vtproxy/ImageData;-><init>(III[B)V

    iput-object v5, p0, Lcom/huawei/ims/vt/CameraManager;->mImageData:Lcom/huawei/vtproxy/ImageData;

    .line 635
    .end local v2    # "encodeFormat":I
    .end local v4    # "data":[B
    :cond_49
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mImageData:Lcom/huawei/vtproxy/ImageData;

    invoke-static {v0, v2}, Lcom/huawei/vtproxy/ImsThinClient;->sendImageData(ILcom/huawei/vtproxy/ImageData;)I

    move-result v2

    .line 636
    .local v2, "result":I
    iget v4, p0, Lcom/huawei/ims/vt/CameraManager;->mCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/huawei/ims/vt/CameraManager;->mCount:I

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendImageDataToSdk sendImageData result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/vt/CameraManager;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-nez v1, :cond_82

    iget v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCount:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_82

    .line 639
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const-wide/16 v5, 0x1e

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 641
    :cond_82
    return-void
.end method

.method private updateCallSessionsInfo(Lcom/huawei/ims/HwImsCallSessionImpl;ZZ)V
    .registers 8
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isHangUpCall"    # Z
    .param p3, "isCameraRelease"    # Z

    .line 537
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraManager;->checkSessionStatus(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 538
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->getHoldCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    .line 539
    .local v0, "holdCallSessionImp":Lcom/huawei/ims/HwImsCallSessionImpl;
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_23

    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    .line 540
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_23

    .line 541
    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 548
    :cond_23
    if-eqz p2, :cond_44

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHangUpCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    invoke-direct {p0}, Lcom/huawei/ims/vt/CameraManager;->removeInvalidCallSession()V

    goto :goto_4d

    .line 553
    :cond_44
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :goto_4d
    if-eqz p3, :cond_52

    .line 558
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraManager;->recoverToSetCurrentSessionId(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 560
    :cond_52
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_62

    .line 561
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 562
    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHavePauseAndStop:Z

    .line 563
    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsBgVideoCallShouldResume:Z

    .line 567
    :cond_62
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v2

    if-nez v2, :cond_83

    .line 568
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 569
    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsSdkCameraOpen:Z

    .line 570
    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 571
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 572
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sCallSessionStateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 573
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sCameraIdForSessoionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 574
    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsFristToMergeCall:Z

    goto :goto_8d

    .line 576
    :cond_83
    iget-boolean v1, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHavePauseAndStop:Z

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v1, :cond_8d

    .line 577
    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHavePauseAndStop:Z

    .line 580
    :cond_8d
    :goto_8d
    return-void
.end method


# virtual methods
.method public cleanPreStatus()V
    .registers 2

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    .line 207
    return-void
.end method

.method public close(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .registers 11
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isHangUpCall"    # Z

    .line 474
    const-string v0, "CameraManager"

    const-string v1, "close camera"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-eqz p1, :cond_e0

    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_e0

    .line 479
    :cond_13
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraManager;->isConferencedSessions(Lcom/huawei/ims/HwImsCallSessionImpl;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 480
    return-void

    .line 487
    :cond_1a
    const/4 v1, 0x1

    .line 488
    .local v1, "isCameraRelease":Z
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v2, :cond_5a

    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_5a

    .line 489
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 490
    .local v2, "sessionId":I
    invoke-static {v2}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    move-result v5

    .line 491
    .local v5, "result":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close sure set now CurrentSessionID result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    if-ne v5, v4, :cond_5a

    .line 493
    const/4 v1, 0x0

    .line 496
    .end local v2    # "sessionId":I
    .end local v5    # "result":I
    :cond_5a
    iget-boolean v2, p0, Lcom/huawei/ims/vt/CameraManager;->mIsSdkCameraOpen:Z

    if-eqz v2, :cond_c5

    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_c5

    if-eqz v1, :cond_c5

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsSdkCameraOpen is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsSdkCameraOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isMtCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMtCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMtCall()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_a1

    .line 501
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraRelease(I)I

    goto :goto_a4

    .line 503
    :cond_a1
    invoke-static {v4}, Lcom/huawei/vtproxy/ImsCameraClient;->cameraRelease(I)I

    .line 505
    :goto_a4
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 506
    .restart local v2    # "sessionId":I
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sImsSdkResIdSet:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 507
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sImsSdkResIdSet:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 510
    .end local v2    # "sessionId":I
    :cond_c5
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v2, :cond_d7

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 511
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mTryOpenCameraCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 514
    :cond_d7
    invoke-direct {p0, p1, p2, v1}, Lcom/huawei/ims/vt/CameraManager;->updateCallSessionsInfo(Lcom/huawei/ims/HwImsCallSessionImpl;ZZ)V

    .line 515
    const-string v2, "close camera end"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void

    .line 476
    .end local v1    # "isCameraRelease":Z
    :cond_e0
    :goto_e0
    const-string v1, "close don\'t contains Key return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;
    .registers 6

    .line 439
    const-string v0, "CameraManager"

    const-string v1, "getCameraCapabilities"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v0, Landroid/telecom/VideoProfile$CameraCapabilities;

    const/16 v1, 0x438

    const/16 v2, 0x5a0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V

    return-object v0
.end method

.method public getCurrentCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 2

    .line 720
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v0
.end method

.method public getHoldCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 5

    .line 1083
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sCallSessionStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1084
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "CameraManager"

    if-eqz v1, :cond_31

    .line 1085
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1086
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_30

    .line 1087
    const-string v3, "getHoldCallSessionImp"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v2

    .line 1090
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_30
    goto :goto_a

    .line 1091
    :cond_31
    const-string v1, "getHoldCallSessionImp return null"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOtherCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 6

    .line 1065
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1066
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "CameraManager"

    if-eqz v1, :cond_32

    .line 1067
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1068
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    .line 1069
    const-string v3, "getOtherCallSessionImp "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v2

    .line 1072
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_31
    goto :goto_a

    .line 1073
    :cond_32
    const-string v1, "getOtherCallSessionImp return null"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v1, 0x0

    return-object v1
.end method

.method public initBgVideoCallShouldResume()V
    .registers 2

    .line 1108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsBgVideoCallShouldResume:Z

    .line 1109
    return-void
.end method

.method public isBgVideoCallShouldResume()Z
    .registers 2

    .line 1101
    iget-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsBgVideoCallShouldResume:Z

    return v0
.end method

.method public isCurrentHaveMoreThanOneVideoCall()Z
    .registers 7

    .line 1011
    const/4 v0, 0x0

    .line 1012
    .local v0, "videoCallNum":I
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1013
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "CameraManager"

    if-eqz v2, :cond_3d

    .line 1014
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1015
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3c

    .line 1016
    add-int/lit8 v0, v0, 0x1

    .line 1017
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCurrentHaveMoreThanOneVideoCall videoCallNum  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_3c
    goto :goto_b

    .line 1021
    :cond_3d
    const/4 v2, 0x1

    if-le v0, v2, :cond_46

    .line 1022
    const-string v4, "isCurrentHaveMoreThanOneVideoCall return true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return v2

    .line 1025
    :cond_46
    const-string v2, "isCurrentHaveMoreThanOneVideoCall return false"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v2, 0x0

    return v2
.end method

.method public isCurrentHaveVideoCall()Z
    .registers 6

    .line 1035
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1036
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "CameraManager"

    if-eqz v1, :cond_2d

    .line 1037
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1038
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2c

    .line 1039
    const-string v3, "isCurrentHaveVideoCall return true"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v2, 0x1

    return v2

    .line 1042
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_2c
    goto :goto_a

    .line 1043
    :cond_2d
    const-string v1, "isCurrentHaveVideoCall return false"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v1, 0x0

    return v1
.end method

.method public isParamReady()Z
    .registers 3

    .line 708
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sImsSdkResIdSet:Ljava/util/Set;

    iget v1, p0, Lcom/huawei/ims/vt/CameraManager;->mCameraSesId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 709
    const/4 v0, 0x1

    return v0

    .line 711
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraConfigChanged(IISLandroid/view/Surface;)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # S
    .param p4, "surface"    # Landroid/view/Surface;

    .line 657
    return-void
.end method

.method public onImsCallSessionAdded(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 5
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 679
    const-string v0, "CameraManager"

    if-nez p1, :cond_a

    .line 680
    const-string v1, "onImsCallSessionAdded callSession==null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void

    .line 683
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsCallSessionAdded currentCallType set default session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_30

    .line 685
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :cond_30
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sCallSessionStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 688
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sCallSessionStateMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_41
    return-void
.end method

.method public onImsCallSessionRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 4
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsCallSessionRemoved only to know is doClose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void
.end method

.method public onMediaDeinitialized()V
    .registers 1

    .line 669
    return-void
.end method

.method public onRecordingDisabled()V
    .registers 1

    .line 665
    return-void
.end method

.method public onRecordingEnabled()V
    .registers 1

    .line 661
    return-void
.end method

.method public open(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 231
    const-string v0, "CameraManager"

    if-eqz p1, :cond_be

    if-nez p2, :cond_8

    goto/16 :goto_be

    .line 235
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: camearId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "isCameraOpened":Z
    const/4 v2, 0x0

    .line 240
    .local v2, "isCameraIdChanged":Z
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v3, :cond_34

    if-eq p2, v3, :cond_34

    .line 242
    const-string v3, "another callsession in conference try to open camera"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, p2}, Lcom/huawei/ims/vt/CameraManager;->replaceConferenceSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 245
    :cond_34
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sCameraIdForSessoionMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 246
    const/4 v1, 0x1

    .line 247
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sCameraIdForSessoionMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 248
    .local v3, "currentCameraId":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 249
    const/4 v2, 0x1

    .line 252
    .end local v3    # "currentCameraId":Ljava/lang/String;
    :cond_4c
    invoke-direct {p0, p2, v1, v2}, Lcom/huawei/ims/vt/CameraManager;->isOnlyUpdateCurrentCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;ZZ)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 253
    const-string v3, "the Camera already open, we just get SESSION_ID from the map, and set Current Session ID"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 257
    :cond_58
    if-eqz v1, :cond_85

    :try_start_5a
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6a

    goto :goto_85

    .line 270
    :cond_6a
    if-eqz v2, :cond_70

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/vt/CameraManager;->processVideoCallWhenCameraIdChanged(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    goto :goto_b6

    .line 273
    :cond_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open the camera again, ignore, the cameraId is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 258
    :cond_85
    :goto_85
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v3

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v3, :cond_b3

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b3

    .line 262
    iget-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHavePauseAndStop:Z

    if-eqz v3, :cond_a3

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    if-nez v3, :cond_a3

    .line 263
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHavePauseAndStop:Z

    goto :goto_b3

    .line 265
    :cond_a3
    const-string v3, "open mIsHavePauseAndStop is false need pauseVideoAndStopPreview"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    iget-object v4, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/huawei/ims/vt/CameraManager;->pauseVideoAndStopPreview(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    .line 269
    :cond_b3
    :goto_b3
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/vt/CameraManager;->processVideoCallForMtOrMo(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_5a .. :try_end_b6} :catch_b7

    .line 277
    :goto_b6
    goto :goto_bd

    .line 275
    :catch_b7
    move-exception v3

    .line 276
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "NumberFormatException when open camera"

    invoke-static {v0, v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_bd
    return-void

    .line 232
    .end local v1    # "isCameraOpened":Z
    .end local v2    # "isCameraIdChanged":Z
    :cond_be
    :goto_be
    const-string v1, "open: Invalid camera id or session is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public setCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .registers 9
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isMtHold"    # Z

    .line 737
    const-string v0, "CameraManager"

    if-nez p1, :cond_a

    .line 738
    const-string v1, "setCallSessionHold session is null, retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void

    .line 741
    :cond_a
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

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 745
    const-string v1, "setCallSessionHold map don\'t contains key retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void

    .line 748
    :cond_36
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4b

    .line 749
    const-string v1, "setCallSessionHold have default session return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void

    .line 753
    :cond_4b
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 756
    .local v0, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v1

    .line 757
    .local v1, "currentCallType":I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v2

    .line 758
    .local v2, "isVideoCallType":Z
    if-eqz v2, :cond_d3

    .line 759
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sCallSessionStateMap:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 765
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 766
    .local v3, "sessionId":I
    invoke-static {v3}, Lcom/huawei/vtproxy/ImsThinClient;->setImsCurrentSession(I)I

    .line 768
    .end local v3    # "sessionId":I
    :cond_7c
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 769
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 770
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    goto :goto_aa

    .line 773
    :cond_99
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 774
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :goto_aa
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    if-eqz p2, :cond_ba

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    if-nez v3, :cond_ba

    .line 778
    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraManager;->mIsBgVideoCallShouldResume:Z

    .line 780
    :cond_ba
    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/CameraManager;->pauseImsRtpStream(I)V

    .line 783
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/CameraManager;->recoverToSetCurrentSessionId(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 789
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v3

    if-eqz v3, :cond_d3

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    if-nez p2, :cond_d3

    .line 790
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/vt/CameraManager;->pauseVideoAndStopPreview(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    .line 793
    :cond_d3
    return-void
.end method

.method public setCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .registers 15
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isMtResume"    # Z

    .line 802
    const-string v0, "CameraManager"

    if-nez p1, :cond_a

    .line 803
    const-string v1, "setCallSessionResumed session is null, retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void

    .line 806
    :cond_a
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

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 808
    const-string v1, "setCallSessionResumed map don\'t contains key retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void

    .line 811
    :cond_36
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 812
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 813
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 814
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 815
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Boolean;>;"
    :cond_5c
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 821
    .local v1, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v2

    .line 822
    .local v2, "currentCallType":I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v3

    .line 823
    .local v3, "isVideoCallType":Z
    const/4 v4, 0x0

    if-nez v3, :cond_75

    .line 824
    const-string v5, "isVideoCallType is false"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 826
    return-void

    .line 828
    :cond_75
    sget-object v5, Lcom/huawei/ims/vt/CameraManager;->sCallSessionStateMap:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    iget-boolean v5, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    if-nez v5, :cond_ec

    .line 830
    sget-object v5, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v5, v6, :cond_8d

    move v5, v6

    goto :goto_8e

    :cond_8d
    move v5, v4

    .line 831
    .local v5, "isOnlyHaveOneCall":Z
    :goto_8e
    const/4 v7, 0x0

    .line 832
    .local v7, "isResume":Z
    iget-object v8, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a5

    iget-object v8, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-eqz v8, :cond_ad

    :cond_a5
    iget-object v8, p0, Lcom/huawei/ims/vt/CameraManager;->mHoldMap:Ljava/util/Map;

    .line 833
    invoke-interface {v8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ae

    .line 834
    :cond_ad
    const/4 v7, 0x1

    .line 836
    :cond_ae
    iget-object v8, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ec

    if-eqz v7, :cond_ec

    .line 837
    const/4 v8, 0x0

    .line 838
    .local v8, "isVideoPaused":Z
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsVtCallProviderImpl()Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    move-result-object v9

    .line 839
    .local v9, "provider":Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    if-eqz v9, :cond_c4

    invoke-virtual {v9}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->isVideoPaused()Z

    move-result v10

    goto :goto_c5

    :cond_c4
    move v10, v4

    :goto_c5
    move v8, v10

    .line 840
    if-eqz v5, :cond_d2

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v10

    if-eqz v10, :cond_d2

    if-nez p2, :cond_d2

    move v10, v6

    goto :goto_d3

    :cond_d2
    move v10, v4

    .line 841
    .local v10, "isOnlyCurrentVideoCall":Z
    :goto_d3
    if-nez v10, :cond_e9

    if-eqz p2, :cond_da

    if-nez v8, :cond_da

    goto :goto_e9

    .line 843
    :cond_da
    if-eqz p2, :cond_e3

    iget-object v11, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    if-nez v11, :cond_e3

    .line 844
    iput-boolean v6, p0, Lcom/huawei/ims/vt/CameraManager;->mIsBgVideoCallShouldResume:Z

    goto :goto_ec

    .line 846
    :cond_e3
    const-string v6, "error."

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    .line 842
    :cond_e9
    :goto_e9
    invoke-direct {p0, v2}, Lcom/huawei/ims/vt/CameraManager;->resumeImsRtpStream(I)V

    .line 850
    .end local v5    # "isOnlyHaveOneCall":Z
    .end local v7    # "isResume":Z
    .end local v8    # "isVideoPaused":Z
    .end local v9    # "provider":Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    .end local v10    # "isOnlyCurrentVideoCall":Z
    :cond_ec
    :goto_ec
    iput-boolean v4, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHandupCurrentCallSession:Z

    .line 851
    return-void
.end method

.method public setCurrentSessionMerged()V
    .registers 7

    .line 893
    const-string v0, "CameraManager"

    const-string v1, "setCurrentSessionMerged"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v1

    if-nez v1, :cond_13

    .line 895
    const-string v1, "voice conference merged, we don\'t need to handle!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-void

    .line 900
    :cond_13
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-nez v1, :cond_69

    .line 901
    const-string v1, "setCurrentSessionMerged mIsFristToMergeCall = true "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/ims/vt/CameraManager;->mIsFristToMergeCall:Z

    .line 905
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 906
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 907
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 908
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add session to conference:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSessions:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    sget-object v3, Lcom/huawei/ims/vt/CameraManager;->sImsSdkResIdSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 913
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    goto :goto_29

    .line 914
    :cond_62
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 915
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    goto/16 :goto_f5

    .line 916
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSessionMerged remove callSession only mConferenceCallSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v1, -0x1

    .line 919
    .local v1, "confSessionId":I
    sget-object v2, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 920
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 921
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 922
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 923
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 927
    :cond_ac
    iget-object v4, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSessions:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e4

    .line 928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after merge, add new session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v4, p0, Lcom/huawei/ims/vt/CameraManager;->mConferencedSessions:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    sget-object v4, Lcom/huawei/ims/vt/CameraManager;->sImsSdkResIdSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 934
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;"
    :cond_e4
    goto :goto_8a

    .line 935
    :cond_e5
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 936
    sget-object v0, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager;->mConferenceCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    .end local v1    # "confSessionId":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/Integer;>;>;"
    :goto_f5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/CameraManager;->mIsHavePauseAndStop:Z

    .line 939
    return-void
.end method

.method public setCurrentSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 8
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 859
    const-string v0, "CameraManager"

    if-nez p1, :cond_a

    .line 860
    const-string v1, "setCurrentSessionStarted session is null, retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return-void

    .line 863
    :cond_a
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

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    sget-object v1, Lcom/huawei/ims/vt/CameraManager;->sSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 865
    const-string v1, "setCallSessionHold map don\'t contains key retrun"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void

    .line 869
    :cond_36
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 870
    .local v1, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v2

    .line 871
    .local v2, "currentCallType":I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v3

    .line 872
    .local v3, "isVideoCallType":Z
    iget-object v4, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 877
    .local v4, "isCurrentSession":Z
    if-eqz v3, :cond_68

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v5

    if-eqz v5, :cond_68

    if-nez v4, :cond_68

    .line 879
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->getOtherCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 880
    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->getOtherCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/vt/CameraManager;->pauseVideoAndStopPreview(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_7c

    .line 882
    :cond_68
    if-nez v3, :cond_77

    if-eqz v4, :cond_77

    invoke-virtual {p0}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveMoreThanOneVideoCall()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 883
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/vt/CameraManager;->close(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    goto :goto_7c

    .line 885
    :cond_77
    const-string v5, "setCurrentSessionStarted other failed."

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_7c
    :goto_7c
    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 616
    const-string v0, "CameraManager"

    const-string v1, "setPauseImage"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCurrentCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v0, :cond_18

    .line 618
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/vt/CameraManager;->mCount:I

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mImageData:Lcom/huawei/vtproxy/ImageData;

    .line 620
    invoke-direct {p0}, Lcom/huawei/ims/vt/CameraManager;->sendImageDataToSdk()V

    .line 622
    :cond_18
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewSurface, surface is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-nez p1, :cond_24

    .line 591
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->stopCameraPreview()I

    .line 593
    const-string v0, "stopCameraPreview"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    .line 596
    return-void

    .line 599
    :cond_24
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_43

    .line 600
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 601
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    :cond_36
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager;->mPreSetSurface:Landroid/view/Surface;

    .line 604
    invoke-static {p1}, Lcom/huawei/vtproxy/ImsCameraClient;->setNearEndSurface(Landroid/view/Surface;)I

    .line 605
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->startCameraPreview()I

    .line 606
    const-string v0, "start to setNearEndSurface and startCameraPreview"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_43
    return-void
.end method
