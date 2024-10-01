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

.field private static final IS_IMS_Call_VOLTE:I = 0x0

.field private static final IS_IMS_Call_VOWIFI:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsCallSessionImpl"

.field private static final MAX_END_CALL_DURATION:I = 0x88b8

.field private static final MEXTI_BACKUP_NUMBER:Ljava/lang/String; = "nexti_backup_number"

.field private static final MEXTI_SEARCH_NUMBER:Ljava/lang/String; = "nexti_search_number"

.field private static final NUMBERMARKINFO_NUMBER:Ljava/lang/String; = "numbermarkinfo_number"

.field private static final RAT_TYPE_FROM_MODE_IGNORE:I = -0x1

.field private static final REMOTE_CALL_DECLINED:Ljava/lang/String; = "Declined"

.field public static final SUPP_NOTIFICATION_TYPE_MO:I = 0x0

.field public static final SUPP_NOTIFICATION_TYPE_MT:I = 0x1

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3

.field private static final WIFI_CALL_DROP_BACKHAUL_CONGESTED:Ljava/lang/String; = "Call is dropped due to Wi-Fi backhaul is congested"

.field private static final WIFI_CALL_DROP_SIGNAL_DEGRADED:Ljava/lang/String; = "Call is dropped due to Wi-Fi signal is degraded"


# instance fields
.field private isMtCall:Z

.field private mAcceptPending:Z

.field private mCallId:I

.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mCallee:Ljava/lang/String;

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

.field private mDc:Lcom/huawei/ims/DriverImsCall;

.field private mDisconnCause:I

.field private mHandler:Landroid/os/Handler;

.field private mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

.field private mImsVTCallProviderImpl:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

.field protected mIsConfInProgress:Z

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

.field private mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private mRingbackToneRequest:Z

.field private mState:I

