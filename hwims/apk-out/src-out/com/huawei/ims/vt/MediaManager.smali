.class public Lcom/huawei/ims/vt/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;


# static fields
.field private static final DEFAULT_CALL_ID:Ljava/lang/String; = "-1"

.field private static final HW_CMCCIOT_ON:Ljava/lang/String; = "ro.config.hw_cmcciot"

.field private static final MEDIA_CONTROLLER_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "MediaManager"

.field private static sInstance:Lcom/huawei/ims/vt/MediaManager;

.field private static sIsCmccIOT:Z


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
    .registers 2

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/MediaManager;->MEDIA_CONTROLLER_LOCK:Ljava/lang/Object;

    .line 37
    const-string v0, "ro.config.hw_cmcciot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/MediaManager;->sIsCmccIOT:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "-1"

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mCallId:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/vt/MediaManager;->isAlreadyExist:Z

    .line 55
    new-instance v0, Lcom/huawei/ims/vt/MediaManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/vt/MediaManager$1;-><init>(Lcom/huawei/ims/vt/MediaManager;)V

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 76
    iput-object p2, p0, Lcom/huawei/ims/vt/MediaManager;->mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 77
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mMedia:Lcom/huawei/ims/vt/ImsMediaProvider;

    invoke-virtual {v0, p0}, Lcom/huawei/ims/vt/ImsMediaProvider;->setMediaListener(Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;)V

    .line 79
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtFlowInfo()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_39

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/huawei/ims/vt/MediaManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 85
    :cond_39
    return-void
.end method

