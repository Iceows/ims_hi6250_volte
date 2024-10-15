.class public Lcom/huawei/ims/HwImsCallSessionImpl;
.super Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.source "HwImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;,
        Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    }
.end annotation


# static fields
.field private static final CALL_COMPLETED_ELSEWHERE:Ljava/lang/String; = "Call completed elsewhere"

.field private static final CODE_HOLD_FOR_IMS:I = 0x7d1

.field private static final CODE_RESUME_FOR_IMS:I = 0x7d2

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.ims.HwImsCallSessionImpl"

.field private static final ENCRYPTED_CALL:I = 0x1

.field public static final ENCRYPT_CALL_FLAG:Ljava/lang/String; = "encrypt_call_flag"

.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x9

.field private static final EVENT_CLOSE_SESSION:I = 0xc

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x8

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x10

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_MUTE:I = 0xd

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xb

.field private static final EVENT_RESTART_RILD:I = 0xf

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RIL_RECOVERY:I = 0xe

.field private static final EVENT_RINGBACK_TONE:I = 0xa

.field private static final IMS_HANDOVER_STATE_COMPLETE_FAIL:I = 0x2

.field private static final IMS_HANDOVER_STATE_COMPLETE_SUCCESS:I = 0x1

.field private static final IS_IMS_CALL_VOLTE:I = 0x0

.field private static final IS_IMS_CALL_VONR:I = 0x2

.field private static final IS_IMS_CALL_VOWIFI:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsCallSessionImpl"

.field private static final MAX_END_CALL_DURATION:I = 0x88b8

.field private static final MEXTI_BACKUP_NUMBER:Ljava/lang/String; = "nexti_backup_number"

.field private static final MEXTI_SEARCH_NUMBER:Ljava/lang/String; = "nexti_search_number"

.field private static final NOT_ENCRYPTED_CALL:I = 0x0

.field private static final NUMBERMARKINFO_NUMBER:Ljava/lang/String; = "numbermarkinfo_number"

.field private static final RAT_TYPE_FROM_MODE_IGNORE:I = -0x1

.field private static final REMOTE_CALL_DECLINED:Ljava/lang/String; = "Declined"

.field public static final SUPP_NOTIFICATION_TYPE_MO:I = 0x0

.field public static final SUPP_NOTIFICATION_TYPE_MT:I = 0x1

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3

.field private static final SYMBOL_EQUALS:Ljava/lang/String; = "="

.field private static final TAG_FOR_CHR:Ljava/lang/String; = "HwIms"

.field private static final WIFI_CALL_DROP_BACKHAUL_CONGESTED:Ljava/lang/String; = "Call is dropped due to Wi-Fi backhaul is congested"

.field private static final WIFI_CALL_DROP_SIGNAL_DEGRADED:Ljava/lang/String; = "Call is dropped due to Wi-Fi signal is degraded"


# instance fields
.field private mCallId:I

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallee:Ljava/lang/String;

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

.field private mDc:Lcom/huawei/ims/DriverImsCall;

.field private mDisconnCause:I

.field private mEncryptFlagMo:I

.field private mHandler:Landroid/os/Handler;

.field private mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

.field private mImsVtCallProviderImpl:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

.field private mIsAcceptPending:Z

.field protected mIsConfInProgress:Z

.field private mIsHangup:Z

.field private mIsMtCall:Z

.field private mIsPendingDisconnect:Z

.field private mIsRingbackToneRequest:Z

.field private mIsVtGloballyAllowed:Z

.field private mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/ims/HwImsCallSessionImpl$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mPendingDisconnectReason:I

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mState:I

