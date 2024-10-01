.class public Lcom/huawei/ims/vt/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;


# static fields
.field private static final DEFAULT_CALL_ID:Ljava/lang/String; = "-1"

.field private static final HW_CMCCIOT_ON:Ljava/lang/String; = "ro.config.hw_cmcciot"

.field private static TAG:Ljava/lang/String;

.field private static mIsCmccIOT:Z

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/huawei/ims/vt/MediaManager;


# instance fields
.field private isAlreadyExist:Z

.field private mCallId:Ljava/lang/String;

.field private mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSetSurface:Landroid/view/Surface;

.field private mSurface:Landroid/view/Surface;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-string v0, "MediaManager"

    sput-object v0, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    .line 23
    const-string v0, "ro.config.hw_cmcciot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/MediaManager;->mIsCmccIOT:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/MediaManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "-1"

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mCallId:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/MediaManager;->isAlreadyExist:Z

    .line 243
    new-instance v0, Lcom/huawei/ims/vt/MediaManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/MediaManager$1;-><init>(Lcom/huawei/ims/vt/MediaManager;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 73
    iput-object p2, p0, Lcom/huawei/ims/vt/MediaManager;->mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 74
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

    invoke-virtual {v0, p0}, Lcom/huawei/ims/vt/ImsMediaProvider;->setMediaListener(Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;)V

    .line 76
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 78
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/huawei/ims/vt/MediaManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 81
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/huawei/ims/vt/MediaManager;
    .locals 2

    .line 64
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/MediaManager;->sInstance:Lcom/huawei/ims/vt/MediaManager;

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 56
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/huawei/ims/vt/MediaManager;->sInstance:Lcom/huawei/ims/vt/MediaManager;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/huawei/ims/vt/MediaManager;

    invoke-direct {v1, p0, p1}, Lcom/huawei/ims/vt/MediaManager;-><init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V

    sput-object v1, Lcom/huawei/ims/vt/MediaManager;->sInstance:Lcom/huawei/ims/vt/MediaManager;

    .line 60
    :cond_0
    monitor-exit v0

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setInitBitRate()V
    .locals 2

    .line 158
    sget-boolean v0, Lcom/huawei/ims/vt/MediaManager;->mIsCmccIOT:Z

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v1, "setInitMaxBitRate true"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setInitMaxBitRate(Z)V

    goto :goto_0

    .line 162
    :cond_0
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v1, "setInitMaxBitRate false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setInitMaxBitRate(Z)V

    .line 165
    :goto_0
    return-void
.end method


# virtual methods
.method public cleanPreStatus()V
    .locals 3

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    .line 46
    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is still a video call, do not clean mSurface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 50
    :cond_0
    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    .line 52
    return-void
.end method

.method public onDataUsageChanged(IIJJ)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "mediaId"    # I
    .param p3, "uplink"    # J
    .param p5, "downlink"    # J

    .line 201
    invoke-static {p1}, Lcom/huawei/ims/vt/ImsVTGlobals;->getCallVideoProvider(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 202
    .local v0, "videoProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/vt/ImsVTCallProviderImpl;>;"
    if-nez v0, :cond_0

    .line 203
    sget-object v1, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v2, "onDataUsageChanged: Call session video provider is null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 206
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/vt/MediaManager;->isAlreadyExist:Z

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 208
    .local v2, "callNum":I
    if-lez v2, :cond_3

    .line 210
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 211
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 212
    goto :goto_1

    .line 214
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->getCallSession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/ims/vt/MediaManager;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-virtual {v4, p3, p4}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->onCallDataUsageChanged(J)V

    .line 216
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/ims/vt/MediaManager;->isAlreadyExist:Z

    .line 217
    goto :goto_2

    .line 210
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    .end local v3    # "i":I
    :cond_3
    sget-object v3, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v4, "callsession is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/huawei/ims/vt/MediaManager;->isAlreadyExist:Z

    if-nez v3, :cond_6

    .line 225
    const-string v3, "-1"

    iput-object v3, p0, Lcom/huawei/ims/vt/MediaManager;->mCallId:Ljava/lang/String;

    .line 227
    nop

    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_6

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 229
    nop

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 231
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->getCallSession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/ims/vt/MediaManager;->mCallId:Ljava/lang/String;

    .line 232
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-virtual {v3, p3, p4}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->onCallDataUsageChanged(J)V

    .line 233
    nop

    .line 237
    .end local v1    # "i":I
    :cond_6
    iget-object v1, p0, Lcom/huawei/ims/vt/MediaManager;->mCallId:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 238
    sget-object v1, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v3, "callsession is null"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_7
    return-void
.end method

.method public onDisplayModeEvent()V
    .locals 0

    .line 171
    return-void
.end method

.method public onPeerResolutionChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 177
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 183
    return-void
.end method

.method public onVideoQualityEvent(I)V
    .locals 0
    .param p1, "videoQuality"    # I

    .line 189
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 7
    .param p1, "orientation"    # I

    .line 132
    const-string v0, "ro.config.phoneland"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 133
    .local v0, "isLand":Z
    if-nez v0, :cond_0

    .line 134
    invoke-static {p1, v1}, Lcom/huawei/vtproxy/ImsThinClient;->setDeviceOrientation(IZ)I

    goto :goto_0

    .line 136
    :cond_0
    const-string v2, "persist.sys.vt.self_adpater"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 137
    .local v2, "isVtSelfAdapter":Z
    xor-int/lit8 v3, v2, 0x1

    .line 138
    .local v3, "needFixLayout":Z
    sget-object v4, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set orientation need fix layout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-boolean v4, Lcom/huawei/ims/ImsCallProviderUtils;->IS_TABLET:Z

    if-eqz v4, :cond_1

    .line 145
    const/4 v3, 0x1

    .line 146
    sget-object v4, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v5, "fix layout when device is tablet"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    invoke-static {p1, v3}, Lcom/huawei/vtproxy/ImsThinClient;->setDeviceOrientation(IZ)I

    .line 152
    .end local v2    # "isVtSelfAdapter":Z
    .end local v3    # "needFixLayout":Z
    :goto_0
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isDocomo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->setRmtVideoOrientation(I)I

    .line 155
    :cond_2
    return-void
.end method

.method public setDisplaySurface()Z
    .locals 3

    .line 110
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v1, "setDisplaySurface after params ready"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v2, "mSurface is null when setDisplaySurface after params ready"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    if-eq v0, v2, :cond_1

    .line 118
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v1, "start to setFarEndSurface and startRemotePreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    .line 120
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setFarEndSurface(Landroid/view/Surface;)I

    .line 121
    invoke-direct {p0}, Lcom/huawei/ims/vt/MediaManager;->setInitBitRate()V

    .line 122
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->showRmtVideo()I

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_1
    return v1
.end method

.method public setDisplaySurface(Landroid/view/Surface;)Z
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 86
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v1, "setDisplaySurface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 88
    sget-object v1, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v2, "hideRmtVideo"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->hideRmtVideo()I

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    .line 91
    iput-object v1, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    .line 92
    return v0

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    .line 97
    iget-object v1, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    if-eq p1, v1, :cond_1

    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/vt/CameraManager;->isParamReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->TAG:Ljava/lang/String;

    const-string v1, "start to setFarEndSurface and startRemotePreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    .line 100
    invoke-static {p1}, Lcom/huawei/vtproxy/ImsThinClient;->setFarEndSurface(Landroid/view/Surface;)I

    .line 101
    invoke-direct {p0}, Lcom/huawei/ims/vt/MediaManager;->setInitBitRate()V

    .line 102
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->showRmtVideo()I

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_1
    return v0
.end method