.field private mTracker:Lcom/huawei/ims/ImsServiceCallTracker;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceCallTracker;)V
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;
    .param p3, "imsRil"    # Lcom/huawei/ims/ImsRIL;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "tracker"    # Lcom/huawei/ims/ImsServiceCallTracker;

    .line 195
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    .line 119
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 123
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 125
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 127
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 128
    new-instance v1, Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-direct {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 133
    new-instance v2, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;

    invoke-direct {v2, p0}, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 135
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 139
    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I

    .line 144
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 151
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mAcceptPending:Z

    .line 153
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 154
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 162
    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 163
    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 165
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->isMtCall:Z

    .line 196
    iput-object p3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 197
    invoke-virtual {p0, p2}, Lcom/huawei/ims/HwImsCallSessionImpl;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 198
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p2, v2, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 199
    iput-object p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 203
    iput-object p5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 205
    new-instance v2, Lcom/huawei/ims/ImsCallAdapter;

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v2, p0, v3}, Lcom/huawei/ims/ImsCallAdapter;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 208
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    new-instance v2, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    invoke-direct {v2, p0, v3}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVTCallProviderImpl:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    .line 210
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVTCallProviderImpl:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->addListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V

    .line 214
    :cond_0
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->isMtCall:Z

    .line 216
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v0}, Lcom/huawei/ims/ImsRIL;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/DriverImsCall;Lcom/huawei/ims/ImsRIL;Landroid/content/Context;Lcom/huawei/ims/ImsServiceCallTracker;)V
    .locals 4
    .param p1, "call"    # Lcom/huawei/ims/DriverImsCall;
    .param p2, "imsRil"    # Lcom/huawei/ims/ImsRIL;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lcom/huawei/ims/ImsServiceCallTracker;

    .line 221
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    .line 119
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 123
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 125
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 127
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 128
    new-instance v1, Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-direct {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 133
    new-instance v2, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;

    invoke-direct {v2, p0}, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 135
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 139
    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I

    .line 144
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 151
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mAcceptPending:Z

    .line 153
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    .line 154
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 162
    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 163
    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 165
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->isMtCall:Z

    .line 222
    iput-object p2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 224
    new-instance v0, Lcom/huawei/ims/DriverImsCall;

    invoke-direct {v0, p1}, Lcom/huawei/ims/DriverImsCall;-><init>(Lcom/huawei/ims/DriverImsCall;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    .line 225
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget v0, v0, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 229
    iput-object p4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    .line 230
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 233
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverImsCall;)V

    .line 235
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/ImsCallAdapter;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsRIL;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 238
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVTCallProviderImpl:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    .line 240
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVTCallProviderImpl:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->addListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->isMtCall:Z

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/HwImsCallSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/huawei/ims/HwImsCallSessionImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRingbackToneRequest:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/huawei/ims/HwImsCallSessionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRingbackToneRequest:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->doClose()V

    return-void
.end method

.method static synthetic access$1200(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->initCallLists()V

    return-void
.end method

.method static synthetic access$1300(Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/huawei/ims/HwImsCallSessionImpl;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsCallSessionImpl;->convertMessageFromCauseCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsCallSessionImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    return-object v0
.end method

.method static synthetic access$402(Lcom/huawei/ims/HwImsCallSessionImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mAcceptPending:Z

    return p1
.end method

.method static synthetic access$502(Lcom/huawei/ims/HwImsCallSessionImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p1, "x1"    # I

    .line 79
    iput p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I

    return p1
.end method

.method static synthetic access$600(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsServiceCallTracker;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/HwImsCallSessionImpl;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/DriverImsCall;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 79
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionMerged()V

    return-void
.end method

.method private static checkAccessPermission()V
    .locals 3

    .line 2161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2162
    .local v0, "callingUid":I
    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2166
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Phone is able to call this API"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2163
    :cond_1
    :goto_0
    return-void
.end method

.method private cleanRilRecovery()V
    .locals 2

    .line 1797
    const-string v0, "cleanRilRecovery"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1798
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1799
    return-void
.end method

.method private convertMessageFromCauseCode(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "causeCode"    # I
    .param p2, "originMessage"    # Ljava/lang/String;

    .line 942
    move-object v0, p2

    .line 943
    .local v0, "ret":Ljava/lang/String;
    const/16 v1, 0x44c

    if-eq p1, v1, :cond_1

    const/16 v1, 0xbb9

    if-eq p1, v1, :cond_0

    .line 951
    const-string v1, "HwImsCallSessionImpl"

    const-string v2, "just use origin message."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 948
    :cond_0
    const-string v0, "Call is dropped due to Wi-Fi backhaul is congested"

    .line 949
    goto :goto_0

    .line 945
    :cond_1
    const-string v0, "Call is dropped due to Wi-Fi signal is degraded"

    .line 946
    nop

    .line 953
    :goto_0
    return-object v0
.end method

.method private doClose()V
    .locals 4

    .line 976
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "doClose!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "Received Session Close request while it is alive"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 983
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->dispose()V

    .line 985
    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lcom/huawei/ims/ImsRIL;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 990
    :cond_2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifySessionClosed()V

    .line 991
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 992
    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 993
    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    .line 994
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 995
    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 996
    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 997
    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 998
    iput v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 1002
    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1003
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 1008
    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVTCallProviderImpl:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    .line 1010
    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    .line 1011
    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1014
    :cond_3
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "doClose end"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return-void
.end method

.method private extractImsCallProfileIntoCallProfile(Lcom/huawei/ims/DriverImsCall;)V
    .locals 9
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 1327
    if-nez p1, :cond_0

    .line 1328
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "Null dcUpdate in extractImsCallProfileIntoCallProfile"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    return-void

    .line 1331
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 1341
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1343
    const/4 v0, 0x0

    .line 1344
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1345
    .local v1, "keyAndValue":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1347
    .local v2, "namespaceAndKey":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    .local v0, "i":I
    .local v1, "key":Ljava/lang/String;
    .local v2, "keyAndValue":[Ljava/lang/String;
    .local v4, "namespaceAndKey":[Ljava/lang/String;
    :goto_0
    iget-object v5, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v5, v5, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 1348
    iget-object v5, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v5, v5, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_3

    .line 1349
    iget-object v5, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v5, v5, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1351
    aget-object v5, v2, v3

    if-eqz v5, :cond_2

    .line 1356
    aget-object v5, v2, v3

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 1357
    aget-object v5, v2, v3

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1358
    aget-object v1, v4, v6

    goto :goto_1

    .line 1360
    :cond_1
    aget-object v1, v2, v3

    .line 1371
    :goto_1
    const-string v5, "HwImsCallSessionImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ImsCallProfiles Extra key= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " value= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    aget-object v6, v2, v6

    invoke-virtual {v5, v1, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1363
    :cond_2
    const-string v3, "HwImsCallSessionImpl"

    const-string v5, "Bad extra string from lower layers!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    return-void

    .line 1367
    :cond_3
    const-string v3, "HwImsCallSessionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Element "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is null in ImsCallProfiles Extras!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    return-void

    .line 1377
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyAndValue":[Ljava/lang/String;
    .end local v4    # "namespaceAndKey":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private extractProfileExtrasIntoImsCallProfile(Landroid/telephony/ims/ImsCallProfile;Lcom/huawei/ims/ImsCallProfiles;)V
    .locals 11
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "details"    # Lcom/huawei/ims/ImsCallProfiles;

    .line 1607
    iget-object v0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "OemCallExtras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1608
    .local v0, "callExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 1609
    const/4 v1, 0x0

    .line 1610
    .local v1, "extraString":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1611
    .local v2, "extras":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1612
    .local v3, "i":I
    const/4 v4, 0x0

    .line 1615
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1616
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, ""

    goto :goto_1

    .line 1617
    :cond_0
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    move-object v4, v7

    .line 1618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1619
    move-object v7, v1

    .line 1621
    .local v7, "extraStringForOutput":Ljava/lang/String;
    const-string v8, "numbermarkinfo_number"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "nexti_search_number"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "nexti_backup_number"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1622
    :cond_1
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1623
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1626
    :cond_2
    const-string v8, "HwImsCallSessionImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Packing extra string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    aput-object v1, v2, v3

    .line 1628
    add-int/lit8 v3, v3, 0x1

    .line 1629
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "extraStringForOutput":Ljava/lang/String;
    goto/16 :goto_0

    .line 1630
    :cond_3
    invoke-virtual {p2, v2}, Lcom/huawei/ims/ImsCallProfiles;->setExtras([Ljava/lang/String;)V

    .line 1631
    .end local v1    # "extraString":Ljava/lang/String;
    .end local v2    # "extras":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_2

    .line 1632
    :cond_4
    const-string v1, "HwImsCallSessionImpl"

    const-string v2, "No extras in ImsCallProfile to map into ImsCallProfiles."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :goto_2
    return-void
.end method

.method private getRadioTechFromDriverCall(I)Ljava/lang/String;
    .locals 3
    .param p1, "imsDomain"    # I

    .line 2174
    const/4 v0, 0x0

    .line 2175
    .local v0, "radioTech":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2180
    :pswitch_0
    const/16 v0, 0x12

    .line 2181
    goto :goto_0

    .line 2177
    :pswitch_1
    const/16 v0, 0xe

    .line 2178
    nop

    .line 2185
    :goto_0
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

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2186
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRestrictCause(I[Lcom/huawei/ims/ImsServiceState;)I
    .locals 6
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lcom/huawei/ims/ImsServiceState;

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "cause":I
    if-eqz p2, :cond_1

    .line 408
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 409
    .local v4, "srv":Lcom/huawei/ims/ImsServiceState;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/huawei/ims/ImsServiceState;->type:I

    if-ne v5, p1, :cond_0

    iget-object v5, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 411
    iget-object v1, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    aget-object v1, v1, v2

    iget v0, v1, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    .line 412
    goto :goto_1

    .line 408
    .end local v4    # "srv":Lcom/huawei/ims/ImsServiceState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    :cond_1
    :goto_1
    return v0
.end method

.method private initCallLists()V
    .locals 2

    .line 2059
    const-string v0, "initCallLists"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2062
    .local v0, "mmTelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    if-eqz v1, :cond_0

    .line 2063
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsServiceCallTracker;->handleCalls(Ljava/util/ArrayList;)V

    .line 2065
    :cond_0
    return-void
.end method

.method private isHandleHandoveSuccess(I)Z
    .locals 1
    .param p1, "hoType"    # I

    .line 711
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isImsCallSessionAlive()Z
    .locals 2

    .line 969
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSessionValid()Z
    .locals 3

    .line 957
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 958
    .local v0, "isValid":Z
    :goto_0
    if-nez v0, :cond_1

    .line 959
    const-string v1, "HwImsCallSessionImpl"

    const-string v2, "Session is closed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_1
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 2153
    const-string v0, "HwImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 2157
    const-string v0, "HwImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    return-void
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 4
    .param p0, "codec"    # Ljava/lang/String;

    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, "audioQuality":I
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 1387
    return v1

    .line 1389
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "GSM_HR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_1
    const-string v1, "GSM_FR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_2
    const-string v1, "EVRC_B"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "AMR_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "AMR_NB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "GSM_EFR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v3, "QCELP13K"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_7
    const-string v1, "EVRC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_8
    const-string v1, "EVRC_WB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v1, "EVRC_NW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1421
    const-string v1, "HwImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1418
    :pswitch_0
    const/16 v0, 0xa

    .line 1419
    goto :goto_2

    .line 1415
    :pswitch_1
    const/16 v0, 0x9

    .line 1416
    goto :goto_2

    .line 1412
    :pswitch_2
    const/16 v0, 0x8

    .line 1413
    goto :goto_2

    .line 1409
    :pswitch_3
    const/4 v0, 0x2

    .line 1410
    goto :goto_2

    .line 1406
    :pswitch_4
    const/4 v0, 0x1

    .line 1407
    goto :goto_2

    .line 1403
    :pswitch_5
    const/4 v0, 0x7

    .line 1404
    goto :goto_2

    .line 1400
    :pswitch_6
    const/4 v0, 0x6

    .line 1401
    goto :goto_2

    .line 1397
    :pswitch_7
    const/4 v0, 0x5

    .line 1398
    goto :goto_2

    .line 1394
    :pswitch_8
    const/4 v0, 0x4

    .line 1395
    goto :goto_2

    .line 1391
    :pswitch_9
    const/4 v0, 0x3

    .line 1392
    nop

    .line 1424
    :goto_2
    const-string v1, "HwImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioQuality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x268dd77a -> :sswitch_9
        -0x268dd678 -> :sswitch_8
        0x20aaa2 -> :sswitch_7
        0x30932dd2 -> :sswitch_6
        0x3de5f773 -> :sswitch_5
        0x734ec6ed -> :sswitch_4
        0x734ec804 -> :sswitch_3
        0x7aa095e5 -> :sswitch_2
        0x7dde20ea -> :sswitch_1
        0x7dde2128 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mapCallTypeFromProfile(I)I
    .locals 4
    .param p1, "callType"    # I

    .line 1434
    const/4 v0, 0x0

    .line 1435
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    .line 1455
    :pswitch_0
    const-string v1, "HwImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported callType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1452
    :pswitch_1
    const/4 v0, 0x4

    .line 1453
    goto :goto_0

    .line 1449
    :pswitch_2
    const/4 v0, 0x2

    .line 1450
    goto :goto_0

    .line 1446
    :pswitch_3
    const/4 v0, 0x1

    .line 1447
    goto :goto_0

    .line 1443
    :pswitch_4
    const/4 v0, 0x3

    .line 1444
    goto :goto_0

    .line 1440
    :pswitch_5
    const/4 v0, 0x0

    .line 1441
    goto :goto_0

    .line 1437
    :pswitch_6
    const/16 v0, 0xa

    .line 1438
    nop

    .line 1458
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private notifyCallSessionHold(Z)V
    .locals 3
    .param p1, "mtHold"    # Z

    .line 336
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 338
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 342
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 343
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 344
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifyCallSessionMerged()V
    .locals 3

    .line 375
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 377
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 381
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 382
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 383
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onCallSessionMerged()V

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifyCallSessionResumed(Z)V
    .locals 3
    .param p1, "mtResume"    # Z

    .line 349
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 351
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 355
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 356
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 357
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifyCallSessionStarted()V
    .locals 3

    .line 362
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 364
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 368
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 369
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 370
    .local v2, "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onCallSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "i":I
    .end local v2    # "listener":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method private notifySessionClosed()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 315
    .local v0, "mListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 316
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 317
    .local v2, "l":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onClosed(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_0
    return-void
.end method

.method private notifySessionDisconnected()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 306
    .local v0, "mListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 307
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 308
    .local v2, "l":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onDisconnected(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_0
    return-void
.end method

.method private setCapabilitiesInProfiles(Lcom/huawei/ims/DriverImsCall;)V
    .locals 5
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 601
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v2, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 603
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v3, v3, Lcom/huawei/ims/ImsCallProfiles;->extras:[Ljava/lang/String;

    const-string v4, "Codec"

    .line 604
    invoke-virtual {v2, v3, v4}, Lcom/huawei/ims/ImsCallProfiles;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 606
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x2

    iput v2, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 612
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_3

    .line 613
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 614
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v0, v0, Lcom/huawei/ims/ImsCallProfiles;->peerAbility:[Lcom/huawei/ims/ImsServiceState;

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v2, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 616
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 617
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v2, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v2, v1, :cond_2

    .line 618
    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v2, v2, Lcom/huawei/ims/ImsCallProfiles;->peerAbility:[Lcom/huawei/ims/ImsServiceState;

    .line 616
    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getRestrictCause(I[Lcom/huawei/ims/ImsServiceState;)I

    move-result v1

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 622
    :cond_3
    return-void
.end method

.method private transHandoverErrorCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method private triggerRilRecoveryDelayed()V
    .locals 4

    .line 1785
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1786
    const-string v0, "Call Session terminated. Don\'t trigger ril recovery."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1787
    return-void

    .line 1790
    :cond_0
    const-string v0, "triggerRilRecoveryDelayed"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 1791
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x88b8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1794
    :cond_1
    return-void
.end method

.method private updateImsCallProfile(Lcom/huawei/ims/DriverImsCall;)V
    .locals 8
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 1466
    if-nez p1, :cond_0

    .line 1467
    const-string v0, "updateImsCallProfile called with dc null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 1468
    return-void

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_1

    .line 1472
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1475
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "oi"

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "cna"

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "oir"

    iget v2, p1, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    .line 1478
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v2

    .line 1477
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1479
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "cnap"

    iget v2, p1, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 1480
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v2

    .line 1479
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1482
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "remote_vt_capability"

    iget v2, p1, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1486
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 1488
    .local v0, "ratTypeFromModem":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1489
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallRadioTech"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getRadioTechFromDriverCall(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1491
    :cond_2
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v2

    .line 1492
    .local v2, "hwTelephonyManager":Landroid/telephony/HwTelephonyManager;
    if-eqz v2, :cond_3

    .line 1493
    invoke-virtual {v2}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v3

    .line 1494
    .local v3, "default4GSlotId":I
    invoke-virtual {v2, v3}, Landroid/telephony/HwTelephonyManager;->getImsDomain(I)I

    move-result v4

    .line 1495
    .local v4, "imsRegDomain":I
    iget-object v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v6, "CallRadioTech"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getRadioTechFromDriverCall(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v5, "HwImsCallSessionImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imsRegDomain = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ,default4GSlotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    .end local v2    # "hwTelephonyManager":Landroid/telephony/HwTelephonyManager;
    .end local v3    # "default4GSlotId":I
    .end local v4    # "imsRegDomain":I
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "redirect_number"

    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "redirect_number_presentation"

    iget v4, p1, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 1505
    invoke-static {v4}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result v4

    .line 1504
    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1507
    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v2, v2, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1535
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x0

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1537
    goto :goto_1

    .line 1519
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x4

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1520
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v2, 0x3

    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1522
    goto :goto_1

    .line 1529
    :pswitch_2
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x6

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1530
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v4, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1532
    goto :goto_1

    .line 1524
    :pswitch_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x5

    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1525
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v3, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1527
    goto :goto_1

    .line 1514
    :pswitch_4
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1515
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v1, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1517
    goto :goto_1

    .line 1509
    :cond_4
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v4, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1510
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput v1, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1512
    nop

    .line 1543
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLocalDc(Lcom/huawei/ims/DriverImsCall;)Z
    .locals 4
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v1, :cond_0

    .line 427
    new-instance v1, Lcom/huawei/ims/DriverImsCall;

    invoke-direct {v1, p1}, Lcom/huawei/ims/DriverImsCall;-><init>(Lcom/huawei/ims/DriverImsCall;)V

    iput-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    .line 428
    const/4 v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/DriverImsCall;->update(Lcom/huawei/ims/DriverImsCall;)Z

    move-result v0

    .line 432
    :goto_0
    const-string v1, "HwImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLocalDc is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v0
.end method

.method private updateRate(II)V
    .locals 3
    .param p1, "srcTech"    # I
    .param p2, "targetTech"    # I

    .line 689
    if-ne p1, p2, :cond_0

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "CallRadioTech"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "CallRadioTech"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_1
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1681
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1683
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1685
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mAcceptPending:Z

    if-eqz v0, :cond_1

    .line 1686
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "this call is being accepted..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    return-void

    .line 1689
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mAcceptPending:Z

    .line 1693
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1694
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    .line 1693
    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->acceptCall(Landroid/os/Message;I)V

    .line 1695
    return-void
.end method

.method public final addListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 254
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 256
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    if-eqz p1, :cond_2

    .line 264
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 259
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .line 1024
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1026
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "Close!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1030
    :cond_0
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 1
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 1703
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1705
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1706
    :cond_0
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1916
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1918
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1920
    :cond_0
    return-void
.end method

.method public getCall()Lcom/huawei/ims/DriverImsCall;
    .locals 1

    .line 1145
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1147
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    return-object v0
.end method

.method public getCallDomain()I
    .locals 2

    .line 1178
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1180
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 1182
    :cond_0
    const/4 v0, 0x3

    .line 1183
    .local v0, "callDomain":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v1, :cond_1

    .line 1184
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v1, Lcom/huawei/ims/ImsCallProfiles;->call_domain:I

    .line 1186
    :cond_1
    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 1039
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1041
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1077
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1079
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getCallSubstate()I
    .locals 2

    .line 1195
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1197
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1199
    :cond_0
    const/4 v0, 0x0

    .line 1200
    .local v0, "callSubstate":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v1, :cond_1

    .line 1201
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v1, Lcom/huawei/ims/ImsCallProfiles;->callsubstate:I

    .line 1203
    :cond_1
    return v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .line 1219
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1221
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverCallState()Lcom/huawei/ims/DriverImsCall$State;
    .locals 1

    .line 1226
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1228
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0
.end method

.method public getImsCallAdapter()Lcom/huawei/ims/ImsCallAdapter;
    .locals 1

    .line 389
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 391
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    return-object v0
.end method

.method public getImsCallProfile()Lcom/huawei/ims/ImsCallProfiles;
    .locals 1

    .line 2047
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2049
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v0, :cond_0

    .line 2050
    const/4 v0, 0x0

    return-object v0

    .line 2052
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    return-object v0
.end method

.method public getImsVTCallProviderImpl()Lcom/huawei/ims/vt/ImsVTCallProviderImpl;
    .locals 1

    .line 296
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 298
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVTCallProviderImpl:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    return-object v0
.end method

.method public getInternalCallType()I
    .locals 3

    .line 1164
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1166
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    return v0

    .line 1168
    :cond_0
    const/16 v0, 0xa

    .line 1169
    .local v0, "callType":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    if-eqz v1, :cond_1

    .line 1170
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v0, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    goto :goto_0

    .line 1171
    :cond_1
    iget v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    .line 1172
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, v1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v0

    .line 1174
    :cond_2
    :goto_0
    return v0
.end method

.method getInternalState()Lcom/huawei/ims/DriverImsCall$State;
    .locals 3

    .line 1152
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 1154
    :cond_0
    const/4 v0, 0x0

    .line 1155
    .local v0, "state":Lcom/huawei/ims/DriverImsCall$State;
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v1, :cond_1

    .line 1156
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    goto :goto_0

    .line 1157
    :cond_1
    iget v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1158
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    .line 1160
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1090
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1092
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getMediaId()I
    .locals 2

    .line 1051
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1053
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v0, Lcom/huawei/ims/ImsCallProfiles;->callMediaId:I

    nop

    :cond_1
    return v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1116
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1118
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1120
    :cond_0
    const/4 v0, 0x0

    .line 1122
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_1

    .line 1123
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1125
    :cond_1
    const-string v1, "HwImsCallSessionImpl"

    const-string v2, "Call Profile null! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :goto_0
    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1103
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1105
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1138
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1140
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1141
    :cond_0
    iget v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    .line 2000
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2002
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2003
    :cond_0
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2004
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsVTCallProviderImpl:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0

    .line 2007
    :cond_1
    return-object v1
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hoType"    # I
    .param p2, "srcTech"    # I
    .param p3, "targetTech"    # I
    .param p4, "extraType"    # I
    .param p5, "extraInfo"    # [B
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "errorMessage"    # Ljava/lang/String;

    .line 660
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 662
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hoType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "srcTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetTech: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    const/4 v0, 0x0

    .line 668
    .local v0, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsCallSessionImpl;->transHandoverErrorCode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v0, v1

    .line 670
    invoke-direct {p0, p2, p3}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateRate(II)V

    .line 671
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v1, :cond_2

    .line 672
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->isHandleHandoveSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, p2, p3, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 674
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v1, p2, p3, v0}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 685
    :cond_2
    :goto_0
    return-void
.end method

.method public handleOnHoldTone(Z)V
    .locals 2
    .param p1, "startOnHoldLocalTone"    # Z

    .line 2118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHoldTone: startOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2119
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v0, :cond_1

    return-void

    .line 2122
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_2

    .line 2123
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_2

    .line 2124
    const-string v0, "onHoldTone: current call state is not active or holding, ignore"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2125
    return-void

    .line 2128
    :cond_2
    if-eqz p1, :cond_3

    .line 2129
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2130
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 2131
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez v0, :cond_4

    .line 2132
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v1, 0x3

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 2133
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2135
    :cond_4
    :goto_0
    return-void
.end method

.method public hangupForegroundResumeBackground(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 1762
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1764
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1766
    :cond_0
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupForegroundResumeBackground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1768
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1769
    return-void
.end method

.method public hangupWaitingOrBackground(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 1773
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1775
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1777
    :cond_0
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupWaitingOrBackground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1779
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1780
    return-void
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .line 1064
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1066
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallProfiles;->hasMediaIdValid()Z

    move-result v1

    nop

    :cond_1
    return v1
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1810
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1812
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1814
    :cond_0
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "hold requested."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 1816
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1931
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1933
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1935
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1936
    return-void
.end method

.method protected invokeCallResume(Lcom/huawei/ims/HwImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "callSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 596
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "invokeCallResume"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    .line 598
    return-void
.end method

.method public isCallActive()Z
    .locals 3

    .line 1736
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1738
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1739
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->getInternalState()Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v0

    sget-object v2, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isConfInProgress()Z
    .locals 1

    .line 1550
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1552
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1553
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    return v0
.end method

.method public isHwCustCode(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 1864
    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1867
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1865
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInCall()Z
    .locals 3

    .line 1255
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1257
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1259
    :cond_0
    const/4 v0, 0x0

    .line 1260
    .local v0, "isInCall":Z
    sget-object v1, Lcom/huawei/ims/HwImsCallSessionImpl$1;->$SwitchMap$com$huawei$ims$DriverImsCall$State:[I

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v2, v2, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v2}, Lcom/huawei/ims/DriverImsCall$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1267
    :pswitch_0
    const/4 v0, 0x1

    .line 1268
    nop

    .line 1274
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMT()Z
    .locals 1

    .line 2170
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->isMtCall:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    .line 1239
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1241
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v0, :cond_1

    .line 1243
    return v1

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-boolean v0, v0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    return v0
.end method

.method public isMultipartyCall()Z
    .locals 2

    .line 1207
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1209
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-boolean v1, v0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    nop

    :cond_1
    return v1
.end method

.method public merge()V
    .locals 3

    .line 1878
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1880
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1882
    :cond_0
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 1890
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsServiceCallTracker;->setConfInProgress(Z)V

    .line 1891
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->conference(Landroid/os/Message;)V

    .line 1892
    return-void

    .line 1880
    :cond_1
    :goto_0
    return-void
.end method

.method public notifyConfInfo([B)V
    .locals 1
    .param p1, "confInfoBytes"    # [B

    .line 2025
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2027
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2028
    :cond_0
    return-void
.end method

.method public notifyTtyModeChange(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 644
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 646
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTY mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTtyModeReceived(I)V

    goto :goto_0

    .line 654
    :cond_1
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_0
    return-void
.end method

.method public notifyUnsolCallModify(Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
    .locals 3
    .param p1, "callModify"    # Lcom/huawei/ims/ImsCallAdapter$CallModify;

    .line 322
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 324
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 328
    .local v0, "mListenersSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 329
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 330
    .local v2, "l":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    invoke-interface {v2, p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl$Listener;->onUnsolCallModify(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
    :cond_1
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1841
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1843
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HwImsCallSessionImpl onTransact code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/4 v0, 0x0

    .line 1845
    .local v0, "callType":I
    packed-switch p1, :pswitch_data_0

    .line 1857
    const-string v1, "HwImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HwImsCallSessionImpl can not support the code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1852
    :pswitch_0
    const-string v1, "com.huawei.ims.HwImsCallSessionImpl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1854
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V

    .line 1855
    goto :goto_0

    .line 1847
    :pswitch_1
    const-string v1, "com.huawei.ims.HwImsCallSessionImpl"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1849
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActiveForIms(ILandroid/os/Message;)V

    .line 1850
    nop

    .line 1860
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reject(I)V
    .locals 5
    .param p1, "reason"    # I

    .line 1716
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1718
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1720
    :cond_0
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->getImsCallRejectCause(I)I

    move-result v0

    .line 1723
    .local v0, "cause":I
    const-string v1, "HwImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reject cause"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1725
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/huawei/ims/ImsRIL;->rejectImsCallForCause(IILandroid/os/Message;)V

    goto :goto_0

    .line 1727
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->hangupConnection(ILandroid/os/Message;)V

    .line 1731
    :goto_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1733
    return-void
.end method

.method public removeListener(Lcom/huawei/ims/HwImsCallSessionImpl$Listener;)V
    .locals 2
    .param p1, "listener"    # Lcom/huawei/ims/HwImsCallSessionImpl$Listener;

    .line 277
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 279
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    if-eqz p1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 282
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 3
    .param p1, "participants"    # [Ljava/lang/String;

    .line 1947
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1949
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1950
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1951
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeParticipants user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    return-void
.end method

.method public reportNewConferenceCallSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 3
    .param p1, "confCallSession"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 1313
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1315
    if-eqz p1, :cond_0

    .line 1316
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "Calling callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iput-object p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 1318
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 1319
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 1318
    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 1321
    :cond_0
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "Null confCallSession! Not calling callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :goto_0
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1827
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1829
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1831
    :cond_0
    const-string v0, "HwImsCallSessionImpl"

    const-string v1, "resume requested."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 1833
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1964
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1966
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1968
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsRIL;->sendDtmf(CLandroid/os/Message;)V

    .line 1969
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .line 2018
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2020
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2022
    :cond_0
    return-void
.end method

.method public final setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 1285
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1287
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iput-object p1, v0, Lcom/huawei/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 1289
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .line 1298
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1300
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->setMute(ZLandroid/os/Message;)V

    .line 1303
    return-void
.end method

.method public setNewSession(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 1560
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1562
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1567
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1580
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1582
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1584
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwChrServiceManager()Lcom/android/internal/telephony/HwChrServiceManager;

    move-result-object v0

    const-string v1, "HwIms"

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsRIL;->getCHRReportPhoneId()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "ImsRIL"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HwChrServiceManager;->reportCallException(Ljava/lang/String;IILjava/lang/String;)V

    .line 1587
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 1588
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1590
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 1591
    iput-object p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1595
    const-string v1, "oir"

    invoke-virtual {p2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v1

    .line 1596
    .local v1, "clir":I
    const/4 v2, 0x3

    .line 1597
    .local v2, "domain":I
    new-instance v3, Lcom/huawei/ims/ImsCallProfiles;

    iget v4, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 1599
    .local v3, "details":Lcom/huawei/ims/ImsCallProfiles;
    invoke-direct {p0, p2, v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->extractProfileExtrasIntoImsCallProfile(Landroid/telephony/ims/ImsCallProfile;Lcom/huawei/ims/ImsCallProfiles;)V

    .line 1601
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1602
    invoke-virtual {v5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1601
    invoke-virtual {v4, p1, v1, v3, v0}, Lcom/huawei/ims/ImsRIL;->dial(Ljava/lang/String;ILcom/huawei/ims/ImsCallProfiles;Landroid/os/Message;)V

    .line 1603
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 8
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1649
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1652
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1655
    :cond_0
    iput-object p2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1656
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 1657
    const/4 v1, 0x0

    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1661
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 1662
    .local v2, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "isConferenceUri"

    .line 1663
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 1662
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProfiles;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    .line 1666
    .local v3, "mMoExtras":[Ljava/lang/String;
    new-instance v4, Lcom/huawei/ims/ImsCallProfiles;

    iget v5, p2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v3}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 1668
    .local v4, "details":Lcom/huawei/ims/ImsCallProfiles;
    iget-object v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    aget-object v6, p1, v1

    iget-object v7, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1669
    invoke-virtual {v7, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1668
    invoke-virtual {v5, v6, v1, v4, v0}, Lcom/huawei/ims/ImsRIL;->dial(Ljava/lang/String;ILcom/huawei/ims/ImsCallProfiles;Landroid/os/Message;)V

    .line 1670
    return-void

    .line 1652
    .end local v2    # "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "mMoExtras":[Ljava/lang/String;
    .end local v4    # "details":Lcom/huawei/ims/ImsCallProfiles;
    :cond_1
    :goto_0
    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .line 1980
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1982
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1983
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->startDtmf(CLandroid/os/Message;)V

    .line 1984
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .line 1991
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1993
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->stopDtmf(Landroid/os/Message;)V

    .line 1995
    return-void
.end method

.method public terminate(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 1749
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1751
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1753
    :cond_0
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/huawei/ims/ImsRIL;->hangupConnection(ILandroid/os/Message;)V

    .line 1756
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->triggerRilRecoveryDelayed()V

    .line 1758
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .line 2147
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2149
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2140
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2142
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
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1903
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 1905
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1906
    :cond_0
    return-void
.end method

.method public updateCall(Lcom/huawei/ims/DriverImsCall;)V
    .locals 6
    .param p1, "dcUpdate"    # Lcom/huawei/ims/DriverImsCall;

    .line 441
    if-nez p1, :cond_0

    .line 442
    const-string v0, "updateCall, dcUpdate is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V

    .line 443
    return-void

    .line 445
    :cond_0
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 448
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCall for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 454
    .local v0, "areStatesSame":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateImsCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 455
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverImsCall;)V

    .line 458
    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v4, :cond_3

    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v4, :cond_3

    .line 460
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mAcceptPending:Z

    .line 464
    :cond_3
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mImsCallAdapter:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v3, p1}, Lcom/huawei/ims/ImsCallAdapter;->update(Lcom/huawei/ims/DriverImsCall;)V

    .line 466
    sget-object v3, Lcom/huawei/ims/HwImsCallSessionImpl$1;->$SwitchMap$com$huawei$ims$DriverImsCall$State:[I

    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v4}, Lcom/huawei/ims/DriverImsCall$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 561
    :pswitch_0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->cleanRilRecovery()V

    .line 564
    const/16 v3, 0x8

    iput v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 566
    iget v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I

    if-nez v3, :cond_4

    .line 567
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsRIL;->getLastCallFailCause(Landroid/os/Message;)V

    goto :goto_1

    .line 570
    :cond_4
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    if-eqz v3, :cond_5

    .line 571
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    iget v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I

    invoke-direct {v4, v5, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 580
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;

    invoke-virtual {v3}, Lcom/huawei/ims/ImsServiceCallTracker;->onNotifyCallResumed()V

    .line 582
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifySessionDisconnected()V

    goto/16 :goto_3

    .line 556
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->extractImsCallProfileIntoCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 558
    goto/16 :goto_3

    .line 535
    :pswitch_2
    const/4 v3, 0x2

    iput v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 536
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v3, :cond_6

    .line 537
    const-string v3, "HwImsCallSessionImpl"

    const-string v4, "MO Alerting call!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget v3, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 540
    goto/16 :goto_3

    .line 543
    :cond_6
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v3, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v4, :cond_12

    .line 545
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->extractImsCallProfileIntoCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 546
    new-instance v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 547
    .local v3, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-boolean v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mRingbackToneRequest:Z

    if-ne v4, v1, :cond_7

    .line 548
    iput v2, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 550
    :cond_7
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v4, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 551
    .end local v3    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto/16 :goto_3

    .line 527
    :pswitch_3
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-nez v3, :cond_12

    .line 528
    const-string v3, "HwImsCallSessionImpl"

    const-string v4, "MO Dialing call!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget v3, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 530
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    new-instance v4, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    goto/16 :goto_3

    .line 513
    :pswitch_4
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v3, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v4, :cond_12

    .line 515
    const-string v3, "HwImsCallSessionImpl"

    const-string v4, "Call being held."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    if-nez v3, :cond_12

    .line 518
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 519
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionHold(Z)V

    .line 522
    :cond_8
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_3

    .line 468
    :pswitch_5
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    const/4 v4, 0x4

    if-nez v3, :cond_9

    .line 470
    const-string v3, "HwImsCallSessionImpl"

    const-string v5, "Phantom call!"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iput v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 472
    iget v3, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 473
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStarted(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_3

    .line 474
    :cond_9
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v3, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v5, :cond_10

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v3, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v5, :cond_10

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v3, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v3, v5, :cond_10

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v3, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v5, :cond_a

    goto/16 :goto_2

    .line 489
    :cond_a
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v3, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v4, :cond_b

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v3, :cond_c

    :cond_b
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    if-eqz v3, :cond_e

    .line 491
    :cond_c
    const-string v3, "HwImsCallSessionImpl"

    const-string v4, "Call being resumed."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 494
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 495
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionResumed(Z)V

    .line 498
    :cond_d
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_3

    .line 501
    :cond_e
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v3, v3, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v3, v3, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v4, v4, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    if-eq v3, v4, :cond_f

    .line 502
    const-string v3, "HwImsCallSessionImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call type changes, from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v5, v5, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v5, v5, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v5, v5, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_3

    .line 508
    :cond_f
    const-string v3, "HwImsCallSessionImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call resumed skipped, conf status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    goto :goto_3

    .line 478
    :cond_10
    :goto_2
    iput v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 479
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    iput-object v4, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 480
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->extractImsCallProfileIntoCallProfile(Lcom/huawei/ims/DriverImsCall;)V

    .line 482
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 483
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionStarted()V

    .line 486
    :cond_11
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStarted(Landroid/telephony/ims/ImsCallProfile;)V

    .line 586
    :cond_12
    :goto_3
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsCallSessionImpl;->updateLocalDc(Lcom/huawei/ims/DriverImsCall;)Z

    move-result v3

    .line 587
    .local v3, "hasChanged":Z
    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v5, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v4, v5, :cond_13

    goto :goto_4

    :cond_13
    move v1, v2

    .line 588
    .local v1, "isCallNotEnded":Z
    :goto_4
    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    if-eqz v3, :cond_14

    .line 589
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

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 593
    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfSession(Lcom/huawei/ims/DriverImsCall;)V
    .locals 3
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 625
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 627
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConfSession for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 631
    :cond_0
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    if-eqz v0, :cond_1

    .line 632
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mState:I

    .line 633
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget v0, v0, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallId:I

    .line 635
    :cond_1
    return-void
.end method

.method updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V
    .locals 2
    .param p1, "suppSvcNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;
    .param p2, "startOnHoldLocalTone"    # Z

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2081
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2085
    :cond_0
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    if-nez v0, :cond_1

    .line 2086
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    goto :goto_0

    .line 2087
    :cond_1
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2089
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    packed-switch v0, :pswitch_data_0

    .line 2107
    const-string v0, "Non-Hold/Resume supp svc code received."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2099
    :pswitch_0
    const-string v0, "updateSuppServiceInfo SUPP_SVC_CODE_MT_RESUME"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2100
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2101
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionResumed(Z)V

    .line 2104
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2105
    goto :goto_0

    .line 2091
    :pswitch_1
    const-string v0, "updateSuppServiceInfo SUPP_SVC_CODE_MT_HOLD"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2093
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2094
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionHold(Z)V

    .line 2096
    :cond_3
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2097
    nop

    .line 2113
    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateVtGlobalCapability(Z)V
    .locals 2
    .param p1, "isVtEnabled"    # Z

    .line 2031
    invoke-static {}, Lcom/huawei/ims/HwImsCallSessionImpl;->checkAccessPermission()V

    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVtGlobalCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->log(Ljava/lang/String;)V

    .line 2034
    invoke-direct {p0}, Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2036
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    if-eq v0, p1, :cond_1

    .line 2037
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsVtGloballyAllowed:Z

    .line 2038
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    iget-object v0, v0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v1, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v0, v1, :cond_1

    .line 2039
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->setCapabilitiesInProfiles(Lcom/huawei/ims/DriverImsCall;)V

    .line 2040
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2043
    :cond_1
    return-void
.end method
