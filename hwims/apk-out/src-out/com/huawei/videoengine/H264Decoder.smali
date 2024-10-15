.class public Lcom/huawei/videoengine/H264Decoder;
.super Ljava/lang/Object;
.source "H264Decoder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private dataLength:I

.field private decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private h264Decoder:Landroid/media/MediaCodec;

.field private inited:Z

.field private isKeyFrame:I

.field private lnativeObject:J

.field private mediaFormat:Landroid/media/MediaFormat;

.field private needKeyFrame:Z

.field private playBuffer:Ljava/nio/ByteBuffer;

.field private renderTime:J

.field private started:Z

.field private surfaceView:Landroid/view/SurfaceView;

.field private tempBufPlay:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->surfaceView:Landroid/view/SurfaceView;

    .line 14
    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    .line 15
    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 17
    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z

    .line 23
    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    .line 24
    iput-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    .line 25
    iput-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    return-void
.end method

.method private native setDecodedSize(JII)V
.end method

.method private start(Landroid/view/SurfaceHolder;)I
    .registers 8

    .line 275
    const-string v0, "H264JavaDecoder"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 278
    :try_start_c
    iget-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 280
    const-string p1, " decoder is allready started"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_85

    .line 281
    nop

    .line 304
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    return v2

    .line 285
    :cond_1d
    const/4 v1, -0x1

    :try_start_1e
    const-string v3, "video/avc"

    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    .line 286
    iget-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->mediaFormat:Landroid/media/MediaFormat;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_65
    .catchall {:try_start_1e .. :try_end_32} :catchall_85

    .line 291
    nop

    .line 294
    :try_start_33
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_45
    .catchall {:try_start_33 .. :try_end_38} :catchall_85

    .line 299
    nop

    .line 301
    const/4 p1, 0x1

    :try_start_3a
    iput-boolean p1, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    .line 302
    iput-boolean p1, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_85

    .line 304
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 305
    nop

    .line 306
    return v2

    .line 295
    :catch_45
    move-exception p1

    .line 296
    :try_start_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_46 .. :try_end_5e} :catchall_85

    .line 298
    nop

    .line 304
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 298
    return v1

    .line 287
    :catch_65
    move-exception p1

    .line 288
    :try_start_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_66 .. :try_end_7e} :catchall_85

    .line 290
    nop

    .line 304
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    return v1

    .line 304
    :catchall_85
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 305
    throw p1
.end method

.method private stop()V
    .registers 5

    .line 310
    const-string v0, "H264JavaDecoder"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 313
    :try_start_c
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_5b

    if-nez v1, :cond_16

    .line 334
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 315
    return-void

    .line 319
    :cond_16
    :try_start_16
    const-string v1, "h264Decoder stop1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 321
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    .line 324
    :cond_28
    const-string v1, "h264Decoder stop2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_32} :catch_33
    .catchall {:try_start_16 .. :try_end_32} :catchall_5b

    .line 330
    goto :goto_4c

    .line 327
    :catch_33
    move-exception v1

    .line 329
    :try_start_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_4c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    .line 332
    const-string v1, "h264Decoder stop3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_5b

    .line 334
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_5b
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 335
    throw v0
.end method


# virtual methods
.method public config(Landroid/view/SurfaceView;II)I
    .registers 7

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H264JavaDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 96
    if-nez v0, :cond_2b

    .line 98
    const-string p1, "H264Decoder config failed holder = null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 p1, -0x1

    return p1

    .line 101
    :cond_2b
    const-string v2, "before createVideoFormat"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->surfaceView:Landroid/view/SurfaceView;

    .line 103
    const-string p1, "video/avc"

    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 106
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 107
    const/4 p1, 0x0

    .line 108
    iget-object p2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 110
    :try_start_43
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_59

    .line 111
    invoke-direct {p0, v0}, Lcom/huawei/videoengine/H264Decoder;->start(Landroid/view/SurfaceHolder;)I

    move-result p1

    .line 112
    if-eqz p1, :cond_59

    .line 113
    const-string p2, "start failed"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_65

    .line 117
    :cond_59
    iget-object p2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    nop

    .line 119
    const-string p2, "config end"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return p1

    .line 117
    :catchall_65
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    throw p1
.end method

.method public deRegisterNativeObject()V
    .registers 3

    .line 343
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    .line 344
    return-void
.end method

.method public init()I
    .registers 7

    .line 35
    const-string v0, "H264JavaDecoder"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 38
    return v2

    .line 41
    :cond_d
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x200000

    :try_start_11
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_2a

    .line 47
    nop

    .line 49
    :try_start_18
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_21

    .line 55
    nop

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    .line 58
    return v2

    .line 50
    :catch_21
    move-exception v2

    .line 51
    const-string v2, "tempBufPlay failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    .line 53
    return v1

    .line 42
    :catch_2a
    move-exception v2

    .line 43
    const-string v2, "H264Decoder failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    .line 45
    return v1
.end method

