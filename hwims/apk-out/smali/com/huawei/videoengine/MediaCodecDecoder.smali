.class public Lcom/huawei/videoengine/MediaCodecDecoder;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceInfoMsg;,
        Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;,
        Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;,
        Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;,
        Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;,
        Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;,
        Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;
    }
.end annotation


# static fields
.field private static final MSG_BASE:I = 0x0

.field private static final MSG_INIT_EGL:I = 0x1

.field private static final MSG_ONFRAME:I = 0x8

.field private static final MSG_RESET_DECODER:I = 0xa

.field private static final MSG_SET_COORDINATES:I = 0x6

.field private static final MSG_SET_DISPLAYMODE:I = 0x7

.field private static final MSG_SET_FRAME_INFO:I = 0x9

.field private static final MSG_SET_SCALERATE:I = 0x5

.field private static final MSG_START_DECODER:I = 0x3

.field private static final MSG_STOP_DECODER:I = 0x4

.field private static final MSG_UNINIT_EGL:I = 0x2

.field private static final MSG_UPDATE_SURFACE:I = 0xb

.field private static final PREFIXSTEP:Ljava/lang/String; = "#step#"

.field private static final PREFIXWINSF:Ljava/lang/String; = "#winsf#"

.field private static final TAG:Ljava/lang/String; = "hme_engine_JavaDEC"

.field private static final VENDOR_KEY_VTMODE:Ljava/lang/String; = "vendor.hisi.SceneMode"


# instance fields
.field private bindedSurface:Z

.field private codecType:I

.field configLock:Ljava/lang/Object;

.field private dataLength:I

.field private decSurfaceHolder:Landroid/view/SurfaceHolder;

.field private decSurfaceView:Landroid/view/SurfaceView;

.field private decoder:Landroid/media/MediaCodec;

.field defualt_height:I

.field defualt_width:I

.field glSurfaceView:Landroid/view/Surface;

.field private indexList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private inputHeight:I

.field private inputWidth:I

.field private isKeyFrame:I

.field lastRestTime:J

.field listLock:Ljava/lang/Object;

.field private lnativeObject:J

.field private mAspectModeView:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mDecOutFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mDecoderHeight:I

.field private mDecoderSurface:Landroid/view/Surface;

.field private mDecoderTexture:Landroid/graphics/SurfaceTexture;

.field private mDecoderWidth:I

