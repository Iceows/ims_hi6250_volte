.class public Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVtCallProviderImpl.java"

# interfaces
.implements Lcom/huawei/ims/HwImsCallSessionImpl$Listener;


# static fields
.field private static final EVENT_SEND_SESSION_MODIFY_REQUEST_DONE:I = 0x0

.field private static final INVALID_RTPSTREAMDIRECTION:I = -0x1

.field private static final ORIENTATION_0:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsVtCallProviderImpl"


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


# direct methods
.method public constructor <init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter;)V
    .registers 5
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "imsCallMod"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 72
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mTotalDataUsage:J

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->isFristConference:Z

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsVtCallProviderImpl instance created,  imsCallMod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 77
    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    .line 78
    invoke-static {}, Lcom/huawei/ims/vt/MediaManager;->getInstance()Lcom/huawei/ims/vt/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mMediaManager:Lcom/huawei/ims/vt/MediaManager;

    .line 79
    iput-object p2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 81
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->getVideoDimensionCallBack()Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setGetResCallBack(Lcom/huawei/vtproxy/ImsThinClient$GetResCallBack;)V

    .line 83
    new-instance v0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl$1;-><init>(Lcom/huawei/ims/vt/ImsVtCallProviderImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/vt/ImsVtCallProviderImpl;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->handleSessionModifyRequestDone(Landroid/os/Message;)V

    return-void
.end method

.method private handleSessionModifyRequest(I)V
    .registers 4
    .param p1, "status"    # I

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSessionModifyRequest, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 130
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->getHwImsCallSessionImpl()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 129
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 131
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, p1, v0, v1}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 132
    return-void
.end method

.method private handleSessionModifyRequestDone(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSessionModifyRequestDone msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg.arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_2e

    .line 109
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 112
    :cond_2e
    if-eqz v0, :cond_3e

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3e

    .line 114
    const-string v2, "session modify request failed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->handleSessionModifyRequest(I)V

    goto :goto_58

    .line 116
    :cond_3e
    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    if-eqz v2, :cond_53

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_53

    .line 118
    const-string v2, "session modify request cancel upgrade to video"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->handleSessionModifyRequest(I)V

    goto :goto_58

    .line 121
    :cond_53
    const-string v2, "handleSessionModifyRequestDone error branch"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_58
    return-void
.end method

.method private isOneWayCallUpgradeToVt(II)Z
    .registers 5
    .param p1, "currentCallType"    # I
    .param p2, "newCallType"    # I

    .line 522
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    if-ne p1, v0, :cond_a

    :cond_9
    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z
    .registers 4
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVideoPauseRequested requestProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    return v0
.end method

.method private isVtDowngradeToOneWayCall(II)Z
    .registers 5
    .param p1, "currentCallType"    # I
    .param p2, "newCallType"    # I

    .line 517
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_a

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    if-ne p2, v0, :cond_a

    :cond_9
    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private modifyRtpStreamDirection(II)V
    .registers 8
    .param p1, "currentCallType"    # I
    .param p2, "newCallType"    # I

    .line 474
    invoke-static {p1}, Lcom/huawei/ims/vt/RtpController;->convertCallTypeToDirection(I)I

    move-result v0

    .line 475
    .local v0, "oldDirection":I
    invoke-static {p2}, Lcom/huawei/ims/vt/RtpController;->convertCallTypeToDirection(I)I

    move-result v1

    .line 477
    .local v1, "newDirection":I
    invoke-static {v0, v1}, Lcom/huawei/ims/vt/RtpController;->modifyRtpStreamDirection(II)I

    move-result v2

    .line 478
    .local v2, "ret":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 479
    const-string v3, "ImsVtCallProviderImpl"

    const-string v4, "pauseOrResumeRTPStream failed!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_16
    return-void
.end method

.method private modifyRtpStreamForTwoWayAndOneWaySwap()V
    .registers 8

    .line 441
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v0, :cond_69

    .line 442
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v0

    .line 443
    .local v0, "imsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    const-string v1, "ImsVtCallProviderImpl"

    if-eqz v0, :cond_63

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    if-nez v2, :cond_17

    goto :goto_63

    .line 447
    :cond_17
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v2

    .line 448
    .local v2, "currentCallType":I
    iget-object v3, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    .line 449
    .local v3, "newVideoState":I
    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->convertVideoStateToCallType(I)I

    move-result v4

    .line 450
    .local v4, "newCallType":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mResponseProfile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {v6}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0, v2, v4}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->isVtDowngradeToOneWayCall(II)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 452
    const-string v5, "modifyRtpStreamForTwoWayAndOneWaySwap TwoWay downgrade oneway"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-direct {p0, v2, v4}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->modifyRtpStreamDirection(II)V

    goto :goto_69

    .line 454
    :cond_4e
    invoke-direct {p0, v2, v4}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->isOneWayCallUpgradeToVt(II)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 455
    const-string v5, "modifyRtpStreamForTwoWayAndOneWaySwap oneway updategrade twoWay"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct {p0, v2, v4}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->modifyRtpStreamDirection(II)V

    goto :goto_69

    .line 458
    :cond_5d
    const-string v5, "modifyRtpStreamForTwoWayAndOneWaySwap error branch"

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 444
    .end local v2    # "currentCallType":I
    .end local v3    # "newVideoState":I
    .end local v4    # "newCallType":I
    :cond_63
    :goto_63
    const-string v2, "handleModifyCallResult imsCallProfile or mResponseProfile is null!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 461
    .end local v0    # "imsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    :cond_69
    :goto_69
    return-void