.method public onDecodeAndRander()I
    .registers 7

    .line 137
    const-string v0, "H264JavaDecoder"

    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 139
    :try_start_7
    iget-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_93

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 142
    nop

    .line 186
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 142
    return v2

    .line 145
    :cond_13
    :try_start_13
    iget-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    if-nez v1, :cond_24

    .line 147
    invoke-virtual {p0}, Lcom/huawei/videoengine/H264Decoder;->init()I

    move-result v1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_93

    if-eqz v1, :cond_24

    .line 150
    const/4 v0, -0x1

    .line 186
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    return v0

    .line 155
    :cond_24
    :try_start_24
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 158
    :goto_29
    iget-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 160
    if-gez v3, :cond_6c

    .line 162
    const/4 v1, -0x2

    if-ne v3, v1, :cond_6a

    .line 164
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 165
    const-string v3, "width"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 166
    const-string v4, "height"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dec resolution change to: width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-wide v4, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    invoke-direct {p0, v4, v5, v3, v1}, Lcom/huawei/videoengine/H264Decoder;->setDecodedSize(JII)V

    .line 171
    goto :goto_6b

    .line 172
    :cond_6a
    const/4 v0, -0x3

    .line 184
    :goto_6b
    goto :goto_8c

    .line 178
    :cond_6c
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_72} :catch_73
    .catchall {:try_start_24 .. :try_end_72} :catchall_93

    .line 179
    goto :goto_29

    .line 181
    :catch_73
    move-exception v1

    .line 183
    :try_start_74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeAndrander : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_93

    .line 186
    :goto_8c
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    nop

    .line 188
    return v2

    .line 186
    :catchall_93
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    throw v0
.end method

.method public onFrame()I
    .registers 16

    .line 192
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 194
    :try_start_5
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_f8

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 196
    nop

    .line 261
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 196
    return v1

    .line 199
    :cond_11
    :try_start_11
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_f8

    const/16 v2, -0x64

    const/4 v3, 0x1

    const-string v4, "H264JavaDecoder"

    if-ne v0, v3, :cond_2c

    .line 200
    :try_start_1a
    iget v0, p0, Lcom/huawei/videoengine/H264Decoder;->isKeyFrame:I

    if-nez v0, :cond_2a

    .line 201
    const-string v0, "request i, but not"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_f8

    .line 203
    nop

    .line 261
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    return v2

    .line 205
    :cond_2a
    :try_start_2a
    iput-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z

    .line 208
    :cond_2c
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    if-nez v0, :cond_42

    .line 210
    invoke-virtual {p0}, Lcom/huawei/videoengine/H264Decoder;->init()I

    move-result v0

    if-eqz v0, :cond_42

    .line 213
    const-string v0, "inited failed"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_f8

    .line 214
    nop

    .line 261
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    return v1

    .line 218
    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    iget v6, p0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    invoke-virtual {v0, v5, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_f8

    .line 222
    :try_start_50
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 225
    :goto_55
    iget-object v5, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 227
    if-gez v5, :cond_d1

    .line 228
    const/4 v0, -0x2

    if-ne v5, v0, :cond_95

    .line 229
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 231
    const-string v5, "width"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 232
    const-string v6, "height"

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dec resolution change to: width "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-wide v6, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    invoke-direct {p0, v6, v7, v5, v0}, Lcom/huawei/videoengine/H264Decoder;->setDecodedSize(JII)V

    .line 242
    :cond_95
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    iget-object v5, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    .line 244
    if-ltz v9, :cond_be

    .line 245
    aget-object v0, v0, v9

    .line 246
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 247
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    iget v3, p0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 248
    iget-object v8, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    iget v11, p0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    iget-wide v12, p0, Lcom/huawei/videoengine/H264Decoder;->renderTime:J

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 250
    nop

    .line 259
    goto :goto_f1

    .line 251
    :cond_be
    const-string v0, "inputBufferIndex < 0"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 254
    iput-boolean v3, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_ca} :catch_d8
    .catchall {:try_start_50 .. :try_end_ca} :catchall_f8

    .line 255
    nop

    .line 261
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    return v2

    .line 239
    :cond_d1
    :try_start_d1
    iget-object v6, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v5, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d6} :catch_d8
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_f8

    .line 240
    goto/16 :goto_55

    .line 257
    :catch_d8
    move-exception v0

    .line 258
    :try_start_d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFrame : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catchall {:try_start_d9 .. :try_end_f1} :catchall_f8

    .line 261
    :goto_f1
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 262
    nop

    .line 263
    return v1

    .line 261
    :catchall_f8
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 262
    throw v0
.end method

.method public registerNativeObject(J)V
    .registers 3

    .line 339
    iput-wide p1, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    .line 340
    return-void
.end method

.method public release()V
    .registers 3

    .line 267
    const-string v0, "H264JavaDecoder"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/huawei/videoengine/H264Decoder;->stop()V

    .line 270
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 271
    return-void
.end method

.method public setFrameInfo(IJI)V
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 126
    :try_start_5
    iput p1, p0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    .line 127
    iput-wide p2, p0, Lcom/huawei/videoengine/H264Decoder;->renderTime:J

    .line 128
    iput p4, p0, Lcom/huawei/videoengine/H264Decoder;->isKeyFrame:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    .line 131
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_12
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 132
    throw p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 64
    const-string p2, "H264JavaDecoder"

    const-string p3, "Enter surfaceChanged"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p3, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 68
    :try_start_c
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/H264Decoder;->start(Landroid/view/SurfaceHolder;)I

    move-result p1

    if-eqz p1, :cond_17

    .line 69
    const-string p1, "surfaceCreated start failed"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1e

    .line 72
    :cond_17
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    nop

    .line 74
    return-void

    .line 72
    :catchall_1e
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 78
    const-string p1, "H264JavaDecoder"

    const-string v0, "Enter surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 83
    const-string p1, "H264JavaDecoder"

    const-string v0, "Enter surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    :try_start_c
    invoke-direct {p0}, Lcom/huawei/videoengine/H264Decoder;->stop()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_16

    .line 88
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :catchall_16
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    throw p1
.end method
