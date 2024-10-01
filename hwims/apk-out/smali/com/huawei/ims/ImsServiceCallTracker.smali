.class public Lcom/huawei/ims/ImsServiceCallTracker;
.super Ljava/lang/Object;
.source "ImsServiceCallTracker.java"

# interfaces
.implements Lcom/huawei/ims/HwImsCallSessionImpl$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;,
        Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;,
        Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.volte.incoming_call"

.field public static final CONF_URI_DC_NUMBER:Ljava/lang/String; = "Conference Call"

.field private static final DEFAULT_INCOMING_CALL_SIZE:I = 0x1

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceCallTracker"

.field private static currentMaxServiceId:I


# instance fields
.field private mCallList:Ljava/util/Map;
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

.field public mFeatureCapabilityListener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

.field private mImsCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/ims/IImsCallListListener;",
            ">;"
        }
    .end annotation
.end field

.field public mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

.field private mIsVtSupportedGlobally:Z

.field private mPendingSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mServiceClass:I

.field private mServiceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    sput v0, Lcom/huawei/ims/ImsServiceCallTracker;->currentMaxServiceId:I

    return-void
.end method

.method public constructor <init>(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;)V
    .locals 2
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p3, "ci"    # Lcom/huawei/ims/ImsRIL;
    .param p4, "context"    # Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIsVtSupportedGlobally:Z

    .line 106
    iput p1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mServiceClass:I

    .line 107
    iput-object p2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mRegListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 108
    invoke-static {}, Lcom/huawei/ims/ImsServiceCallTracker;->createServiceId()I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mServiceId:I

    .line 109
    iput-object p3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 110
    iput-object p4, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    .line 115
    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v0

    .line 116
    .local v0, "cameraManager":Lcom/huawei/ims/vt/CameraManager;
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/huawei/ims/ImsServiceCallTracker;->addListener(Lcom/huawei/ims/IImsCallListListener;)V

    .line 120
    :cond_0
    return-void
.end method

.method private createInComingBundle(Ljava/lang/String;ZZLcom/huawei/ims/DriverImsCall$State;)Landroid/os/Bundle;
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isUssd"    # Z
    .param p3, "isUnknown"    # Z
    .param p4, "state"    # Lcom/huawei/ims/DriverImsCall$State;

    .line 885
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 886
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android:imsCallID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v1, "android:ussd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 888
    const-string v1, "android:isUnknown"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 889
    return-object v0
.end method

.method private static createServiceId()I
    .locals 1

    .line 152
    sget v0, Lcom/huawei/ims/ImsServiceCallTracker;->currentMaxServiceId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/ims/ImsServiceCallTracker;->currentMaxServiceId:I

    return v0
.end method

.method private endCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 4
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 394
    if-eqz p1, :cond_3

    .line 395
    const-string v0, "ImsServiceCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Lcom/huawei/ims/DriverImsCall;

    invoke-direct {v0}, Lcom/huawei/ims/DriverImsCall;-><init>()V

    .line 398
    .local v0, "dc_end":Lcom/huawei/ims/DriverImsCall;
    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    iput-object v1, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 399
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 401
    iget-object v1, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-nez v1, :cond_0

    .line 402
    new-instance v1, Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v1}, Lcom/huawei/ims/ImsCallProfiles;-><init>()V

    iput-object v1, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 405
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call_type  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v2, v2, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceCallTracker;->log(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 409
    .local v1, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v1, :cond_1

    .line 410
    const-string v2, "oi"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    .line 411
    const-string v2, "cna"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    .line 412
    const-string v2, "oir"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    .line 413
    const-string v2, "cnap"

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 417
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverImsCall;

    move-result-object v2

    .line 418
    .local v2, "dc_source":Lcom/huawei/ims/DriverImsCall;
    if-eqz v2, :cond_2

    .line 419
    iget v3, v2, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    iput v3, v0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 422
    :cond_2
    invoke-virtual {p1, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverImsCall;)V

    .line 424
    .end local v0    # "dc_end":Lcom/huawei/ims/DriverImsCall;
    .end local v1    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v2    # "dc_source":Lcom/huawei/ims/DriverImsCall;
    :cond_3
    return-void
.end method

.method private getMptySession()Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 5

    .line 445
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 448
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 449
    .local v3, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    monitor-exit v0

    return-object v3

    .line 452
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v3    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 453
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_1
    monitor-exit v0

    .line 454
    const/4 v0, 0x0

    return-object v0

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasIncomingCall(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)Z"
        }
    .end annotation

    .line 380
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 381
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/DriverImsCall;

    .line 382
    .local v1, "dc":Lcom/huawei/ims/DriverImsCall;
    if-eqz v1, :cond_0

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v4, v1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v4, :cond_0

    .line 383
    const-string v0, "ImsServiceCallTracker"

    const-string v3, "has incoming call"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return v2

    .line 388
    .end local v1    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 893
    const-string v0, "ImsServiceCallTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 897
    const-string v0, "ImsServiceCallTracker"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    return-void
