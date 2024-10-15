.class Lcom/huawei/videoengine/MediaCodecDecoder$4;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;->startDecoder()I
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

    .line 399
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 403
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2000(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_13c

    if-eqz v1, :cond_27

    .line 443
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 444
    :try_start_10
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSecNotified:Ljava/lang/Boolean;
    invoke-static {v2, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2902(Lcom/huawei/videoengine/MediaCodecDecoder;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 445
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 446
    monitor-exit v1

    .line 404
    return-void

    .line 446
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v0

    .line 407
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mListLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$500(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_13c

    .line 408
    :try_start_2e
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mIndexList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$600(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 409
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_139

    .line 411
    :try_start_38
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mUseOpenGl:Z
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2100(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 412
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # invokes: Lcom/huawei/videoengine/MediaCodecDecoder;->eglInit()V
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2200(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    .line 415
    :cond_45
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mCodecType:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1300(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_13c

    if-nez v1, :cond_7b

    .line 417
    :try_start_4d
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    const-string v2, "video/avc"

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v1, v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1502(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_58} :catch_59
    .catchall {:try_start_4d .. :try_end_58} :catchall_13c

    .line 422
    goto :goto_b1

    .line 418
    :catch_59
    move-exception v1

    .line 419
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_13c

    .line 443
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 444
    :try_start_64
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSecNotified:Ljava/lang/Boolean;
    invoke-static {v2, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2902(Lcom/huawei/videoengine/MediaCodecDecoder;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 445
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 446
    monitor-exit v1

    .line 421
    return-void

    .line 446
    :catchall_78
    move-exception v0

    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_64 .. :try_end_7a} :catchall_78

    throw v0

    .line 423
    :cond_7b
    :try_start_7b
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mCodecType:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1300(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_13c

    if-ne v1, v0, :cond_b1

    .line 425
    :try_start_83
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    const-string v2, "video/hevc"

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v1, v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1502(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8e} :catch_8f
    .catchall {:try_start_83 .. :try_end_8e} :catchall_13c

    .line 430
    goto :goto_b1

    .line 426
    :catch_8f
    move-exception v1

    .line 427
    :try_start_90
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_13c

    .line 443
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 444
    :try_start_9a
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSecNotified:Ljava/lang/Boolean;
    invoke-static {v2, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2902(Lcom/huawei/videoengine/MediaCodecDecoder;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 445
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 446
    monitor-exit v1

    .line 429
    return-void

    .line 446
    :catchall_ae
    move-exception v0

    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_9a .. :try_end_b0} :catchall_ae

    throw v0

    .line 432
    :cond_b1
    :goto_b1
    :try_start_b1
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # invokes: Lcom/huawei/videoengine/MediaCodecDecoder;->addAsyncCallback()V
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2300(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    .line 433
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mUseOpenGl:Z
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2100(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_e8

    .line 434
    const-string v1, "MediaCodecDecoder"

    const-string v5, "Use opengl to process image"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1500(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;

    move-result-object v1

    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMediaFormat:Landroid/media/MediaFormat;
    invoke-static {v5}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2400(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mGlSurface:Landroid/view/Surface;
    invoke-static {v6}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2500(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/view/Surface;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mQuickOut:Z
    invoke-static {v7}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2600(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v7

    if-eqz v7, :cond_e3

    goto :goto_e4

    :cond_e3
    move v2, v3

    :goto_e4
    invoke-virtual {v1, v5, v6, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_107

    .line 437
    :cond_e8
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1500(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;

    move-result-object v1

    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMediaFormat:Landroid/media/MediaFormat;
    invoke-static {v5}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2400(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaFormat;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;
    invoke-static {v6}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$300(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/view/Surface;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mQuickOut:Z
    invoke-static {v7}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2600(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v7

    if-eqz v7, :cond_103

    goto :goto_104

    :cond_103
    move v2, v3

    :goto_104
    invoke-virtual {v1, v5, v6, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 439
    :goto_107
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1500(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 440
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z
    invoke-static {v1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2002(Lcom/huawei/videoengine/MediaCodecDecoder;Z)Z

    .line 441
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z
    invoke-static {v1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2702(Lcom/huawei/videoengine/MediaCodecDecoder;Z)Z
    :try_end_11a
    .catchall {:try_start_b1 .. :try_end_11a} :catchall_13c

    .line 443
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 444
    :try_start_121
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSecNotified:Ljava/lang/Boolean;
    invoke-static {v2, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2902(Lcom/huawei/videoengine/MediaCodecDecoder;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 445
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 446
    monitor-exit v1

    .line 447
    nop

    .line 448
    return-void

    .line 446
    :catchall_136
    move-exception v0

    monitor-exit v1
    :try_end_138
    .catchall {:try_start_121 .. :try_end_138} :catchall_136

    throw v0

    .line 409
    :catchall_139
    move-exception v2

    :try_start_13a
    monitor-exit v1
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    :try_start_13b
    throw v2
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13c

    .line 443
    :catchall_13c
    move-exception v1

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;
    invoke-static {v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 444
    :try_start_144
    iget-object v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSecNotified:Ljava/lang/Boolean;
    invoke-static {v3, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2902(Lcom/huawei/videoengine/MediaCodecDecoder;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 445
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$4;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 446
    monitor-exit v2
    :try_end_157
    .catchall {:try_start_144 .. :try_end_157} :catchall_158

    .line 447
    throw v1

    .line 446
    :catchall_158
    move-exception v0

    :try_start_159
    monitor-exit v2
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_158

    throw v0
.end method
