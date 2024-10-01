.class public Lcom/huawei/ims/ImsCallSessionListenerProxy;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionListenerProxy"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field public mListener:Landroid/telephony/ims/ImsCallSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "Constructor: start handler thread for callbacks."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsCallSessionListenerProxy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->handleError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 39
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->cleanup()V

    return-void
.end method

.method private static checkAccessPermission()V
    .locals 3

    .line 513
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 514
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :cond_1
    :goto_0
    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 487
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 492
    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 494
    :cond_0
    return-void
.end method

.method private handleError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .line 505
    const-string v0, "ImsCallSessionListenerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 440
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 441
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 439
    return-void
.end method

.method public callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 455
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 457
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$19;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$19;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsConferenceState;)V

    .line 469
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 471
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionDeflectFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 221
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 223
    return-void
.end method

.method public callSessionDeflected()V
    .locals 0

    .line 216
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 218
    return-void
.end method

.method public callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 155
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 157
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 170
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 172
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 175
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 177
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 189
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 191
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 230
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 232
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$9;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$9;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 243
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 245
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 248
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 250
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$10;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$10;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 261
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 263
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 266
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 268
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$11;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$11;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 279
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 281
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered()V
    .locals 0

    .line 446
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 447
    return-void
.end method

.method public callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 1
    .param p1, "newSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 369
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 371
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$16;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$16;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    .line 383
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 385
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 394
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 396
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 397
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$17;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$17;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 408
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 410
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 345
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 347
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 359
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 361
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionMultipartyStateChanged(Z)V
    .locals 0
    .param p1, "isMultiParty"    # Z

    .line 510
    return-void
.end method

.method public callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 74
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 77
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 89
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 91
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered()V
    .locals 0

    .line 448
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 449
    return-void
.end method

.method public callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 302
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 304
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$13;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$13;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 315
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 317
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 320
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 322
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$14;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$14;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 333
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 335
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 284
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 286
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$12;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$12;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 297
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 299
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 56
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 58
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 69
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 71
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionStarted(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 94
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 97
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$3;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 109
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 111
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 1
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 138
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$5;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 149
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 152
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 114
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 116
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 128
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 130
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(I)V
    .locals 1
    .param p1, "ttyMode"    # I

    .line 194
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 196
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;I)V

    .line 208
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 210
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 433
    return-void
.end method

.method public callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 434
    return-void
.end method

.method public callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 416
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 418
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$18;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$18;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 429
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 431
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(ILjava/lang/String;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 134
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 474
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 477
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V

    .line 483
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method

.method postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 497
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "posting to handler"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    :cond_0
    return-void
.end method
