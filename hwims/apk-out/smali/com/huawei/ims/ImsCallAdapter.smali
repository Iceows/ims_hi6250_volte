.class public Lcom/huawei/ims/ImsCallAdapter;
.super Ljava/lang/Object;
.source "ImsCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsCallAdapter$CallModify;,
        Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;,
        Lcom/huawei/ims/ImsCallAdapter$PauseState;
    }
.end annotation


# static fields
.field static final EVENT_AVP_UPGRADE_DONE:I = 0x5

.field static final EVENT_MODIFY_CALL_CONFIRM_DONE:I = 0x8

.field static final EVENT_MODIFY_CALL_INITIATE_DONE:I = 0x6

.field static final EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE:I = 0xa

.field static final EVENT_VIDEO_PAUSE_DONE:I = 0x7

.field static final EVENT_VIDEO_PAUSE_RETRY:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "VideoCall_ImsCallAdapter"

.field private static final MAX_MULTITASK_RETRIES:I = 0x1

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field public static final TYPE_PROCESS_MODIFY_CALL_CANCEL:I = 0x1

.field public static final TYPE_PROCESS_MODIFY_CALL_INITIALED:I


# instance fields
.field private callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

.field private mAvpRetryAllowed:Z

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field mHandler:Landroid/os/Handler;

.field public mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

.field public mIndex:I

.field private mIsLocallyPaused:Z

.field private mMultiTaskRetryCount:I

.field private mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

.field private mPrevVideoCallType:I


