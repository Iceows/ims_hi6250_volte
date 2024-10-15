.class public Lcom/huawei/ims/ImsServiceCallTracker;
.super Ljava/lang/Object;
.source "ImsServiceCallTracker.java"

# interfaces
.implements Lcom/huawei/ims/HwImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;,
        Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;,
        Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.volte.incoming_call"

.field private static final CALL_MODIFY_RESULT_ARRAY_SIZE:I = 0x2

.field private static final DEFAULT_INCOMING_CALL_SIZE:I = 0x1

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field private static final IS_MT_ENCRYPT_CALL:Ljava/lang/String; = "encrypt_call_flag"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceCallTracker"


# instance fields
.field private final mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mContext:Landroid/content/Context;

.field private mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;

.field private mImsCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/ims/IImsCallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

.field private mIsVtSupportedGlobally:Z

.field private final mPendingSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsRegistrationListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p2, "ci"    # Lcom/huawei/ims/ImsRIL;
    .param p3, "context"    # Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIsVtSupportedGlobally:Z

    .line 116
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 117
    iput-object p2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 118
    iput-object p3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    .line 123
    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v0

    .line 124
    .local v0, "cameraManager":Lcom/huawei/ims/vt/CameraManager;
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtSupported()Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    .line 125
    invoke-direct {p0, v0}, Lcom/huawei/ims/ImsServiceCallTracker;->addListener(Lcom/huawei/ims/IImsCallListListener;)V

    .line 128
    :cond_33
    return-void
.end method

.method private addListener(Lcom/huawei/ims/IImsCallListListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/huawei/ims/IImsCallListListener;

    .line 914
    if-eqz p1, :cond_25

    .line 920
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 921
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 923
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener error: Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->loge(Ljava/lang/String;)V

    .line 925
    :goto_24
    return-void

    .line 915
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createInComingBundle(Ljava/lang/String;ZZLcom/huawei/ims/DriverImsCall$State;I)Landroid/os/Bundle;
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUssd"    # Z
    .param p3, "isUnknown"    # Z
    .param p4, "state"    # Lcom/huawei/ims/DriverImsCall$State;
    .param p5, "isEncrypt"    # I

    .line 1041
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1042
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android:imsCallID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v1, "android:ussd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1044
    const-string v1, "android:isUnknown"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1046
    const-string v1, "encrypt_call_flag"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1048
    return-object v0
.end method

.method private endCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 6
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 481
    if-eqz p1, :cond_84

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSession = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceCallTracker"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v0, Lcom/huawei/ims/DriverImsCall;

    invoke-direct {v0}, Lcom/huawei/ims/DriverImsCall;-><init>()V

    .line 485
    .local v0, "dcEnd":Lcom/huawei/ims/DriverImsCall;
    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    iput-object v1, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 486
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 488
    iget-object v1, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-nez v1, :cond_32

    .line 489
    new-instance v1, Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v1}, Lcom/huawei/ims/ImsCallProfiles;-><init>()V

    iput-object v1, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 492
    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceCallTracker;->log(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 496
    .local v1, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v1, :cond_77

    .line 497
    const-string v2, "oi"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    .line 498
    const-string v2, "cna"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    .line 499
    nop

    .line 500
    const-string v2, "oir"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    .line 501
    const-string v2, "cnap"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 505
    :cond_77
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverImsCall;

    move-result-object v2

    .line 506
    .local v2, "dcSource":Lcom/huawei/ims/DriverImsCall;
    if-eqz v2, :cond_81

    .line 507
    iget v3, v2, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    iput v3, v0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 510
    :cond_81
    invoke-virtual {p1, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverImsCall;)V

    .line 512
    .end local v0    # "dcEnd":Lcom/huawei/ims/DriverImsCall;
    .end local v1    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v2    # "dcSource":Lcom/huawei/ims/DriverImsCall;
    :cond_84
    return-void
.end method

.method private getMptySession()Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 6

    .line 540
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 541
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 542
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 543
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 544
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 545
    .local v3, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 546
    monitor-exit v0

    return-object v3

    .line 548
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v3    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_27
    goto :goto_d

    .line 549
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_28
    monitor-exit v0

    .line 550
    const/4 v0, 0x0

    return-object v0

    .line 549
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private hasIncomingCall(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)Z"
        }
    .end annotation

    .line 469
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 470
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/DriverImsCall;

    .line 471
    .local v1, "dc":Lcom/huawei/ims/DriverImsCall;
    if-eqz v1, :cond_20

    iget-object v3, v1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v4, :cond_20

    .line 472
    const-string v0, "ImsServiceCallTracker"

    const-string v3, "has incoming call"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return v2

    .line 476
    .end local v1    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_20
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1052
    const-string v0, "ImsServiceCallTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 1056
    const-string v0, "ImsServiceCallTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void