.end method


# virtual methods
.method getCallSession()Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v0
.end method

.method public handleModifyCallResult(I)V
    .registers 5
    .param p1, "result"    # I

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleModifyCallResult, result is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-nez p1, :cond_37

    .line 374
    const-string v0, "receiveSessionModifyResponse modify success"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 376
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    if-nez v0, :cond_2b

    .line 377
    const-string v0, "illegal process! mResponseProfile is null."

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 381
    :cond_2b
    invoke-direct {p0}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->modifyRtpStreamForTwoWayAndOneWaySwap()V

    .line 383
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_98

    .line 385
    :cond_37
    const/16 v0, 0x49e7

    const/4 v2, 0x4

    if-ne p1, v0, :cond_59

    .line 386
    const-string v0, "receiveSessionModifyResponse modify time out"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 388
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->getHwImsCallSessionImpl()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 387
    invoke-static {v0, v2}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 389
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v2, v0, v1}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_98

    .line 391
    :cond_59
    const/16 v0, 0x49e8

    if-ne p1, v0, :cond_7b

    .line 392
    const-string v0, "receiveSessionModifyResponse modify rejected"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 394
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->getHwImsCallSessionImpl()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 393
    invoke-static {v0, v2}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 396
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_98

    .line 399
    :cond_7b
    const-string v0, "receiveSessionModifyResponse modify failed"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 401
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->getHwImsCallSessionImpl()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 400
    invoke-static {v0, v2}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    .line 402
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 405
    :goto_98
    return-void
.end method

.method public isVideoPaused()Z
    .registers 2

    .line 534
    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mIsVideoPaused:Z

    return v0
.end method

.method public onCallDataUsageChanged(J)V
    .registers 7
    .param p1, "addCallDataUsage"    # J

    .line 418
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-nez v0, :cond_5

    .line 419
    return-void

    .line 421
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallSession.isMultiparty()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMultiparty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->isFristConference:Z

    if-nez v0, :cond_3d

    .line 423
    const-string v0, "isfirstConference"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->getTotalCallDataUsage()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mTotalDataUsage:J

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->isFristConference:Z

    goto :goto_47

    .line 429
    :cond_3d
    const-string v0, "Normal process"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-wide v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mTotalDataUsage:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mTotalDataUsage:J

    .line 433
    :goto_47
    iget-wide v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mTotalDataUsage:J

    invoke-static {v2, v3}, Lcom/huawei/ims/vt/VtUtils;->setTotalCallDataUsage(J)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTotalDataUsage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mTotalDataUsage:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-wide v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mTotalDataUsage:J

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->changeCallDataUsage(J)V

    .line 437
    return-void
.end method

.method public onCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .registers 5
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isMtHold"    # Z

    .line 486
    if-nez p1, :cond_a

    .line 487
    const-string v0, "ImsVtCallProviderImpl"

    const-string v1, "onCallSessionHold::session is null, just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void

    .line 490
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/vt/CameraManager;->setCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 491
    return-void
.end method

.method public onCallSessionMerged()V
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraManager;->setCurrentSessionMerged()V

    .line 514
    return-void
.end method

.method public onCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .registers 5
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isMtResume"    # Z

    .line 495
    if-nez p1, :cond_a

    .line 496
    const-string v0, "ImsVtCallProviderImpl"

    const-string v1, "onCallSessionResumed session is null, just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 499
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/vt/CameraManager;->setCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 500
    return-void
.end method

.method public onCallSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 4
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 504
    if-nez p1, :cond_a

    .line 505
    const-string v0, "ImsVtCallProviderImpl"

    const-string v1, "onCallSessionStarted session is null, just return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 508
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/CameraManager;->setCurrentSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 509
    return-void
.end method

