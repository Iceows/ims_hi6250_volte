.class public Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVTCallProviderImpl.java"

# interfaces
.implements Lcom/huawei/ims/HwImsCallSessionImpl$Listener;


# static fields
.field private static final EVENT_SEND_SESSION_MODIFY_REQUEST_DONE:I = 0x0

.field private static final ORIENTATION_0:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsVTCallProviderImpl"


# instance fields
.field private isFristConference:Z

.field private mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

.field private mCameraManager:Lcom/huawei/ims/vt/CameraManager;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

.field private mIsVideoPaused:Z

.field private mMediaManager:Lcom/huawei/ims/vt/MediaManager;

.field mRequestProfile:Landroid/telecom/VideoProfile;

.field mResponseProfile:Landroid/telecom/VideoProfile;

.field private mTotalDataUsage:J

.field private mVideoDimensionCB:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter;)V
    .locals 3
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "imsCallMod"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 52
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mTotalDataUsage:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->isFristConference:Z

    .line 80
    new-instance v0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl$2;-><init>(Lcom/huawei/ims/vt/ImsVTCallProviderImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mVideoDimensionCB:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    .line 54
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsVideocallProviderImpl instance created,  imsCallMod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 57
    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    .line 58
    invoke-static {}, Lcom/huawei/ims/vt/MediaManager;->getInstance()Lcom/huawei/ims/vt/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mMediaManager:Lcom/huawei/ims/vt/MediaManager;

    .line 59
    iput-object p2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 61
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mVideoDimensionCB:Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setGetResCallBack(Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;)V

    .line 63
    new-instance v0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl$1;-><init>(Lcom/huawei/ims/vt/ImsVTCallProviderImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/vt/ImsVTCallProviderImpl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 29
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->handleSessionModifyRequestDone(Landroid/os/Message;)V

    return-void
.end method

.method private handleSessionModifyRequest(I)V
    .locals 3
    .param p1, "status"    # I

    .line 112
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSessionModifyRequest,status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 114
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 113
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 116
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, p1, v0, v1}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 117
    return-void
.end method

.method private handleSessionModifyRequestDone(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 93
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSessionModifyRequestDone msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg.arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 97
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "ImsVTCallProviderImpl"

    const-string v2, "session modify request failed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->handleSessionModifyRequest(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 104
    const-string v1, "ImsVTCallProviderImpl"

    const-string v2, "session modify request cancel upgrade to video"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->handleSessionModifyRequest(I)V

    .line 108
    :cond_1
    :goto_0
    return-void
.end method

.method private isOneWayCallUpgradeToVT(II)Z
    .locals 2
    .param p1, "currentCallType"    # I
    .param p2, "newCallType"    # I

    .line 500
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVTDowngradeToOneWayCall(II)Z
    .locals 2
    .param p1, "currentCallType"    # I
    .param p2, "newCallType"    # I

    .line 495
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z
    .locals 3
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 193
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoPauseRequested requestProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    return v0
.end method

.method private modifyRTPStreamDirection(II)V
    .locals 5
    .param p1, "currentCallType"    # I
    .param p2, "newCallType"    # I

    .line 451
    invoke-static {p1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 452
    .local v0, "oldDirection":I
    invoke-static {p2}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v1

    .line 454
    .local v1, "newDirection":I
    invoke-static {v0, v1}, Lcom/huawei/ims/vt/RTPController;->modifyRTPStreamDirection(II)I

    move-result v2

    .line 455
    .local v2, "ret":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 456
    const-string v3, "ImsVTCallProviderImpl"

    const-string v4, "pauseOrResumeRTPStream failed!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    return-void
.end method

.method private modifyRTPStreamForTwoWayAndOneWaySwap()V
    .locals 7

    .line 425
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v0

    .line 427
    .local v0, "imsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    if-nez v1, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    iget v1, v0, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    .line 432
    .local v1, "currentCallType":I
    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    .line 433
    .local v2, "newVideoState":I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->convertVideoStateToCallType(I)I

    move-result v3

    .line 434
    .local v3, "newCallType":I
    const-string v4, "ImsVTCallProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mResponseProfile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v6}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->isVTDowngradeToOneWayCall(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 436
    const-string v4, "ImsVTCallProviderImpl"

    const-string v5, "modifyRTPStreamForTwoWayAndOneWaySwap TwoWay downgrade oneway"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->modifyRTPStreamDirection(II)V

    goto :goto_1

    .line 438
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->isOneWayCallUpgradeToVT(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 439
    const-string v4, "ImsVTCallProviderImpl"

    const-string v5, "modifyRTPStreamForTwoWayAndOneWaySwap oneway updategrade twoWay"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->modifyRTPStreamDirection(II)V

    .end local v0    # "imsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    .end local v1    # "currentCallType":I
    .end local v2    # "newVideoState":I
    .end local v3    # "newCallType":I
    goto :goto_1

    .line 428
    .restart local v0    # "imsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    :cond_2
    :goto_0
    const-string v1, "ImsVTCallProviderImpl"

    const-string v2, "handleModifyCallResult imsCallProfile or mResponseProfile is null!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    .line 443
    .end local v0    # "imsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method getCallSession()Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v0
.end method

.method public handleModifyCallResult(I)V
    .locals 3
    .param p1, "result"    # I

    .line 353
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleModifyCallResult, result is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-nez p1, :cond_1

    .line 355
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "receiveSessionModifyResponse modify success"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 357
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    if-nez v0, :cond_0

    .line 358
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "illegal process! mResponseProfile is null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->modifyRTPStreamForTwoWayAndOneWaySwap()V

    .line 364
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 366
    :cond_1
    const/16 v0, 0x49e7

    const/4 v1, 0x4

    if-ne v0, p1, :cond_2

    .line 367
    const-string v0, "ImsVTCallProviderImpl"

    const-string v2, "receiveSessionModifyResponse modify time out"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 369
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 368
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 371
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v1, v0, v2}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 373
    :cond_2
    const/16 v0, 0x49e8

    if-ne v0, p1, :cond_3

    .line 374
    const-string v0, "ImsVTCallProviderImpl"

    const-string v2, "receiveSessionModifyResponse modify rejected"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 376
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 375
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 379
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 382
    :cond_3
    const-string v0, "ImsVTCallProviderImpl"

    const-string v2, "receiveSessionModifyResponse modify failed"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 384
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 383
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 386
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 390
    :goto_0
    return-void
.end method

.method public isVideoPaused()Z
    .locals 1

    .line 506
    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mIsVideoPaused:Z

    return v0
.end method

.method public onCallDataUsageChanged(J)V
    .locals 4
    .param p1, "addCallDataUsage"    # J

    .line 402
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-nez v0, :cond_0

    .line 403
    return-void

    .line 405
    :cond_0
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallSession.isMultiparty()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMultiparty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->isFristConference:Z

    if-nez v0, :cond_1

    .line 407
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "isfirstConference"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->getTotalCallDataUsage()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mTotalDataUsage:J

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->isFristConference:Z

    goto :goto_0

    .line 413
    :cond_1
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "Normal process"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-wide v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mTotalDataUsage:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mTotalDataUsage:J

    .line 417
    :goto_0
    iget-wide v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mTotalDataUsage:J

    invoke-static {v0, v1}, Lcom/huawei/ims/vt/VTUtils;->setTotalCallDataUsage(J)V

    .line 419
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTotalDataUsage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mTotalDataUsage:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-wide v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mTotalDataUsage:J

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->changeCallDataUsage(J)V

    .line 421
    return-void
.end method

.method public onCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "mtHold"    # Z

    .line 463
    if-nez p1, :cond_0

    .line 464
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "onCallSessionHold::session is null , just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/vt/CameraManager;->setCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 468
    return-void
.end method

.method public onCallSessionMerged()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraManager;->setCurrentSessionMerged()V

    .line 491
    return-void
.end method

.method public onCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "mtResume"    # Z

    .line 472
    if-nez p1, :cond_0

    .line 473
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "onCallSessionResumed session is null , just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/vt/CameraManager;->setCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 477
    return-void
.end method

.method public onCallSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 481
    if-nez p1, :cond_0

    .line 482
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "onCallSessionStarted session is null , just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/CameraManager;->setCurrentSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 486
    return-void
.end method

.method public onClosed(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 306
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "onClosed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 309
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/vt/CameraManager;->close(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 311
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraManager;->cleanPreStatus()V

    .line 312
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mMediaManager:Lcom/huawei/ims/vt/MediaManager;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/MediaManager;->cleanPreStatus()V

    .line 314
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "onClosed end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public onDisconnected(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 301
    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 0

    .line 124
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isDocomo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "onRequestCameraCapabilities"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraManager;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    .line 133
    .local v0, "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 136
    .end local v0    # "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    :cond_0
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 7
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 140
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "onSendSessionModifyRequest"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "ImsVTCallProviderImpl"

    const-string v2, "onSendSessionModifyRequest: video state is audio."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-boolean v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mIsVideoPaused:Z

    .line 152
    :cond_1
    iput-object p2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 155
    invoke-direct {p0, p2}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendSessionModifyRequest pause start, mIsVideoPaused is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mIsVideoPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mIsVideoPaused:Z

    if-nez v0, :cond_6

    .line 159
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->pauseVideo()I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mIsVideoPaused:Z

    goto :goto_0

    .line 162
    :cond_2
    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mIsVideoPaused:Z

    if-eqz v0, :cond_4

    .line 163
    const-string v0, "ImsVTCallProviderImpl"

    const-string v2, "onSendSessionModifyRequest resume start"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->resumeVideo()I

    .line 165
    iput-boolean v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mIsVideoPaused:Z

    .line 169
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraManager;->isBgVideoCallShouldResume()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraManager;->getCureentCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    .line 171
    .local v0, "currentCallSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v0, :cond_3

    .line 172
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    .line 173
    .local v1, "callType":I
    invoke-static {v1}, Lcom/huawei/ims/vt/RTPController;->convertCallTypeToDirection(I)I

    move-result v2

    .line 174
    .local v2, "direction":I
    invoke-static {v2}, Lcom/huawei/ims/vt/RTPController;->resumeRTPStream(I)I

    move-result v3

    .line 175
    .local v3, "result":I
    const-string v4, "ImsVTCallProviderImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendSessionModifyRequest resumeRTP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "currentCallSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .end local v1    # "callType":I
    .end local v2    # "direction":I
    .end local v3    # "result":I
    :cond_3
    goto :goto_0

    .line 180
    :cond_4
    const-string v0, "ImsVTCallProviderImpl"

    const-string v2, "onSendSessionModifyRequest changeConnection start"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 182
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "onSendSessionModifyRequest source video state is the same with destination!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertVideoStateToCallType(I)I

    move-result v1

    .line 188
    .restart local v1    # "callType":I
    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/huawei/ims/ImsCallAdapter;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    .line 190
    .end local v0    # "newMsg":Landroid/os/Message;
    .end local v1    # "callType":I
    :cond_6
    :goto_0
    return-void

    .line 143
    :cond_7
    :goto_1
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "fromProfile or requestProfile is null when onSendSessionModifyRequest"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 199
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendSessionModifyResponse responseProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->convertVideoStateToCallType(I)I

    move-result v0

    .line 207
    .local v0, "callType":I
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v1

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    if-ne v1, v0, :cond_1

    .line 208
    const-string v1, "ImsVTCallProviderImpl"

    const-string v2, "rejectConnectionTypeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallAdapter;->rejectConnectionTypeChange()V

    goto :goto_0

    .line 211
    :cond_1
    const-string v1, "ImsVTCallProviderImpl"

    const-string v2, "acceptConnectionTypeChange"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/huawei/ims/ImsCallAdapter;->acceptConnectionTypeChange(ILjava/util/Map;)V

    .line 214
    :goto_0
    return-void

    .line 200
    .end local v0    # "callType":I
    :cond_2
    :goto_1
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "onSendSessionModifyResponse, some information is missing, rejectConnectionTypeChange"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->rejectConnectionTypeChange()V

    .line 202
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 218
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCamera, cameraId is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz p1, :cond_2

    .line 221
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {p0}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->getCallSession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/vt/CameraManager;->open(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    goto :goto_1

    .line 222
    :cond_1
    :goto_0
    const-string v0, "ImsVTCallProviderImpl"

    const-string v1, "onSetCamera, precondition=false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {p0}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->getCallSession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/vt/CameraManager;->close(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 232
    :goto_1
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .line 264
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDeviceOrientation, rotation is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mMediaManager:Lcom/huawei/ims/vt/MediaManager;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/MediaManager;->setDeviceOrientation(I)V

    .line 266
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;

    .line 242
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDisplaySurface, surface is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mMediaManager:Lcom/huawei/ims/vt/MediaManager;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/MediaManager;->setDisplaySurface(Landroid/view/Surface;)Z

    move-result v0

    .line 244
    .local v0, "isSurfaceSet":Z
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/CameraManager;->getCureentCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    .line 246
    .local v1, "currentCallSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 248
    .local v2, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v3

    .line 249
    .local v3, "currentCallType":I
    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v4

    .line 250
    .local v4, "isVideoCallType":Z
    if-eqz v4, :cond_0

    .line 251
    const-string v5, "ImsVTCallProviderImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSetDisplaySurface: modifyRTPStreamDirection, currentCallType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v5, 0x3

    invoke-direct {p0, v5, v3}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->modifyRTPStreamDirection(II)V

    .line 256
    const/4 v5, 0x0

    invoke-direct {p0, v5, v3}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->modifyRTPStreamDirection(II)V

    .line 260
    .end local v1    # "currentCallSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .end local v2    # "cp":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "currentCallType":I
    .end local v4    # "isVideoCallType":Z
    :cond_0
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 0
    .param p1, "arg0"    # Landroid/net/Uri;

    .line 276
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 236
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetPreviewSurface, surface is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/CameraManager;->setPreviewSurface(Landroid/view/Surface;)V

    .line 238
    return-void
.end method

.method public onSetZoom(F)V
    .locals 0
    .param p1, "arg0"    # F

    .line 283
    return-void
.end method

.method public onUnsolCallModify(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .locals 6
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 322
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnsolCallModify,  callModify= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v0, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->convertCallTypeToVideoState(I)I

    move-result v0

    .line 325
    .local v0, "newVideoState":I
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 327
    .local v1, "vcp":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->findError()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 329
    iget v2, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->error:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->convertImsErrorToUiError(I)I

    move-result v2

    .line 330
    .local v2, "uiError":I
    invoke-virtual {p0, v2, v1, v3}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 332
    .end local v2    # "uiError":I
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->modifyByTimeOut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    const-string v2, "ImsVTCallProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modifyByTimeOut , modify_reason is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->modify_reason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget v2, p2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->modify_reason:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->convertImsErrorToUiError(I)I

    move-result v2

    .line 335
    .restart local v2    # "uiError":I
    invoke-virtual {p0, v2, v1, v3}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 339
    .end local v2    # "uiError":I
    :cond_1
    iput-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 341
    invoke-virtual {p0, v1}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 343
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    const-string v2, "ImsVTCallProviderImpl"

    const-string v3, "onUnsolCallModify, videostate=audio"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mIsVideoPaused:Z

    .line 349
    :cond_2
    :goto_0
    return-void
.end method

.method public sendCameraStatus(Z)V
    .locals 3
    .param p1, "hasFailed"    # Z

    .line 286
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCameraStatus, hasFailed is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 288
    :cond_0
    const/4 v0, 0x6

    .line 290
    .local v0, "status":I
    :goto_0
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isDocomo()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->mMediaManager:Lcom/huawei/ims/vt/MediaManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/ims/vt/MediaManager;->setDeviceOrientation(I)V

    .line 294
    :cond_1
    invoke-virtual {p0, v0}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->handleCallSessionEvent(I)V

    .line 295
    return-void
.end method
