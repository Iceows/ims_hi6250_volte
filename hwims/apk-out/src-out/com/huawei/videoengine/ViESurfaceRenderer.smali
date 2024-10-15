.class public Lcom/huawei/videoengine/ViESurfaceRenderer;
.super Ljava/lang/Object;
.source "ViESurfaceRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final displayBorder:I = 0x0

.field private static final displayClipping:I = 0x1

.field private static final displayNone:I = 0x2

.field private static final manufaturer:Ljava/lang/String;

.field private static surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private creatNativeFlag:Z

.field private dataHeight:I

.field private dataWidth:I

.field private displayType:I

.field private dstBottomScale:F

.field private dstHeight:I

.field private dstLeftScale:F

.field private dstRect:Landroid/graphics/Rect;

.field private dstRightScale:F

.field private dstTopScale:F

.field private dstWidth:I

.field private lnativeObject:J

.field private remoteSurface:Landroid/view/Surface;

.field private srcRect:Landroid/graphics/Rect;

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;)V
    .registers 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    .line 38
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    .line 43
    const/4 v1, 0x2

    iput v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    .line 45
    iput v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    .line 46
    iput v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    .line 48
    iput v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 49
    iput v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    .line 50
    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    .line 51
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    .line 52
    iput v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    .line 53
    iput v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    .line 54
    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    .line 55
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    .line 58
    const-string v0, "hme-video"

    const-string v2, "enter ViESurfaceRenderer !"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 61
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez p1, :cond_47

    .line 62
    return-void

    .line 64
    :cond_47
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    .line 65
    if-eqz p1, :cond_72

    .line 66
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_6d

    .line 68
    iput-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    .line 69
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 70
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    .line 72
    :cond_6d
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 75
    :cond_72
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 76
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 77
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 78
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 80
    iput-boolean v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    .line 82
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 84
    const-string p1, "leave ViESurfaceRenderer !"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method private native setSurface(JLjava/lang/Object;)V
.end method


# virtual methods
.method public createBitmap(II)Landroid/graphics/Bitmap;
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    .line 172
    const/4 v0, -0x4

    :try_start_5
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 178
    goto :goto_11

    .line 175
    :catch_9
    move-exception v0

    .line 177
    const-string v0, "Logerr"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_11
    :goto_11
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 181
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 182
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 183
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 184
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 185
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    .line 186
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public createByteBuffer(II)Ljava/nio/ByteBuffer;
    .registers 5

    .line 190
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    .line 192
    const/4 v0, -0x4

    .line 193
    :try_start_5
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 198
    goto :goto_11

    .line 195
    :catch_9
    move-exception v0

    .line 197
    const-string v0, "Logerr"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_11
    :goto_11
    :try_start_11
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 203
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 204
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 205
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 206
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 207
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    .line 211
    iput p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    .line 212
    iput p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    .line 213
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurfaceViewDisplayParas()V
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_3e} :catch_3f

    .line 221
    goto :goto_4c

    .line 216
    :catch_3f
    move-exception p1

    .line 218
    const-string p1, "hme-video"

    const-string p2, "Failed to createByteBuffer"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 220
    iput-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 223
    :goto_4c
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public drawBitmap()V
    .registers 6

    .line 350
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 351
    return-void

    .line 353
    :cond_5
    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 355
    :try_start_a
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_21

    .line 357
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 358
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_28

    .line 361
    :cond_21
    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 362
    nop

    .line 363
    return-void

    .line 361
    :catchall_28
    move-exception v0

    sget-object v1, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 362
    throw v0
.end method

.method public drawBlack()V
    .registers 3

    .line 366
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 367
    return-void

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_17

    .line 370
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 371
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 373
    :cond_17
    return-void
.end method

.method public drawByteBuffer()V
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 343
    return-void

    .line 344
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 345
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 346
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBitmap()V

    .line 347
    return-void
.end method

.method public getRemoteSurface()V
    .registers 6

    .line 136
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! getRemoteSurface!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3e

    sget-object v1, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    const-string v2, "HUAWEI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 139
    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_39

    .line 141
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    if-eqz v1, :cond_33

    .line 142
    const-string v1, "VieSurfaceRenderer.java! set remote surface to native channel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-wide v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurface(JLjava/lang/Object;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    goto :goto_3e

    .line 147
    :cond_33
    const-string v1, "VieSurfaceRenderer.java! remoteSurface is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 152
    :cond_39
    const-string v1, "VieSurfaceRenderer.java! getRemoteSurface but not registered!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_3e
    :goto_3e
    return-void
.end method

.method public registerNativeObject(J)V
    .registers 3

    .line 377
    iput-wide p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    .line 378
    return-void
.end method

.method public removeCallback()V
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_7

    .line 91
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 93
    :cond_7
    return-void
.end method

