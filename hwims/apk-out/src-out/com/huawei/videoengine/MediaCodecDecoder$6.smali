.class Lcom/huawei/videoengine/MediaCodecDecoder$6;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;->eglInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V
    .registers 2

    .line 598
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$6;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 602
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 603
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 605
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$6;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mClientLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3400(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_23

    .line 606
    :try_start_d
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$6;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$100(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 607
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$6;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$100(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->processFrame()V

    .line 609
    :cond_1e
    monitor-exit p1

    .line 612
    goto :goto_3e

    .line 609
    :catchall_20
    move-exception v0

    monitor-exit p1
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_20

    :try_start_22
    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_23} :catch_23

    .line 610
    :catch_23
    move-exception p1

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrameAvailable : failed message ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecDecoder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_3e
    return-void
.end method
