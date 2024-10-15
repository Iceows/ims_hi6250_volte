.class Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;
.super Landroid/media/MediaCodec$Callback;
.source "KirinMediaCodecEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/KirinMediaCodecEncoder;->addAsyncCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    .line 271
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->printStackTrace()V

    .line 272
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 3

    .line 191
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$000(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 194
    :try_start_9
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$100(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 195
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$200(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_29

    .line 200
    :cond_1e
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$000(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 201
    nop

    .line 202
    return-void

    .line 200
    :catchall_29
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p2}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$000(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 201
    throw p1
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 14

    .line 206
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$300(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 207
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$100(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 208
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$300(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 209
    return-void

    .line 211
    :cond_1b
    nop

    .line 213
    :try_start_1c
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$100(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_ff

    .line 219
    nop

    .line 222
    nop

    .line 223
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5e

    .line 226
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J
    invoke-static {v0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$400(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)J

    move-result-wide v3

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v3, v4, p1, p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->nSetSPS(JLjava/nio/ByteBuffer;I)V

    .line 228
    iget-object p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;
    invoke-static {p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$500(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 229
    iget-object p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;
    invoke-static {p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$500(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 232
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$100(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 233
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$300(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 234
    return-void

    .line 235
    :cond_5e
    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_65

    .line 236
    move v9, v0

    goto :goto_66

    .line 235
    :cond_65
    move v9, v2

    .line 239
    :goto_66
    iget-object p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;
    invoke-static {p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$600(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object p3

    if-eqz p3, :cond_77

    .line 240
    iget-object p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;
    invoke-static {p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$600(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object p3

    invoke-virtual {p3}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 242
    :cond_77
    iget-object p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    invoke-static {p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$100(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Landroid/media/MediaCodec;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/media/MediaCodec;->getOutputFormat(I)Landroid/media/MediaFormat;

    move-result-object p3

    .line 243
    const-string v0, "width"

    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 244
    const-string v0, "height"

    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 246
    iget-object p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;
    invoke-static {p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$500(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 247
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$100(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 248
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$300(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 250
    iget-object v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J
    invoke-static {v3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$400(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    .line 251
    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$500(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 250
    invoke-virtual/range {v3 .. v9}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->procEncodedStream(JIIIZ)V

    .line 253
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$500(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 255
    iget-object p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J
    invoke-static {p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$700(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mKeyFrameInterval:I
    invoke-static {p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$800(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)I

    move-result p3

    int-to-long v2, p3

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long p3, v0, v2

    if-lez p3, :cond_fe

    .line 256
    iget-object p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J
    invoke-static {p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$700(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_f4

    .line 257
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    # setter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J
    invoke-static {p1, p2, p3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$702(Lcom/huawei/videoengine/KirinMediaCodecEncoder;J)J

    goto :goto_fe

    .line 259
    :cond_f4
    iget-object p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # setter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J
    invoke-static {p3, p1, p2}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$702(Lcom/huawei/videoengine/KirinMediaCodecEncoder;J)J

    .line 260
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    invoke-virtual {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->requestIDRFrame()I

    .line 263
    :cond_fe
    :goto_fe
    return-void

    .line 214
    :catch_ff
    move-exception p1

    .line 215
    const-string p2, "hme_engine_KMC"

    const-string p3, "getOutputBuffer err"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;->this$0:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    # getter for: Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->access$300(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    .line 267
    return-void
.end method
