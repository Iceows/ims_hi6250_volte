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
    .locals 2

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
    .locals 5

    .line 275
    const-string v0, "H264JavaDecoder"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 278
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    const-string p1, "H264JavaDecoder"

    const-string v0, " decoder is allready started"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    nop

    .line 304
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    return v1

    .line 285
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    const-string v2, "video/avc"

    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    .line 286
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->mediaFormat:Landroid/media/MediaFormat;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    nop

    .line 294
    :try_start_2
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    nop

    .line 301
    const/4 p1, 0x1

    :try_start_3
    iput-boolean p1, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    .line 302
    iput-boolean p1, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 305
    nop

    .line 306
    return v1

    .line 295
    :catch_0
    move-exception p1

    .line 296
    :try_start_4
    const-string v1, "H264JavaDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 298
    nop

    .line 304
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 298
    return v0

    .line 287
    :catch_1
    move-exception p1

    .line 288
    :try_start_5
    const-string v1, "H264JavaDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 290
    nop

    .line 304
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    return v0

    .line 304
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private stop()V
    .locals 4

    .line 310
    const-string v0, "H264JavaDecoder"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 315
    return-void

    .line 319
    :cond_0
    :try_start_1
    const-string v0, "H264JavaDecoder"

    const-string v1, "h264Decoder stop1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z

    .line 324
    :cond_1
    const-string v0, "H264JavaDecoder"

    const-string v1, "h264Decoder stop2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 329
    :try_start_2
    const-string v1, "H264JavaDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    .line 332
    const-string v0, "H264JavaDecoder"

    const-string v1, "h264Decoder stop3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public config(Landroid/view/SurfaceView;II)I
    .locals 3

    .line 93
    const-string v0, "H264JavaDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 98
    const-string p1, "H264JavaDecoder"

    const-string p2, "H264Decoder config failed holder = null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 p1, -0x1

    return p1

    .line 101
    :cond_0
    const-string v1, "H264JavaDecoder"

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
    :try_start_0
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 111
    invoke-direct {p0, v0}, Lcom/huawei/videoengine/H264Decoder;->start(Landroid/view/SurfaceHolder;)I

    move-result p1

    .line 112
    if-eqz p1, :cond_1

    .line 113
    const-string p2, "H264JavaDecoder"

    const-string p3, "start failed"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    iget-object p2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 118
    nop

    .line 119
    const-string p2, "H264JavaDecoder"

    const-string p3, "config end"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return p1

    .line 117
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public deRegisterNativeObject()V
    .locals 2

    .line 343
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    .line 344
    return-void
.end method

.method public init()I
    .locals 5

    .line 35
    const-string v0, "H264JavaDecoder"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    return v1

    .line 41
    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x200000

    :try_start_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    nop

    .line 49
    :try_start_1
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    nop

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    .line 58
    return v1

    .line 50
    :catch_0
    move-exception v1

    .line 51
    const-string v1, "H264JavaDecoder"

    const-string v3, "tempBufPlay failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    .line 53
    return v0

    .line 42
    :catch_1
    move-exception v1

    .line 43
    const-string v1, "H264JavaDecoder"

    const-string v3, "H264Decoder failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    .line 45
    return v0
.end method

