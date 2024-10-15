.class public Lcom/huawei/ims/vt/ImsMediaProvider;
.super Ljava/lang/Object;
.source "ImsMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/vt/ImsMediaProvider$CameraListener;,
        Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;
    }
.end annotation


# static fields
.field private static final IMS_MEDIA_LOCK:Ljava/lang/Object;

.field private static final NO_MEDIA_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ImsMediaProvider"

.field private static sInstance:Lcom/huawei/ims/vt/ImsMediaProvider;


# instance fields
.field private mCameraListener:Lcom/huawei/ims/vt/ImsMediaProvider$CameraListener;

.field private mMediaListener:Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/vt/ImsMediaProvider;->IMS_MEDIA_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/huawei/ims/vt/ImsMediaProvider;
    .registers 2

    .line 45
    sget-object v0, Lcom/huawei/ims/vt/ImsMediaProvider;->IMS_MEDIA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lcom/huawei/ims/vt/ImsMediaProvider;->sInstance:Lcom/huawei/ims/vt/ImsMediaProvider;

    if-nez v1, :cond_e

    .line 47
    new-instance v1, Lcom/huawei/ims/vt/ImsMediaProvider;

    invoke-direct {v1}, Lcom/huawei/ims/vt/ImsMediaProvider;-><init>()V

    sput-object v1, Lcom/huawei/ims/vt/ImsMediaProvider;->sInstance:Lcom/huawei/ims/vt/ImsMediaProvider;

    .line 49
    :cond_e
    sget-object v1, Lcom/huawei/ims/vt/ImsMediaProvider;->sInstance:Lcom/huawei/ims/vt/ImsMediaProvider;

    monitor-exit v0

    return-object v1

    .line 50
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public setCameraListener(Lcom/huawei/ims/vt/ImsMediaProvider$CameraListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/huawei/ims/vt/ImsMediaProvider$CameraListener;

    .line 68
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsMediaProvider;->mCameraListener:Lcom/huawei/ims/vt/ImsMediaProvider$CameraListener;

    .line 69
    return-void
.end method

.method public setMediaListener(Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;

    .line 59
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsMediaProvider;->mMediaListener:Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;

    .line 60
    return-void
.end method

.method public vtFlowInfoReport(IJ)V
    .registers 13
    .param p1, "subId"    # I
    .param p2, "dataUsage"    # J

    .line 157
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsMediaProvider;->mMediaListener:Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;

    if-eqz v0, :cond_2c

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add call data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsMediaProvider"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v2, p0, Lcom/huawei/ims/vt/ImsMediaProvider;->mMediaListener:Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;

    const/4 v4, -0x1

    const-wide/16 v7, 0x0

    move v3, p1

    move-wide v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/huawei/ims/vt/ImsMediaProvider$IMediaListener;->onDataUsageChanged(IIJJ)V

    .line 161
    :cond_2c
    return-void
.end method
