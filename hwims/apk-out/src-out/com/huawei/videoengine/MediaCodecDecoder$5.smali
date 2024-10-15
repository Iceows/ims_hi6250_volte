.class Lcom/huawei/videoengine/MediaCodecDecoder$5;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;->stopDecoder(Z)I
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

    .line 477
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 481
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2000(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 482
    const-string v1, "MediaCodecDecoder"

    const-string v2, "Decoder is not started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_87

    .line 498
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWait:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3200(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 499
    :try_start_17
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitNotified:Ljava/lang/Boolean;
    invoke-static {v2, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3302(Lcom/huawei/videoengine/MediaCodecDecoder;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 500
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3200(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 501
    monitor-exit v1

    .line 483
    return-void

    .line 501
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_2b

    throw v0

    .line 486
    :cond_2e
    :try_start_2e
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    const/4 v2, 0x0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z
    invoke-static {v1, v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2002(Lcom/huawei/videoengine/MediaCodecDecoder;Z)Z

    .line 487
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mAbnormalState:Z
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3000(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 488
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1500(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 490
    :cond_45
    const-string v1, "MediaCodecDecoder"

    const-string v2, "stopDecoder after stop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1500(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 492
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    const/4 v2, 0x0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v1, v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1502(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 494
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mUseOpenGl:Z
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2100(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 495
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # invokes: Lcom/huawei/videoengine/MediaCodecDecoder;->eglUninit()V
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3100(Lcom/huawei/videoengine/MediaCodecDecoder;)V
    :try_end_68
    .catchall {:try_start_2e .. :try_end_68} :catchall_87

    .line 498
    :cond_68
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWait:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3200(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 499
    :try_start_6f
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitNotified:Ljava/lang/Boolean;
    invoke-static {v2, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3302(Lcom/huawei/videoengine/MediaCodecDecoder;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 500
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3200(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 501
    monitor-exit v1

    .line 502
    nop

    .line 503
    return-void

    .line 501
    :catchall_84
    move-exception v0

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_6f .. :try_end_86} :catchall_84

    throw v0

    .line 498
    :catchall_87
    move-exception v1

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWait:Ljava/lang/Object;
    invoke-static {v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3200(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 499
    :try_start_8f
    iget-object v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitNotified:Ljava/lang/Boolean;
    invoke-static {v3, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3302(Lcom/huawei/videoengine/MediaCodecDecoder;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 500
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$5;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWait:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3200(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 501
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_8f .. :try_end_a2} :catchall_a3

    .line 502
    throw v1

    .line 501
    :catchall_a3
    move-exception v0

    :try_start_a4
    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v0
.end method
