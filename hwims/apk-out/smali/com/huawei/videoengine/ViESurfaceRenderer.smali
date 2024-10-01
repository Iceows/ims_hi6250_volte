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
    .locals 1

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
    .locals 4

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

    if-nez p1, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    .line 69
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 70
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 76
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 77
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 78
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 80
    iput-boolean v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    .line 82
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 84
    const-string p1, "hme-video"

    const-string v0, "leave ViESurfaceRenderer !"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method private native setSurface(JLjava/lang/Object;)V
.end method


# virtual methods
.method public createBitmap(II)Landroid/graphics/Bitmap;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, -0x4

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    const-string v0, "Logerr"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 181
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 182
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 183
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 184
    iget-object p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 185
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    .line 186
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public createByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, -0x4

    .line 193
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 197
    const-string v0, "Logerr"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    :goto_0
    :try_start_1
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
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    goto :goto_1

    .line 216
    :catch_1
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
    :goto_1
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public drawBitmap()V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 351
    return-void

    .line 353
    :cond_0
    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_1

    .line 357
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 358
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_1
    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 362
    nop

    .line 363
    return-void

    .line 361
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public drawBlack()V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 367
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_1

    .line 370
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 371
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 373
    :cond_1
    return-void
.end method

.method public drawByteBuffer()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 343
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

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
    .locals 4

    .line 136
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! getRemoteSurface!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! set remote surface to native channel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-wide v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurface(JLjava/lang/Object;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    goto :goto_0

    .line 147
    :cond_0
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! remoteSurface is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_1
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! getRemoteSurface but not registered!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2
    :goto_0
    return-void
.end method

.method public registerNativeObject(J)V
    .locals 0

    .line 377
    iput-wide p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    .line 378
    return-void
.end method

.method public removeCallback()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setCoordinates(FFFFI)V
    .locals 0

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

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 331
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 332
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 333
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 336
    const-string p1, "hme-video"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCoordinates + left:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " top:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bottom:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " right:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " Type:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput p5, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    .line 339
    return-void
.end method

.method public setSurfaceViewDisplayParas()V
    .locals 11

    .line 229
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceViewDisplayParas + dataWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dataHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceViewDisplayParas + dstWidth/dstHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " width/height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 238
    :cond_0
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 305
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 306
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 307
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 308
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 309
    goto/16 :goto_1

    .line 277
    :pswitch_1
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 280
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 281
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 282
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 283
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 284
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 286
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createByteBuffer + top"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 288
    :cond_1
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 290
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 291
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 292
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 293
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 294
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 296
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createByteBuffer + left"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 248
    :pswitch_2
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    .line 251
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 252
    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v3, v3

    div-float v3, v0, v3

    sub-float v3, v2, v3

    .line 253
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createByteBuffer + ratio:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " tempDestWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " dstWidth:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    div-float v6, v3, v1

    const/4 v7, 0x0

    sub-float v8, v2, v6

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setCoordinates(FFFFI)V

    goto :goto_0

    .line 257
    :cond_2
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 259
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataHeight:I

    mul-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dataWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 260
    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v3, v3

    div-float v3, v0, v3

    sub-float v3, v2, v3

    .line 261
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createByteBuffer + ratio:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " tempDestHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " dstHeight:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v6, 0x0

    div-float v7, v3, v1

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v2, v7

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setCoordinates(FFFFI)V

    .line 264
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBlack()V

    .line 265
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBlack()V

    .line 266
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->drawBlack()V

    .line 267
    nop

    .line 318
    :cond_4
    :goto_1
    return-void

    .line 235
    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 98
    const-string p1, "hme-video"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViESurfaceRenderer.java! surfaceChanged  width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " creatNativeFlag:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput p4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 101
    iput p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    .line 102
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 103
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 104
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 105
    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    iget p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float p3, p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 107
    iget-boolean p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->creatNativeFlag:Z

    if-eqz p1, :cond_0

    .line 109
    const-string p1, "hme-video"

    const-string p2, "before setSurfaceViewDisplayParas"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurfaceViewDisplayParas()V

    .line 111
    const-string p1, "hme-video"

    const-string p2, "after setSurfaceViewDisplayParas"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 117
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VieSurfaceRenderer.java! enter surfaceCreated  this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " holder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    .line 120
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_1

    sget-object p1, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    const-string v0, "HUAWEI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 123
    const-string p1, "hme-video"

    const-string v0, "VieSurfaceRenderer.java! lnativeObject is registerd!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-wide v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    iget-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, p1}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurface(JLjava/lang/Object;)V

    .line 125
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    goto :goto_0

    .line 128
    :cond_0
    const-string p1, "hme-video"

    const-string v0, "VieSurfaceRenderer.java! not registered,save remote surface!!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 158
    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 162
    :try_start_0
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    sget-object p1, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    nop

    .line 167
    return-void

    .line 165
    :catchall_0
    move-exception p1

    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
