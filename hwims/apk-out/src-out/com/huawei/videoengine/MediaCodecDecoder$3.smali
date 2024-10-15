.class Lcom/huawei/videoengine/MediaCodecDecoder$3;
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
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    .line 306
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->printStackTrace()V

    .line 307
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 4

    .line 230
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mListLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$500(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 231
    :try_start_7
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mIndexList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$600(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 232
    monitor-exit p1

    .line 233
    return-void

    .line 232
    :catchall_16
    move-exception p2

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 15

    .line 238
    const-string p1, "MediaCodecDecoder"

    const/4 v0, 0x1

    :try_start_3
    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 240
    sub-long v1, v3, v1

    .line 241
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # operator++ for: Lcom/huawei/videoengine/MediaCodecDecoder;->mOutFrameCount:I
    invoke-static {v5}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$708(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    .line 242
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    const/4 v6, 0x0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mInputOnlyCount:I
    invoke-static {v5, v6}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$802(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    .line 243
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    iget-object v7, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mAvgDecTime:F
    invoke-static {v7}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$900(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v7

    iget-object v8, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mOutFrameCount:I
    invoke-static {v8}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$700(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v8

    sub-int/2addr v8, v0

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mOutFrameCount:I
    invoke-static {v8}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$700(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    long-to-float v8, v1

    iget-object v9, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mOutFrameCount:I
    invoke-static {v9}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$700(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mAvgDecTime:F
    invoke-static {v5, v7}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$902(Lcom/huawei/videoengine/MediaCodecDecoder;F)F

    .line 244
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mOutFrameCount:I
    invoke-static {v5}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$700(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v5

    if-ne v5, v0, :cond_52

    .line 245
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMaxDecTime:J
    invoke-static {v5, v1, v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1002(Lcom/huawei/videoengine/MediaCodecDecoder;J)J

    .line 246
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMinDecTime:J
    invoke-static {v5, v1, v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1102(Lcom/huawei/videoengine/MediaCodecDecoder;J)J

    goto :goto_71

    .line 248
    :cond_52
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMaxDecTime:J
    invoke-static {v5}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1000(Lcom/huawei/videoengine/MediaCodecDecoder;)J

    move-result-wide v7

    cmp-long v5, v1, v7

    if-lez v5, :cond_62

    .line 249
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMaxDecTime:J
    invoke-static {v5, v1, v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1002(Lcom/huawei/videoengine/MediaCodecDecoder;J)J

    goto :goto_71

    .line 250
    :cond_62
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMinDecTime:J
    invoke-static {v5}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1100(Lcom/huawei/videoengine/MediaCodecDecoder;)J

    move-result-wide v7

    cmp-long v5, v1, v7

    if-gez v5, :cond_71

    .line 251
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMinDecTime:J
    invoke-static {v5, v1, v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1102(Lcom/huawei/videoengine/MediaCodecDecoder;J)J

    .line 254
    :cond_71
    :goto_71
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mOutFrameCount:I
    invoke-static {v5}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$700(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v5

    rem-int/lit8 v5, v5, 0x3c

    if-ne v5, v0, :cond_c7

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#TIMEDIF:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", avTs:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%.1f"

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    .line 256
    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mAvgDecTime:F
    invoke-static {v7}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$900(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", max:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMaxDecTime:J
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1000(Lcom/huawei/videoengine/MediaCodecDecoder;)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",min:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMinDecTime:J
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1100(Lcom/huawei/videoengine/MediaCodecDecoder;)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_c7
    nop

    .line 260
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->skipRenderList:Ljava/util/List;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1200(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ff

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->skipRenderList:Ljava/util/List;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1200(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/List;

    move-result-object v1

    iget-wide v7, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 261
    nop

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#SKIP find ts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v0

    goto :goto_100

    .line 266
    :cond_ff
    move p3, v6

    :goto_100
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mCodecType:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1300(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1

    if-nez v1, :cond_130

    if-nez p3, :cond_130

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mLastDecRelaseTime:J
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1400(Lcom/huawei/videoengine/MediaCodecDecoder;)J

    move-result-wide v1

    sub-long v1, v3, v1

    const-wide/16 v7, 0x5

    cmp-long v1, v1, v7

    if-gez v1, :cond_130

    .line 267
    const/16 v1, 0x19

    .line 269
    :cond_11a
    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 271
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mLastDecRelaseTime:J
    invoke-static {v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1400(Lcom/huawei/videoengine/MediaCodecDecoder;)J

    move-result-wide v7

    sub-long v7, v3, v7

    int-to-long v9, v1

    cmp-long v2, v7, v9

    if-lez v2, :cond_11a

    .line 276
    :cond_130
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1500(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;

    move-result-object v1

    if-nez p3, :cond_139

    move v6, v0

    :cond_139
    invoke-virtual {v1, p2, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 277
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mLastDecRelaseTime:J
    invoke-static {p2, v3, v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1402(Lcom/huawei/videoengine/MediaCodecDecoder;J)J
    :try_end_141
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_141} :catch_164
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_141} :catch_142

    goto :goto_172

    .line 282
    :catch_142
    move-exception p2

    .line 283
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decode onOutputBufferAvailable failed exception = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # invokes: Lcom/huawei/videoengine/MediaCodecDecoder;->resetDecoder()I
    invoke-static {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1700(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    goto :goto_173

    .line 278
    :catch_164
    move-exception p2

    .line 279
    const-string p3, "decode onOutputBufferAvailable IllegalStateException"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 281
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # invokes: Lcom/huawei/videoengine/MediaCodecDecoder;->resetDecoder(Z)I
    invoke-static {p1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1600(Lcom/huawei/videoengine/MediaCodecDecoder;Z)I

    .line 286
    :goto_172
    nop

    .line 287
    :goto_173
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 7

    .line 291
    const-string p1, "width"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 292
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 293
    const-string v1, "crop-left"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "crop-right"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 294
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr p1, v1

    .line 296
    :cond_27
    const-string v1, "crop-top"

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, "crop-bottom"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 297
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    .line 299
    :cond_42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onOutputFormatChanged width = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "MediaCodecDecoder"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I
    invoke-static {p2, p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1802(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    .line 301
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I
    invoke-static {p1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1902(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    .line 302
    return-void
.end method