.end method

.method private notifyCallAdded(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 828
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 830
    .local v0, "mImsCallListListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 831
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/IImsCallListListener;

    .line 832
    .local v2, "listener":Lcom/huawei/ims/IImsCallListListener;
    invoke-interface {v2, p1}, Lcom/huawei/ims/IImsCallListListener;->onImsCallSessionAdded(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 830
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/IImsCallListListener;
    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 851
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 853
    .local v0, "mImsCallListListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 854
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/IImsCallListListener;

    .line 855
    .local v2, "listener":Lcom/huawei/ims/IImsCallListListener;
    invoke-interface {v2, p1}, Lcom/huawei/ims/IImsCallListListener;->onImsCallSessionRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/IImsCallListListener;
    :cond_0
    return-void
.end method

.method private processDialingAndIncomingConflict(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .line 366
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->hasIncomingCall(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 369
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 370
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 371
    .local v3, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    const-string v4, "ImsServiceCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found incoming call when dialing, end dialing call, session = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceCallTracker;->endCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 369
    .end local v3    # "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 375
    .end local v1    # "size":I
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 377
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 837
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 840
    .local v1, "current_callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v1, :cond_0

    .line 841
    const-string v2, "ImsServiceCallTracker"

    const-string v3, "Ims dial exception, end phantom call first."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-direct {p0, v1}, Lcom/huawei/ims/ImsServiceCallTracker;->endCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 845
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    .end local v1    # "current_callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    invoke-direct {p0, p2}, Lcom/huawei/ims/ImsServiceCallTracker;->notifyCallAdded(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 848
    return-void

    .line 846
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method addListener(Lcom/huawei/ims/IImsCallListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/IImsCallListListener;

    .line 795
    if-eqz p1, :cond_1

    .line 801
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 804
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener error: Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->loge(Ljava/lang/String;)V

    .line 806
    :goto_0
    return-void

    .line 796
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 7
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 594
    new-instance v6, Lcom/huawei/ims/HwImsCallSessionImpl;

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/huawei/ims/HwImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceCallTracker;)V

    .line 595
    .local v0, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v0, p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->addListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V

    .line 596
    iget-boolean v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 597
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 598
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    monitor-exit v1

    .line 600
    return-object v0

    .line 599
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public findSessionByMediaId(I)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 5
    .param p1, "mediaId"    # I

    .line 679
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 681
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 682
    .local v3, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->getMediaId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 683
    monitor-exit v0

    return-object v3

    .line 685
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v3    # "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 686
    :cond_1
    monitor-exit v0

    .line 687
    const/4 v0, 0x0

    return-object v0

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallSession(Ljava/lang/String;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 611
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v0, v2

    .line 612
    monitor-exit v1

    .line 613
    return-object v0

    .line 612
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getCallSessionByState(Lcom/huawei/ims/DriverImsCall$State;)Ljava/util/List;
    .locals 6
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

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    if-nez p1, :cond_0

    .line 658
    return-object v0

    .line 660
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 661
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 662
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 663
    .local v4, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 664
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v4    # "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_1
    goto :goto_0

    .line 667
    :cond_2
    monitor-exit v1

    .line 670
    return-object v0

    .line 667
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getServiceClass()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mServiceClass:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mServiceId:I

    return v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/DriverImsCall;",
            ">;)V"
        }
    .end annotation

    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    move-object v7, p0

    .line 189
    move-object/from16 v8, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 194
    .local v9, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v0, 0x0

    .line 195
    .local v0, "dcListSize":I
    if-eqz v8, :cond_0

    .line 196
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 198
    .end local v0    # "dcListSize":I
    .local v10, "dcListSize":I
    :cond_0
    move v10, v0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    if-ge v11, v10, :cond_12

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/huawei/ims/DriverImsCall;

    .line 202
    .local v12, "dc":Lcom/huawei/ims/DriverImsCall;
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_1

    iget-boolean v0, v12, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    if-eqz v0, :cond_1

    iget-object v0, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v2, :cond_1

    .line 203
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    const-string v2, "HwIms"

    iget-object v3, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "ImsRadioResponse"

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 209
    :cond_1
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 210
    iget-object v2, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 211
    :try_start_0
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 212
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 214
    .local v3, "s":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v4, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v4, v5, :cond_2

    .line 217
    const-string v4, "ImsServiceCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found match dialing call session in temp list, s = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v4, "ImsServiceCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index in call list is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget v4, v12, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4, v3}, Lcom/huawei/ims/ImsServiceCallTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 221
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 223
    .end local v3    # "s":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_2
    goto :goto_1

    .line 224
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_3
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 226
    :cond_4
    :goto_2
    iget-object v2, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 227
    :try_start_1
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    iget v3, v12, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v1, v0

    .line 228
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 229
    if-eqz v1, :cond_5

    .line 233
    invoke-virtual {v1, v12}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverImsCall;)V

    .line 312
    move-object v14, v1

    goto/16 :goto_7

    .line 235
    :cond_5
    const/4 v13, 0x0

    .line 236
    .local v13, "isUnknown":Z
    iget-object v0, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v2, :cond_6

    .line 239
    goto/16 :goto_8

    .line 241
    :cond_6
    new-instance v0, Lcom/huawei/ims/HwImsCallSessionImpl;

    iget-object v2, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v12, v2, v3, v7}, Lcom/huawei/ims/HwImsCallSessionImpl;-><init>(Lcom/huawei/ims/DriverImsCall;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceCallTracker;)V

    move-object v14, v0

    .line 242
    .end local v1    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .local v14, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v14, v7}, Lcom/huawei/ims/HwImsCallSessionImpl;->addListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V

    .line 243
    iget-boolean v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mIsVtSupportedGlobally:Z

    invoke-virtual {v14, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 244
    iget-boolean v0, v12, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_7

    iget-object v0, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v1, :cond_f

    .line 249
    :cond_7
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_8

    .line 250
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    const-string v1, "HwIms"

    iget-object v2, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 251
    invoke-virtual {v2}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v2

    const-string v3, "ImsServiceCallTracker"

    .line 250
    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 256
    :cond_8
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "MT Call creating a new call session"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v3, v12, Lcom/huawei/ims/DriverImsCall;->index:I

    const/4 v4, 0x0

    iget-object v5, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v6, v12, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    move-object v1, v7

    move-object v2, v14

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/ims/ImsServiceCallTracker;->sendIncomingCallIntent(Lcom/huawei/ims/HwImsCallSessionImpl;IZLcom/huawei/ims/DriverImsCall$State;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 260
    :cond_9
    iget-boolean v0, v12, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    if-eqz v0, :cond_c

    iget-object v0, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v1, :cond_c

    .line 261
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "Conference Call creating a new call session"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v1, 0x1

    .line 264
    .end local v13    # "isUnknown":Z
    .local v1, "isUnknown":Z
    iget-object v2, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 265
    :try_start_2
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    .line 266
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 268
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 269
    .local v4, "oldSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->isConfInProgress()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 270
    const-string v5, "ImsServiceCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Set New Session as Id "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v4, v14}, Lcom/huawei/ims/HwImsCallSessionImpl;->setNewSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 272
    invoke-virtual {v4, v14}, Lcom/huawei/ims/HwImsCallSessionImpl;->reportNewConferenceCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 274
    const/4 v1, 0x0

    .line 275
    goto :goto_4

    .line 277
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v4    # "oldSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_a
    goto :goto_3

    .line 278
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    .end local v1    # "isUnknown":Z
    .restart local v13    # "isUnknown":Z
    :cond_b
    :goto_4
    move v13, v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    iget v0, v12, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0, v14}, Lcom/huawei/ims/ImsServiceCallTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 280
    invoke-virtual {v14, v12}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateConfSession(Lcom/huawei/ims/DriverImsCall;)V

    .line 281
    if-eqz v13, :cond_f

    .line 282
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "Phantom conference call Scenario"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 278
    :catchall_1
    move-exception v0

    move v1, v13

    goto :goto_5

    .end local v13    # "isUnknown":Z
    .restart local v1    # "isUnknown":Z
    :catchall_2
    move-exception v0

    :goto_5
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 284
    .end local v1    # "isUnknown":Z
    .restart local v13    # "isUnknown":Z
    :cond_c
    iget-object v0, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_f

    .line 285
    const-string v0, "ImsServiceCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MO phantom Call Scenario. State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 288
    iget-object v1, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 289
    :try_start_5
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 290
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 291
    .local v2, "s":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget v3, v12, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/huawei/ims/ImsServiceCallTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 293
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v2    # "s":Lcom/huawei/ims/HwImsCallSessionImpl;
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 294
    iget-object v2, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 295
    :try_start_6
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    iget v1, v12, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v14, v0

    .line 296
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 297
    if-eqz v14, :cond_d

    .line 298
    invoke-virtual {v14, v12}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverImsCall;)V

    .line 301
    :cond_d
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "MO phantom Call matched."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 296
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 293
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 303
    :cond_e
    const/4 v13, 0x1

    .line 307
    :cond_f
    :goto_6
    if-eqz v13, :cond_10

    .line 308
    iget v3, v12, Lcom/huawei/ims/DriverImsCall;->index:I

    const/4 v4, 0x1

    iget-object v5, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v6, v12, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    move-object v1, v7

    move-object v2, v14

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/ims/ImsServiceCallTracker;->sendIncomingCallIntent(Lcom/huawei/ims/HwImsCallSessionImpl;IZLcom/huawei/ims/DriverImsCall$State;Ljava/lang/String;)V

    .line 312
    .end local v13    # "isUnknown":Z
    :cond_10
    :goto_7
    iget-object v0, v12, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_11

    .line 313
    iget v0, v12, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v12    # "dc":Lcom/huawei/ims/DriverImsCall;
    .end local v14    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_11
    :goto_8
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 228
    .end local v0    # "i":I
    .local v1, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .restart local v11    # "i":I
    .restart local v12    # "dc":Lcom/huawei/ims/DriverImsCall;
    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    .line 321
    .end local v1    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    .end local v11    # "i":I
    .end local v12    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_12
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    if-eqz v8, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 322
    iget-object v1, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 323
    :try_start_a
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 327
    .restart local v2    # "s":Lcom/huawei/ims/HwImsCallSessionImpl;
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found match end call session in temp list, s = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index in call list is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Lcom/huawei/ims/ImsServiceCallTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 332
    .end local v2    # "s":Lcom/huawei/ims/HwImsCallSessionImpl;
    goto :goto_9

    .line 333
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_13
    monitor-exit v1

    goto :goto_a

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    .line 338
    :cond_14
    :goto_a
    invoke-direct/range {p0 .. p1}, Lcom/huawei/ims/ImsServiceCallTracker;->processDialingAndIncomingConflict(Ljava/util/ArrayList;)V

    .line 341
    iget-object v1, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 342
    :try_start_b
    const-string v0, "ImsServiceCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCalls ,mCallList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 345
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcMap.get(e.getValue().getCallId() =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_15

    .line 348
    const-string v3, "ImsServiceCallTracker"

    const-string v4, "end call handle"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, v7, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-direct {v7, v3}, Lcom/huawei/ims/ImsServiceCallTracker;->endCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 358
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-direct {v7, v3}, Lcom/huawei/ims/ImsServiceCallTracker;->notifyCallRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 360
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_15
    goto :goto_b

    .line 361
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_16
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0
.end method

.method public handleHandover(Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;)V
    .locals 13
    .param p1, "handover"    # Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;

    .line 762
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "in handleHandover"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;

    invoke-direct {v0}, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;-><init>()V

    .line 764
    .local v0, "response":Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;
    iget v1, p1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    iput v1, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    .line 765
    iget v1, p1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    iput v1, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    .line 766
    iget v1, p1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    iput v1, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    .line 767
    iget-object v1, p1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 768
    iget-object v1, p1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 770
    const-string v1, "ImsServiceCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hoState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " srcTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " tarTech: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " extraType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 774
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 775
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 776
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 777
    .local v4, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v4, :cond_0

    .line 778
    iget v6, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    iget v7, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    iget v8, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    iget v9, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraType:I

    iget-object v10, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraInfo:[B

    iget-object v11, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    iget-object v12, v0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v5 .. v12}, Lcom/huawei/ims/HwImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 782
    :cond_0
    const-string v5, "ImsServiceCallTracker"

    const-string v6, "No more call sessions found"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v4    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :goto_1
    goto :goto_0

    .line 785
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_1
    monitor-exit v1

    .line 786
    return-void

    .line 785
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public handleModifyCallRequest(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .locals 4
    .param p1, "cm"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 527
    if-eqz p1, :cond_1

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 530
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    iget v3, p1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->call_index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v0, v2

    .line 531
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsCallAdapter;->onReceivedModifyCall(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    goto :goto_0

    .line 535
    :cond_0
    const-string v1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {v1}, Lcom/huawei/ims/ImsServiceCallTracker;->loge(Ljava/lang/String;)V

    .line 537
    .end local v0    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :goto_0
    goto :goto_1

    .line 531
    .restart local v0    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 538
    .end local v0    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_1
    const-string v0, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->loge(Ljava/lang/String;)V

    .line 540
    :goto_1
    return-void
.end method

.method public handleModifyCallResult([I)V
    .locals 5
    .param p1, "modifyResult"    # [I

    .line 544
    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 549
    :cond_0
    const/4 v0, 0x0

    .line 550
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v0, v2

    .line 552
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    if-nez v0, :cond_1

    .line 555
    const-string v1, "ImsServiceCallTracker"

    const-string v2, "handleModifyCallResult error: callsession is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-void

    .line 559
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getState()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 560
    const-string v1, "ImsServiceCallTracker"

    const-string v2, "handleModifyCallResult error: callsession State.INVALID"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 565
    :cond_2
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v1

    .line 567
    .local v1, "currentCallState":Lcom/huawei/ims/DriverImsCall$State;
    const/4 v2, 0x1

    aget v3, p1, v2

    if-eqz v3, :cond_3

    .line 568
    const-string v3, "ImsServiceCallTracker"

    const-string v4, "modify failed!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    goto :goto_0

    .line 571
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsRIL;->isSupportVideoRingTones()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v1, :cond_4

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v1, :cond_5

    .line 574
    :cond_4
    const-string v3, "ImsServiceCallTracker"

    const-string v4, "ims video ring tones, clear pendingModify!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 579
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getImsVTCallProviderImpl()Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    move-result-object v3

    .line 580
    .local v3, "imsVTCallProviderImpl":Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
    if-eqz v3, :cond_6

    .line 581
    aget v2, p1, v2

    invoke-virtual {v3, v2}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->handleModifyCallResult(I)V

    .line 584
    :cond_6
    return-void

    .line 552
    .end local v1    # "currentCallState":Lcom/huawei/ims/DriverImsCall$State;
    .end local v3    # "imsVTCallProviderImpl":Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 545
    .end local v0    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_7
    :goto_1
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "invalid params when handleModifyCallResult"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method public handleOnHoldTone(Z)V
    .locals 5
    .param p1, "startOnHoldLocalTone"    # Z

    .line 737
    const-string v0, "ImsServiceCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnHoldTone startOnHoldLocalTone= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v0, 0x0

    .line 740
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 741
    return-void

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 745
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 746
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 747
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 748
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v0, v4

    .line 749
    invoke-virtual {v0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->handleOnHoldTone(Z)V

    .line 750
    goto :goto_1

    .line 752
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_1
    goto :goto_0

    .line 753
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    if-nez v0, :cond_3

    .line 755
    const-string v1, "ImsServiceCallTracker"

    const-string v2, "No call session found for number: "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_3
    return-void

    .line 753
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public handleSuppSvcUnsol(Lcom/huawei/ims/HwImsSuppServiceNotification;)V
    .locals 12
    .param p1, "info"    # Lcom/huawei/ims/HwImsSuppServiceNotification;

    .line 699
    if-nez p1, :cond_0

    .line 700
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "handleSuppSvcUnsol info == null."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-void

    .line 703
    :cond_0
    const-string v0, "ImsServiceCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSuppSvcUnsol callId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    iget v2, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 709
    .local v1, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget v3, p1, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    if-ne v3, v2, :cond_2

    .line 710
    iget-object v3, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    .line 711
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 712
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 713
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 714
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v1, v5

    .line 715
    goto :goto_1

    .line 717
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_1
    goto :goto_0

    .line 720
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 721
    const/4 v3, 0x0

    .line 722
    .local v3, "startOnHoldLocalTone":Z
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

    .line 725
    .local v2, "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    const-string v4, "ImsServiceCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " startOnHoldLocalTone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V

    .line 728
    .end local v2    # "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    .end local v3    # "startOnHoldLocalTone":Z
    goto :goto_2

    .line 729
    :cond_3
    const-string v2, "ImsServiceCallTracker"

    const-string v3, "No call session found for number: "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v1    # "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    :goto_2
    monitor-exit v0

    .line 732
    return-void

    .line 731
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 626
    const/4 v0, 0x0

    .line 629
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 631
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 632
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 633
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/HwImsCallSessionImpl;

    move-object v0, v4

    .line 634
    invoke-virtual {v0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyTtyModeChange(I)V

    .line 635
    goto :goto_1

    .line 637
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_0
    goto :goto_0

    .line 638
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    if-nez v0, :cond_2

    .line 641
    const-string v1, "ImsServiceCallTracker"

    const-string v2, "No Active call session found for TTY mode change"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_2
    return-void

    .line 638
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public haveCall()Z
    .locals 3

    .line 860
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 864
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    monitor-exit v0

    return v2

    .line 866
    :cond_1
    monitor-exit v0

    .line 867
    return v2

    .line 866
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "mtHold"    # Z

    .line 512
    return-void
.end method

.method public onCallSessionMerged()V
    .locals 0

    .line 523
    return-void
.end method

.method public onCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "mtResume"    # Z

    .line 516
    return-void
.end method

.method public onCallSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 519
    return-void
.end method

.method public onClosed(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 6
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 463
    const-string v0, "ImsServiceCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 467
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    .line 468
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 470
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
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

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 473
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing session on close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v3

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v4, :cond_0

    .line 477
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCall()Lcom/huawei/ims/DriverImsCall;

    move-result-object v3

    .line 478
    .local v3, "dc_end":Lcom/huawei/ims/DriverImsCall;
    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    iput-object v4, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call_type  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v5, v5, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/ims/ImsServiceCallTracker;->log(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1, v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCall(Lcom/huawei/ims/DriverImsCall;)V

    .line 483
    .end local v3    # "dc_end":Lcom/huawei/ims/DriverImsCall;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 484
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-direct {p0, v3}, Lcom/huawei/ims/ImsServiceCallTracker;->notifyCallRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 486
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_1
    goto/16 :goto_0

    .line 487
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;>;"
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 490
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 491
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 492
    :try_start_1
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 494
    .local v2, "s":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-ne v2, p1, :cond_4

    .line 496
    const-string v3, "ImsServiceCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing session on close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 498
    invoke-direct {p0, v2}, Lcom/huawei/ims/ImsServiceCallTracker;->notifyCallRemoved(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 500
    .end local v2    # "s":Lcom/huawei/ims/HwImsCallSessionImpl;
    :cond_4
    goto :goto_2

    .line 501
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    :cond_5
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 503
    :cond_6
    :goto_3
    return-void
.end method

.method public onDisconnected(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 459
    return-void
.end method

.method public onNotifyCallResumed()V
    .locals 2

    .line 428
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "onNotifyCallResumed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceCallTracker;->getMptySession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    .line 430
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, v0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->invokeCallResume(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    .line 433
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/huawei/ims/ImsServiceCallTracker;->setConfInProgress(Z)V

    .line 434
    return-void
.end method

.method public onUnsolCallModify(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .locals 0
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 507
    return-void
.end method

.method removeListener(Lcom/huawei/ims/IImsCallListListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/IImsCallListListener;

    .line 814
    if-eqz p1, :cond_1

    .line 820
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mImsCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 823
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->loge(Ljava/lang/String;)V

    .line 825
    :goto_0
    return-void

    .line 815
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendIncomingCallIntent(Lcom/huawei/ims/HwImsCallSessionImpl;IZLcom/huawei/ims/DriverImsCall$State;Ljava/lang/String;)V
    .locals 3
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z
    .param p4, "state"    # Lcom/huawei/ims/DriverImsCall$State;
    .param p5, "number"    # Ljava/lang/String;

    .line 873
    const-string v0, "ImsServiceCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIncomingCallIntent, mIncomingCallListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    if-nez v0, :cond_0

    .line 875
    const-string v0, "ImsServiceCallTracker"

    const-string v1, "mIncomingCallListener = null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    return-void

    .line 879
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/huawei/ims/ImsServiceCallTracker;->createInComingBundle(Ljava/lang/String;ZZLcom/huawei/ims/DriverImsCall$State;)Landroid/os/Bundle;

    move-result-object v0

    .line 880
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIncomingCallListener:Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;

    invoke-interface {v1, p1, v0}, Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 881
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/huawei/ims/ImsServiceCallTracker;->addCall(Ljava/lang/Integer;Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 882
    return-void
.end method

.method public setConfInProgress(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 437
    const-string v0, "ImsServiceCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfInProgress value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0}, Lcom/huawei/ims/ImsServiceCallTracker;->getMptySession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v0

    .line 439
    .local v0, "callSession":Lcom/huawei/ims/HwImsCallSessionImpl;
    if-eqz v0, :cond_0

    .line 440
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 442
    :cond_0
    return-void
.end method

.method public updateVtCapability(Z)V
    .locals 4
    .param p1, "isVtEnabled"    # Z

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVtCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->log(Ljava/lang/String;)V

    .line 175
    iput-boolean p1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mIsVtSupportedGlobally:Z

    .line 176
    iget-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/ImsServiceCallTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 179
    .local v3, "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-virtual {v3, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateVtGlobalCapability(Z)V

    .line 180
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/ims/HwImsCallSessionImpl;>;"
    .end local v3    # "session":Lcom/huawei/ims/HwImsCallSessionImpl;
    goto :goto_0

    .line 181
    :cond_0
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