.method public onDecodeAndRander()I
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 142
    nop

    .line 186
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 142
    return v1

    .line 145
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/huawei/videoengine/H264Decoder;->init()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, -0x1

    .line 186
    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    return v0

    .line 155
    :cond_1
    :try_start_2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 158
    :goto_0
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 160
    if-gez v2, :cond_3

    .line 162
    const/4 v0, -0x2

    if-ne v2, v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 165
    const-string v2, "width"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 166
    const-string v3, "height"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 167
    const-string v3, "H264JavaDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dec resolution change to: width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-wide v3, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    invoke-direct {p0, v3, v4, v2, v0}, Lcom/huawei/videoengine/H264Decoder;->setDecodedSize(JII)V

    .line 171
    goto :goto_1

    .line 172
    :cond_2
    const/4 v0, -0x3

    .line 184
    :goto_1
    goto :goto_2

    .line 178
    :cond_3
    iget-object v3, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    :try_start_3
    const-string v2, "H264JavaDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodeAndrander : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    :goto_2
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    nop

    .line 188
    return v1

    .line 186
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onFrame()I
    .locals 14

    .line 192
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 194
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 196
    nop

    .line 261
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 196
    return v1

    .line 199
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z

    const/16 v2, -0x64

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 200
    iget v0, p0, Lcom/huawei/videoengine/H264Decoder;->isKeyFrame:I

    if-nez v0, :cond_1

    .line 201
    const-string v0, "H264JavaDecoder"

    const-string v1, "request i, but not"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    nop

    .line 261
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    return v2

    .line 205
    :cond_1
    :try_start_2
    iput-boolean v1, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z

    .line 208
    :cond_2
    iget-boolean v0, p0, Lcom/huawei/videoengine/H264Decoder;->inited:Z

    if-nez v0, :cond_3

    .line 210
    invoke-virtual {p0}, Lcom/huawei/videoengine/H264Decoder;->init()I

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    const-string v0, "H264JavaDecoder"

    const-string v2, "inited failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    nop

    .line 261
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    return v1

    .line 218
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    iget v5, p0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    invoke-virtual {v0, v4, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    :try_start_4
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 225
    :goto_0
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 227
    if-gez v4, :cond_6

    .line 228
    const/4 v0, -0x2

    if-ne v4, v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 231
    const-string v4, "width"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 232
    const-string v5, "height"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 233
    const-string v5, "H264JavaDecoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dec resolution change to: width "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-wide v5, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    invoke-direct {p0, v5, v6, v4, v0}, Lcom/huawei/videoengine/H264Decoder;->setDecodedSize(JII)V

    .line 236
    nop

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    iget-object v4, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x4e20

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    .line 244
    if-ltz v8, :cond_5

    .line 245
    aget-object v0, v0, v8

    .line 246
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 247
    iget-object v2, p0, Lcom/huawei/videoengine/H264Decoder;->tempBufPlay:[B

    iget v3, p0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 248
    iget-object v7, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    iget v10, p0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    iget-wide v11, p0, Lcom/huawei/videoengine/H264Decoder;->renderTime:J

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 250
    nop

    .line 259
    goto :goto_1

    .line 251
    :cond_5
    const-string v0, "H264JavaDecoder"

    const-string v4, "inputBufferIndex < 0"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 254
    iput-boolean v3, p0, Lcom/huawei/videoengine/H264Decoder;->needKeyFrame:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    nop

    .line 261
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    return v2

    .line 239
    :cond_6
    :try_start_5
    iget-object v5, p0, Lcom/huawei/videoengine/H264Decoder;->h264Decoder:Landroid/media/MediaCodec;

    invoke-virtual {v5, v4, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    goto/16 :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    :try_start_6
    const-string v2, "H264JavaDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFrame : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 262
    nop

    .line 263
    return v1

    .line 261
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public registerNativeObject(J)V
    .locals 0

    .line 339
    iput-wide p1, p0, Lcom/huawei/videoengine/H264Decoder;->lnativeObject:J

    .line 340
    return-void
.end method

.method public release()V
    .locals 2

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
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 126
    :try_start_0
    iput p1, p0, Lcom/huawei/videoengine/H264Decoder;->dataLength:I

    .line 127
    iput-wide p2, p0, Lcom/huawei/videoengine/H264Decoder;->renderTime:J

    .line 128
    iput p4, p0, Lcom/huawei/videoengine/H264Decoder;->isKeyFrame:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 64
    const-string p2, "H264JavaDecoder"

    const-string p3, "Enter surfaceChanged"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 68
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/H264Decoder;->start(Landroid/view/SurfaceHolder;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    const-string p1, "H264JavaDecoder"

    const-string p2, "surfaceCreated start failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 73
    nop

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 78
    const-string p1, "H264JavaDecoder"

    const-string v0, "Enter surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 83
    const-string p1, "H264JavaDecoder"

    const-string v0, "Enter surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/videoengine/H264Decoder;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object p1, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/H264Decoder;->decoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
