.class public Lcom/huawei/videoengine/SurfaceEncoder;
.super Ljava/lang/Object;
.source "SurfaceEncoder.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private encSfMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mNILock:Ljava/lang/Object;

.field private mNativeEncClass:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "SurfaceEncoder"

    iput-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->TAG:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNILock:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "SurfaceEncoder"

    iput-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->TAG:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNILock:Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->TAG:Ljava/lang/String;

    const-string v1, "SurfaceEncoder in 123"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-wide p1, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNativeEncClass:J

    .line 24
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/huawei/videoengine/SurfaceEncoder;->encSfMap:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public freeEncSurface(I)V
    .registers 6

    .line 40
    nop

    .line 43
    const-wide/16 v0, 0x64

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    .line 47
    goto :goto_b

    .line 44
    :catch_7
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 49
    :goto_b
    iget-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->encSfMap:Ljava/util/Map;

    if-eqz v0, :cond_42

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 53
    if-eqz v0, :cond_42

    .line 55
    iget-object v1, p0, Lcom/huawei/videoengine/SurfaceEncoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " freeEncSurface() _encSf is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":channelId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 57
    iget-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->encSfMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_42
    return-void
.end method

.method native nProvideOutBuffer(Ljava/nio/ByteBuffer;IIJ)V
.end method

.method public provideOutBuffer(Ljava/nio/ByteBuffer;II)V
    .registers 12

    .line 83
    iget-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNILock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    iget-wide v1, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNativeEncClass:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_14

    .line 85
    iget-wide v6, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNativeEncClass:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/huawei/videoengine/SurfaceEncoder;->nProvideOutBuffer(Ljava/nio/ByteBuffer;IIJ)V

    .line 87
    :cond_14
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public setEncSurface(Landroid/view/Surface;I)V
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->encSfMap:Ljava/util/Map;

    if-eqz v0, :cond_14

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->encSfMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_14
    return-void
.end method

.method public setNativeInstanceNull()V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNILock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    const-wide/16 v1, 0x0

    :try_start_5
    iput-wide v1, p0, Lcom/huawei/videoengine/SurfaceEncoder;->mNativeEncClass:J

    .line 68
    monitor-exit v0

    .line 70
    return-void

    .line 68
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v1
.end method