.method public onClosed(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 5
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 315
    const-string v0, "ImsVtCallProviderImpl"

    const-string v1, "onClosed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 318
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/huawei/ims/vt/CameraManager;->close(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 320
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/CameraManager;->cleanPreStatus()V

    .line 321
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mMediaManager:Lcom/huawei/ims/vt/MediaManager;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/MediaManager;->cleanPreStatus()V

    .line 323
    const-string v1, "onClosed end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method public onDisconnected(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 2
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 310
    return-void
.end method

.method public onRequestCallDataUsage()V
    .registers 1

    .line 137
    return-void
.end method

.method public onRequestCameraCapabilities()V
    .registers 3

    .line 142
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isDocomo()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 143
    const-string v0, "ImsVtCallProviderImpl"

    const-string v1, "onRequestCameraCapabilities"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/CameraManager;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    .line 145
    .local v0, "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 148
    .end local v0    # "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    :cond_16
    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 10
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "requestProfile"    # Landroid/telecom/VideoProfile;

    .line 152
    const-string v0, "ImsVtCallProviderImpl"

    const-string v1, "onSendSessionModifyRequest"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz p1, :cond_b1

    if-nez p2, :cond_d

    goto/16 :goto_b1

    .line 159
    :cond_d
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 160
    const-string v1, "onSendSessionModifyRequest: video state is audio."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-boolean v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mIsVideoPaused:Z

    .line 164
    :cond_1f
    iput-object p2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 167
    invoke-direct {p0, p2}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendSessionModifyRequest pause start, mIsVideoPaused is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mIsVideoPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mIsVideoPaused:Z

    if-nez v0, :cond_b0

    .line 170
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->pauseVideo()I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mIsVideoPaused:Z

    goto :goto_b0

    .line 173
    :cond_48
    iget-boolean v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mIsVideoPaused:Z

    if-eqz v1, :cond_87

    .line 174
    const-string v1, "onSendSessionModifyRequest resume start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->resumeVideo()I

    .line 176
    iput-boolean v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mIsVideoPaused:Z

    .line 180
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/CameraManager;->isBgVideoCallShouldResume()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 181
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v1}, Lcom/huawei/ims/vt/CameraManager;->getCurrentCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    .line 182
    .local v1, "currentCallSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v1, :cond_86

    .line 183
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    .line 184
    .local v2, "callType":I
    invoke-static {v2}, Lcom/huawei/ims/vt/RtpController;->convertCallTypeToDirection(I)I

    move-result v3

    .line 185
    .local v3, "direction":I
    invoke-static {v3}, Lcom/huawei/ims/vt/RtpController;->resumeRtpStream(I)I

    move-result v4

    .line 186
    .local v4, "result":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSendSessionModifyRequest resumeRTP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v1    # "currentCallSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .end local v2    # "callType":I
    .end local v3    # "direction":I
    .end local v4    # "result":I
    :cond_86
    goto :goto_b0

    .line 191
    :cond_87
    const-string v1, "onSendSessionModifyRequest changeConnection start"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    if-ne v1, v3, :cond_9c

    .line 193
    const-string v1, "onSendSessionModifyRequest source video state is the same with destination!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 198
    :cond_9c
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 199
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertVideoStateToCallType(I)I

    move-result v1

    .line 200
    .local v1, "callType":I
    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/huawei/ims/ImsCallAdapter;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    .line 202
    .end local v0    # "newMsg":Landroid/os/Message;
    .end local v1    # "callType":I
    :cond_b0
    :goto_b0
    return-void

    .line 155
    :cond_b1
    :goto_b1
    const-string v1, "fromProfile or requestProfile is null when onSendSessionModifyRequest"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 5
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 211
    const-string v0, "ImsVtCallProviderImpl"

    if-eqz p1, :cond_4e

    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_4e

    .line 217
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSendSessionModifyResponse responseProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertVideoStateToCallType(I)I

    move-result v1

    .line 219
    .local v1, "callType":I
    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v2

    if-ne v2, v1, :cond_42

    .line 220
    const-string v2, "rejectConnectionTypeChange"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->rejectConnectionTypeChange()V

    goto :goto_4d

    .line 223
    :cond_42
    const-string v2, "acceptConnectionTypeChange"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->acceptConnectionTypeChange(ILjava/util/Map;)V

    .line 226
    :goto_4d
    return-void

    .line 212
    .end local v1    # "callType":I
    :cond_4e
    :goto_4e
    const-string v1, "onSendSessionModifyResponse, some information is missing, rejectConnectionTypeChange"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->rejectConnectionTypeChange()V

    .line 214
    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCamera, cameraId is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz p1, :cond_33

    .line 233
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtSupported()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    if-nez v0, :cond_23

    goto :goto_2d

    .line 238
    :cond_23
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {p0}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->getCallSession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/vt/CameraManager;->open(Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    goto :goto_3d

    .line 234
    :cond_2d
    :goto_2d
    const-string v0, "onSetCamera, precondition=false"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 241
    :cond_33
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {p0}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->getCallSession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/vt/CameraManager;->close(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 244
    :goto_3d
    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .registers 4
    .param p1, "rotation"    # I

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDeviceOrientation, rotation is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mMediaManager:Lcom/huawei/ims/vt/MediaManager;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/MediaManager;->setDeviceOrientation(I)V

    .line 275
    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .registers 10
    .param p1, "surface"    # Landroid/view/Surface;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetDisplaySurface, surface is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mMediaManager:Lcom/huawei/ims/vt/MediaManager;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/MediaManager;->isSetDisplaySurface(Landroid/view/Surface;)Z

    move-result v0

    .line 256
    .local v0, "isSurfaceSet":Z
    if-eqz v0, :cond_52

    .line 257
    iget-object v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v2}, Lcom/huawei/ims/vt/CameraManager;->getCurrentCallSessionImp()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v2

    .line 258
    .local v2, "currentCallSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v2, :cond_52

    .line 259
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    .line 260
    .local v3, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v4, v3, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v4}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v4

    .line 261
    .local v4, "currentCallType":I
    invoke-static {v4}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v5

    .line 262
    .local v5, "isVideoCallType":Z
    if-eqz v5, :cond_52

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSetDisplaySurface: modifyRtpStreamDirection, currentCallType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v1, 0x3

    invoke-direct {p0, v1, v4}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->modifyRtpStreamDirection(II)V

    .line 265
    const/4 v1, 0x0

    invoke-direct {p0, v1, v4}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->modifyRtpStreamDirection(II)V

    .line 269
    .end local v2    # "currentCallSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .end local v3    # "cp":Landroid/telephony/ims/ImsCallProfile;
    .end local v4    # "currentCallType":I
    .end local v5    # "isVideoCallType":Z
    :cond_52
    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .registers 3
    .param p1, "arg0"    # Landroid/net/Uri;

    .line 283
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/CameraManager;->setPauseImage(Landroid/net/Uri;)V

    .line 284
    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetPreviewSurface, surface is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mCameraManager:Lcom/huawei/ims/vt/CameraManager;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/vt/CameraManager;->setPreviewSurface(Landroid/view/Surface;)V

    .line 250
    return-void
.end method

.method public onSetZoom(F)V
    .registers 2
    .param p1, "arg0"    # F

    .line 288
    return-void
.end method

.method public onUnsolCallModify(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .registers 9
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 330
    if-nez p2, :cond_3

    .line 331
    return-void

    .line 334
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUnsolCallModify,  callModify= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    nop

    .line 337
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getDestCallProfiles()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->convertCallTypeToVideoState(I)I

    move-result v0

    .line 338
    .local v0, "newVideoState":I
    new-instance v2, Landroid/telecom/VideoProfile;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 340
    .local v2, "vcp":Landroid/telecom/VideoProfile;
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->isFailToModify()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3f

    .line 342
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertImsErrorToUiError(I)I

    move-result v1

    .line 343
    .local v1, "uiError":I
    invoke-virtual {p0, v1, v2, v4}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_7c

    .line 345
    .end local v1    # "uiError":I
    :cond_3f
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->isModifyByTimeOut()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modifyByTimeOut , modifyReason is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getModifyReason()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getModifyReason()I

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertImsErrorToUiError(I)I

    move-result v1

    .line 348
    .restart local v1    # "uiError":I
    invoke-virtual {p0, v1, v2, v4}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_7c

    .line 352
    .end local v1    # "uiError":I
    :cond_69
    iput-object v2, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 354
    invoke-virtual {p0, v2}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 356
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 357
    const-string v3, "onUnsolCallModify, videostate=audio"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mIsVideoPaused:Z

    .line 362
    :cond_7c
    :goto_7c
    return-void
.end method

.method public sendCameraStatus(Z)V
    .registers 5
    .param p1, "isFailed"    # Z

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCameraStatus, isFailed is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz p1, :cond_1a

    .line 298
    const/4 v0, 0x5

    goto :goto_1b

    .line 299
    :cond_1a
    const/4 v0, 0x6

    :goto_1b
    nop

    .line 301
    .local v0, "status":I
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isDocomo()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-nez p1, :cond_2a

    .line 302
    iget-object v1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->mMediaManager:Lcom/huawei/ims/vt/MediaManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/ims/vt/MediaManager;->setDeviceOrientation(I)V

    .line 305
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->handleCallSessionEvent(I)V

    .line 306
    return-void
.end method