.end method

.method private notifyCallAdded(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 5
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 953
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 955
    .local v0, "mImsCallListListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 956
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/IImsCallListListener;

    .line 957
    .local v2, "listener":Lcom/huawei/ims/IImsCallListListener;
    invoke-interface {v2, p1}, Lcom/huawei/ims/IImsCallListListener;->onImsCallSessionAdded(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 959
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/IImsCallListListener;
    :cond_17
    return-void
.end method

.method private notifyCallRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 5
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 985
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 987
    .local v0, "mImsCallListListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 988
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/IImsCallListListener;

    .line 989
    .local v2, "listener":Lcom/huawei/ims/IImsCallListListener;
    invoke-interface {v2, p1}, Lcom/huawei/ims/IImsCallListListener;->onImsCallSessionRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 987
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 991
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/IImsCallListListener;
    :cond_17
    return-void
.end method

.method private processDialingAndIncomingConflict(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 455
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_44

    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->hasIncomingCall(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 456
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 457
    :try_start_d
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 458
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_3a

    .line 459
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 460
    .local v3, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    const-string v4, "ImsServiceCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found incoming call when dialing, end dialing call, session = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceCallTracker;->endCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 458
    .end local v3    # "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 463
    .end local v2    # "i":I
    :cond_3a
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 464
    .end local v1    # "size":I
    monitor-exit v0

    goto :goto_44

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_d .. :try_end_43} :catchall_41

    throw v1

    .line 466
    :cond_44
    :goto_44
    return-void
.end method

.method private processNewCallSession(Lcom/huawei/ims/DriverImsCall;)V
    .registers 12
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "isUnknown":Z
    new-instance v1, Lcom/huawei/ims/HwImsCallSessionImpl;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/huawei/ims/HwImsCallSessionImpl;-><init>(Lcom/huawei/ims/DriverImsCall;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceCallTracker;)V

    .line 346
    .local v1, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v1, p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->addListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V

    .line 347
    iget-boolean v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 348
    iget-boolean v2, p1, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    if-eqz v2, :cond_3b

    .line 350
    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v2, v3, :cond_22

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v2, v3, :cond_38

    .line 352
    :cond_22
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceCallTracker;->reportChrCallIncomming()V

    .line 354
    const-string v2, "ImsServiceCallTracker"

    const-string v3, "MT Call creating a new call session"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget v6, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v9, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    move-object v4, p0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/huawei/ims/ImsServiceCallTracker;->sendIncomingCallIntent(Lcom/huawei/ims/HwImsCallSessionImpl;IZLcom/huawei/ims/DriverImsCall$State;Ljava/lang/String;)V

    .line 387
    :cond_38
    move-object v7, v1

    goto/16 :goto_c5

    .line 358
    :cond_3b
    iget-boolean v2, p1, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    if-eqz v2, :cond_5e

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v2, v3, :cond_5e

    .line 359
    const-string v2, "ImsServiceCallTracker"

    const-string v3, "Conference Call creating a new call session"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceCallTracker;->updateConfSession(Lcom/huawei/ims/HwImsCallSessionImpl;)Z

    move-result v0

    .line 363
    iget v2, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/huawei/ims/ImsServiceCallTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 364
    invoke-virtual {v1, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateConfSession(Lcom/huawei/ims/DriverImsCall;)V

    move-object v7, v1

    goto :goto_c5

    .line 366
    :cond_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MO phantom Call Scenario. State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsServiceCallTracker"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v2, :cond_c3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c3

    .line 369
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 370
    :try_start_83
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 371
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 372
    .local v4, "callSessionImpl":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget v5, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/huawei/ims/ImsServiceCallTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 373
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 374
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v4    # "callSessionImpl":Lcom/huawei/ims/HwImsCallSessionImpl;
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_83 .. :try_end_9c} :catchall_c0

    .line 375
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v3

    .line 376
    :try_start_9f
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    iget v4, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v1, v2

    .line 377
    monitor-exit v3
    :try_end_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_bd

    .line 378
    if-eqz v1, :cond_b4

    .line 379
    invoke-virtual {v1, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverImsCall;)V

    .line 381
    :cond_b4
    const-string v2, "ImsServiceCallTracker"

    const-string v3, "MO phantom Call matched."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v1

    goto :goto_c5

    .line 377
    :catchall_bd
    move-exception v2

    :try_start_be
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v2

    .line 374
    :catchall_c0
    move-exception v3

    :try_start_c1
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v3

    .line 383
    :cond_c3
    const/4 v0, 0x1

    move-object v7, v1

    .line 387
    .end local v1    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .local v7, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :goto_c5
    if-eqz v0, :cond_d8

    .line 388
    iget v3, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v6, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    move-object v1, p0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/ims/ImsServiceCallTracker;->sendIncomingCallIntent(Lcom/huawei/ims/HwImsCallSessionImpl;IZLcom/huawei/ims/DriverImsCall$State;Ljava/lang/String;)V

    .line 390
    if-eqz v7, :cond_d8

    .line 391
    invoke-virtual {v7}, Lcom/huawei/ims/HwImsCallSessionImpl;->registerForRingbackTone()V

    .line 394
    :cond_d8
    return-void
.end method

.method private removeListener(Lcom/huawei/ims/IImsCallListListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/huawei/ims/IImsCallListListener;

    .line 934
    if-eqz p1, :cond_25

    .line 940
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 941
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_24

    .line 943
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->loge(Ljava/lang/String;)V

    .line 945
    :goto_24
    return-void

    .line 935
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeNotPresentCall(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 417
    .local p1, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/huawei/ims/DriverImsCall;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 418
    :try_start_3
    const-string v1, "ImsServiceCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCalls ,mCallList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 420
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 421
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 422
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcMap.get(entry.getValue().getCallId() =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8d

    .line 427
    const-string v3, "ImsServiceCallTracker"

    const-string v4, "end call handle"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceCallTracker;->endCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 438
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceCallTracker;->notifyCallRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 440
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_8d
    goto :goto_25

    .line 441
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_8e
    monitor-exit v0

    .line 442
    return-void

    .line 441
    :catchall_90
    move-exception v1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_90

    throw v1
.end method

.method private reportChrCallIncomming()V
    .registers 6

    .line 446
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_16

    .line 447
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRIL;->getChrReportPhoneId()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "HwIms"

    const-string v4, "ImsServiceCallTracker"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 451
    :cond_16
    return-void
.end method

.method private updateConfSession(Lcom/huawei/ims/HwImsCallSessionImpl;)Z
    .registers 9
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 397
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 398
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 399
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 400
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 401
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 402
    .local v3, "oldSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->isConfInProgress()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 403
    const-string v4, "ImsServiceCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set New Session as Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v3, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->setNewSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 405
    invoke-virtual {v3, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->reportNewConferenceCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 408
    const/4 v4, 0x0

    monitor-exit v0

    return v4

    .line 410
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v3    # "oldSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_48
    goto :goto_d

    .line 411
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_49
    const-string v1, "ImsServiceCallTracker"

    const-string v2, "Phantom conference call Scenario"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 413
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw v1
.end method

.method private updatePendingCallSession()V
    .registers 7

    .line 323
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 324
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 329
    .local v2, "callSessionImpl":Lcom/huawei/ims/HwImsCallSessionImpl;
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found match end call session in temp list, callSessionImpl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 329
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_51

    .line 332
    :try_start_37
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/huawei/ims/ImsServiceCallTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_42} :catch_43
    .catchall {:try_start_37 .. :try_end_42} :catchall_51

    .line 335
    goto :goto_4b

    .line 333
    :catch_43
    move-exception v3

    .line 334
    .local v3, "ex":Ljava/lang/NumberFormatException;
    :try_start_44
    const-string v4, "ImsServiceCallTracker"

    const-string v5, "Invalid call id."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 339
    .end local v2    # "callSessionImpl":Lcom/huawei/ims/HwImsCallSessionImpl;
    goto :goto_9

    .line 340
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_4f
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_51

    throw v1
.end method

.method private updatePendingCallSessionByDriverCall(Lcom/huawei/ims/DriverImsCall;)V
    .registers 8
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 303
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 304
    return-void

    .line 306
    :cond_5
    monitor-enter v0

    .line 307
    :try_start_6
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 308
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 309
    .local v2, "callSessionImpl":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v4, :cond_4a

    .line 311
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found match dialing call session in temp list, callSessionImpl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget v3, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/huawei/ims/ImsServiceCallTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 318
    .end local v2    # "callSessionImpl":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_4a
    goto :goto_c

    .line 319
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_4b
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private updatePendingCallSessionByDriverCsCall(Lcom/huawei/ims/DriverImsCall;)V
    .registers 8
    .param p1, "driverImsCall"    # Lcom/huawei/ims/DriverImsCall;

    .line 1111
    const/4 v0, 0x0

    .line 1112
    .local v0, "callSessionImpl":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1113
    :try_start_4
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1114
    .local v2, "pendingSessionSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_22

    .line 1115
    iget-object v4, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 1116
    .local v4, "pendingSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getHasPendingDisconnect()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1117
    move-object v0, v4

    .line 1118
    goto :goto_22

    .line 1114
    .end local v4    # "pendingSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1121
    .end local v2    # "pendingSessionSize":I
    .end local v3    # "i":I
    :cond_22
    :goto_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_33

    .line 1122
    if-eqz v0, :cond_32

    .line 1123
    invoke-virtual {v0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverImsCall;)V

    .line 1124
    const-string v1, "ImsServiceCallTracker"

    const-string v2, "cs dialing call terminate"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->close()V

    .line 1130
    :cond_32
    return-void

    .line 1121
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method


# virtual methods
.method public addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 968
    if-eqz p1, :cond_36

    if-nez p2, :cond_5

    goto :goto_36

    .line 971
    :cond_5
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 973
    :try_start_8
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 974
    .local v1, "currentCallSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v1, :cond_24

    .line 975
    const-string v2, "ImsServiceCallTracker"

    const-string v3, "Ims dial exception, end phantom call first."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceCallTracker;->endCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 979
    :cond_24
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    nop

    .end local v1    # "currentCallSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_33

    .line 981
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsServiceCallTracker;->notifyCallAdded(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 982
    return-void

    .line 980
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1

    .line 969
    :cond_36
    :goto_36
    return-void
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 10
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 722
    if-nez p1, :cond_9

    .line 723
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "profile is null!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_9
    new-instance v0, Lcom/huawei/ims/HwImsCallSessionImpl;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v6, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object v3, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/huawei/ims/HwImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceCallTracker;)V

    .line 726
    .local v0, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v0, p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->addListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V

    .line 727
    iget-boolean v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 728
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 729
    :try_start_21
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    monitor-exit v1

    .line 731
    return-object v0

    .line 730
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getCallSession(Ljava/lang/String;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 743
    :try_start_4
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v0, v2

    .line 744
    monitor-exit v1

    .line 745
    return-object v0

    .line 744
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v2
.end method

.method getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;
    .registers 8
    .param p1, "state"    # Lcom/huawei/ims/DriverImsCall$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/ims/DriverImsCall$State;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    if-nez p1, :cond_8

    .line 784
    return-object v0

    .line 786
    :cond_8
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 787
    :try_start_b
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 788
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 789
    .local v4, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v5

    if-ne v5, p1, :cond_30

    .line 790
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v4    # "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_30
    goto :goto_15

    .line 793
    :cond_31
    monitor-exit v1

    .line 794
    return-object v0

    .line 793
    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_33

    throw v2
.end method

.method public getFeatureCapabilityListener()Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;
    .registers 2

    .line 1083
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;

    return-object v0
.end method

.method public getPendingSessionList()Ljava/util/ArrayList;
    .registers 2

    .line 1087
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 245
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v0, 0x0

    .line 246
    .local v0, "dcListSize":I
    if-eqz p1, :cond_7

    .line 247
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 249
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 250
    .local v1, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_61

    .line 251
    const/4 v3, 0x0

    .line 252
    .local v3, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/DriverImsCall;

    .line 253
    .local v4, "dc":Lcom/huawei/ims/DriverImsCall;
    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsServiceCallTracker;->updatePendingCallSessionByDriverCall(Lcom/huawei/ims/DriverImsCall;)V

    .line 254
    iget-object v5, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v5

    .line 255
    :try_start_1c
    iget-object v6, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    iget v7, v4, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v3, v6

    .line 256
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_5e

    .line 259
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->isHangup()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 260
    const-string v5, "ImsServiceCallTracker"

    const-string v6, "Hangup exception"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v3, 0x0

    .line 265
    :cond_3c
    if-eqz v3, :cond_42

    .line 269
    invoke-virtual {v3, v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverImsCall;)V

    goto :goto_4c

    .line 271
    :cond_42
    iget-object v5, v4, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v6, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v5, v6, :cond_49

    .line 274
    goto :goto_5b

    .line 276
    :cond_49
    invoke-direct {p0, v4}, Lcom/huawei/ims/ImsServiceCallTracker;->processNewCallSession(Lcom/huawei/ims/DriverImsCall;)V

    .line 280
    :goto_4c
    iget-object v5, v4, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v6, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v5, v6, :cond_5b

    .line 281
    iget v5, v4, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v3    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .end local v4    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 256
    .restart local v3    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .restart local v4    # "dc":Lcom/huawei/ims/DriverImsCall;
    :catchall_5e
    move-exception v6

    :try_start_5f
    monitor-exit v5
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v6

    .line 291
    .end local v2    # "i":I
    .end local v3    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .end local v4    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_61
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v2, :cond_70

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_70

    .line 292
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceCallTracker;->updatePendingCallSession()V

    .line 297
    :cond_70
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->processDialingAndIncomingConflict(Ljava/util/ArrayList;)V

    .line 299
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceCallTracker;->removeNotPresentCall(Ljava/util/Map;)V

    .line 300
    return-void
.end method

.method public handleHandover(Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;)V
    .registers 15
    .param p1, "handover"    # Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;

    .line 876
    if-nez p1, :cond_3

    .line 877
    return-void

    .line 879
    :cond_3
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "in handleHandover"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    new-instance v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;

    invoke-direct {v0}, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;-><init>()V

    .line 881
    .local v0, "response":Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;
    iget v1, p1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    iput v1, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    .line 882
    iget v1, p1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    iput v1, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    .line 883
    iget v1, p1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    iput v1, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    .line 884
    iget-object v1, p1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 885
    iget-object v1, p1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " srcTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tarTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extraType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsServiceCallTracker"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 890
    :try_start_66
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 891
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 892
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 893
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    const/4 v4, 0x0

    .line 894
    .local v4, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/huawei/ims/HwImsCallSessionImpl;

    if-eqz v5, :cond_8e

    .line 895
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v4, v5

    move-object v12, v4

    goto :goto_8f

    .line 894
    :cond_8e
    move-object v12, v4

    .line 897
    .end local v4    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .local v12, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :goto_8f
    if-eqz v12, :cond_a4

    .line 898
    iget v5, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    iget v6, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    iget v7, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    iget v8, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraType:I

    iget-object v9, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraInfo:[B

    iget-object v10, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    iget-object v11, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    move-object v4, v12

    invoke-virtual/range {v4 .. v11}, Lcom/huawei/ims/HwImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_ab

    .line 901
    :cond_a4
    const-string v4, "ImsServiceCallTracker"

    const-string v5, "No more call sessions found"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v12    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :goto_ab
    goto :goto_70

    .line 904
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_ac
    monitor-exit v1

    .line 905
    return-void

    .line 904
    :catchall_ae
    move-exception v2

    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_66 .. :try_end_b0} :catchall_ae

    throw v2
.end method

.method public handleModifyCallRequest(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .registers 6
    .param p1, "cm"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 650
    if-eqz p1, :cond_2b

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 653
    :try_start_6
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->getCallIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v0, v2

    .line 654
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_28

    .line 655
    if-eqz v0, :cond_22

    .line 656
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallAdapter;->onReceivedModifyCall(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    goto :goto_27

    .line 658
    :cond_22
    const-string v1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceCallTracker;->loge(Ljava/lang/String;)V

    .line 660
    .end local v0    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :goto_27
    goto :goto_30

    .line 654
    .restart local v0    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    .line 661
    .end local v0    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_2b
    const-string v0, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->loge(Ljava/lang/String;)V

    .line 663
    :goto_30
    return-void
.end method

.method public handleModifyCallResult([I)V
    .registers 7
    .param p1, "modifyResult"    # [I

    .line 672
    if-eqz p1, :cond_7f

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto/16 :goto_7f

    .line 677
    :cond_8
    const/4 v0, 0x0

    .line 678
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 679
    :try_start_c
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v0, v2

    .line 680
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_7c

    .line 682
    if-nez v0, :cond_27

    .line 683
    const-string v1, "ImsServiceCallTracker"

    const-string v2, "handleModifyCallResult error: callsession is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void

    .line 687
    :cond_27
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getState()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_36

    .line 688
    const-string v1, "ImsServiceCallTracker"

    const-string v2, "handleModifyCallResult error: callsession State.INVALID"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void

    .line 691
    :cond_36
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v1

    .line 694
    .local v1, "currentCallState":Lcom/huawei/ims/DriverImsCall$State;
    const/4 v2, 0x1

    aget v3, p1, v2

    if-eqz v3, :cond_4e

    .line 695
    const-string v3, "ImsServiceCallTracker"

    const-string v4, "modify failed!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    goto :goto_70

    .line 699
    :cond_4e
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v3, :cond_69

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v1, v3, :cond_5a

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v1, v3, :cond_69

    .line 701
    :cond_5a
    const-string v3, "ImsServiceCallTracker"

    const-string v4, "ims video ring tones, clear pendingModify!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    goto :goto_70

    .line 704
    :cond_69
    const-string v3, "ImsServiceCallTracker"

    const-string v4, "handleModifyCallResult error branch."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_70
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsVtCallProviderImpl()Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    move-result-object v3

    .line 709
    .local v3, "imsVideoCallProviderImpl":Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    if-eqz v3, :cond_7b

    .line 710
    aget v2, p1, v2

    invoke-virtual {v3, v2}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->handleModifyCallResult(I)V

    .line 713
    :cond_7b
    return-void

    .line 680
    .end local v1    # "currentCallState":Lcom/huawei/ims/DriverImsCall$State;
    .end local v3    # "imsVideoCallProviderImpl":Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    :catchall_7c
    move-exception v2

    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v2

    .line 673
    .end local v0    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_7f
    :goto_7f
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "invalid params when handleModifyCallResult"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void
.end method

.method public handleOnHoldTone(Z)V
    .registers 7
    .param p1, "isOnHoldLocalTone"    # Z

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnHoldTone isOnHoldLocalTone= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceCallTracker"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x0

    .line 849
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    if-nez v1, :cond_1c

    .line 850
    return-void

    .line 853
    :cond_1c
    monitor-enter v1

    .line 854
    :try_start_1d
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 855
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 856
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 857
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 858
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v0, v4

    .line 859
    invoke-virtual {v0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->handleOnHoldTone(Z)V

    .line 860
    goto :goto_45

    .line 862
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_44
    goto :goto_27

    .line 863
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_45
    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1d .. :try_end_46} :catchall_50

    .line 864
    if-nez v0, :cond_4f

    .line 865
    const-string v1, "ImsServiceCallTracker"

    const-string v2, "No call session found for number: "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_4f
    return-void

    .line 863
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method

.method public handleSuppSvcUnsol(Lcom/huawei/ims/HwImsSuppServiceNotification;)V
    .registers 14
    .param p1, "info"    # Lcom/huawei/ims/HwImsSuppServiceNotification;

    .line 804
    if-nez p1, :cond_a

    .line 805
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "handleSuppSvcUnsol info == null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    return-void

    .line 808
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSuppSvcUnsol callId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsSuppServiceNotification;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceCallTracker"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 810
    :try_start_27
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsSuppServiceNotification;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 814
    .local v1, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    const/4 v2, 0x1

    if-nez v1, :cond_63

    iget v3, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    if-ne v3, v2, :cond_63

    .line 815
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 816
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 817
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 818
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 819
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v1, v5

    .line 820
    goto :goto_63

    .line 822
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_62
    goto :goto_48

    .line 825
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_63
    :goto_63
    if-eqz v1, :cond_9f

    .line 826
    const/4 v3, 0x0

    .line 827
    .local v3, "isOnHoldLocalTone":Z
    new-instance v11, Landroid/telephony/ims/ImsSuppServiceNotification;

    iget v5, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    iget v6, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->code:I

    iget v7, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->index:I

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v4, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    aput-object v4, v10, v2

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    move-object v2, v11

    .line 830
    .local v2, "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    const-string v4, "ImsServiceCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isOnHoldLocalTone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V

    .line 833
    .end local v2    # "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    .end local v3    # "isOnHoldLocalTone":Z
    goto :goto_a6

    .line 834
    :cond_9f
    const-string v2, "ImsServiceCallTracker"

    const-string v3, "No call session found for number: "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .end local v1    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :goto_a6
    monitor-exit v0

    .line 837
    return-void

    .line 836
    :catchall_a8
    move-exception v1

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_27 .. :try_end_aa} :catchall_a8

    throw v1
.end method

.method public handleTtyModeChangeUnsol(I)V
    .registers 8
    .param p1, "mode"    # I

    .line 754
    const/4 v0, 0x0

    .line 757
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 758
    :try_start_4
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 759
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 760
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 763
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_32

    .line 764
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v0, v4

    .line 765
    invoke-virtual {v0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyTtyModeChange(I)V

    .line 766
    goto :goto_33

    .line 768
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_32
    goto :goto_e

    .line 769
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_33
    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3e

    .line 770
    if-nez v0, :cond_3d

    .line 771
    const-string v1, "ImsServiceCallTracker"

    const-string v2, "No Active call session found for TTY mode change"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_3d
    return-void

    .line 769
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method

.method public haveCall()Z
    .registers 4

    .line 1000
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 1003
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1b

    .line 1004
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v2, 0x1

    :cond_19
    monitor-exit v0

    return v2

    .line 1006
    :cond_1b
    monitor-exit v0

    .line 1007
    return v2

    .line 1006
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public onCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .registers 3
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isMtHold"    # Z

    .line 616
    return-void
.end method

.method public onCallSessionMerged()V
    .registers 1

    .line 642
    return-void
.end method

.method public onCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .registers 3
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "isMtResume"    # Z

    .line 626
    return-void
.end method

.method public onCallSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 2
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 635
    return-void
.end method

.method public onClosed(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 8
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceCallTracker"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    if-nez p1, :cond_19

    .line 561
    return-void

    .line 565
    :cond_19
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    if-eqz v0, :cond_b2

    .line 566
    monitor-enter v0

    .line 567
    :try_start_1e
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 568
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 569
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 570
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " session is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_ab

    .line 573
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing session on close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v3

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v4, :cond_9f

    .line 575
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverImsCall;

    move-result-object v3

    .line 576
    .local v3, "dcEnd":Lcom/huawei/ims/DriverImsCall;
    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    iput-object v4, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v5}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceCallTracker;->log(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1, v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverImsCall;)V

    .line 580
    .end local v3    # "dcEnd":Lcom/huawei/ims/DriverImsCall;
    :cond_9f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 581
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceCallTracker;->notifyCallRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 583
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_ab
    goto/16 :goto_28

    .line 584
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_ad
    monitor-exit v0

    goto :goto_b2

    :catchall_af
    move-exception v1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_1e .. :try_end_b1} :catchall_af

    throw v1

    .line 588
    :cond_b2
    :goto_b2
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_ed

    .line 589
    monitor-enter v0

    .line 590
    :try_start_b7
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :goto_bd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 592
    .local v2, "callSessionImpl":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-ne v2, p1, :cond_e7

    .line 594
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing session on close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 596
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceCallTracker;->notifyCallRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 598
    .end local v2    # "callSessionImpl":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_e7
    goto :goto_bd

    .line 599
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_e8
    monitor-exit v0

    goto :goto_ed

    :catchall_ea
    move-exception v1

    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_b7 .. :try_end_ec} :catchall_ea

    throw v1

    .line 601
    :cond_ed
    :goto_ed
    return-void
.end method

.method public onDisconnected(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 2
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 555
    return-void
.end method

.method public onNotifyCallResumed()V
    .registers 3

    .line 518
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "onNotifyCallResumed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceCallTracker;->getMptySession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    .line 520
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v0, :cond_18

    iget-boolean v1, v0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v1, :cond_18

    .line 521
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, v0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->invokeCallResume(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    .line 523
    :cond_18
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsServiceCallTracker;->setConfInProgress(Z)V

    .line 524
    return-void
.end method

.method public onUnsolCallModify(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .registers 3
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 605
    return-void
.end method

.method public processPendingSessionList(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 1097
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    if-nez p1, :cond_3

    .line 1098
    return-void

    .line 1100
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1101
    .local v0, "dcListSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_1f

    .line 1102
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/DriverImsCall;

    .line 1103
    .local v2, "driverImsCall":Lcom/huawei/ims/DriverImsCall;
    if-eqz v2, :cond_1c

    iget-object v3, v2, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v4, :cond_1c

    .line 1104
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceCallTracker;->updatePendingCallSessionByDriverCsCall(Lcom/huawei/ims/DriverImsCall;)V

    .line 1105
    goto :goto_1f

    .line 1101
    .end local v2    # "driverImsCall":Lcom/huawei/ims/DriverImsCall;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1108
    .end local v1    # "i":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method public sendIncomingCallIntent(Lcom/huawei/ims/HwImsCallSessionImpl;IZLcom/huawei/ims/DriverImsCall$State;Ljava/lang/String;)V
    .registers 13
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z
    .param p4, "state"    # Lcom/huawei/ims/DriverImsCall$State;
    .param p5, "number"    # Ljava/lang/String;

    .line 1021
    const-string v0, "ImsServiceCallTracker"

    if-nez p1, :cond_a

    .line 1022
    const-string v1, "call session is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return-void

    .line 1025
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIncomingCallIntent, mIncomingCallListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    if-nez v0, :cond_25

    .line 1027
    return-void

    .line 1031
    :cond_25
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverImsCall;

    move-result-object v0

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_35

    :cond_2d
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverImsCall;

    move-result-object v0

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v0, Lcom/huawei/ims/ImsCallProfiles;->isEncrypt:I

    .line 1032
    .local v0, "encryptFlag":I
    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createIncomingCallIntent encrypt flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceCallTracker;->log(Ljava/lang/String;)V

    .line 1034
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/huawei/ims/ImsServiceCallTracker;->createInComingBundle(Ljava/lang/String;ZZLcom/huawei/ims/DriverImsCall$State;I)Landroid/os/Bundle;

    move-result-object v1

    .line 1035
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    invoke-interface {v2, p1, v1}, Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 1036
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 1037
    return-void
.end method

.method public setConfInProgress(Z)V
    .registers 4
    .param p1, "isConfInProgress"    # Z

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfInProgress value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceCallTracker"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceCallTracker;->getMptySession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    .line 534
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v0, :cond_1e

    .line 535
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 537
    :cond_1e
    return-void
.end method

.method public setFeatureCapabilityListener(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;

    .line 1074
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapabilityListener;

    .line 1075
    return-void
.end method

.method public setIncomingCallListener(Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    .line 1065
    iput-object p1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    .line 1066
    return-void
.end method

.method public updateVtCapability(Z)V
    .registers 6
    .param p1, "isVtEnabled"    # Z

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVtCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->log(Ljava/lang/String;)V

    .line 229
    iput-boolean p1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIsVtSupportedGlobally:Z

    .line 230
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 231
    :try_start_19
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 232
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 233
    .local v3, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v3, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 234
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v3    # "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    goto :goto_23

    .line 235
    :cond_39
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_19 .. :try_end_3d} :catchall_3b

    throw v1
.end method