.method public setCoordinates(FFFFI)V
    .registers 7

    .line 325
    iput p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    .line 326
    iput p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    .line 327
    iput p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    .line 328
    iput p4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    .line 330
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float p4, p3

    mul-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 331
    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    iget p4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v0, p4

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 332
    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    int-to-float p4, p4

    mul-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 333
    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCoordinates + left:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " top:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bottom:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " right:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Type:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hme-video"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput p5, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    .line 339
    return-void
.end method

.method public setSurfaceViewDisplayParas()V
    .registers 16

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurfaceViewDisplayParas + dataWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dataHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " displayType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceViewDisplayParas + dstWidth/dstHeight:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " width/height:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    if-eqz v0, :cond_1a1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    if-eqz v2, :cond_1a1

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    if-eqz v3, :cond_1a1

    iget v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    if-nez v4, :cond_68

    goto/16 :goto_1a1

    .line 238
    :cond_68
    iget v5, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    if-eqz v5, :cond_109

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eq v5, v6, :cond_81

    if-eq v5, v7, :cond_75

    goto/16 :goto_1a0

    .line 305
    :cond_75
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v8, v1, Landroid/graphics/Rect;->left:I

    .line 306
    iput v8, v1, Landroid/graphics/Rect;->top:I

    .line 307
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 308
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 309
    goto/16 :goto_1a0

    .line 277
    :cond_81
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    int-to-float v6, v0

    int-to-float v9, v2

    div-float/2addr v6, v9

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_c5

    .line 280
    mul-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 281
    iget-object v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 282
    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 283
    sub-int/2addr v2, v3

    div-int/2addr v2, v7

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 284
    iget v0, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createByteBuffer + top"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bottom:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a0

    .line 288
    :cond_c5
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    int-to-float v6, v0

    int-to-float v9, v2

    div-float/2addr v6, v9

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1a0

    .line 290
    mul-int/2addr v3, v2

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 291
    iget-object v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 292
    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 293
    sub-int/2addr v0, v3

    div-int/2addr v0, v7

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 294
    iget v0, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createByteBuffer + left"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " right:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a0

    .line 248
    :cond_109
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    int-to-float v6, v0

    int-to-float v7, v2

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    const-string v7, "createByteBuffer + ratio:"

    const/high16 v8, 0x3f800000    # 1.0f

    if-ltz v5, :cond_153

    .line 251
    mul-int/2addr v4, v0

    int-to-float v0, v4

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 252
    int-to-float v2, v3

    div-float v2, v0, v2

    sub-float v2, v8, v2

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " tempDestWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " dstWidth:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    div-float v10, v2, v6

    const/4 v11, 0x0

    sub-float v12, v8, v10

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setCoordinates(FFFFI)V

    goto :goto_196

    .line 257
    :cond_153
    int-to-float v5, v3

    int-to-float v9, v4

    div-float/2addr v5, v9

    int-to-float v9, v0

    int-to-float v10, v2

    div-float/2addr v9, v10

    cmpg-float v5, v5, v9

    if-gez v5, :cond_196

    .line 259
    mul-int/2addr v3, v2

    int-to-float v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 260
    int-to-float v0, v4

    div-float v0, v2, v0

    sub-float v0, v8, v0

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " tempDestHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " dstHeight:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v10, 0x0

    div-float v11, v0, v6

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v13, v8, v11

    const/4 v14, 0x0

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setCoordinates(FFFFI)V

    .line 264
    :cond_196
    :goto_196
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBlack()V

    .line 265
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBlack()V

    .line 266
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBlack()V

    .line 267
    nop

    .line 318
    :cond_1a0
    :goto_1a0
    return-void

    .line 235
    :cond_1a1
    :goto_1a1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ViESurfaceRenderer.java! surfaceChanged  width:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " creatNativeFlag:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hme-video"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput p4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 101
    iput p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    .line 102
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    iget p4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, p4

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 103
    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 104
    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    int-to-float v0, v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 105
    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    int-to-float p4, p4

    mul-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 107
    iget-boolean p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    if-eqz p1, :cond_67

    .line 109
    const-string p1, "before setSurfaceViewDisplayParas"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurfaceViewDisplayParas()V

    .line 111
    const-string p1, "after setSurfaceViewDisplayParas"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_67
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 8

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VieSurfaceRenderer.java! enter surfaceCreated  this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " holder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    .line 120
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_51

    sget-object p1, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    const-string v0, "HUAWEI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 122
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4c

    .line 123
    const-string p1, "VieSurfaceRenderer.java! lnativeObject is registerd!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-wide v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, p1}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurface(JLjava/lang/Object;)V

    .line 125
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    goto :goto_51

    .line 128
    :cond_4c
    const-string p1, "VieSurfaceRenderer.java! not registered,save remote surface!!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_51
    :goto_51
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5

    .line 158
    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 162
    :try_start_5
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VieSurfaceRenderer.java! enter surfaceDestroyed this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " holder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_2a

    .line 165
    sget-object p1, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    nop

    .line 167
    return-void

    .line 165
    :catchall_2a
    move-exception p1

    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    throw p1
.end method
