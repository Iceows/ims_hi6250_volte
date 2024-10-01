.class Lcom/huawei/videoengine/MediaCodecDecoder$1;
.super Landroid/media/MediaCodec$Callback;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;->addAsyncCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 350
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->printStackTrace()V

    .line 351
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 248
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    iget-object p1, p1, Lcom/huawei/videoengine/MediaCodecDecoder;->listLock:Ljava/lang/Object;

    monitor-enter p1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$000(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 252
    monitor-exit p1

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    .line 258
    :try_start_0
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 259
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$100(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$200(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 261
    iget-object p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$200(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/media/MediaCodec;->getOutputFormat(I)Landroid/media/MediaFormat;

    move-result-object p3

    .line 262
    const-string v2, "width"

    invoke-virtual {p3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 263
    const-string v2, "height"

    invoke-virtual {p3, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    .line 264
    iget-object p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$300(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 265
    iget-object p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$300(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 266
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$400(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 267
    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$400(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 275
    :cond_0
    const-string p1, "hme_engine_JavaDEC"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no find timesttamp "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$200(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 279
    iget-object v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$500(Lcom/huawei/videoengine/MediaCodecDecoder;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    .line 280
    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$300(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 279
    invoke-virtual/range {v3 .. v8}, Lcom/huawei/videoengine/MediaCodecDecoder;->procDecodedYUV(JIII)V

    .line 282
    goto :goto_2

    .line 284
    :cond_1
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$400(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 285
    if-eqz p1, :cond_2

    .line 289
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$400(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 293
    :cond_2
    const-string p1, "hme_engine_JavaDEC"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no find timesttamp "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_1
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$600(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 296
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$600(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 298
    :cond_3
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$200(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_2
    nop

    .line 314
    return-void

    .line 307
    :catch_0
    move-exception p1

    .line 308
    const-string p2, "hme_engine_JavaDEC"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decode onOutputBufferAvailable failed exception = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-virtual {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->resetDecoder()I

    .line 311
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 5

    .line 320
    const-string p1, "width"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 321
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 322
    const-string v1, "crop-left"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "crop-right"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const-string p1, "crop-right"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v2

    const-string v1, "crop-left"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr p1, v1

    .line 326
    :cond_0
    const-string v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "crop-bottom"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    const-string v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    .line 330
    :cond_1
    const-string p2, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onOutputFormatChanged width = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-virtual {p2, p1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->inNeedAlignResolution(II)I

    move-result p2

    .line 332
    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    .line 334
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    const/4 v3, 0x0

    if-lt p1, v0, :cond_2

    iget-object v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$800(Lcom/huawei/videoengine/MediaCodecDecoder;)[[I

    move-result-object v4

    aget-object v4, v4, p2

    aget v4, v4, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$800(Lcom/huawei/videoengine/MediaCodecDecoder;)[[I

    move-result-object v4

    aget-object v4, v4, p2

    aget v4, v4, v2

    :goto_0
    invoke-static {v1, v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$702(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    .line 335
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    if-lt p1, v0, :cond_3

    iget-object v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$800(Lcom/huawei/videoengine/MediaCodecDecoder;)[[I

    move-result-object v3

    aget-object p2, v3, p2

    aget p2, p2, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$800(Lcom/huawei/videoengine/MediaCodecDecoder;)[[I

    move-result-object v2

    aget-object p2, v2, p2

    aget p2, p2, v3

    :goto_1
    invoke-static {v1, p2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$902(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    goto :goto_2

    .line 339
    :cond_4
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p2, p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$702(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    .line 340
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p2, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$902(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    .line 342
    :goto_2
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p2, p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1002(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    .line 343
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1102(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    .line 344
    const-string p1, "hme_engine_JavaDEC"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onOutputFormatChanged mDecoderWidth = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$700(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mDecoderHeight = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$900(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$500(Lcom/huawei/videoengine/MediaCodecDecoder;)J

    move-result-wide v0

    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$700(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result p2

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$900(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v2

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->setDecodedSize(JII)V

    .line 346
    return-void
.end method