# direct methods
.method public constructor <init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V
    .locals 2
    .param p1, "hwImsCallSessionImpl"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "imsRil"    # Lcom/huawei/ims/ImsRIL;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mIndex:I

    .line 22
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPrevVideoCallType:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mAvpRetryAllowed:Z

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    .line 51
    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    iput-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    .line 54
    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z

    .line 62
    const-string v0, "ImsCallAdapter instance created "

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 65
    iput-object p1, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 66
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;-><init>(Lcom/huawei/ims/ImsCallAdapter;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsCallAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 17
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter;->processPendingVTMultitask()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$CallModify;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 17
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    return-object v0
.end method

.method static synthetic access$302(Lcom/huawei/ims/ImsCallAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/huawei/ims/ImsCallAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 17
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/huawei/ims/ImsCallAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/huawei/ims/ImsCallAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 17
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$PauseState;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 17
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/ims/ImsCallAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;
    .param p1, "x1"    # I

    .line 17
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter;->createAndSendMultiTaskRequest(I)V

    return-void
.end method

.method private createAndSendMultiTaskRequest(I)V
    .locals 2
    .param p1, "rilCallType"    # I

    .line 89
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 91
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/huawei/ims/ImsCallAdapter;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    .line 92
    return-void
.end method

.method public static hasError(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Z
    .locals 1
    .param p0, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 136
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->findError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOldAndNewPauseRequestSame()Z
    .locals 3

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOldAndNewPauseRequestSame Unexpectedly callModifyRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 242
    return v0

    .line 244
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallAdapter$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-eq v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallAdapter$PauseState;->RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOldAndNewPauseRequestSame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 247
    return v0
.end method

.method private isVTMultitaskRequest(I)Z
    .locals 1
    .param p1, "callType"    # I

    .line 70
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isValidCallModifyConfirmRequest(I)Z
    .locals 3
    .param p1, "callType"    # I

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "allowed":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v1, :cond_0

    .line 436
    const-string v1, "callModifyRequest is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 437
    const/4 v1, 0x0

    return v1

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget-object v2, v2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v2, v2, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    invoke-static {v1, v2, p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVTUpgradeCallType(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    const/4 v0, 0x1

    goto :goto_0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    if-ne p1, v1, :cond_2

    .line 444
    const/4 v0, 0x1

    .line 446
    :cond_2
    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 657
    const-string v0, "VideoCall_ImsCallAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 661
    const-string v0, "VideoCall_ImsCallAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-void
.end method

.method private modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V
    .locals 6
    .param p1, "newMsg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 391
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidRilModifyCallType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallInitiate not a Valid RilCallType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 393
    return-void

    .line 396
    :cond_0
    new-instance v0, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallDomain()I

    move-result v1

    .line 397
    invoke-static {p3}, Lcom/huawei/ims/ImsCallProfiles;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 398
    .local v0, "destImsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIndex:I

    .line 400
    .local v1, "rilCallIndex":I
    new-instance v2, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v3

    iget-object v4, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 401
    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallDomain()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 402
    .local v2, "currImsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    new-instance v3, Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-direct {v3, v2, v0, v1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;I)V

    .line 405
    .local v3, "callModify":Lcom/huawei/ims/ImsCallAdapter$CallModify;
    iput-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 406
    iget-object v4, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v4, p1, v3}, Lcom/huawei/ims/ImsRIL;->modifyCallInitiate(Landroid/os/Message;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    .line 407
    return-void
.end method

.method private modifyCallUpgradeCancel(Landroid/os/Message;ILjava/util/Map;)V
    .locals 2
    .param p1, "newMsg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 422
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallUpgradeCancel,newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 423
    invoke-static {p2}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidRilModifyCallType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallUpgradeCancel not a Valid RilCallType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 425
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->modifyCallUpgradeCancel(Landroid/os/Message;I)V

    .line 430
    :cond_1
    return-void
.end method

.method private pendingPauseStatetoRilCallType()I
    .locals 3

    .line 95
    const/16 v0, 0xa

    .line 96
    .local v0, "rilCallType":I
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallAdapter$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-ne v1, v2, :cond_0

    .line 97
    const/4 v0, 0x4

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallAdapter$PauseState;->RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-ne v1, v2, :cond_1

    .line 100
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPrevVideoCallType:I

    .line 102
    :cond_1
    :goto_0
    return v0
.end method

.method private processPendingVTMultitask()V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPendingVTMultitask mPendingVTMultitask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter;->isOldAndNewPauseRequestSame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "Old and new Pause Request is Same so clearing Pending VT multitask"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-eq v0, v1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v0, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter;->pendingPauseStatetoRilCallType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->createAndSendMultiTaskRequest(I)V

    .line 258
    sget-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    goto :goto_0

    .line 260
    :cond_1
    const-string v0, "processPendingVTMultitask callModifyRequest not null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 264
    :cond_2
    :goto_0
    return-void
.end method

.method private reValidateCallModify(I)Z
    .locals 10
    .param p1, "newCallType"    # I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reValidateCallModify newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 206
    .local v0, "currCallType":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 212
    .local v3, "voiceCallModify":Z
    :goto_0
    const/4 v4, 0x3

    if-ne v4, p1, :cond_1

    if-ne v4, v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 215
    .local v4, "videoCallModify":Z
    :goto_1
    iget-object v5, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v5

    .line 217
    .local v5, "currentCallState":Lcom/huawei/ims/DriverImsCall$State;
    sget-object v6, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v6, v5, :cond_3

    sget-object v6, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v6, v5, :cond_2

    goto :goto_2

    :cond_2
    move v6, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v2

    .line 221
    .local v6, "isVideoRingtoneState":Z
    :goto_3
    const/4 v7, -0x1

    .line 223
    .local v7, "index":I
    :try_start_0
    iget-object v8, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    .line 226
    goto :goto_4

    .line 224
    :catch_0
    move-exception v8

    .line 225
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "reValidateCallModify : NumberFormatException "

    invoke-direct {p0, v9}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 228
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :goto_4
    if-ltz v7, :cond_4

    move v8, v2

    goto :goto_5

    :cond_4
    move v8, v1

    .line 229
    .local v8, "isIndexValid":Z
    :goto_5
    if-eqz v8, :cond_6

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    if-eqz v6, :cond_6

    move v1, v2

    nop

    .line 231
    .local v1, "isValid":Z
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reValidateCallModify currCallType= "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " index="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " voiceCallModify="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " videoCallModify="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isVideoRingtoneState="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 235
    return v1
.end method

.method private triggerOrQueueVTMultitask(I)V
    .locals 2
    .param p1, "callType"    # I

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerOrQueueVTMultitask callType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " conn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    .local v0, "isPauseRequested":Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    :goto_1
    iput-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    .line 79
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v1, :cond_2

    .line 80
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter;->processPendingVTMultitask()V

    .line 82
    :cond_2
    return-void
.end method

.method private updatePreviousVTCallType()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 318
    .local v0, "callType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 321
    :cond_0
    iput v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPrevVideoCallType:I

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating mPrevVideoCallType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mPrevVideoCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 324
    :cond_1
    return-void
.end method

.method private validateCanModifyConnectionType(Landroid/os/Message;I)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateCanModifyConnectionType newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 109
    .local v0, "currCallType":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 111
    .local v3, "modifyToCurrCallType":Z
    :goto_0
    const/4 v4, -0x1

    .line 113
    .local v4, "index":I
    :try_start_0
    iget-object v5, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 116
    goto :goto_1

    .line 114
    :catch_0
    move-exception v5

    .line 115
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "validateCanModifyConnectionType : NumberFormatException "

    invoke-direct {p0, v6}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 119
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :goto_1
    if-ltz v4, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    move v5, v1

    .line 120
    .local v5, "isIndexValid":Z
    :goto_2
    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    move v1, v2

    nop

    .line 122
    .local v1, "isValid":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateCanModifyConnectionType currCallType= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " index="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " modifyToCurrCallType="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 124
    if-nez p1, :cond_3

    return v1

    .line 126
    :cond_3
    if-nez v1, :cond_5

    .line 127
    const/4 v2, 0x0

    if-eqz v3, :cond_4

    .line 128
    move-object v6, v2

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Can\'t modify call."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 129
    .local v6, "exception":Ljava/lang/Exception;
    :goto_3
    invoke-static {p1, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 132
    .end local v6    # "exception":Ljava/lang/Exception;
    :cond_5
    return v1
.end method


# virtual methods
.method public acceptConnectionTypeChange(ILjava/util/Map;)V
    .locals 3
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 456
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "VideoCall_ImsCallAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confirming call type change request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter;->isValidCallModifyConfirmRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptConnectionTypeChange: MODIFY_CALL_CONFIRM called with invalid calltype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallAdapter;->rejectConnectionTypeChange()V

    .line 462
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iput p1, v0, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    .line 467
    if-eqz p2, :cond_1

    .line 468
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0, p2}, Lcom/huawei/ims/ImsCallProfiles;->setExtrasFromMap(Ljava/util/Map;)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/huawei/ims/ImsRIL;->modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    .line 473
    iput-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 476
    :cond_2
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeConnectionType  newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mIndex:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v1, "changeConnectionType : NumberFormatException "

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 338
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIndex:I

    .line 341
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsCallAdapter;->isVTMultitaskRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsCallAdapter;->triggerOrQueueVTMultitask(I)V

    goto :goto_2

    .line 347
    :cond_0
    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 348
    const/16 v1, 0xa

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    .line 349
    .local v1, "eventType":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 352
    .local v2, "newMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v3, :cond_4

    .line 354
    invoke-direct {p0, v2, p2}, Lcom/huawei/ims/ImsCallAdapter;->validateCanModifyConnectionType(Landroid/os/Message;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 355
    const-string v0, "CallType is invalid!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 356
    return-void

    .line 359
    :cond_2
    if-ne p2, v0, :cond_3

    .line 360
    invoke-direct {p0, v2, p2, p3}, Lcom/huawei/ims/ImsCallAdapter;->modifyCallUpgradeCancel(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_2

    .line 362
    :cond_3
    invoke-direct {p0, v2, p2, p3}, Lcom/huawei/ims/ImsCallAdapter;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_2

    .line 366
    :cond_4
    const-string v0, "VideoCall_ImsCallAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending callModifyRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v0, "Pending callModifyRequest so not sending modify request down"

    .line 372
    .local v0, "errorStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 373
    .local v3, "ex":Ljava/lang/RuntimeException;
    if-eqz p1, :cond_5

    .line 374
    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 375
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 380
    .end local v0    # "errorStr":Ljava/lang/String;
    .end local v1    # "eventType":I
    .end local v2    # "newMsg":Landroid/os/Message;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :cond_5
    :goto_2
    return-void
.end method

.method public clearPendingModify()V
    .locals 2

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPendingModify imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 270
    return-void
.end method

.method public isAvpRetryAllowed()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mAvpRetryAllowed:Z

    return v0
.end method

.method public isLocallyPaused()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z

    return v0
.end method

.method public onReceivedModifyCall(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .locals 4
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 141
    const-string v0, "VideoCall_ImsCallAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedCallModify("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    .line 146
    .local v0, "ret":Z
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->findError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 148
    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->isSameModify(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 149
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->findError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget v2, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->error:I

    iput v2, v1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->error:I

    .line 152
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 154
    :cond_0
    const-string v1, "VideoCall_ImsCallAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Received Request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 160
    :cond_1
    iget-object v1, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/ImsCallAdapter;->validateCanModifyConnectionType(Landroid/os/Message;I)Z

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRIL;->isSupportVideoRingTones()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    if-nez v0, :cond_3

    iget-object v1, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->reValidateCallModify(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 163
    const-string v1, "VideoCall_ImsCallAdapter"

    const-string v3, "CallModify received by video ring tone."

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v3

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 167
    const-string v1, "VideoCall_ImsCallAdapter"

    const-string v2, "mock call state change, notify CallStateRegistrants!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v1, :cond_5

    .line 171
    iput-object p1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    goto :goto_2

    .line 173
    :cond_5
    const-string v1, "VideoCall_ImsCallAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending callModifyRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    .line 179
    :goto_2
    if-nez v0, :cond_6

    .line 181
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallAdapter;->rejectConnectionTypeChange()V

    .line 190
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 191
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyUnsolCallModify(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    .line 194
    :cond_7
    invoke-static {p1}, Lcom/huawei/ims/ImsCallAdapter;->hasError(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 195
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 197
    :cond_8
    return-void
.end method

.method public rejectConnectionTypeChange()V
    .locals 4

    .line 484
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v0, :cond_0

    .line 485
    const-string v0, "VideoCall_ImsCallAdapter"

    const-string v1, "rejectConnectionTypeChange callModifyRequest is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void

    .line 489
    :cond_0
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget v2, v2, Lcom/huawei/ims/ImsCallAdapter$CallModify;->call_index:I

    invoke-direct {v0, v1, v2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;I)V

    .line 491
    .local v0, "callModify":Lcom/huawei/ims/ImsCallAdapter$CallModify;
    const-string v1, "VideoCall_ImsCallAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting Change request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " keep as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/huawei/ims/ImsRIL;->modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    .line 494
    iput-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 495
    return-void
.end method

.method public requestLTEInfo(IILandroid/os/Message;)V
    .locals 1
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 383
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/ims/ImsRIL;->requestGetLTEInfo(IILandroid/os/Message;)V

    .line 386
    :cond_0
    return-void
.end method

.method public update(Lcom/huawei/ims/DriverImsCall;)V
    .locals 2
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 278
    if-nez p1, :cond_0

    .line 279
    const-string v0, "update, dc is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 280
    return-void

    .line 284
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v0, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 286
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mAvpRetryAllowed:Z

    .line 288
    :cond_1
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v0, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    const-string v0, "videocall: update: Not a videocall CASE"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVTMultitask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    .line 291
    iput v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    .line 292
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v0, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->callModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    if-ne v0, v1, :cond_3

    .line 298
    const-string v0, "videocall update: current call type is same as callModifyRequest"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->log(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter;->updatePreviousVTCallType()V

    .line 308
    return-void
.end method