.method public static getInstance()Lcom/huawei/ims/vt/MediaManager;
    .registers 2

    .line 121
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->MEDIA_CONTROLLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    sget-object v1, Lcom/huawei/ims/vt/MediaManager;->sInstance:Lcom/huawei/ims/vt/MediaManager;

    monitor-exit v0

    return-object v1

    .line 123
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static init(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 108
    sget-object v0, Lcom/huawei/ims/vt/MediaManager;->MEDIA_CONTROLLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    sget-object v1, Lcom/huawei/ims/vt/MediaManager;->sInstance:Lcom/huawei/ims/vt/MediaManager;

    if-nez v1, :cond_e

    .line 110
    new-instance v1, Lcom/huawei/ims/vt/MediaManager;

    invoke-direct {v1, p0, p1}, Lcom/huawei/ims/vt/MediaManager;-><init>(Landroid/content/Context;Lcom/huawei/ims/vt/ImsMediaProvider;)V

    sput-object v1, Lcom/huawei/ims/vt/MediaManager;->sInstance:Lcom/huawei/ims/vt/MediaManager;

    .line 112
    :cond_e
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private setInitBitRate()V
    .registers 3

    .line 215
    sget-boolean v0, Lcom/huawei/ims/vt/MediaManager;->sIsCmccIOT:Z

    const-string v1, "MediaManager"

    if-eqz v0, :cond_10

    .line 216
    const-string v0, "setInitMaxBitRate true"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setInitMaxBitRate(Z)V

    goto :goto_19

    .line 219
    :cond_10
    const-string v0, "setInitMaxBitRate false"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setInitMaxBitRate(Z)V

    .line 222
    :goto_19
    return-void
.end method


# virtual methods
.method public cleanPreStatus()V
    .registers 3

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    .line 93
    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/vt/CameraManager;->isCurrentHaveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is still a video call, do not clean mSurface : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 97
    :cond_2c
    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    .line 99
    return-void
.end method

.method public isSetDisplaySurface()Z
    .registers 5

    .line 163
    const-string v0, "MediaManager"

    const-string v1, "isSetDisplaySurface after params ready"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 166
    const-string v1, "mSurface is null when isSetDisplaySurface after params ready"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v2

    .line 170
    :cond_12
    iget-object v3, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    if-eq v1, v3, :cond_2a

    .line 171
    const-string v1, "start to setFarEndSurface and startRemotePreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    .line 173
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setFarEndSurface(Landroid/view/Surface;)I

    .line 174
    invoke-direct {p0}, Lcom/huawei/ims/vt/MediaManager;->setInitBitRate()V

    .line 175
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->showRmtVideo()I

    .line 176
    const/4 v0, 0x1

    return v0

    .line 178
    :cond_2a
    return v2
.end method

.method public isSetDisplaySurface(Landroid/view/Surface;)Z
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .line 135
    const-string v0, "MediaManager"

    const-string v1, "isSetDisplaySurface"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    if-nez p1, :cond_18

    .line 137
    const-string v2, "hideRmtVideo"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->hideRmtVideo()I

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    .line 140
    iput-object v0, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    .line 141
    return v1

    .line 144
    :cond_18
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaManager;->mSurface:Landroid/view/Surface;

    .line 146
    iget-object v2, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    if-eq p1, v2, :cond_3a

    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->getInstance()Lcom/huawei/ims/vt/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/vt/CameraManager;->isParamReady()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 147
    const-string v1, "start to setFarEndSurface and startRemotePreview"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, p0, Lcom/huawei/ims/vt/MediaManager;->mPreSetSurface:Landroid/view/Surface;

    .line 149
    invoke-static {p1}, Lcom/huawei/vtproxy/ImsThinClient;->setFarEndSurface(Landroid/view/Surface;)I

    .line 150
    invoke-direct {p0}, Lcom/huawei/ims/vt/MediaManager;->setInitBitRate()V

    .line 151
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->showRmtVideo()I

    .line 152
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_3a
    return v1
.end method

.method public onDataUsageChanged(IIJJ)V
    .registers 14
    .param p1, "subId"    # I
    .param p2, "mediaId"    # I
    .param p3, "uplink"    # J
    .param p5, "downlink"    # J

    .line 251
    invoke-static {p1}, Lcom/huawei/ims/vt/ImsVtGlobals;->getCallVideoProvider(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    .local v0, "videoProviderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/vt/ImsVtCallProviderImpl;>;"
    const-string v1, "MediaManager"

    if-nez v0, :cond_e

    .line 253
    const-string v2, "onDataUsageChanged: Call session video provider is null."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void

    .line 256
    :cond_e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/vt/MediaManager;->isAlreadyExist:Z

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 258
    .local v2, "callNum":I
    const-string v3, "callsession is null"

    if-lez v2, :cond_4a

    .line 260
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v2, :cond_49

    .line 261
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_23

    .line 262
    goto :goto_46

    .line 264
    :cond_23
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->getCallSession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/ims/vt/MediaManager;->mCallId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 265
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    invoke-virtual {v5, p3, p4}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->onCallDataUsageChanged(J)V

    .line 266
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/huawei/ims/vt/MediaManager;->isAlreadyExist:Z

    .line 267
    goto :goto_49

    .line 260
    :cond_46
    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .end local v4    # "i":I
    :cond_49
    :goto_49
    goto :goto_4d

    .line 272
    :cond_4a
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_4d
    iget-boolean v4, p0, Lcom/huawei/ims/vt/MediaManager;->isAlreadyExist:Z

    const-string v5, "-1"

    if-nez v4, :cond_7b

    .line 275
    iput-object v5, p0, Lcom/huawei/ims/vt/MediaManager;->mCallId:Ljava/lang/String;

    .line 277
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_56
    if-ge v4, v2, :cond_7b

    .line 278
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_62

    .line 279
    nop

    .line 277
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 281
    :cond_62
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    invoke-virtual {v6}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->getCallSession()Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/huawei/ims/vt/MediaManager;->mCallId:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    invoke-virtual {v6, p3, p4}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->onCallDataUsageChanged(J)V

    .line 287
    .end local v4    # "i":I
    :cond_7b
    iget-object v4, p0, Lcom/huawei/ims/vt/MediaManager;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 288
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_86
    return-void
.end method

.method public onDisplayModeEvent()V
    .registers 1

    .line 226
    return-void
.end method

.method public onPeerResolutionChanged(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 230
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 234
    return-void
.end method

.method public onVideoQualityEvent(I)V
    .registers 2
    .param p1, "videoQuality"    # I

    .line 238
    return-void
.end method

.method public setDeviceOrientation(I)V
    .registers 8
    .param p1, "orientation"    # I

    .line 188
    const/4 v0, 0x0

    const-string v1, "ro.config.phoneland"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 189
    .local v1, "isLand":Z
    if-nez v1, :cond_d

    .line 190
    invoke-static {p1, v0}, Lcom/huawei/vtproxy/ImsThinClient;->setDeviceOrientation(IZ)I

    goto :goto_39

    .line 192
    :cond_d
    const/4 v2, 0x1

    const-string v3, "persist.sys.vt.self_adpater"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 193
    .local v2, "isVtSelfAdapter":Z
    xor-int/lit8 v3, v2, 0x1

    .line 194
    .local v3, "isFixLayout":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set orientation is fix layout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-boolean v4, Lcom/huawei/ims/ImsCallProviderUtils;->IS_TABLET:Z

    if-eqz v4, :cond_36

    .line 201
    const/4 v3, 0x1

    .line 202
    const-string v4, "fix layout when device is tablet"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_36
    invoke-static {p1, v3}, Lcom/huawei/vtproxy/ImsThinClient;->setDeviceOrientation(IZ)I

    .line 209
    .end local v2    # "isVtSelfAdapter":Z
    .end local v3    # "isFixLayout":Z
    :goto_39
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isDocomo()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 210
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setRmtVideoOrientation(I)I

    .line 212
    :cond_42
    return-void
.end method