.field private mDisplayProjectionMatrix:[F

.field private mEglCore:Lcom/huawei/videoengine/EglCore;

.field private mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

.field mMirrorX:I

.field mMirrorY:I

.field mOrientation:I

.field private mTextureId:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

.field private mediaFormat:Landroid/media/MediaFormat;

.field moveHeight:F

.field moveWidth:F

.field private needAlign:Z

.field private needKeyFrame:Z

.field private origlHeight:I

.field private origlWidth:I

.field private playBuffer:Ljava/nio/ByteBuffer;

.field private renderBuffer:Ljava/nio/ByteBuffer;

.field private renderTime:J

.field private resolution:[[I

.field private resolution_num:I

.field scaleRatio:F

.field private started:Z

.field private surfaceListener:Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;

.field private tempBufPlay:[B

.field private timeStampMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    .line 38
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 39
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->playBuffer:Ljava/nio/ByteBuffer;

    .line 40
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->renderBuffer:Ljava/nio/ByteBuffer;

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z

    .line 45
    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    .line 46
    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->bindedSurface:Z

    .line 47
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->lnativeObject:J

    .line 48
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->indexList:Ljava/util/LinkedList;

    .line 50
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->surfaceListener:Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;

    .line 52
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->codecType:I

    .line 53
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decSurfaceView:Landroid/view/SurfaceView;

    .line 54
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 55
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    .line 56
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->tempBufPlay:[B

    .line 57
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->timeStampMap:Ljava/util/Map;

    .line 59
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    .line 60
    const/16 v4, 0xa

    iput v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->resolution_num:I

    .line 61
    new-array v4, v4, [[I

    const/4 v5, 0x2

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    aput-object v6, v4, v1

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    const/4 v7, 0x1

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_2

    aput-object v6, v4, v5

    new-array v6, v5, [I

    fill-array-data v6, :array_3

    const/4 v7, 0x3

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_4

    const/4 v7, 0x4

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_5

    const/4 v7, 0x5

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_6

    const/4 v7, 0x6

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_7

    const/4 v7, 0x7

    aput-object v6, v4, v7

    new-array v6, v5, [I

    fill-array-data v6, :array_8

    const/16 v7, 0x8

    aput-object v6, v4, v7

    new-array v5, v5, [I

    fill-array-data v5, :array_9

    const/16 v6, 0x9

    aput-object v5, v4, v6

    iput-object v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->resolution:[[I

    .line 72
    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needAlign:Z

    .line 75
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 241
    iput-wide v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->lastRestTime:J

    .line 420
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->listLock:Ljava/lang/Object;

    .line 728
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 729
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 731
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 732
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    .line 733
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDisplayProjectionMatrix:[F

    .line 735
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mViewWidth:I

    .line 736
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mViewHeight:I

    .line 737
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I

    .line 738
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I

    .line 741
    sget-object v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->none:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAspectModeView:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 742
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->moveWidth:F

    .line 744
    iput v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->moveHeight:F

    .line 745
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOrientation:I

    .line 746
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorX:I

    .line 747
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorY:I

    .line 770
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->configLock:Ljava/lang/Object;

    .line 949
    const/16 v0, 0x780

    iput v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->defualt_width:I

    .line 950
    const/16 v0, 0x438

    iput v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->defualt_height:I

    .line 77
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "Enter MediaCodecDecoder."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Lcom/huawei/videoengine/FpsStatistic;

    const-string v1, "Dec In"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/FpsStatistic;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 79
    return-void

    nop

    :array_0
    .array-data 4
        0x780
        0x438
    .end array-data

    :array_1
    .array-data 4
        0x460
        0x276
    .end array-data

    :array_2
    .array-data 4
        0x3c0
        0x21c
    .end array-data

    :array_3
    .array-data 4
        0x320
        0x1c2
    .end array-data

    :array_4
    .array-data 4
        0x280
        0x168
    .end array-data

    :array_5
    .array-data 4
        0x1e0
        0x10e
    .end array-data

    :array_6
    .array-data 4
        0x140
        0xb4
    .end array-data

    :array_7
    .array-data 4
        0xa0
        0x5a
    .end array-data

    :array_8
    .array-data 4
        0x1e0
        0x168
    .end array-data

    :array_9
    .array-data 4
        0xa0
        0x78
    .end array-data
.end method

.method static synthetic access$000(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/LinkedList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->indexList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huawei/videoengine/MediaCodecDecoder;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->bindedSurface:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/huawei/videoengine/MediaCodecDecoder;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlWidth:I

    return p1
.end method

.method static synthetic access$1102(Lcom/huawei/videoengine/MediaCodecDecoder;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mViewWidth:I

    return p0
.end method

.method static synthetic access$1202(Lcom/huawei/videoengine/MediaCodecDecoder;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mViewWidth:I

    return p1
.end method

.method static synthetic access$1300(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mViewHeight:I

    return p0
.end method

.method static synthetic access$1302(Lcom/huawei/videoengine/MediaCodecDecoder;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mViewHeight:I

    return p1
.end method

.method static synthetic access$1400(Lcom/huawei/videoengine/MediaCodecDecoder;Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_SetDspMode(Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/view/Surface;)I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->backupdateWinowSurface(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/huawei/videoengine/MediaCodecDecoder;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/WindowSurface;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/huawei/videoengine/MediaCodecDecoder;)[F
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDisplayProjectionMatrix:[F

    return-object p0
.end method

.method static synthetic access$1900(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAspectModeView:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/huawei/videoengine/MediaCodecDecoder;[FILcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;II)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/huawei/videoengine/MediaCodecDecoder;->getMVPP([FILcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    return p0
.end method

.method static synthetic access$2200(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/FullFrameRect;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->renderBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->timeStampMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/huawei/videoengine/MediaCodecDecoder;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->lnativeObject:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecOutFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$700(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I

    return p0
.end method

.method static synthetic access$702(Lcom/huawei/videoengine/MediaCodecDecoder;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/huawei/videoengine/MediaCodecDecoder;)[[I
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->resolution:[[I

    return-object p0
.end method

.method static synthetic access$900(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I

    return p0
.end method

.method static synthetic access$902(Lcom/huawei/videoengine/MediaCodecDecoder;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I

    return p1
.end method

.method private backupdateWinowSurface(Landroid/view/Surface;)I
    .locals 5

    .line 1038
    nop

    .line 1039
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->configLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1041
    :try_start_0
    const-string v1, "hme_engine_JavaDEC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWinowSurface currentWS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", updateSF= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v1, :cond_1

    .line 1048
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->isCurrent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    const-string v1, "hme_engine_JavaDEC"

    const-string v2, "#winsf#mWindowSurface makeNothingCurrent "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v1}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 1052
    :cond_0
    const-string v1, "hme_engine_JavaDEC"

    const-string v2, "#winsf# mWindowSurface release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 1054
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 1057
    :cond_1
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 1058
    nop

    .line 1063
    :goto_0
    move v2, v1

    goto :goto_1

    .line 1059
    :cond_2
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1060
    goto :goto_0

    .line 1063
    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    .line 1064
    const-string v2, "hme_engine_JavaDEC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no need to create windowSF, beause Surface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is null, or Surface isValid"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    monitor-exit v0

    return v1

    .line 1068
    :cond_4
    new-instance v2, Lcom/huawei/videoengine/WindowSurface;

    iget-object v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-direct {v2, v3, p1, v1}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 1069
    const-string p1, "hme_engine_JavaDEC"

    const-string v2, "#winsf# mWindowSurface create"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 1072
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez p1, :cond_5

    .line 1073
    const-string p1, "hme_engine_JavaDEC"

    const-string v2, "#step#FullFrame 2d programe create "

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    new-instance p1, Lcom/huawei/videoengine/FullFrameRect;

    new-instance v2, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object v3, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {v2, v3}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, v2}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 1075
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {p1}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    .line 1076
    iget p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    invoke-direct {p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->createSurfaceTexureForDecoder(I)I

    .line 1077
    const-string p1, "hme_engine_JavaDEC"

    const-string v2, "FullFrame created "

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_5
    monitor-exit v0

    .line 1080
    return v1

    .line 1079
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createSurfaceTexureForDecoder(I)I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 954
    const-string p1, "hme_engine_JavaDEC"

    const-string v0, "cameraTexure is already exist, no need to create"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return v1

    .line 957
    :cond_0
    const-string v0, "hme_engine_JavaDEC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSurfaceTexureForDecoder textureName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " started:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    if-nez p1, :cond_1

    .line 960
    const-string p1, "hme_engine_JavaDEC"

    const-string v0, "createSurfaceTexureForDecoder failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 p1, -0x1

    return p1

    .line 963
    :cond_1
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    .line 964
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->defualt_width:I

    iget v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->defualt_height:I

    invoke-virtual {p1, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 966
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$3;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$3;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1020
    return v1
.end method

.method private getMVPP([FILcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 1170
    const/16 v3, 0x10

    new-array v12, v3, [F

    .line 1171
    new-array v13, v3, [F

    .line 1172
    new-array v14, v3, [F

    .line 1173
    new-array v3, v3, [F

    .line 1174
    move/from16 v4, p4

    int-to-float v15, v4

    move/from16 v4, p5

    int-to-float v11, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v4, v12

    move v7, v15

    move v9, v11

    move/from16 v17, v11

    move/from16 v11, v16

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1175
    const/4 v10, 0x0

    invoke-static {v13, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1178
    const/high16 v11, 0x40000000    # 2.0f

    div-float v4, v15, v11

    div-float v5, v17, v11

    const/4 v9, 0x0

    invoke-static {v13, v10, v4, v5, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1179
    const/4 v5, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    move-object v4, v13

    move v10, v9

    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1180
    iget v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorY:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_0

    .line 1182
    const/4 v5, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    move-object v4, v13

    move v11, v9

    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0

    .line 1184
    :cond_0
    move v11, v9

    :goto_0
    iget v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorX:I

    if-ne v4, v11, :cond_1

    .line 1186
    const/4 v5, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v13

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1188
    :cond_1
    const/4 v5, 0x0

    int-to-float v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v4, v13

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1189
    iget v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I

    if-eqz v4, :cond_12

    iget v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I

    if-nez v4, :cond_2

    goto/16 :goto_c

    .line 1194
    :cond_2
    iget v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I

    .line 1195
    iget v5, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I

    .line 1196
    nop

    .line 1197
    nop

    .line 1199
    const/16 v6, 0x5a

    if-eq v1, v6, :cond_4

    const/16 v6, 0x10e

    if-ne v1, v6, :cond_3

    goto :goto_1

    .line 1206
    :cond_3
    move v1, v15

    goto :goto_2

    .line 1201
    :cond_4
    :goto_1
    nop

    .line 1202
    nop

    .line 1206
    move/from16 v1, v17

    move/from16 v17, v15

    :goto_2
    iget v6, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlWidth:I

    iget v7, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 1207
    iget v7, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlHeight:I

    iget v8, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 1212
    int-to-float v4, v4

    mul-float v8, v17, v4

    int-to-float v5, v5

    div-float/2addr v8, v5

    .line 1213
    mul-float/2addr v5, v1

    div-float/2addr v5, v4

    .line 1215
    nop

    .line 1216
    sget-object v4, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->crop:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v16, 0x2

    if-ne v2, v4, :cond_a

    .line 1218
    sub-float v2, v8, v15

    cmpl-float v2, v2, v10

    if-lez v2, :cond_7

    .line 1220
    iget-boolean v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->needAlign:Z

    if-ne v1, v11, :cond_5

    mul-float v6, v6, v17

    iget v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlHeight:I

    mul-int v1, v1, v16

    int-to-float v1, v1

    div-float v1, v6, v1

    goto :goto_3

    .line 1221
    :cond_5
    move v1, v10

    :goto_3
    iget-boolean v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->needAlign:Z

    if-ne v2, v11, :cond_6

    mul-float v7, v7, v17

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlHeight:I

    mul-int v2, v2, v16

    int-to-float v2, v2

    div-float v2, v7, v2

    goto :goto_4

    .line 1222
    :cond_6
    move v2, v10

    :goto_4
    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v8, v4

    add-float/2addr v8, v1

    iget v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float/2addr v8, v1

    div-float v17, v17, v4

    add-float v17, v17, v2

    iget v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float v1, v1, v17

    const/4 v2, 0x0

    invoke-static {v13, v2, v8, v1, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_b

    .line 1227
    :cond_7
    iget-boolean v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->needAlign:Z

    if-ne v2, v11, :cond_8

    mul-float/2addr v6, v1

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlWidth:I

    mul-int v2, v2, v16

    int-to-float v2, v2

    div-float v2, v6, v2

    goto :goto_5

    .line 1228
    :cond_8
    move v2, v10

    :goto_5
    iget-boolean v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->needAlign:Z

    if-ne v4, v11, :cond_9

    mul-float/2addr v7, v1

    iget v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlWidth:I

    mul-int v4, v4, v16

    int-to-float v4, v4

    div-float v4, v7, v4

    goto :goto_6

    .line 1229
    :cond_9
    move v4, v10

    :goto_6
    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    add-float/2addr v1, v2

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float/2addr v1, v2

    div-float/2addr v5, v6

    add-float/2addr v5, v4

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float/2addr v5, v2

    const/4 v2, 0x0

    invoke-static {v13, v2, v1, v5, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_b

    .line 1234
    :cond_a
    sget-object v4, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    if-ne v2, v4, :cond_10

    .line 1236
    sub-float v2, v8, v15

    cmpl-float v2, v2, v10

    if-lez v2, :cond_d

    .line 1237
    iget-boolean v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->needAlign:Z

    if-ne v2, v11, :cond_b

    mul-float/2addr v6, v1

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlWidth:I

    mul-int v2, v2, v16

    int-to-float v2, v2

    div-float v2, v6, v2

    goto :goto_7

    .line 1238
    :cond_b
    move v2, v10

    :goto_7
    iget-boolean v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->needAlign:Z

    if-ne v4, v11, :cond_c

    mul-float/2addr v7, v1

    iget v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlWidth:I

    mul-int v4, v4, v16

    int-to-float v4, v4

    div-float v4, v7, v4

    goto :goto_8

    .line 1239
    :cond_c
    move v4, v10

    :goto_8
    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    add-float/2addr v1, v2

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float/2addr v1, v2

    div-float/2addr v5, v6

    add-float/2addr v5, v4

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float/2addr v5, v2

    const/4 v2, 0x0

    invoke-static {v13, v2, v1, v5, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_b

    .line 1242
    :cond_d
    iget-boolean v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->needAlign:Z

    if-ne v1, v11, :cond_e

    mul-float v6, v6, v17

    iget v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlHeight:I

    mul-int v1, v1, v16

    int-to-float v1, v1

    div-float v1, v6, v1

    goto :goto_9

    .line 1243
    :cond_e
    move v1, v10

    :goto_9
    iget-boolean v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->needAlign:Z

    if-ne v2, v11, :cond_f

    mul-float v7, v7, v17

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlHeight:I

    mul-int v2, v2, v16

    int-to-float v2, v2

    div-float v2, v7, v2

    goto :goto_a

    .line 1244
    :cond_f
    move v2, v10

    :goto_a
    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v8, v4

    add-float/2addr v8, v1

    iget v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float/2addr v8, v1

    div-float v17, v17, v4

    add-float v17, v17, v2

    iget v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float v1, v1, v17

    const/4 v2, 0x0

    invoke-static {v13, v2, v8, v1, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_b

    .line 1247
    :cond_10
    const/high16 v4, 0x40000000    # 2.0f

    iget-boolean v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->needAlign:Z

    if-eqz v2, :cond_11

    .line 1249
    div-float v2, v1, v4

    mul-float/2addr v6, v1

    iget v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlWidth:I

    mul-int v1, v1, v16

    int-to-float v1, v1

    div-float/2addr v6, v1

    add-float/2addr v2, v6

    iget v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float/2addr v2, v1

    div-float v1, v17, v4

    mul-float v7, v7, v17

    iget v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->origlHeight:I

    mul-int v4, v4, v16

    int-to-float v4, v4

    div-float/2addr v7, v4

    add-float/2addr v1, v7

    iget v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float/2addr v1, v4

    const/4 v4, 0x0

    invoke-static {v13, v4, v2, v1, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_b

    .line 1253
    :cond_11
    const/4 v4, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v5, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float/2addr v1, v5

    div-float v17, v17, v2

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    mul-float v2, v2, v17

    invoke-static {v13, v4, v1, v2, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1260
    :goto_b
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v14

    move-object v6, v12

    move-object v8, v13

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1262
    const/4 v1, 0x0

    invoke-static {v3, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1263
    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->moveWidth:F

    iget v0, v0, Lcom/huawei/videoengine/MediaCodecDecoder;->moveHeight:F

    invoke-static {v3, v1, v2, v0, v10}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1264
    move-object/from16 v4, p1

    move-object v6, v14

    move-object v8, v3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1266
    return-void

    .line 1191
    :cond_12
    :goto_c
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "getMVPP mDecoderWidth or mDecoderHeight is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void
.end method

.method private handleProcessFunc_SetDspMode(Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;)I
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->configLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_0
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAspectModeView:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 776
    monitor-exit v0

    .line 777
    const/4 p1, 0x0

    return p1

    .line 776
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 837
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "#step#startBackgroudThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DecoderBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 839
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 840
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 842
    if-nez v0, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->stopBackgroundThread()V

    .line 845
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "startBackgroudThread getLooper err!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-void

    .line 849
    :cond_0
    new-instance v1, Lcom/huawei/videoengine/MediaCodecDecoder$2;

    invoke-direct {v1, p0, v0}, Lcom/huawei/videoengine/MediaCodecDecoder$2;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundHandler:Landroid/os/Handler;

    .line 933
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .line 936
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "#step#stopBackgroundThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 941
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 945
    :goto_0
    return-void
.end method


# virtual methods
.method public addAsyncCallback()V
    .locals 2

    .line 244
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "Enter addAsyncCallback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/huawei/videoengine/MediaCodecDecoder$1;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$1;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 354
    return-void
.end method

.method public handleProcessFuc_UninitEGL()I
    .locals 4

    .line 1092
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "#step# handleProcessFuc_UninitEGL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->configLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1100
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 1101
    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 1104
    :cond_1
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_2

    .line 1107
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1108
    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    .line 1110
    :cond_2
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-eqz v1, :cond_3

    .line 1112
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/huawei/videoengine/FullFrameRect;->release(Z)V

    .line 1113
    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 1115
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v0, :cond_4

    .line 1118
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->release()V

    .line 1119
    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 1121
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 1115
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleProcessFunc_InitEGL(Landroid/view/Surface;)I
    .locals 3

    .line 1152
    const-string v0, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# handleProcessFunc_InitEGL, viewSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-nez v0, :cond_0

    .line 1154
    new-instance v0, Lcom/huawei/videoengine/EglCore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 1163
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->backupdateWinowSurface(Landroid/view/Surface;)I

    move-result p1

    .line 1165
    return p1

    .line 1158
    :cond_0
    const-string p1, "hme_engine_JavaDEC"

    const-string v0, "egl has been inited"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/4 p1, 0x0

    return p1
.end method

.method public handleProcessFunc_ResetDecoder()I
    .locals 6

    .line 589
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "enter handleProcessFunc_ResetDecoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-wide v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->lastRestTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->lastRestTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 592
    const-string v0, "hme_engine_JavaDEC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastRestTime is too close lastTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->lastRestTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", now = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return v1

    .line 596
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->lastRestTime:J

    .line 598
    invoke-virtual {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_stopDecoder()I

    move-result v0

    .line 599
    if-eqz v0, :cond_1

    .line 601
    const-string v1, "hme_engine_JavaDEC"

    const-string v2, "resetDecoder failed in stop decoder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v0

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_startDecoder()I

    move-result v0

    .line 605
    if-eqz v0, :cond_2

    .line 607
    const-string v1, "hme_engine_JavaDEC"

    const-string v2, "resetDecoder failed in start decoder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    return v0

    .line 611
    :cond_2
    return v1
.end method

.method public handleProcessFunc_SetScaleRate(FFF)I
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->configLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_0
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->scaleRatio:F

    .line 804
    iput p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->moveWidth:F

    .line 805
    iput p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->moveHeight:F

    .line 806
    monitor-exit v0

    .line 807
    const/4 p1, 0x0

    return p1

    .line 806
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public handleProcessFunc_putFrame()I
    .locals 13

    .line 424
    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 425
    return v1

    .line 427
    :cond_0
    nop

    .line 428
    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->dataLength:I

    const/4 v2, -0x1

    const/16 v3, -0x64

    const/4 v4, 0x1

    if-gtz v0, :cond_2

    .line 430
    const-string v0, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataLength="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->dataLength:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z

    if-ne v0, v4, :cond_1

    .line 433
    return v3

    .line 435
    :cond_1
    iput-boolean v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z

    .line 436
    return v2

    .line 438
    :cond_2
    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->inputWidth:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->inputHeight:I

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->listLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->indexList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 451
    const-string v1, "hme_engine_JavaDEC"

    const-string v3, "indexList is empty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iput-boolean v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z

    .line 453
    monitor-exit v0

    return v2

    .line 455
    :cond_4
    iget-boolean v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z

    if-ne v5, v4, :cond_6

    .line 456
    iget v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->isKeyFrame:I

    if-nez v5, :cond_5

    .line 457
    const-string v1, "hme_engine_JavaDEC"

    const-string v2, "onFrame Request i, but not"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    monitor-exit v0

    return v3

    .line 461
    :cond_5
    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z

    .line 464
    :cond_6
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->indexList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 466
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->playBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->tempBufPlay:[B

    iget v6, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->dataLength:I

    invoke-virtual {v0, v5, v1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 469
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 471
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 473
    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->tempBufPlay:[B

    iget v6, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->dataLength:I

    invoke-virtual {v0, v5, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 474
    iget-object v6, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    iget v9, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->dataLength:I

    iget-wide v10, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->renderTime:J

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 487
    nop

    .line 489
    return v1

    .line 476
    :catch_0
    move-exception v0

    .line 477
    const-string v1, "hme_engine_JavaDEC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode onFrame failed exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    invoke-virtual {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->resetDecoder()I

    .line 481
    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->isKeyFrame:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z

    if-ne v0, v4, :cond_7

    .line 483
    return v3

    .line 485
    :cond_7
    iput-boolean v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z

    .line 486
    return v2

    .line 466
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 440
    :cond_8
    :goto_0
    const-string v0, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong frameSize width="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->inputWidth:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->inputHeight:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z

    if-ne v0, v4, :cond_9

    .line 443
    return v3

    .line 445
    :cond_9
    iput-boolean v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z

    .line 446
    return v2
.end method

.method public handleProcessFunc_setFrameInfo(IJIII)I
    .locals 0

    .line 391
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->dataLength:I

    .line 392
    iput-wide p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->renderTime:J

    .line 393
    iput p4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->isKeyFrame:I

    .line 394
    iput p5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->inputWidth:I

    .line 395
    iput p6, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->inputHeight:I

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    .line 404
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->timeStampMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const/4 p1, 0x0

    return p1
.end method

.method public handleProcessFunc_startDecoder()I
    .locals 7

    .line 508
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "startDecoder enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 520
    const-string v0, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process startDecoder failed mDecoderSurface is invalid,mDecoderSurface:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v2

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 524
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "decoder is started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return v3

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_InitEGL(Landroid/view/Surface;)I

    move-result v0

    .line 530
    if-eqz v0, :cond_2

    .line 532
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "initegl failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v2

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_3

    .line 538
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "decodertexture is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return v2

    .line 541
    :cond_3
    new-instance v0, Landroid/view/Surface;

    iget-object v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->glSurfaceView:Landroid/view/Surface;

    .line 542
    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->codecType:I

    if-nez v0, :cond_4

    .line 544
    :try_start_0
    const-string v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 549
    return v2

    .line 552
    :cond_4
    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->codecType:I

    if-ne v0, v1, :cond_5

    .line 554
    :try_start_1
    const-string v0, "video/hevc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    goto :goto_0

    .line 556
    :catch_1
    move-exception v0

    .line 557
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 559
    return v2

    .line 562
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->addAsyncCallback()V

    .line 564
    :try_start_2
    const-string v0, "hme_engine_JavaDEC"

    const-string v4, "Use valid surface to init decoder"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->glSurfaceView:Landroid/view/Surface;

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 566
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 567
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 568
    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    .line 569
    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 575
    nop

    .line 577
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "startDecoder leave"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return v3

    .line 571
    :catch_2
    move-exception v0

    .line 573
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 574
    return v2
.end method

.method public handleProcessFunc_stopDecoder()I
    .locals 3

    .line 620
    const-string v0, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDecoder enter mDecoderTexture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 623
    const-string v0, "hme_engine_JavaDEC"

    const-string v2, "Decoder is not started"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return v1

    .line 628
    :cond_0
    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    .line 629
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->indexList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 636
    const-string v0, "hme_engine_JavaDEC"

    const-string v2, "stopDecoder after stop"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 638
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    nop

    .line 648
    invoke-virtual {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFuc_UninitEGL()I

    move-result v0

    return v0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 642
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "stopDecoder exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v0, -0x1

    return v0
.end method

.method public inNeedAlignResolution(II)I
    .locals 4

    .line 82
    if-ge p1, p2, :cond_0

    .line 84
    add-int/2addr p1, p2

    .line 85
    sub-int p2, p1, p2

    .line 86
    sub-int/2addr p1, p2

    .line 88
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->resolution_num:I

    if-ge v1, v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->resolution:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->resolution:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x10

    if-ne p2, v2, :cond_1

    .line 92
    return v1

    .line 88
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public init(ILandroid/view/Surface;II)I
    .locals 4

    .line 146
    const-string v0, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter init. width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " surfaceIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/high16 v0, 0x200000

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->playBuffer:Ljava/nio/ByteBuffer;

    .line 149
    const v3, 0x3f4800

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->renderBuffer:Ljava/nio/ByteBuffer;

    .line 150
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->tempBufPlay:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 158
    nop

    .line 159
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->startBackgroundThread()V

    .line 160
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->codecType:I

    .line 161
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->indexList:Ljava/util/LinkedList;

    .line 162
    iget p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->codecType:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 163
    const-string p1, "video/avc"

    invoke-static {p1, p3, p4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mediaFormat:Landroid/media/MediaFormat;

    goto :goto_0

    .line 166
    :cond_0
    iget p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->codecType:I

    if-ne p1, v0, :cond_1

    .line 167
    const-string p1, "video/hevc"

    invoke-static {p1, p3, p4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 170
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string p3, "vendor.hisi.SceneMode"

    invoke-virtual {p1, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 172
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 176
    iput-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->bindedSurface:Z

    .line 184
    iput-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    .line 185
    invoke-virtual {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->startDecoder()V

    goto :goto_2

    .line 189
    :cond_2
    iget p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->codecType:I

    if-nez p2, :cond_3

    .line 191
    :try_start_1
    const-string p2, "video/avc"

    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    goto :goto_1

    .line 192
    :catch_0
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 195
    return v1

    .line 197
    :cond_3
    iget p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->codecType:I

    if-ne p2, v0, :cond_4

    .line 199
    :try_start_2
    const-string p2, "video/hevc"

    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    goto :goto_1

    .line 201
    :catch_1
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 204
    return v1

    .line 207
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->addAsyncCallback()V

    .line 209
    :try_start_3
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    iget-object p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p2, p3, v2, v2, p1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 210
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decoder:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    .line 211
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->playBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 212
    iput-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    .line 213
    iput-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->needKeyFrame:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 218
    nop

    .line 221
    :goto_2
    return p1

    .line 214
    :catch_2
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    return v1

    .line 152
    :catch_3
    move-exception p1

    .line 153
    const-string p1, "hme_engine_JavaDEC"

    const-string p2, "Allocate buffer failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->playBuffer:Ljava/nio/ByteBuffer;

    .line 155
    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->renderBuffer:Ljava/nio/ByteBuffer;

    .line 156
    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->tempBufPlay:[B

    .line 157
    return v1
.end method

.method public onFrame()I
    .locals 3

    .line 412
    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 413
    return v1

    .line 415
    :cond_0
    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    .line 416
    const/16 v2, 0x8

    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->postMessage(IIILcom/huawei/videoengine/MediaCodecDecoder$MsgBase;)I

    move-result v0

    return v0
.end method

.method public postMessage(IIILcom/huawei/videoengine/MediaCodecDecoder$MsgBase;)I
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 100
    const-string p1, "hme_engine_JavaDEC"

    const-string p2, "wwmax backThreadHandler is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v1

    .line 103
    :cond_0
    nop

    .line 104
    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;-><init>()V

    .line 105
    invoke-virtual {p4, v0}, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;->setSemaphore(Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;)V

    .line 106
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundHandler:Landroid/os/Handler;

    invoke-static {v2, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 107
    monitor-enter v0

    .line 109
    :try_start_0
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v1

    .line 115
    :cond_1
    const/4 p1, 0x1

    .line 116
    :goto_0
    if-eqz p1, :cond_2

    .line 117
    const-wide/16 p1, 0xbb8

    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const/4 p1, 0x0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 121
    :catch_0
    move-exception p1

    .line 124
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 128
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;->getRes()I

    throw p1

    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;->getRes()I

    move-result p1

    .line 129
    nop

    .line 130
    monitor-exit v0

    .line 132
    return p1

    .line 130
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public native procDecodedYUV(JIII)V
.end method

.method public registerNativeObject(J)V
    .locals 0

    .line 493
    iput-wide p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->lnativeObject:J

    .line 494
    return-void
.end method

.method public resetDecoder()I
    .locals 3

    .line 582
    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    .line 583
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->sendMessage(IIILjava/lang/Object;)Z

    .line 584
    return v1
.end method

.method public sendMessage(IIILjava/lang/Object;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 138
    const-string p1, "hme_engine_JavaDEC"

    const-string p2, "wwmax backThreadHandler is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 p1, 0x0

    return p1

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundHandler:Landroid/os/Handler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public native setDecodedSize(JII)V
.end method

.method public setDisplayMirror(II)I
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->configLock:Ljava/lang/Object;

    monitor-enter v0

    .line 831
    :try_start_0
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorX:I

    .line 832
    iput p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorY:I

    .line 833
    monitor-exit v0

    .line 834
    const/4 p1, 0x0

    return p1

    .line 833
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDisplayMode(I)I
    .locals 3

    .line 750
    const-string v0, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    sget-object v0, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->none:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 753
    packed-switch p1, :pswitch_data_0

    .line 765
    const/4 p1, -0x1

    return p1

    .line 762
    :pswitch_0
    sget-object p1, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->crop:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 763
    goto :goto_0

    .line 759
    :pswitch_1
    sget-object p1, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 760
    goto :goto_0

    .line 756
    :pswitch_2
    sget-object p1, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->none:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 757
    nop

    .line 767
    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_SetDspMode(Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;)I

    .line 768
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDisplayOrientation(I)I
    .locals 3

    .line 814
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->configLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 818
    nop

    .line 820
    move p1, v2

    :cond_0
    :try_start_0
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOrientation:I

    .line 822
    monitor-exit v0

    .line 823
    return v2

    .line 822
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFrameInfo(IJIII)V
    .locals 9

    .line 377
    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->started:Z

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;IJIII)V

    .line 381
    const/16 p1, 0x9

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->postMessage(IIILcom/huawei/videoengine/MediaCodecDecoder$MsgBase;)I

    .line 382
    return-void
.end method

.method public setRenderScaleRate(FFF)I
    .locals 3

    .line 793
    const-string v0, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRenderScaleRate rate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", moveX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", moveY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;FFF)V

    .line 795
    const/4 p1, 0x0

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1, p1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->sendMessage(IIILjava/lang/Object;)Z

    .line 796
    return p1
.end method

.method public startDecoder()V
    .locals 3

    .line 497
    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    .line 498
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->postMessage(IIILcom/huawei/videoengine/MediaCodecDecoder$MsgBase;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 500
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "startdecoder failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    return-void
.end method

.method public stopDecoder()V
    .locals 3

    .line 615
    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    .line 616
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->postMessage(IIILcom/huawei/videoengine/MediaCodecDecoder$MsgBase;)I

    .line 617
    return-void
.end method

.method public uninit()V
    .locals 3

    .line 224
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "Enter uninit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->stopDecoder()V

    .line 227
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->surfaceListener:Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 229
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->decSurfaceView:Landroid/view/SurfaceView;

    .line 232
    :cond_0
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->indexList:Ljava/util/LinkedList;

    .line 233
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->playBuffer:Ljava/nio/ByteBuffer;

    .line 234
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->renderBuffer:Ljava/nio/ByteBuffer;

    .line 235
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->tempBufPlay:[B

    .line 236
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 237
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->listLock:Ljava/lang/Object;

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->lnativeObject:J

    .line 239
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->stopBackgroundThread()V

    .line 240
    return-void
.end method

.method public updateWinowSurface(Landroid/view/Surface;)I
    .locals 2

    .line 1032
    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceInfoMsg;

    invoke-direct {v0, p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceInfoMsg;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/view/Surface;)V

    .line 1033
    const/4 p1, 0x0

    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1, p1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->postMessage(IIILcom/huawei/videoengine/MediaCodecDecoder$MsgBase;)I

    .line 1034
    return p1
.end method
