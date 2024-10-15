.class public Lcom/huawei/ims/ImsCallSessionListenerProxy;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionListenerProxy"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mListener:Landroid/telephony/ims/ImsCallSessionListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "Constructor: start handler thread for callbacks."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/ImsCallSessionListenerProxy;)Landroid/telephony/ims/ImsCallSessionListener;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 28
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 28
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->cleanup()V

    return-void
.end method

.method private static checkAccessPermission()V
    .registers 3

    .line 590
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 591
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_15

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 595
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :cond_15
    :goto_15
    return-void
.end method

.method private cleanup()V
    .registers 3

    .line 563
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_13

    .line 566
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 568
    iput-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    .line 570
    :cond_13
    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 481
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionConferenceExtendFailed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 491
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionConferenceExtendReceived"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 472
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionConferenceExtended"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-void
.end method

.method public callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .registers 3
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 532
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 534
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 535
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$19;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$19;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsConferenceState;)V

    .line 542
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 544
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionDeflectFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 242
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 243
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionDeflectFailed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method public callSessionDeflected()V
    .registers 3

    .line 232
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 233
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionDeflected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 167
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 169
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 170
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsCallSessionListenerProxy$6;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 177
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 179
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 190
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 192
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 193
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/ims/ImsCallSessionListenerProxy$7;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 200
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 202
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 255
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 257
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 258
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$9;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$9;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 264
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 266
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 274
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 276
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 277
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$10;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$10;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 283
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 285
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 293
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 295
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 296
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$11;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$11;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 302
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 304
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered()V
    .registers 3

    .line 498
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionInviteParticipantsRequestDelivered"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 507
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionInviteParticipantsRequestFailed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method public callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .registers 3
    .param p1, "newSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 391
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 393
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 394
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$16;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$16;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    .line 401
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 403
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 411
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 413
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 414
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$17;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$17;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 421
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 423
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 371
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 373
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 374
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy$15;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 381
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 383
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionMultipartyStateChanged(Z)V
    .registers 4
    .param p1, "isMultiParty"    # Z

    .line 586
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionMultipartyStateChanged enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method

.method public callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 73
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 75
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 76
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$2;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 83
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 85
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered()V
    .registers 3

    .line 514
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionRemoveParticipantsRequestDelivered"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 523
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionRemoveParticipantsRequestFailed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method public callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 332
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 334
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 335
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$13;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$13;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 341
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 343
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 351
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 353
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 354
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$14;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$14;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 360
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 362
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 313
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 315
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 316
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$12;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$12;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 322
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 324
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionStartFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 53
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 55
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 56
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$1;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 62
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 64
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionStarted(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 93
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 95
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 96
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$3;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 103
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 105
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 3
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 146
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_c

    .line 147
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$5;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    .line 153
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 156
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_c
    return-void
.end method

.method public callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 113
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 115
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 116
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$4;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 123
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 125
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionTtyModeReceived(I)V
    .registers 3
    .param p1, "ttyMode"    # I

    .line 214
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 216
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 217
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$8;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;I)V

    .line 224
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 226
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 4
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 450
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionUpdateFailed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void
.end method

.method public callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 459
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionUpdateReceived"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void
.end method

.method public callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 431
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 433
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_f

    .line 434
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$18;

    invoke-direct {v0, p0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy$18;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/ImsCallProfile;)V

    .line 440
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 442
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_f
    return-void
.end method

.method public callSessionUssdMessageReceived(ILjava/lang/String;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 136
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "callSessionUssdMessageReceived()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 550
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->checkAccessPermission()V

    .line 553
    new-instance v0, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;

    invoke-direct {v0, p0}, Lcom/huawei/ims/ImsCallSessionListenerProxy$20;-><init>(Lcom/huawei/ims/ImsCallSessionListenerProxy;)V

    .line 559
    .local v0, "runner":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->postRunnable(Ljava/lang/Runnable;)V

    .line 560
    return-void
.end method

.method postRunnable(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runner"    # Ljava/lang/Runnable;

    .line 573
    const-string v0, "ImsCallSessionListenerProxy"

    const-string v1, "posting to handler"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 576
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    :cond_e
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 599
    iput-object p1, p0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 600
    return-void
.end method