.field private mTracker:Lcom/huawei/ims/ImsServiceCallTracker;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceCallTracker;)V
    .registers 11
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p3, "imsRil"    # Lcom/huawei/ims/ImsRIL;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "tracker"    # Lcom/huawei/ims/ImsServiceCallTracker;

    .line 287
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    .line 170
    const/4 v2, 0x1

    iput v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 172
    new-instance v3, Landroid/telephony/ims/ImsCallProfile;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 175
    new-instance v3, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v3, v2, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 178
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 180
    new-instance v2, Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-direct {v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 182
    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 184
    new-instance v2, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;

    invoke-direct {v2, p0}, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 186
    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 188
    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I

    .line 190
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsRingbackToneRequest:Z

    .line 196
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsAcceptPending:Z

    .line 198
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 200
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 202
    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 204
    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 206
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsMtCall:Z

    .line 208
    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mEncryptFlagMo:I

    .line 210
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsHangup:Z

    .line 215
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z

    .line 288
    iput-object p3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 289
    invoke-virtual {p0, p2}, Lcom/huawei/ims/HwImsCallSessionImpl;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 290
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v2, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 291
    iput-object p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 292
    iput-object p5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 294
    new-instance v2, Lcom/huawei/ims/ImsCallAdapter;

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v2, p0, v3}, Lcom/huawei/ims/ImsCallAdapter;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 296
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtSupported()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 297
    new-instance v2, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    invoke-direct {v2, p0, v3}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVtCallProviderImpl:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    .line 298
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVtCallProviderImpl:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->addListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V

    .line 299
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVtCallProviderImpl:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    invoke-static {p0, v2}, Lcom/huawei/ims/vt/ImsVtGlobals;->addImsVideoCallProvider(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/vt/ImsVtCallProviderImpl;)V

    .line 302
    :cond_7f
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsMtCall:Z

    .line 304
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/ims/ImsRIL;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 305
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/DriverImsCall;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceCallTracker;)V
    .registers 10
    .param p1, "call"    # Lcom/huawei/ims/DriverImsCall;
    .param p2, "imsRil"    # Lcom/huawei/ims/ImsRIL;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lcom/huawei/ims/ImsServiceCallTracker;

    .line 315
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    .line 170
    const/4 v2, 0x1

    iput v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 172
    new-instance v3, Landroid/telephony/ims/ImsCallProfile;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 175
    new-instance v3, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v3, v2, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 178
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 180
    new-instance v2, Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-direct {v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 182
    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 184
    new-instance v2, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;

    invoke-direct {v2, p0}, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 186
    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 188
    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I

    .line 190
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsRingbackToneRequest:Z

    .line 196
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsAcceptPending:Z

    .line 198
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 200
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 202
    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 204
    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 206
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsMtCall:Z

    .line 208
    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mEncryptFlagMo:I

    .line 210
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsHangup:Z

    .line 215
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z

    .line 316
    iput-object p2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 317
    new-instance v0, Lcom/huawei/ims/DriverImsCall;

    invoke-direct {v0, p1}, Lcom/huawei/ims/DriverImsCall;-><init>(Lcom/huawei/ims/DriverImsCall;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    .line 318
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget v0, v0, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 319
    iput-object p4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 320
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 323
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverImsCall;)V

    .line 325
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/ImsCallAdapter;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 327
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtSupported()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 328
    new-instance v0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVtCallProviderImpl:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    .line 329
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVtCallProviderImpl:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->addListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V

    .line 330
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVtCallProviderImpl:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    invoke-static {p0, v0}, Lcom/huawei/ims/vt/ImsVtGlobals;->addImsVideoCallProvider(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/vt/ImsVtCallProviderImpl;)V

    .line 332
    :cond_90
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsMtCall:Z

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/HwImsCallSessionImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionMerged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/huawei/ims/HwImsCallSessionImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsRingbackToneRequest:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/huawei/ims/HwImsCallSessionImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsRingbackToneRequest:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->doClose()V

    return-void
.end method

.method static synthetic access$1300(Lcom/huawei/ims/HwImsCallSessionImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->initCallLists()V

    return-void
.end method

.method static synthetic access$1500(Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/huawei/ims/HwImsCallSessionImpl;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsCallSessionImpl;->convertMessageFromCauseCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsCallSessionImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    return-object v0
.end method

.method static synthetic access$402(Lcom/huawei/ims/HwImsCallSessionImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsAcceptPending:Z

    return p1
.end method

.method static synthetic access$502(Lcom/huawei/ims/HwImsCallSessionImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsHangup:Z

    return p1
.end method

.method static synthetic access$602(Lcom/huawei/ims/HwImsCallSessionImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # I

    .line 49
    iput p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I

    return p1
.end method

.method static synthetic access$700(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsServiceCallTracker;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/DriverImsCall;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 49
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    return-object v0
.end method

.method private static checkAccessPermission()V
    .registers 3

    .line 2374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2375
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_15

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 2379
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2376
    :cond_15
    :goto_15
    return-void
.end method

.method private cleanRilRecovery()V
    .registers 3

    .line 1991
    const-string v0, "cleanRilRecovery"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1993
    return-void
.end method

.method private convertMessageFromCauseCode(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "causeCode"    # I
    .param p2, "originMessage"    # Ljava/lang/String;

    .line 1082
    move-object v0, p2

    .line 1083
    .local v0, "ret":Ljava/lang/String;
    const/16 v1, 0x44c

    if-eq p1, v1, :cond_14

    const/16 v1, 0xbb9

    if-eq p1, v1, :cond_11

    .line 1091
    const-string v1, "HwImsCallSessionImpl"

    const-string v2, "just use origin message."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1088
    :cond_11
    const-string v0, "Call is dropped due to Wi-Fi backhaul is congested"

    .line 1089
    goto :goto_17

    .line 1085
    :cond_14
    const-string v0, "Call is dropped due to Wi-Fi signal is degraded"

    .line 1086
    nop

    .line 1093
    :goto_17
    return-object v0
.end method

.method private doClose()V
    .registers 6

    .line 1117
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "doClose!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1120
    const-string v1, "Received Session Close request while it is alive"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_12
    iget v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_58

    .line 1124
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    .line 1125
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->dispose()V

    .line 1126
    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 1128
    :cond_21
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v1, :cond_32

    iget-boolean v1, v1, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v1, :cond_32

    .line 1129
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Lcom/huawei/ims/ImsRIL;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1131
    :cond_32
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifySessionClosed()V

    .line 1132
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1133
    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 1134
    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    .line 1135
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 1136
    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1137
    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1138
    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1139
    iput v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 1140
    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1141
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 1142
    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVtCallProviderImpl:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    .line 1143
    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 1144
    iput-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1145
    invoke-static {p0}, Lcom/huawei/ims/vt/ImsVtGlobals;->removeImsVideoCallProvider(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 1146
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z

    .line 1148
    :cond_58
    const-string v1, "doClose end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    return-void
.end method

.method private extractImsCallProfileIntoCallProfile(Lcom/huawei/ims/DriverImsCall;)V
    .registers 11
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 1523
    const-string v0, "HwImsCallSessionImpl"

    if-nez p1, :cond_a

    .line 1524
    const-string v1, "Null dcUpdate in extractImsCallProfileIntoCallProfile"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return-void

    .line 1527
    :cond_a
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 1537
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    if-eqz v1, :cond_95

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    array-length v1, v1

    if-gtz v1, :cond_1c

    goto/16 :goto_95

    .line 1540
    :cond_1c
    const/4 v1, 0x0

    .line 1541
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1542
    .local v2, "keyAndValue":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1544
    .local v3, "namespaceAndKey":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    iget-object v5, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v5, v5, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_94

    .line 1545
    iget-object v5, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v5, v5, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-eqz v5, :cond_7a

    .line 1546
    iget-object v5, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v5, v5, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    aget-object v5, v5, v4

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1549
    const/4 v5, 0x0

    aget-object v6, v2, v5

    if-eqz v6, :cond_74

    .line 1554
    aget-object v6, v2, v5

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_54

    .line 1555
    aget-object v5, v2, v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1556
    aget-object v1, v3, v8

    goto :goto_56

    .line 1558
    :cond_54
    aget-object v1, v2, v5

    .line 1569
    :goto_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImsCallProfiles Extra key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    aget-object v6, v2, v8

    invoke-virtual {v5, v1, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1561
    :cond_74
    const-string v5, "Bad extra string from lower layers!"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    return-void

    .line 1565
    :cond_7a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is null in ImsCallProfiles Extras!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    return-void

    .line 1572
    .end local v4    # "i":I
    :cond_94
    return-void

    .line 1538
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    .end local v3    # "namespaceAndKey":[Ljava/lang/String;
    :cond_95
    :goto_95
    return-void
.end method

.method private extractProfileExtrasIntoImsCallProfile(Landroid/telephony/ims/ImsCallProfile;Lcom/huawei/ims/ImsCallProfiles;)V
    .registers 13
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "details"    # Lcom/huawei/ims/ImsCallProfiles;

    .line 1791
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "OemCallExtras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1792
    .local v0, "callExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_87

    .line 1793
    const/4 v1, 0x0

    .line 1794
    .local v1, "extraString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1795
    .local v2, "extras":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1796
    .local v3, "i":I
    const/4 v4, 0x0

    .line 1800
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1801
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_30

    const-string v7, ""

    goto :goto_38

    :cond_30
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_38
    move-object v4, v7

    .line 1802
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1803
    move-object v7, v1

    .line 1804
    .local v7, "extraStringForOutput":Ljava/lang/String;
    const-string v9, "numbermarkinfo_number"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_66

    const-string v9, "nexti_search_number"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_66

    .line 1805
    const-string v9, "nexti_backup_number"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 1806
    :cond_66
    const/4 v9, 0x0

    invoke-static {v4, v9}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1807
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1809
    :cond_7d
    aput-object v1, v2, v3

    .line 1810
    nop

    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "extraStringForOutput":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 1811
    goto :goto_1b

    .line 1812
    :cond_83
    invoke-virtual {p2, v2}, Lcom/huawei/ims/ImsCallProfiles;->setExtras([Ljava/lang/String;)V

    .line 1813
    .end local v1    # "extraString":Ljava/lang/String;
    .end local v2    # "extras":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_8e

    .line 1814
    :cond_87
    const-string v1, "HwImsCallSessionImpl"

    const-string v2, "No extras in ImsCallProfile to map into ImsCallProfile."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :goto_8e
    return-void
.end method

.method private fallBackToNoEncypt(Lcom/huawei/ims/DriverImsCall;)V
    .registers 5
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 556
    if-nez p1, :cond_8

    .line 557
    const-string v0, "FallBackToNoEncypt, dcUpdate is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 558
    return-void

    .line 562
    :cond_8
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mEncryptFlagMo:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v0, Lcom/huawei/ims/ImsCallProfiles;->isEncrypt:I

    if-eq v0, v2, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    move v0, v2

    .line 565
    .local v0, "needBack":Z
    if-eqz v0, :cond_26

    .line 566
    invoke-static {}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->getInstance()Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->fallBack()V

    .line 569
    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mEncryptFlagMo:I

    .line 571
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fallBackToNoEncypt mEncryptFlagMo=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mEncryptFlagMo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HwImsCallSessionImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void
.end method

.method private getRadioTechFromDriverCall(I)Ljava/lang/String;
    .registers 5
    .param p1, "imsDomain"    # I

    .line 2392
    const/4 v0, 0x0

    .line 2393
    .local v0, "radioTech":I
    if-eqz p1, :cond_10

    const/4 v1, 0x1

    if-eq p1, v1, :cond_d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    goto :goto_13

    .line 2401
    :cond_a
    const/16 v0, 0x14

    .line 2402
    goto :goto_13

    .line 2398
    :cond_d
    const/16 v0, 0x12

    .line 2399
    goto :goto_13

    .line 2395
    :cond_10
    const/16 v0, 0xe

    .line 2396
    nop

    .line 2406
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioTechFromDriverCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,imsDomain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 2407
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRestrictCause(I[Lcom/huawei/ims/ImsServiceState;)I
    .registers 9
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lcom/huawei/ims/ImsServiceState;

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "cause":I
    if-eqz p2, :cond_23

    .line 523
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_23

    aget-object v4, p2, v3

    .line 524
    .local v4, "srv":Lcom/huawei/ims/ImsServiceState;
    if-eqz v4, :cond_20

    iget v5, v4, Lcom/huawei/ims/ImsServiceState;->type:I

    if-ne v5, p1, :cond_20

    iget-object v5, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    if-eqz v5, :cond_20

    iget-object v5, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_20

    .line 526
    iget-object v1, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    aget-object v1, v1, v2

    iget v0, v1, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    .line 527
    goto :goto_23

    .line 523
    .end local v4    # "srv":Lcom/huawei/ims/ImsServiceState;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 531
    :cond_23
    :goto_23
    return v0
.end method

.method private initCallLists()V
    .registers 3

    .line 2273
    const-string v0, "initCallLists"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 2274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2276
    .local v0, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-eqz v1, :cond_11

    .line 2277
    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceCallTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 2279
    :cond_11
    return-void
.end method

.method private isHandleHandoveSuccess(I)Z
    .registers 3
    .param p1, "hoType"    # I

    .line 875
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private isImsCallSessionAlive()Z
    .registers 3

    .line 1112
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    const/4 v1, 0x7

    if-eq v0, v1, :cond_10

    if-eqz v0, :cond_10

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isSessionValid()Z
    .registers 4

    .line 1097
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1098
    .local v0, "isValid":Z
    :goto_8
    if-nez v0, :cond_11

    .line 1099
    const-string v1, "HwImsCallSessionImpl"

    const-string v2, "Session is closed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_11
    return v0
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 2370
    const-string v0, "HwImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 2366
    const-string v0, "HwImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    return-void
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .registers 5
    .param p0, "codec"    # Ljava/lang/String;

    .line 1581
    const/4 v0, 0x0

    .line 1582
    .local v0, "audioQuality":I
    const/4 v1, 0x0

    if-nez p0, :cond_5

    .line 1583
    return v1

    .line 1585
    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_bc

    :cond_d
    goto/16 :goto_74

    :sswitch_f
    const-string v1, "GSM_HR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x9

    goto :goto_75

    :sswitch_1a
    const-string v1, "GSM_FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x8

    goto :goto_75

    :sswitch_25
    const-string v1, "EVRC_B"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    goto :goto_75

    :sswitch_2f
    const-string v1, "AMR_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x6

    goto :goto_75

    :sswitch_39
    const-string v1, "AMR_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x5

    goto :goto_75

    :sswitch_43
    const-string v1, "GSM_EFR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x7

    goto :goto_75

    :sswitch_4d
    const-string v3, "QCELP13K"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_75

    :sswitch_56
    const-string v1, "EVRC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_75

    :sswitch_60
    const-string v1, "EVRC_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x3

    goto :goto_75

    :sswitch_6a
    const-string v1, "EVRC_NW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x4

    goto :goto_75

    :goto_74
    move v1, v2

    :goto_75
    const-string v2, "HwImsCallSessionImpl"

    packed-switch v1, :pswitch_data_e6

    .line 1617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported codec "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 1614
    :pswitch_8f
    const/16 v0, 0xa

    .line 1615
    goto :goto_a6

    .line 1611
    :pswitch_92
    const/16 v0, 0x9

    .line 1612
    goto :goto_a6

    .line 1608
    :pswitch_95
    const/16 v0, 0x8

    .line 1609
    goto :goto_a6

    .line 1605
    :pswitch_98
    const/4 v0, 0x2

    .line 1606
    goto :goto_a6

    .line 1602
    :pswitch_9a
    const/4 v0, 0x1

    .line 1603
    goto :goto_a6

    .line 1599
    :pswitch_9c
    const/4 v0, 0x7

    .line 1600
    goto :goto_a6

    .line 1596
    :pswitch_9e
    const/4 v0, 0x6

    .line 1597
    goto :goto_a6

    .line 1593
    :pswitch_a0
    const/4 v0, 0x5

    .line 1594
    goto :goto_a6

    .line 1590
    :pswitch_a2
    const/4 v0, 0x4

    .line 1591
    goto :goto_a6

    .line 1587
    :pswitch_a4
    const/4 v0, 0x3

    .line 1588
    nop

    .line 1620
    :goto_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioQuality is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return v0

    nop

    :sswitch_data_bc
    .sparse-switch
        -0x268dd77a -> :sswitch_6a
        -0x268dd678 -> :sswitch_60
        0x20aaa2 -> :sswitch_56
        0x30932dd2 -> :sswitch_4d
        0x3de5f773 -> :sswitch_43
        0x734ec6ed -> :sswitch_39
        0x734ec804 -> :sswitch_2f
        0x7aa095e5 -> :sswitch_25
        0x7dde20ea -> :sswitch_1a
        0x7dde2128 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_a2
        :pswitch_a0
        :pswitch_9e
        :pswitch_9c
        :pswitch_9a
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
    .end packed-switch
.end method

.method private mapCallTypeFromProfile(I)I
    .registers 5
    .param p1, "callType"    # I

    .line 1631
    const/4 v0, 0x0

    .line 1632
    .local v0, "type":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_34

    const/4 v1, 0x2

    if-eq p1, v1, :cond_32

    const/4 v1, 0x4

    if-eq p1, v1, :cond_30

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2e

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2c

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2a

    .line 1652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported callType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HwImsCallSessionImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1649
    :cond_2a
    const/4 v0, 0x4

    .line 1650
    goto :goto_37

    .line 1646
    :cond_2c
    const/4 v0, 0x2

    .line 1647
    goto :goto_37

    .line 1643
    :cond_2e
    const/4 v0, 0x1

    .line 1644
    goto :goto_37

    .line 1640
    :cond_30
    const/4 v0, 0x3

    .line 1641
    goto :goto_37

    .line 1637
    :cond_32
    const/4 v0, 0x0

    .line 1638
    goto :goto_37

    .line 1634
    :cond_34
    const/16 v0, 0xa

    .line 1635
    nop

    .line 1655
    :goto_37
    return v0
.end method

.method private notifyCallSessionHold(Z)V
    .registers 5
    .param p1, "isMtHold"    # Z

    .line 440
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 442
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 443
    return-void

    .line 446
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 448
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 449
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 450
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 452
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_21
    return-void
.end method

.method private notifyCallSessionMerged()V
    .registers 4

    .line 485
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 487
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 488
    return-void

    .line 491
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 493
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 494
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 495
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onCallSessionMerged()V

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 497
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_21
    return-void
.end method

.method private notifyCallSessionResumed(Z)V
    .registers 5
    .param p1, "isMtResume"    # Z

    .line 455
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 457
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 458
    return-void

    .line 461
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 463
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 464
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 465
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 467
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_21
    return-void
.end method

.method private notifyCallSessionStarted()V
    .registers 4

    .line 470
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 472
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 473
    return-void

    .line 476
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 478
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 479
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 480
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onCallSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 482
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_21
    return-void
.end method

.method private notifySessionClosed()V
    .registers 4

    .line 411
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 413
    .local v0, "listenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 414
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 415
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onClosed(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 417
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_17
    return-void
.end method

.method private notifySessionDisconnected()V
    .registers 4

    .line 402
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 404
    .local v0, "listenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 405
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 406
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onDisconnected(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 408
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_17
    return-void
.end method

.method private setCapabilitiesInProfiles(Lcom/huawei/ims/DriverImsCall;)V
    .registers 7
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 754
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x4

    if-eqz v0, :cond_30

    .line 755
    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v2, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 756
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v3, v3, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    .line 757
    const-string v4, "Codec"

    invoke-virtual {v2, v3, v4}, Lcom/huawei/ims/ImsCallProfiles;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 756
    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 758
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eqz v0, :cond_2b

    .line 759
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_30

    .line 761
    :cond_2b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x2

    iput v2, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 764
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_5a

    .line 765
    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 766
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallProfiles;->peerAbility:[Lcom/huawei/ims/ImsServiceState;

    if-eqz v0, :cond_5a

    .line 767
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v2, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 768
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 769
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v2, v1, :cond_4f

    const/4 v1, 0x3

    goto :goto_50

    .line 770
    :cond_4f
    const/4 v1, 0x0

    :goto_50
    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v2, v2, Lcom/huawei/ims/ImsCallProfiles;->peerAbility:[Lcom/huawei/ims/ImsServiceState;

    .line 768
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getRestrictCause(I[Lcom/huawei/ims/ImsServiceState;)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 774
    :cond_5a
    return-void
.end method

.method private transHandoverErrorCode(Ljava/lang/String;)I
    .registers 3
    .param p1, "errorCode"    # Ljava/lang/String;

    .line 865
    const/4 v0, 0x0

    return v0
.end method

.method private triggerRilRecoveryDelayed()V
    .registers 5

    .line 1980
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    .line 1981
    const-string v0, "Call Session terminated. Don\'t trigger ril recovery."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 1982
    return-void

    .line 1984
    :cond_c
    const-string v0, "triggerRilRecoveryDelayed"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1986
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x88b8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1988
    :cond_27
    return-void
.end method

.method private updateCallToActive(Lcom/huawei/ims/DriverImsCall;)V
    .registers 7
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 704
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    const/4 v1, 0x4

    const-string v2, "HwImsCallSessionImpl"

    if-nez v0, :cond_1b

    .line 705
    const-string v0, "Phantom call!"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 707
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 708
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStarted(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_f6

    .line 709
    :cond_1b
    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v3, :cond_be

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v3, :cond_be

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v3, :cond_be

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v3, :cond_3b

    goto/16 :goto_be

    .line 725
    :cond_3b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v1, :cond_47

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v0, :cond_4b

    :cond_47
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v0, :cond_65

    .line 727
    :cond_4b
    const-string v0, "Call being resumed."

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 729
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 730
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionResumed(Z)V

    .line 732
    :cond_5c
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_f6

    .line 733
    :cond_65
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v0

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    if-eq v0, v1, :cond_a7

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call type changes, from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 735
    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_f6

    .line 738
    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call resumed skipped, conf status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6

    .line 711
    :cond_be
    :goto_be
    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 712
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    iput-object v1, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 713
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_e0

    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    if-eqz v0, :cond_e0

    .line 714
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRIL;->getChrReportPhoneId()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "HwIms"

    const-string v4, "ImsRadioResponse"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 718
    :cond_e0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->fallBackToNoEncypt(Lcom/huawei/ims/DriverImsCall;)V

    .line 719
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->extractImsCallProfileIntoCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 721
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 722
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionStarted()V

    .line 724
    :cond_ef
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStarted(Landroid/telephony/ims/ImsCallProfile;)V

    .line 740
    :goto_f6
    return-void
.end method

.method private updateCallToAlerting(Lcom/huawei/ims/DriverImsCall;)V
    .registers 4
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 658
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 659
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v0, :cond_13

    .line 660
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "MO Alerting call!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 662
    return-void

    .line 664
    :cond_13
    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_30

    .line 666
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->extractImsCallProfileIntoCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 667
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 668
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsRingbackToneRequest:Z

    if-eqz v1, :cond_28

    .line 669
    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 671
    :cond_28
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->fallBackToNoEncypt(Lcom/huawei/ims/DriverImsCall;)V

    .line 672
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 674
    .end local v0    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_30
    return-void
.end method

.method private updateCallToDialing(Lcom/huawei/ims/DriverImsCall;)V
    .registers 4
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 677
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v0, :cond_25

    .line 678
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "MO Dialing call!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 680
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    new-instance v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 684
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z

    if-eqz v0, :cond_25

    .line 685
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mPendingDisconnectReason:I

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->terminate(I)V

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z

    .line 689
    :cond_25
    return-void
.end method

.method private updateCallToEnd()V
    .registers 5

    .line 639
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->cleanRilRecovery()V

    .line 640
    const/16 v0, 0x8

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 641
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I

    if-nez v0, :cond_19

    .line 642
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->getLastCallFailCause(Landroid/os/Message;)V

    goto :goto_26

    .line 644
    :cond_19
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v1, :cond_26

    .line 645
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 653
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->onNotifyCallResumed()V

    .line 654
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifySessionDisconnected()V

    .line 655
    return-void
.end method

.method private updateCallToHolding()V
    .registers 3

    .line 692
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_26

    .line 693
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "Call being held."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    if-nez v0, :cond_26

    .line 695
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 696
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionHold(Z)V

    .line 698
    :cond_1f
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    .line 701
    :cond_26
    return-void
.end method

.method private updateImsCallProfile(Lcom/huawei/ims/DriverImsCall;)V
    .registers 10
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 1664
    if-nez p1, :cond_8

    .line 1665
    const-string v0, "updateImsCallProfile called with dc null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 1666
    return-void

    .line 1669
    :cond_8
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_13

    .line 1670
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1673
    :cond_13
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    const-string v2, "oi"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    const-string v2, "cna"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p1, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    invoke-static {v1}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v1

    const-string v2, "oir"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1676
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p1, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    invoke-static {v1}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v1

    const-string v2, "cnap"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1677
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p1, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    const-string v2, "remote_vt_capability"

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1678
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 1679
    .local v0, "ratTypeFromModem":I
    const-string v1, "CallRadioTech"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_59

    .line 1680
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getRadioTechFromDriverCall(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    .line 1682
    :cond_59
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v3

    .line 1683
    .local v3, "hwTelephonyManager":Landroid/telephony/HwTelephonyManager;
    if-eqz v3, :cond_8e

    .line 1684
    invoke-virtual {v3}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v4

    .line 1685
    .local v4, "default4gSlotId":I
    invoke-virtual {v3, v4}, Landroid/telephony/HwTelephonyManager;->getImsDomain(I)I

    move-result v5

    .line 1686
    .local v5, "imsRegDomain":I
    iget-object v6, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->getRadioTechFromDriverCall(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsRegDomain = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", default4gSlotId = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "HwImsCallSessionImpl"

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    .end local v3    # "hwTelephonyManager":Landroid/telephony/HwTelephonyManager;
    .end local v4    # "default4gSlotId":I
    .end local v5    # "imsRegDomain":I
    :cond_8e
    :goto_8e
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    const-string v4, "redirect_number"

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v3, p1, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 1692
    invoke-static {v3}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v3

    .line 1691
    const-string v4, "redirect_number_presentation"

    invoke-virtual {v1, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1693
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_eb

    const/4 v4, 0x1

    if-eq v1, v4, :cond_e1

    if-eq v1, v3, :cond_d7

    const/4 v3, 0x4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_ce

    if-eq v1, v3, :cond_c6

    const/16 v3, 0xa

    if-eq v1, v3, :cond_bd

    goto :goto_f4

    .line 1695
    :cond_bd
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v4, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1696
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1697
    goto :goto_f4

    .line 1716
    :cond_c6
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1717
    goto :goto_f4

    .line 1703
    :cond_ce
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v3, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1704
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v5, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1705
    goto :goto_f4

    .line 1711
    :cond_d7
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x6

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1712
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v4, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1713
    goto :goto_f4

    .line 1707
    :cond_e1
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x5

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1708
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v3, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1709
    goto :goto_f4

    .line 1699
    :cond_eb
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v3, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1700
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1701
    nop

    .line 1721
    :goto_f4
    return-void
.end method

.method private updateLocalDc(Lcom/huawei/ims/DriverImsCall;)Z
    .registers 5
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "isChanged":Z
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v1, :cond_e

    .line 543
    new-instance v1, Lcom/huawei/ims/DriverImsCall;

    invoke-direct {v1, p1}, Lcom/huawei/ims/DriverImsCall;-><init>(Lcom/huawei/ims/DriverImsCall;)V

    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    .line 544
    const/4 v0, 0x1

    goto :goto_12

    .line 546
    :cond_e
    invoke-virtual {v1, p1}, Lcom/huawei/ims/DriverImsCall;->update(Lcom/huawei/ims/DriverImsCall;)Z

    move-result v0

    .line 548
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalDc is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HwImsCallSessionImpl"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v0
.end method

.method private updateRate(II)V
    .registers 6
    .param p1, "srcTech"    # I
    .param p2, "targetTech"    # I

    .line 853
    const-string v0, "CallRadioTech"

    if-ne p1, p2, :cond_15

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 854
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 855
    return-void

    .line 857
    :cond_15
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_20

    .line 860
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_20
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 8
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1855
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1857
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1858
    return-void

    .line 1860
    :cond_a
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsAcceptPending:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_28

    .line 1861
    const-string v0, "HwImsCallSessionImpl"

    const-string v2, "this call is being accepted..."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRIL;->getChrReportPhoneId()I

    move-result v2

    const-string v3, "HwIms"

    const-string v4, "AP_FLOW_SUC"

    invoke-interface {v0, v3, v2, v1, v4}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 1864
    return-void

    .line 1866
    :cond_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsAcceptPending:Z

    .line 1869
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->acceptCall(Landroid/os/Message;I)V

    .line 1870
    return-void
.end method

.method public final addListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 342
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 344
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 345
    return-void

    .line 348
    :cond_a
    if-eqz p1, :cond_2f

    .line 354
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 355
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 357
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 359
    :goto_2e
    return-void

    .line 349
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 3

    .line 1157
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1161
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z

    const-string v1, "HwImsCallSessionImpl"

    if-eqz v0, :cond_f

    .line 1162
    const-string v0, "pending disconnect, return"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return-void

    .line 1166
    :cond_f
    const-string v0, "Close!"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_21

    .line 1168
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1170
    :cond_21
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .registers 3
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 1878
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1880
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1881
    return-void

    .line 1883
    :cond_a
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2108
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2110
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2111
    return-void

    .line 2113
    :cond_a
    return-void
.end method

.method public getCall()Lcom/huawei/ims/DriverImsCall;
    .registers 2

    .line 1305
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1307
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    return-object v0
.end method

.method public getCallDomain()I
    .registers 3

    .line 1351
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1353
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1354
    const/4 v0, 0x3

    return v0

    .line 1357
    :cond_b
    const/4 v0, 0x3

    .line 1358
    .local v0, "callDomain":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v1, :cond_1c

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v1, :cond_1c

    .line 1359
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallDomain()I

    move-result v0

    .line 1361
    :cond_1c
    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .registers 2

    .line 1179
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1181
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 1221
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1223
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1224
    const/4 v0, 0x0

    return-object v0

    .line 1226
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getCallSubstate()I
    .registers 3

    .line 1370
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1372
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1373
    const/4 v0, 0x0

    return v0

    .line 1376
    :cond_b
    const/4 v0, 0x0

    .line 1377
    .local v0, "callSubstate":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v1, :cond_1a

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v1, :cond_1a

    .line 1378
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v1, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    .line 1380
    :cond_1a
    return v0
.end method

.method public getCallee()Ljava/lang/String;
    .registers 2

    .line 1403
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1405
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1406
    const/4 v0, 0x0

    return-object v0

    .line 1408
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverCallState()Lcom/huawei/ims/DriverImsCall$State;
    .registers 2

    .line 1417
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1419
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1420
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 1422
    :cond_c
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0
.end method

.method public getHasPendingDisconnect()Z
    .registers 2

    .line 2435
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z

    return v0
.end method

.method public getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;
    .registers 2

    .line 505
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 507
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 508
    const/4 v0, 0x0

    return-object v0

    .line 510
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    return-object v0
.end method

.method public getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;
    .registers 2

    .line 2263
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2265
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v0, :cond_9

    .line 2266
    const/4 v0, 0x0

    return-object v0

    .line 2268
    :cond_9
    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    return-object v0
.end method

.method public getImsVtCallProviderImpl()Lcom/huawei/ims/vt/ImsVtCallProviderImpl;
    .registers 2

    .line 393
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 395
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 396
    const/4 v0, 0x0

    return-object v0

    .line 398
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVtCallProviderImpl:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    return-object v0
.end method

.method public getInternalCallType()I
    .registers 4

    .line 1330
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1332
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1333
    const/16 v0, 0xa

    return v0

    .line 1336
    :cond_c
    const/16 v0, 0xa

    .line 1337
    .local v0, "callType":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v1, :cond_1f

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v1, :cond_1f

    .line 1338
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v0

    goto :goto_2e

    .line 1339
    :cond_1f
    iget v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2e

    .line 1340
    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v0

    .line 1342
    :cond_2e
    :goto_2e
    return v0
.end method

.method getInternalState()Lcom/huawei/ims/DriverImsCall$State;
    .registers 4

    .line 1311
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1312
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 1315
    :cond_9
    const/4 v0, 0x0

    .line 1316
    .local v0, "state":Lcom/huawei/ims/DriverImsCall$State;
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v1, :cond_11

    .line 1317
    iget-object v0, v1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    goto :goto_18

    .line 1318
    :cond_11
    iget v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 1319
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    .line 1321
    :cond_18
    :goto_18
    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 1236
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1238
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1239
    const/4 v0, 0x0

    return-object v0

    .line 1241
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMediaId()I
    .registers 3

    .line 1191
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1193
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_b

    .line 1194
    return v1

    .line 1196
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v0, Lcom/huawei/ims/ImsCallProfiles;->callMediaId:I

    :cond_13
    return v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 1267
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1269
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1270
    const/4 v0, 0x0

    return-object v0

    .line 1273
    :cond_b
    const/4 v0, 0x0

    .line 1275
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_15

    .line 1276
    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 1278
    :cond_15
    const-string v1, "HwImsCallSessionImpl"

    const-string v2, "Call Profile null! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :goto_1c
    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    .line 1251
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1253
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1254
    const/4 v0, 0x0

    return-object v0

    .line 1256
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 1291
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1293
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1294
    const/4 v0, -0x1

    return v0

    .line 1296
    :cond_b
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3

    .line 2198
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2200
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2201
    return-object v1

    .line 2203
    :cond_b
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtSupported()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2204
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVtCallProviderImpl:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0

    .line 2206
    :cond_18
    return-object v1
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "hoType"    # I
    .param p2, "srcTech"    # I
    .param p3, "targetTech"    # I
    .param p4, "extraType"    # I
    .param p5, "extraInfo"    # [B
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "errorMessage"    # Ljava/lang/String;

    .line 832
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hoType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "srcTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " targetTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_30

    .line 837
    return-void

    .line 839
    :cond_30
    const/4 v0, 0x0

    .line 840
    .local v0, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsCallSessionImpl;->transHandoverErrorCode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 841
    invoke-direct {p0, p2, p3}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateRate(II)V

    .line 842
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v1, :cond_5b

    .line 843
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->isHandleHandoveSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 844
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, p2, p3, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 845
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_5b

    .line 847
    :cond_56
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, p2, p3, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 850
    :cond_5b
    :goto_5b
    return-void
.end method

.method public handleOnHoldTone(Z)V
    .registers 4
    .param p1, "isStartOnHoldLocalTone"    # Z

    .line 2329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHoldTone: isStartOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 2330
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_1f

    goto :goto_5d

    .line 2334
    :cond_1f
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_35

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_35

    .line 2335
    const-string v0, "onHoldTone: current call state is not active or holding, ignore"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 2336
    return-void

    .line 2339
    :cond_35
    if-eqz p1, :cond_46

    .line 2340
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2341
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_5c

    .line 2342
    :cond_46
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez v0, :cond_5c

    .line 2343
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x3

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2344
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2346
    :cond_5c
    :goto_5c
    return-void

    .line 2331
    :cond_5d
    :goto_5d
    return-void
.end method

.method public hangupForegroundResumeBackground(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 1955
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1957
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1958
    return-void

    .line 1961
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangupForegroundResumeBackground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1963
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1964
    return-void
.end method

.method public hangupWaitingOrBackground(I)V
    .registers 5
    .param p1, "reason"    # I

    .line 1968
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1970
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1971
    return-void

    .line 1974
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangupWaitingOrBackground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1976
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1977
    return-void
.end method

.method public hasMediaIdValid()Z
    .registers 3

    .line 1206
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1208
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1209
    return v1

    .line 1211
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallProfiles;->hasMediaIdValid()Z

    move-result v1

    :cond_15
    return v1
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 5
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1997
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1999
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2000
    return-void

    .line 2003
    :cond_a
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "hold requested."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 2005
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .registers 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2122
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2124
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2125
    return-void

    .line 2128
    :cond_a
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2129
    return-void
.end method

.method protected invokeCallResume(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 749
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "invokeCallResume"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 751
    return-void
.end method

.method public isCallActive()Z
    .registers 4

    .line 1916
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1918
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1919
    return v1

    .line 1921
    :cond_b
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v0

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public isConfInProgress()Z
    .registers 2

    .line 1729
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1731
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1732
    const/4 v0, 0x0

    return v0

    .line 1734
    :cond_b
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    return v0
.end method

.method public isHangup()Z
    .registers 2

    .line 2416
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsHangup:Z

    return v0
.end method

.method public isHwCustCode(I)Z
    .registers 3
    .param p1, "code"    # I

    .line 2054
    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_b

    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_9

    goto :goto_b

    .line 2057
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 2055
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public isInCall()Z
    .registers 4

    .line 1450
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1452
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1453
    const/4 v0, 0x0

    return v0

    .line 1456
    :cond_b
    const/4 v0, 0x0

    .line 1457
    .local v0, "isInCall":Z
    sget-object v1, Lcom/huawei/ims/HwImsCallSessionImpl$1;->$SwitchMap$com$huawei$ims$DriverImsCall$State:[I

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v2, v2, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v2}, Lcom/huawei/ims/DriverImsCall$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    goto :goto_1e

    .line 1464
    :pswitch_1c
    const/4 v0, 0x1

    .line 1465
    nop

    .line 1469
    :goto_1e
    return v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public isMtCall()Z
    .registers 2

    .line 2388
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsMtCall:Z

    return v0
.end method

.method public isMultiparty()Z
    .registers 3

    .line 1432
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1434
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1435
    return v1

    .line 1437
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v0, :cond_10

    .line 1438
    return v1

    .line 1440
    :cond_10
    iget-boolean v0, v0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    return v0
.end method

.method public isMultipartyCall()Z
    .registers 3

    .line 1389
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1391
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 1392
    return v1

    .line 1394
    :cond_b
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v0, :cond_11

    iget-boolean v1, v0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    :cond_11
    return v1
.end method

.method public merge()V
    .registers 4

    .line 2066
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2068
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v0, :cond_e

    goto :goto_23

    .line 2072
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 2081
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceCallTracker;->setConfInProgress(Z)V

    .line 2082
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->conference(Landroid/os/Message;)V

    .line 2083
    return-void

    .line 2069
    :cond_23
    :goto_23
    return-void
.end method

.method public notifyConfInfo([B)V
    .registers 3
    .param p1, "confInfoBytes"    # [B

    .line 2229
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2231
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2232
    return-void

    .line 2234
    :cond_a
    return-void
.end method

.method public notifyTtyModeChange(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 803
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTY mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_20

    .line 808
    return-void

    .line 811
    :cond_20
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_28

    .line 813
    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTtyModeReceived(I)V

    goto :goto_2d

    .line 815
    :cond_28
    const-string v0, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :goto_2d
    return-void
.end method

.method public notifyUnsolCallModify(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .registers 5
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 425
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 427
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 428
    return-void

    .line 431
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 433
    .local v0, "listenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_21

    .line 434
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 435
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onUnsolCallModify(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 437
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_21
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2025
    if-eqz p2, :cond_70

    if-nez p3, :cond_5

    goto :goto_70

    .line 2028
    :cond_5
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsCallSessionImpl onTransact code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    const/4 v0, 0x0

    .line 2032
    .local v0, "callType":I
    const/16 v2, 0x7d1

    const-string v3, "com.huawei.ims.HwImsCallSessionImpl"

    if-eq p1, v2, :cond_56

    const/16 v2, 0x7d2

    if-eq p1, v2, :cond_3e

    .line 2046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HwImsCallSessionImpl can not support the code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 2040
    :cond_3e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2042
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    .line 2043
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2042
    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V

    .line 2044
    goto :goto_6e

    .line 2034
    :cond_56
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2036
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    .line 2037
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2036
    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V

    .line 2038
    nop

    .line 2049
    :goto_6e
    const/4 v1, 0x1

    return v1

    .line 2026
    .end local v0    # "callType":I
    :cond_70
    :goto_70
    const/4 v0, 0x0

    return v0
.end method

.method public registerForRingbackTone()V
    .registers 5

    .line 2423
    const-string v0, "registerForRingbackTone"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_11

    .line 2425
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2427
    :cond_11
    return-void
.end method

.method public reject(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 1893
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1895
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1896
    return-void

    .line 1899
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsCallRejectCause(I)I

    move-result v0

    .line 1901
    .local v0, "cause":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reject cause"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4a

    .line 1903
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/huawei/ims/ImsRIL;->rejectImsCallForCause(IILandroid/os/Message;)V

    goto :goto_58

    .line 1905
    :cond_4a
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->hangupConnection(ILandroid/os/Message;)V

    .line 1907
    :goto_58
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1908
    return-void
.end method

.method public removeListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V
    .registers 4
    .param p1, "listener"    # Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 368
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 370
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 371
    return-void

    .line 374
    :cond_a
    if-eqz p1, :cond_2f

    .line 380
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 381
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 383
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 385
    :goto_2e
    return-void

    .line 375
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .registers 4
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2138
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2140
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2141
    return-void

    .line 2143
    :cond_a
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeParticipants user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    return-void
.end method

.method public reportNewConferenceCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 5
    .param p1, "confCallSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 1511
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1513
    const-string v0, "HwImsCallSessionImpl"

    if-eqz p1, :cond_1c

    .line 1514
    const-string v1, "Calling callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iput-object p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 1516
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_21

    .line 1518
    :cond_1c
    const-string v1, "Null confCallSession! Not calling callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :goto_21
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 5
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2014
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2016
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2017
    return-void

    .line 2019
    :cond_a
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "resume requested."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 2021
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 4
    .param p1, "chr"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 2157
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2159
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2160
    return-void

    .line 2163
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsRIL;->sendDtmf(CLandroid/os/Message;)V

    .line 2164
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .registers 3
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 2216
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2218
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2219
    return-void

    .line 2221
    :cond_a
    return-void
.end method

.method public final setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 1480
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1482
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1483
    return-void

    .line 1485
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 1486
    return-void
.end method

.method public setMute(Z)V
    .registers 5
    .param p1, "isMuted"    # Z

    .line 1495
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1497
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1498
    return-void

    .line 1500
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->setMute(ZLandroid/os/Message;)V

    .line 1501
    return-void
.end method

.method public setNewSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .registers 3
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 1743
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1745
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1746
    return-void

    .line 1748
    :cond_a
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 10
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1760
    if-nez p2, :cond_3

    .line 1761
    return-void

    .line 1763
    :cond_3
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1765
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1766
    return-void

    .line 1768
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsRIL;->getChrReportPhoneId()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "HwIms"

    const-string v4, "ImsRIL"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 1771
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1772
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1774
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 1775
    iput-object p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1777
    const/4 v1, 0x3

    .line 1778
    .local v1, "domain":I
    new-instance v3, Lcom/huawei/ims/ImsCallProfiles;

    iget v4, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 1779
    .local v3, "details":Lcom/huawei/ims/ImsCallProfiles;
    invoke-direct {p0, p2, v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->extractProfileExtrasIntoImsCallProfile(Landroid/telephony/ims/ImsCallProfile;Lcom/huawei/ims/ImsCallProfiles;)V

    .line 1780
    iget-object v4, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v5, "OemCallExtras"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1781
    .local v4, "callExtras":Landroid/os/Bundle;
    if-eqz v4, :cond_56

    .line 1782
    const-string v5, "encrypt_call_flag"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/huawei/ims/ImsCallProfiles;->isEncrypt:I

    .line 1783
    iget v2, v3, Lcom/huawei/ims/ImsCallProfiles;->isEncrypt:I

    iput v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mEncryptFlagMo:I

    .line 1785
    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "START isEncrypt = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mEncryptFlagMo:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "HwImsCallSessionImpl"

    invoke-static {v5, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const-string v2, "oir"

    invoke-virtual {p2, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    .line 1787
    .local v2, "clir":I
    iget-object v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v6, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v5, p1, v2, v3, v0}, Lcom/huawei/ims/ImsRIL;->dial(Ljava/lang/String;ILcom/huawei/ims/ImsCallProfiles;Landroid/os/Message;)V

    .line 1788
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 11
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1828
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1830
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_43

    if-eqz p1, :cond_43

    if-nez p2, :cond_e

    goto :goto_43

    .line 1834
    :cond_e
    iput-object p2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1835
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 1836
    const/4 v1, 0x0

    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1837
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 1838
    .local v2, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isConferenceUri"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProfiles;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    .line 1841
    .local v3, "mMoExtras":[Ljava/lang/String;
    new-instance v4, Lcom/huawei/ims/ImsCallProfiles;

    iget v5, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v3}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 1843
    .local v4, "details":Lcom/huawei/ims/ImsCallProfiles;
    iget-object v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    aget-object v6, p1, v1

    iget-object v7, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v5, v6, v1, v4, v0}, Lcom/huawei/ims/ImsRIL;->dial(Ljava/lang/String;ILcom/huawei/ims/ImsCallProfiles;Landroid/os/Message;)V

    .line 1844
    return-void

    .line 1831
    .end local v2    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "mMoExtras":[Ljava/lang/String;
    .end local v4    # "details":Lcom/huawei/ims/ImsCallProfiles;
    :cond_43
    :goto_43
    return-void
.end method

.method public startDtmf(C)V
    .registers 4
    .param p1, "chr"    # C

    .line 2175
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2177
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2178
    return-void

    .line 2180
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->startDtmf(CLandroid/os/Message;)V

    .line 2181
    return-void
.end method

.method public stopDtmf()V
    .registers 3

    .line 2188
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2190
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2191
    return-void

    .line 2193
    :cond_a
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->stopDtmf(Landroid/os/Message;)V

    .line 2194
    return-void
.end method

.method public terminate(I)V
    .registers 6
    .param p1, "reason"    # I

    .line 1932
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1934
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1935
    return-void

    .line 1938
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->getPendingSessionList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 1943
    invoke-virtual {v0}, Lcom/huawei/ims/ImsServiceCallTracker;->getPendingSessionList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_47

    .line 1944
    const-string v0, "terminate: Pending M0, wait for correct call id "

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z

    .line 1946
    iput p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mPendingDisconnectReason:I

    goto :goto_55

    .line 1948
    :cond_47
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->hangupConnection(ILandroid/os/Message;)V

    .line 1950
    :goto_55
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1951
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .registers 2

    .line 2361
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2362
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2350
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " callid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2093
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2095
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2096
    return-void

    .line 2098
    :cond_a
    return-void
.end method

.method public updateCall(Lcom/huawei/ims/DriverImsCall;)V
    .registers 8
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 580
    if-nez p1, :cond_8

    .line 581
    const-string v0, "updateCall, dcUpdate is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 582
    return-void

    .line 584
    :cond_8
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCall for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_28

    .line 589
    return-void

    .line 592
    :cond_28
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v3, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v2

    .line 594
    .local v0, "isStatesSame":Z
    :goto_37
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 595
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverImsCall;)V

    .line 597
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v4, :cond_4b

    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v4, :cond_4b

    .line 598
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsAcceptPending:Z

    .line 601
    :cond_4b
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v3, p1}, Lcom/huawei/ims/ImsCallAdapter;->update(Lcom/huawei/ims/DriverImsCall;)V

    .line 603
    sget-object v3, Lcom/huawei/ims/HwImsCallSessionImpl$1;->$SwitchMap$com$huawei$ims$DriverImsCall$State:[I

    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v4}, Lcom/huawei/ims/DriverImsCall$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_b2

    goto :goto_76

    .line 622
    :pswitch_5e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCallToEnd()V

    .line 623
    goto :goto_76

    .line 619
    :pswitch_62
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->extractImsCallProfileIntoCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 620
    goto :goto_76

    .line 614
    :pswitch_66
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCallToAlerting(Lcom/huawei/ims/DriverImsCall;)V

    .line 615
    goto :goto_76

    .line 611
    :pswitch_6a
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCallToDialing(Lcom/huawei/ims/DriverImsCall;)V

    .line 612
    goto :goto_76

    .line 608
    :pswitch_6e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCallToHolding()V

    .line 609
    goto :goto_76

    .line 605
    :pswitch_72
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateCallToActive(Lcom/huawei/ims/DriverImsCall;)V

    .line 606
    nop

    .line 629
    :goto_76
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateLocalDc(Lcom/huawei/ims/DriverImsCall;)Z

    move-result v3

    .line 630
    .local v3, "isChanged":Z
    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v4, v5, :cond_81

    goto :goto_82

    :cond_81
    move v1, v2

    .line 631
    .local v1, "isCallNotEnded":Z
    :goto_82
    if-eqz v0, :cond_b1

    if-eqz v1, :cond_b1

    if-eqz v3, :cond_b1

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call details updated. currentImsCallProfile= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v4, v4, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to newImsCallProfile= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 634
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 636
    :cond_b1
    return-void

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_62
        :pswitch_5e
    .end packed-switch
.end method

.method public updateConfSession(Lcom/huawei/ims/DriverImsCall;)V
    .registers 4
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 782
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConfSession for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_20

    .line 787
    return-void

    .line 790
    :cond_20
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v1, :cond_33

    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    if-eqz v0, :cond_33

    .line 791
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 792
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget v0, v0, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 794
    :cond_33
    return-void
.end method

.method updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V
    .registers 6
    .param p1, "suppSvcNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;
    .param p2, "isStartOnHoldLocalTone"    # Z

    .line 2289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isStartOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 2292
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2293
    return-void

    .line 2298
    :cond_23
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    if-nez v0, :cond_2d

    .line 2299
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    goto :goto_6b

    .line 2300
    :cond_2d
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6b

    .line 2301
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_56

    const/4 v2, 0x3

    if-eq v0, v2, :cond_40

    .line 2317
    const-string v0, "Non-Hold/Resume supp svc code received."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    goto :goto_6b

    .line 2310
    :cond_40
    const-string v0, "updateSuppServiceInfo SUPP_SVC_CODE_MT_RESUME"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 2311
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2312
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionResumed(Z)V

    .line 2314
    :cond_4e
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2315
    goto :goto_6b

    .line 2303
    :cond_56
    const-string v0, "updateSuppServiceInfo SUPP_SVC_CODE_MT_HOLD"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 2304
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2305
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionHold(Z)V

    .line 2307
    :cond_64
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2321
    :cond_6b
    :goto_6b
    return-void
.end method

.method public updateVtGlobalCapability(Z)V
    .registers 4
    .param p1, "isVtEnabled"    # Z

    .line 2242
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVtGlobalCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V

    .line 2245
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2246
    return-void

    .line 2248
    :cond_1e
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eq v0, p1, :cond_3a

    .line 2249
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 2250
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v0, :cond_3a

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_3a

    .line 2251
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverImsCall;)V

    .line 2252
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2255
    :cond_3a
    return-void
.end method
