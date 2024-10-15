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
.field private static final EVENT_AVP_UPGRADE_DONE:I = 0x5

.field private static final EVENT_MODIFY_CALL_CONFIRM_DONE:I = 0x8

.field private static final EVENT_MODIFY_CALL_INITIATE_DONE:I = 0x6

.field private static final EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE:I = 0xa

.field private static final EVENT_VIDEO_PAUSE_DONE:I = 0x7

.field private static final EVENT_VIDEO_PAUSE_RETRY:I = 0x9

.field private static final INIT_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "VideoCall_ImsCallAdapter"

.field private static final MAX_MULTITASK_RETRIES:I = 0x1

.field private static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field public static final TYPE_PROCESS_MODIFY_CALL_CANCEL:I = 0x1

.field public static final TYPE_PROCESS_MODIFY_CALL_INITIALED:I


# instance fields
.field private mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field mHandler:Landroid/os/Handler;

.field private mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

.field private mIndex:I

.field private mIsAvpRetryAllowed:Z

.field private mIsLocallyPaused:Z

.field private mMultiTaskRetryCount:I

.field private mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

.field private mPrevVideoCallType:I


# direct methods
.method public constructor <init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V
    .registers 5
    .param p1, "hwImsCallSessionImpl"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "imsRil"    # Lcom/huawei/ims/ImsRIL;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mIndex:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 85
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPrevVideoCallType:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsAvpRetryAllowed:Z

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    .line 91
    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    iput-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    .line 94
    iput-boolean v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z

    .line 126
    const-string v0, "ImsCallAdapter instance created "

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 128
    iput-object p2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 129
    iput-object p1, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 130
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;-><init>(Lcom/huawei/ims/ImsCallAdapter;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method static synthetic access$1000(Lcom/huawei/ims/ImsCallAdapter;I)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;
    .param p1, "x1"    # I

    .line 20
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter;->createAndSendMultiTaskRequest(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/ims/ImsCallAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 20
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter;->processPendingVtMultiTask()V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$CallModify;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 20
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    return-object v0
.end method

.method static synthetic access$602(Lcom/huawei/ims/ImsCallAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z

    return p1
.end method

.method static synthetic access$700(Lcom/huawei/ims/ImsCallAdapter;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 20
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/huawei/ims/ImsCallAdapter;I)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;
    .param p1, "x1"    # I

    .line 20
    iput p1, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    return p1
.end method

.method static synthetic access$708(Lcom/huawei/ims/ImsCallAdapter;)I
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 20
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$PauseState;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 20
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    return-object v0
.end method

.method private createAndSendMultiTaskRequest(I)V
    .registers 4
    .param p1, "rilCallType"    # I

    .line 167
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 169
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/huawei/ims/ImsCallAdapter;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    .line 170
    return-void
.end method

.method public static hasError(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Z
    .registers 2
    .param p0, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 219
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->isFailToModify()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isOldAndNewPauseRequestSame()Z
    .registers 7

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "isOldAndNewPauseRequestSame":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-eqz v1, :cond_1c

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOldAndNewPauseRequestSame Unexpectedly mCallModifyRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 325
    return v0

    .line 327
    :cond_1c
    iget-boolean v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v4, Lcom/huawei/ims/ImsCallAdapter$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-ne v1, v4, :cond_2a

    move v1, v2

    goto :goto_2b

    :cond_2a
    move v1, v3

    .line 328
    .local v1, "isLocallyPaused":Z
    :goto_2b
    iget-boolean v4, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z

    if-nez v4, :cond_37

    iget-object v4, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v5, Lcom/huawei/ims/ImsCallAdapter$PauseState;->RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-ne v4, v5, :cond_37

    move v4, v2

    goto :goto_38

    :cond_37
    move v4, v3

    .line 329
    .local v4, "isResume":Z
    :goto_38
    if-nez v1, :cond_3e

    if-eqz v4, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v3

    :cond_3e
    :goto_3e
    move v0, v2

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOldAndNewPauseRequestSame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 331
    return v0
.end method

.method private isSupportModifyConnectionType(Landroid/os/Message;I)Z
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportModifyConnectionType newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 188
    .local v0, "currCallType":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_20

    move v3, v1

    goto :goto_21

    :cond_20
    move v3, v2

    .line 189
    .local v3, "isModifyToCurrCallType":Z
    :goto_21
    const/4 v4, -0x1

    .line 191
    .local v4, "index":I
    :try_start_22
    iget-object v5, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2c} :catch_2e

    move v4, v5

    .line 194
    goto :goto_34

    .line 192
    :catch_2e
    move-exception v5

    .line 193
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "isSupportModifyConnectionType : NumberFormatException "

    invoke-direct {p0, v6}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 195
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :goto_34
    if-ltz v4, :cond_38

    move v5, v1

    goto :goto_39

    :cond_38
    move v5, v2

    .line 196
    .local v5, "isIndexValid":Z
    :goto_39
    if-eqz v5, :cond_3e

    if-nez v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v1, v2

    .line 198
    .local v1, "isValid":Z
    :goto_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportModifyConnectionType currCallType= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " index="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isModifyToCurrCallType="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 200
    if-nez p1, :cond_66

    .line 201
    return v1

    .line 204
    :cond_66
    if-nez v1, :cond_7d

    .line 205
    const/4 v2, 0x0

    if-eqz v3, :cond_6d

    move-object v6, v2

    goto :goto_74

    :cond_6d
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Can\'t modify call."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 206
    .local v6, "exception":Ljava/lang/Exception;
    :goto_74
    invoke-static {p1, v2, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 209
    .end local v6    # "exception":Ljava/lang/Exception;
    :cond_7d
    return v1
.end method

.method private isValidCallModifyConfirmRequest(I)Z
    .registers 5
    .param p1, "callType"    # I

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "isAllowed":Z
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v1, :cond_c

    .line 528
    const-string v1, "mCallModifyRequest is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 529
    const/4 v1, 0x0

    return v1

    .line 533
    :cond_c
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 534
    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;
    invoke-static {v2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$100(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v2

    .line 533
    invoke-static {v1, v2, p1}, Lcom/huawei/ims/ImsCallProviderUtils;->isVtUpgradeCallType(III)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 536
    const/4 v0, 0x1

    goto :goto_37

    .line 537
    :cond_24
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$100(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    if-ne p1, v1, :cond_32

    .line 538
    const/4 v0, 0x1

    goto :goto_37

    .line 540
    :cond_32
    const-string v1, "here is the else switch"

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 542
    :goto_37
    return v0
.end method

.method private isValidToCallModify(I)Z
    .registers 13
    .param p1, "newCallType"    # I

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidToCallModify newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 292
    .local v0, "currCallType":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_21

    move v3, v1

    goto :goto_22

    :cond_21
    move v3, v2

    .line 297
    .local v3, "isVoiceCallModify":Z
    :goto_22
    const/4 v4, 0x3

    if-ne p1, v4, :cond_29

    if-ne v0, v4, :cond_29

    move v4, v1

    goto :goto_2a

    :cond_29
    move v4, v2

    .line 300
    .local v4, "isVideoCallModify":Z
    :goto_2a
    iget-object v5, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v5

    .line 303
    .local v5, "currentCallState":Lcom/huawei/ims/DriverImsCall$State;
    sget-object v6, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v5, v6, :cond_3b

    sget-object v6, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v5, v6, :cond_39

    goto :goto_3b

    :cond_39
    move v6, v2

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v6, v1

    .line 306
    .local v6, "isVideoRingtoneState":Z
    :goto_3c
    const/4 v7, -0x1

    .line 308
    .local v7, "index":I
    :try_start_3d
    iget-object v8, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v8}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_47} :catch_49

    move v7, v8

    .line 311
    goto :goto_4f

    .line 309
    :catch_49
    move-exception v8

    .line 310
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "isValidToCallModify : NumberFormatException "

    invoke-direct {p0, v9}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 312
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :goto_4f
    if-ltz v7, :cond_53

    move v8, v1

    goto :goto_54

    :cond_53
    move v8, v2

    .line 313
    .local v8, "isIndexValid":Z
    :goto_54
    if-nez v3, :cond_5b

    if-eqz v4, :cond_59

    goto :goto_5b

    :cond_59
    move v9, v2

    goto :goto_5c

    :cond_5b
    :goto_5b
    move v9, v1

    .line 314
    .local v9, "isCallModify":Z
    :goto_5c
    if-eqz v8, :cond_63

    if-eqz v9, :cond_63

    if-eqz v6, :cond_63

    goto :goto_64

    :cond_63
    move v1, v2

    .line 315
    .local v1, "isValid":Z
    :goto_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidToCallModify currCallType= "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " index="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " isVoiceCallModify="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " isVideoCallModify="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " isVideoRingtoneState="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 318
    return v1
.end method

.method private isVtMultiTaskRequest(I)Z
    .registers 3
    .param p1, "callType"    # I

    .line 152
    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 757
    const-string v0, "VideoCall_ImsCallAdapter"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 753
    const-string v0, "VideoCall_ImsCallAdapter"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void
.end method

.method private modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V
    .registers 10
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

    .line 488
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidRilModifyCallType(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallInitiate not a Valid RilCallType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 490
    return-void

    .line 493
    :cond_1b
    new-instance v0, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallDomain()I

    move-result v1

    .line 494
    invoke-static {p3}, Lcom/huawei/ims/ImsCallProfiles;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 495
    .local v0, "destImsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIndex:I

    .line 496
    .local v1, "rilCallIndex":I
    new-instance v2, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v3

    iget-object v4, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 497
    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallDomain()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 498
    .local v2, "currImsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    new-instance v3, Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-direct {v3, v2, v0, v1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;I)V

    .line 501
    .local v3, "callModify":Lcom/huawei/ims/ImsCallAdapter$CallModify;
    iput-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 502
    iget-object v4, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v4, :cond_4c

    .line 503
    invoke-virtual {v4, p1, v3}, Lcom/huawei/ims/ImsRIL;->modifyCallInitiate(Landroid/os/Message;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    .line 505
    :cond_4c
    return-void
.end method

.method private modifyCallUpgradeCancel(Landroid/os/Message;ILjava/util/Map;)V
    .registers 6
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

    .line 515
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallUpgradeCancel, newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 516
    invoke-static {p2}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidRilModifyCallType(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallUpgradeCancel not a Valid RilCallType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 518
    return-void

    .line 520
    :cond_2f
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_38

    .line 521
    iget v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->modifyCallUpgradeCancel(Landroid/os/Message;I)V

    .line 523
    :cond_38
    return-void
.end method

.method private pendingPauseStateToRilCallType()I
    .registers 4

    .line 173
    const/16 v0, 0xa

    .line 174
    .local v0, "rilCallType":I
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallAdapter$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-ne v1, v2, :cond_a

    .line 175
    const/4 v0, 0x4

    goto :goto_29

    .line 176
    :cond_a
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v2, Lcom/huawei/ims/ImsCallAdapter$PauseState;->RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-ne v1, v2, :cond_13

    .line 177
    iget v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPrevVideoCallType:I

    goto :goto_29

    .line 179
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pendingPauseStatetoRilCallType,mPendingVtMultiTask is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 181
    :goto_29
    return v0
.end method

.method private processPendingVtMultiTask()V
    .registers 3

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPendingVtMultitask mPendingVtMultiTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter;->isOldAndNewPauseRequestSame()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 337
    const-string v0, "Old and new Pause Request is Same so clearing Pending VT multiTask"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 338
    sget-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    goto :goto_47

    .line 339
    :cond_26
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-eq v0, v1, :cond_42

    .line 340
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v0, :cond_3c

    .line 341
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter;->pendingPauseStateToRilCallType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->createAndSendMultiTaskRequest(I)V

    .line 342
    sget-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    goto :goto_47

    .line 344
    :cond_3c
    const-string v0, "processPendingVtMultiTask mCallModifyRequest not null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    goto :goto_47

    .line 347
    :cond_42
    const-string v0, "processPendingVtMultiTask:the else switch"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 349
    :goto_47
    return-void
.end method

.method private triggerOrQueueVtMultiTask(I)V
    .registers 4
    .param p1, "callType"    # I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerOrQueueVtMultiTask callType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " conn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x6

    if-ne p1, v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 160
    .local v0, "isPauseRequested":Z
    :goto_22
    if-eqz v0, :cond_27

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->PAUSE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    goto :goto_29

    :cond_27
    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->RESUME:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    :goto_29
    iput-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    .line 161
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v1, :cond_32

    .line 162
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter;->processPendingVtMultiTask()V

    .line 164
    :cond_32
    return-void
.end method

.method private updatePreviousVtCallType()V
    .registers 4

    .line 403
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 404
    .local v0, "callType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 406
    :cond_f
    iput v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPrevVideoCallType:I

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating mPrevVideoCallType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mPrevVideoCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 409
    :cond_27
    return-void
.end method


# virtual methods
.method public acceptConnectionTypeChange(ILjava/util/Map;)V
    .registers 6
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

    .line 552
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Confirming call type change request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCall_ImsCallAdapter"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter;->isValidCallModifyConfirmRequest(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptConnectionTypeChange: MODIFY_CALL_CONFIRM called with invalid calltype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallAdapter;->rejectConnectionTypeChange()V

    .line 557
    return-void

    .line 559
    :cond_36
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-eqz v0, :cond_58

    .line 560
    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$100(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsCallProfiles;->setCallType(I)V

    .line 561
    if-eqz p2, :cond_4c

    .line 562
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$100(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/huawei/ims/ImsCallProfiles;->setExtrasFromMap(Ljava/util/Map;)V

    .line 566
    :cond_4c
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 567
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    .line 569
    :cond_56
    iput-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 572
    :cond_58
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .registers 9
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

    .line 420
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeConnectionType newCallType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 423
    :try_start_14
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mIndex:I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_20} :catch_21

    .line 427
    goto :goto_2a

    .line 424
    :catch_21
    move-exception v0

    .line 425
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v1, "changeConnectionType : NumberFormatException."

    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 426
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIndex:I

    .line 428
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :goto_2a
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsCallAdapter;->isVtMultiTaskRequest(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 430
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsCallAdapter;->triggerOrQueueVtMultiTask(I)V

    goto :goto_99

    .line 435
    :cond_34
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3b

    const/16 v1, 0xa

    goto :goto_3c

    .line 436
    :cond_3b
    const/4 v1, 0x6

    :goto_3c
    nop

    .line 437
    .local v1, "eventType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 440
    .local v2, "newMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v3, :cond_71

    .line 442
    invoke-direct {p0, v2, p2}, Lcom/huawei/ims/ImsCallAdapter;->isSupportModifyConnectionType(Landroid/os/Message;I)Z

    move-result v3

    if-nez v3, :cond_67

    .line 443
    const-string v0, "CallType is invalid!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 444
    return-void

    .line 447
    :cond_67
    if-ne p2, v0, :cond_6d

    .line 448
    invoke-direct {p0, v2, p2, p3}, Lcom/huawei/ims/ImsCallAdapter;->modifyCallUpgradeCancel(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_99

    .line 450
    :cond_6d
    invoke-direct {p0, v2, p2, p3}, Lcom/huawei/ims/ImsCallAdapter;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_99

    .line 454
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending mCallModifyRequest="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VideoCall_ImsCallAdapter"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v0, "Pending mCallModifyRequest so not sending modify request down"

    .line 458
    .local v0, "errorStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 459
    .local v3, "ex":Ljava/lang/RuntimeException;
    if-eqz p1, :cond_99

    .line 460
    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 461
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 465
    .end local v0    # "errorStr":Ljava/lang/String;
    .end local v1    # "eventType":I
    .end local v2    # "newMsg":Landroid/os/Message;
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :cond_99
    :goto_99
    return-void
.end method

.method public clearPendingModify()V
    .registers 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPendingModify imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 357
    return-void
.end method

.method public getHwImsCallSessionImpl()Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v0
.end method

.method public isAvpRetryAllowed()Z
    .registers 2

    .line 365
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsAvpRetryAllowed:Z

    return v0
.end method

.method public isLocallyPaused()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z

    return v0
.end method

.method public onReceivedModifyCall(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .registers 7
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 228
    if-nez p1, :cond_3

    .line 229
    return-void

    .line 231
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedCallModify("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoCall_ImsCallAdapter"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    .line 236
    .local v0, "isModify":Z
    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->isFailToModify()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 237
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-eqz v2, :cond_43

    invoke-virtual {v2, p1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->isSameModify(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 238
    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->isFailToModify()Z

    move-result v2

    if-nez v2, :cond_43

    .line 240
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mError:I
    invoke-static {p1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$000(Lcom/huawei/ims/ImsCallAdapter$CallModify;)I

    move-result v2

    # setter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mError:I
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$002(Lcom/huawei/ims/ImsCallAdapter$CallModify;I)I

    .line 241
    const/4 v0, 0x1

    goto/16 :goto_d3

    .line 243
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Received Request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x0

    goto/16 :goto_d3

    .line 249
    :cond_64
    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;
    invoke-static {p1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$100(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/ImsCallAdapter;->isSupportModifyConnectionType(Landroid/os/Message;I)Z

    move-result v0

    .line 250
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v2, :cond_b0

    .line 251
    if-nez v0, :cond_88

    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;
    invoke-static {p1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$100(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsCallAdapter;->isValidToCallModify(I)Z

    move-result v2

    if-eqz v2, :cond_86

    goto :goto_88

    :cond_86
    const/4 v2, 0x0

    goto :goto_89

    :cond_88
    :goto_88
    const/4 v2, 0x1

    :goto_89
    move v0, v2

    .line 252
    const-string v2, "CallModify received by video ring tone."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v2

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v2, v4, :cond_b0

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_b0

    .line 255
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 256
    const-string v2, "mock call state change, notify CallStateRegistrants!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_b0
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-nez v2, :cond_b7

    .line 260
    iput-object p1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    goto :goto_ce

    .line 262
    :cond_b7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending mCallModifyRequest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    .line 267
    :goto_ce
    if-nez v0, :cond_d3

    .line 269
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallAdapter;->rejectConnectionTypeChange()V

    .line 277
    :cond_d3
    :goto_d3
    if-eqz v0, :cond_da

    .line 278
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyUnsolCallModify(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    .line 281
    :cond_da
    invoke-static {p1}, Lcom/huawei/ims/ImsCallAdapter;->hasError(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 282
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 284
    :cond_e3
    return-void
.end method

.method public rejectConnectionTypeChange()V
    .registers 5

    .line 578
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    const-string v1, "VideoCall_ImsCallAdapter"

    if-nez v0, :cond_c

    .line 579
    const-string v0, "rejectConnectionTypeChange mCallModifyRequest is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void

    .line 582
    :cond_c
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mHwImsCallSessionImpl:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 583
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mCallIndex:I
    invoke-static {v3}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$200(Lcom/huawei/ims/ImsCallAdapter$CallModify;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;I)V

    .line 584
    .local v0, "callModify":Lcom/huawei/ims/ImsCallAdapter$CallModify;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting Change request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " keep as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    .line 586
    invoke-virtual {v1, v2, v0}, Lcom/huawei/ims/ImsRIL;->modifyCallConfirm(Landroid/os/Message;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    .line 588
    :cond_43
    iput-object v2, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 589
    return-void
.end method

.method public requestLteInfo(IILandroid/os/Message;)V
    .registers 5
    .param p1, "enableReport"    # I
    .param p2, "threshold"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 475
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_7

    .line 476
    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/ims/ImsRIL;->requestGetLteInfo(IILandroid/os/Message;)V

    .line 478
    :cond_7
    return-void
.end method

.method public update(Lcom/huawei/ims/DriverImsCall;)V
    .registers 4
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 375
    if-nez p1, :cond_8

    .line 376
    const-string v0, "update, dc is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V

    .line 377
    return-void

    .line 380
    :cond_8
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 382
    iput-boolean v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mIsAvpRetryAllowed:Z

    .line 384
    :cond_17
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 385
    const-string v0, "videocall: update: Not a videocall CASE"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 386
    sget-object v0, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    iput-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    .line 387
    iput v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I

    .line 388
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    :cond_35
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    if-eqz v0, :cond_53

    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 393
    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v0

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;

    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$100(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    if-ne v0, v1, :cond_53

    .line 394
    const-string v0, "videocall update: current call type is same as mCallModifyRequest"

    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 399
    :cond_53
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter;->updatePreviousVtCallType()V

    .line 400
    return-void
.end method
