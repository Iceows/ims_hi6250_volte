.class public Lcom/huawei/videoengine/MediaCodecDecoder;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
    }
.end annotation


# static fields
.field private static final CONFIGURE_FLAG_DECODE_QUICKOUT:I = 0x2

.field private static final DEC_WAIT_COUNT:J = 0x14L

.field private static final DEC_WAIT_TIME_MS:J = 0x5L

.field private static final INVALID_INDEX:I = -0x270f

.field private static final PRINT_FRAME_INTERVAL:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "MediaCodecDecoder"


# instance fields
.field private mAbnormalState:Z

.field private mAspectMode:I

.field private mAvgDecTime:F

.field private final mClientLock:Ljava/lang/Object;

.field private mCodecType:I

.field private mDecoder:Landroid/media/MediaCodec;

.field private mDecoderHeight:I

.field private mDecoderSurface:Landroid/view/Surface;

.field private mDecoderWidth:I

.field private mEglCore:Lcom/huawei/videoengine/EglCore;

.field private mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

.field private mGlSurface:Landroid/view/Surface;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerWait:Ljava/lang/Object;

.field private mHandlerWaitNotified:Ljava/lang/Boolean;

.field private final mHandlerWaitSec:Ljava/lang/Object;

.field private mHandlerWaitSecNotified:Ljava/lang/Boolean;

.field private mIndexList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInputOnlyCount:I

.field private mLastDecRelaseTime:J

.field private mLastRestTime:J

.field private final mListLock:Ljava/lang/Object;

.field private mMaxDecTime:J

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private mMinDecTime:J

.field private mMirrorX:I

.field private mMirrorY:I

.field private mMoveHeight:F

.field private mMoveWidth:F

.field private mNativeObject:J

.field private mNeedKeyFrame:Z

.field private mOffscreenSurface:Lcom/huawei/videoengine/OffscreenSurface;

.field private mOrientation:I

.field private mOutFrameCount:I

.field private mQuickOut:Z

.field private mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

.field private mScaleRatio:F

.field private mStarted:Z

.field private mTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureId:I

.field private mUseOpenGl:Z

.field private mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

.field private skipRenderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 9

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;

    .line 29
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 30
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    .line 31
    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z

    .line 32
    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mQuickOut:Z

    .line 34
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mNativeObject:J

    .line 35
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mIndexList:Ljava/util/LinkedList;

    .line 36
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mListLock:Ljava/lang/Object;

    .line 37
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mCodecType:I

    .line 38
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    .line 39
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWait:Ljava/lang/Object;

    .line 40
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;

    .line 41
    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitNotified:Ljava/lang/Boolean;

    .line 42
    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSecNotified:Ljava/lang/Boolean;

    .line 43
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mGlSurface:Landroid/view/Surface;

    .line 45
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTexture:Landroid/graphics/SurfaceTexture;

    .line 46
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 47
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 48
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 49
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    .line 50
    iput-wide v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mLastRestTime:J

    .line 51
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I

    .line 52
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I

    .line 53
    const/4 v2, 0x2

    iput v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAspectMode:I

    .line 54
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->skipRenderList:Ljava/util/List;

    .line 55
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F

    .line 56
    const/4 v2, 0x0

    iput v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMoveWidth:F

    .line 57
    iput v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMoveHeight:F

    .line 58
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOrientation:I

    .line 59
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorX:I

    .line 60
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorY:I

    .line 65
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOutFrameCount:I

    .line 66
    iput v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAvgDecTime:F

    .line 67
    iput-wide v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMaxDecTime:J

    .line 68
    iput-wide v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMinDecTime:J

    .line 69
    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mInputOnlyCount:I

    .line 70
    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAbnormalState:Z

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mUseOpenGl:Z

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mClientLock:Ljava/lang/Object;

    .line 73
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    .line 74
    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOffscreenSurface:Lcom/huawei/videoengine/OffscreenSurface;

    .line 75
    iput-wide v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mLastDecRelaseTime:J

    .line 78
    const-string v0, "MediaCodecDecoder"

    const-string v1, "Enter MediaCodecDecoder."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-wide p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mNativeObject:J

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/huawei/videoengine/MediaCodecDecoder;)J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMaxDecTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/huawei/videoengine/MediaCodecDecoder;J)J
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMaxDecTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/huawei/videoengine/MediaCodecDecoder;Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;)Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/huawei/videoengine/MediaCodecDecoder;)J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMinDecTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/huawei/videoengine/MediaCodecDecoder;J)J
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMinDecTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/List;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->skipRenderList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mCodecType:I

    return p0
.end method

.method static synthetic access$1400(Lcom/huawei/videoengine/MediaCodecDecoder;)J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mLastDecRelaseTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/huawei/videoengine/MediaCodecDecoder;J)J
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mLastDecRelaseTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaCodec;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/huawei/videoengine/MediaCodecDecoder;Z)I
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->resetDecoder(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->resetDecoder()I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I

    return p0
.end method

.method static synthetic access$1802(Lcom/huawei/videoengine/MediaCodecDecoder;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I

    return p1
.end method

.method static synthetic access$1900(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I

    return p0
.end method

.method static synthetic access$1902(Lcom/huawei/videoengine/MediaCodecDecoder;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/OffscreenSurface;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOffscreenSurface:Lcom/huawei/videoengine/OffscreenSurface;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/huawei/videoengine/MediaCodecDecoder;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/huawei/videoengine/MediaCodecDecoder;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/huawei/videoengine/MediaCodecDecoder;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mUseOpenGl:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/huawei/videoengine/MediaCodecDecoder;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->eglInit()V

    return-void
.end method

.method static synthetic access$2300(Lcom/huawei/videoengine/MediaCodecDecoder;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->addAsyncCallback()V

    return-void
.end method

.method static synthetic access$2400(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/media/MediaFormat;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/view/Surface;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mGlSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/huawei/videoengine/MediaCodecDecoder;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mQuickOut:Z

    return p0
.end method

.method static synthetic access$2702(Lcom/huawei/videoengine/MediaCodecDecoder;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/huawei/videoengine/MediaCodecDecoder;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSecNotified:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$300(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/view/Surface;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/huawei/videoengine/MediaCodecDecoder;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAbnormalState:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/huawei/videoengine/MediaCodecDecoder;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->eglUninit()V

    return-void
.end method

.method static synthetic access$3200(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWait:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/huawei/videoengine/MediaCodecDecoder;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitNotified:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mClientLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    return p0
.end method

.method static synthetic access$3600(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/FullFrameRect;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorY:I

    return p0
.end method

.method static synthetic access$3800(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorX:I

    return p0
.end method

.method static synthetic access$3900(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOrientation:I

    return p0
.end method

.method static synthetic access$400(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/EglCore;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAspectMode:I

    return p0
.end method

.method static synthetic access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F

    return p0
.end method

.method static synthetic access$4200(Lcom/huawei/videoengine/MediaCodecDecoder;)F
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMoveWidth:F

    return p0
.end method

.method static synthetic access$4300(Lcom/huawei/videoengine/MediaCodecDecoder;)F
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMoveHeight:F

    return p0
.end method

.method static synthetic access$500(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/lang/Object;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mListLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/huawei/videoengine/MediaCodecDecoder;)Ljava/util/LinkedList;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mIndexList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOutFrameCount:I

    return p0
.end method

.method static synthetic access$708(Lcom/huawei/videoengine/MediaCodecDecoder;)I
    .registers 3

    .line 26
    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOutFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOutFrameCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/huawei/videoengine/MediaCodecDecoder;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mInputOnlyCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/huawei/videoengine/MediaCodecDecoder;)F
    .registers 1

    .line 26
    iget p0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAvgDecTime:F

    return p0
.end method

.method static synthetic access$902(Lcom/huawei/videoengine/MediaCodecDecoder;F)F
    .registers 2

    .line 26
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAvgDecTime:F

    return p1
.end method

.method private addAsyncCallback()V
    .registers 3

    .line 226
    const-string v0, "MediaCodecDecoder"

    const-string v1, "Enter addAsyncCallback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/huawei/videoengine/MediaCodecDecoder$3;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$3;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 309
    return-void
.end method

.method private eglInit()V
    .registers 4

    .line 583
    const-string v0, "MediaCodecDecoder"

    const-string v1, "Enter eglInit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Lcom/huawei/videoengine/EglCore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 586
    new-instance v0, Lcom/huawei/videoengine/OffscreenSurface;

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/16 v2, 0xb4

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/videoengine/OffscreenSurface;-><init>(Lcom/huawei/videoengine/EglCore;II)V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOffscreenSurface:Lcom/huawei/videoengine/OffscreenSurface;

    .line 587
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOffscreenSurface:Lcom/huawei/videoengine/OffscreenSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/OffscreenSurface;->makeCurrent()V

    .line 589
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_32

    .line 590
    new-instance v1, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    invoke-direct {v1, p0, v0}, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    .line 591
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->init(Lcom/huawei/videoengine/EglCore;)V

    .line 594
    :cond_32
    new-instance v0, Lcom/huawei/videoengine/FullFrameRect;

    new-instance v1, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object v2, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {v1, v2}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {v0, v1}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 595
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {v0}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result v0

    iput v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    .line 596
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTexture:Landroid/graphics/SurfaceTexture;

    .line 597
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTexture:Landroid/graphics/SurfaceTexture;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 598
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/huawei/videoengine/MediaCodecDecoder$6;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$6;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 616
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mGlSurface:Landroid/view/Surface;

    .line 617
    return-void
.end method

.method private eglUninit()V
    .registers 4

    .line 620
    const-string v0, "MediaCodecDecoder"

    const-string v1, "Enter eglUnit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mGlSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 623
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 624
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mGlSurface:Landroid/view/Surface;

    .line 627
    :cond_11
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1a

    .line 628
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 629
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTexture:Landroid/graphics/SurfaceTexture;

    .line 632
    :cond_1a
    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    if-lez v0, :cond_26

    .line 633
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {v2, v0}, Lcom/huawei/videoengine/FullFrameRect;->deleteTextureObject(I)V

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I

    .line 637
    :cond_26
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-eqz v0, :cond_30

    .line 638
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/huawei/videoengine/FullFrameRect;->release(Z)V

    .line 639
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 642
    :cond_30
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v0, :cond_37

    .line 643
    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 646
    :cond_37
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    if-eqz v0, :cond_40

    .line 647
    invoke-virtual {v0}, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->destroy()V

    .line 648
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    .line 651
    :cond_40
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOffscreenSurface:Lcom/huawei/videoengine/OffscreenSurface;

    if-eqz v0, :cond_49

    .line 652
    invoke-virtual {v0}, Lcom/huawei/videoengine/OffscreenSurface;->release()V

    .line 653
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOffscreenSurface:Lcom/huawei/videoengine/OffscreenSurface;

    .line 656
    :cond_49
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v0, :cond_52

    .line 657
    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->release()V

    .line 658
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 660
    :cond_52
    return-void
.end method

.method private resetDecoder()I
    .registers 2

    .line 526
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->resetDecoder(Z)I

    move-result v0

    return v0
.end method

.method private resetDecoder(Z)I
    .registers 9

    .line 530
    const-string v0, "MediaCodecDecoder"

    const-string v1, "enter handleProcessFunc_ResetDecoder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-wide v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mLastRestTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mLastRestTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long v1, v3, v5

    if-gez v1, :cond_40

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastRestTime is too close lastTime = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mLastRestTime:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", now = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v2

    .line 535
    :cond_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mLastRestTime:J

    .line 537
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->stopDecoder(Z)I

    move-result p1

    .line 538
    if-eqz p1, :cond_52

    .line 539
    const-string v1, "resetDecoder failed in stop mDecoder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return p1

    .line 543
    :cond_52
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->startDecoder()I

    move-result p1

    .line 544
    if-eqz p1, :cond_5e

    .line 545
    const-string v1, "resetDecoder failed in start mDecoder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return p1

    .line 549
    :cond_5e
    return v2
.end method

.method private startDecoder()I
    .registers 6

    .line 398
    const-string v0, "MediaCodecDecoder"

    const-string v1, "startDecoder enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/videoengine/MediaCodecDecoder$4;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$4;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    const/4 v0, 0x0

    :try_start_12
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_37

    .line 453
    :goto_15
    :try_start_15
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSecNotified:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 454
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSec:Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 455
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSecNotified:Ljava/lang/Boolean;

    goto :goto_15

    .line 457
    :cond_2c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitSecNotified:Ljava/lang/Boolean;

    .line 458
    monitor-exit v1

    .line 461
    goto :goto_3f

    .line 458
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_34

    :try_start_36
    throw v2
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_37} :catch_37

    .line 459
    :catch_37
    move-exception v1

    .line 460
    const-string v1, "MediaCodecDecoder"

    const-string v2, "mHandlerWait wait failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_3f
    iget-boolean v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z

    if-eqz v1, :cond_44

    .line 464
    return v0

    .line 466
    :cond_44
    const/4 v0, -0x1

    return v0
.end method

.method private stopDecoder()I
    .registers 2

    .line 471
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->stopDecoder(Z)I

    move-result v0

    return v0
.end method

.method private stopDecoder(Z)I
    .registers 6

    .line 475
    const-string v0, "MediaCodecDecoder"

    const-string v1, "stopDecoder enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iput-boolean p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAbnormalState:Z

    .line 477
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$5;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$5;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    const/4 p1, 0x0

    :try_start_14
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWait:Ljava/lang/Object;

    monitor-enter v0
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_39

    .line 508
    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitNotified:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 509
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWait:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 510
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitNotified:Ljava/lang/Boolean;

    goto :goto_17

    .line 512
    :cond_2e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandlerWaitNotified:Ljava/lang/Boolean;

    .line 513
    monitor-exit v0

    .line 516
    goto :goto_41

    .line 513
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_17 .. :try_end_38} :catchall_36

    :try_start_38
    throw v1
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_39} :catch_39

    .line 514
    :catch_39
    move-exception v0

    .line 515
    const-string v0, "MediaCodecDecoder"

    const-string v1, "mHandlerWait wait failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_41
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_46

    .line 519
    return p1

    .line 521
    :cond_46
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public init(III)I
    .registers 8

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter init. width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mCodecType:I

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mIndexList:Ljava/util/LinkedList;

    .line 87
    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mCodecType:I

    const/4 v2, 0x1

    if-nez v0, :cond_35

    .line 88
    const-string v0, "video/avc"

    invoke-static {v0, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    goto :goto_3f

    .line 89
    :cond_35
    if-ne v0, v2, :cond_3f

    .line 90
    const-string v0, "video/hevc"

    invoke-static {v0, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 93
    :cond_3f
    :goto_3f
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string p3, "HISIExt-dec-vtMode"

    invoke-virtual {p2, p3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 94
    const/4 p2, -0x1

    if-ne p1, v2, :cond_57

    .line 95
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string p3, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-req"

    invoke-virtual {p1, p3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 96
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string p3, "vendor.hisi-ext-low-latency-video-dec.video-scene-for-low-latency-rdy"

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 105
    :cond_57
    new-instance p1, Lcom/huawei/videoengine/MediaCodecDecoder$1;

    invoke-direct {p1, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$1;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    .line 113
    const-string p3, "DecHandler"

    invoke-virtual {p1, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 117
    const/4 p1, 0x0

    :goto_65
    const/16 p3, 0x1f4

    if-ge p1, p3, :cond_7c

    iget-object p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandler:Landroid/os/Handler;

    if-nez p3, :cond_7c

    .line 119
    const-wide/16 v2, 0x2

    :try_start_6f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_72} :catch_73

    .line 122
    goto :goto_79

    .line 120
    :catch_73
    move-exception p3

    .line 121
    const-string p3, "ERR: Dead loop"

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_79
    add-int/lit8 p1, p1, 0x1

    goto :goto_65

    .line 125
    :cond_7c
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_81

    .line 126
    return p2

    .line 129
    :cond_81
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->startDecoder()I

    move-result p1

    return p1
.end method

.method public onFrame([BIJII)I
    .registers 23

    .line 312
    move-object/from16 v1, p0

    move/from16 v5, p2

    iget-boolean v0, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z

    const/4 v9, 0x0

    if-nez v0, :cond_11

    .line 313
    const-string v0, "MediaCodecDecoder"

    const-string v1, "Not start yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v9

    .line 317
    :cond_11
    const/16 v10, -0x64

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-gtz v5, :cond_35

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataLength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaCodecDecoder"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-boolean v0, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    if-eqz v0, :cond_32

    .line 320
    return v10

    .line 322
    :cond_32
    iput-boolean v12, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    .line 323
    return v11

    .line 326
    :cond_35
    if-eqz p6, :cond_59

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#SKIP set true ts:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p3

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaCodecDecoder"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->skipRenderList:Ljava/util/List;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 326
    :cond_59
    move-wide/from16 v6, p3

    .line 331
    :goto_5b
    iget-boolean v0, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    if-eqz v0, :cond_6b

    .line 332
    if-nez p5, :cond_69

    .line 333
    const-string v0, "MediaCodecDecoder"

    const-string v1, "onFrame Request i, but not"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return v10

    .line 336
    :cond_69
    iput-boolean v9, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    .line 340
    :cond_6b
    nop

    .line 341
    nop

    .line 342
    move v2, v9

    :goto_6e
    int-to-long v3, v2

    const-wide/16 v13, 0x14

    cmp-long v0, v3, v13

    const-wide/16 v13, 0x5

    const/16 v8, -0x270f

    if-gez v0, :cond_a5

    .line 343
    iget-object v15, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mListLock:Ljava/lang/Object;

    monitor-enter v15

    .line 344
    :try_start_7c
    iget-object v10, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mIndexList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-eqz v10, :cond_93

    .line 345
    iget-object v2, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mIndexList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 346
    monitor-exit v15

    move v10, v2

    goto :goto_a6

    .line 348
    :cond_93
    monitor-exit v15
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_a2

    .line 350
    :try_start_94
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_97
    .catch Ljava/lang/InterruptedException; {:try_start_94 .. :try_end_97} :catch_98

    .line 353
    goto :goto_9d

    .line 351
    :catch_98
    move-exception v0

    move-object v3, v0

    .line 352
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 342
    :goto_9d
    add-int/lit8 v2, v2, 0x1

    const/16 v10, -0x64

    goto :goto_6e

    .line 348
    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit v15
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v0

    .line 342
    :cond_a5
    move v10, v8

    .line 356
    :goto_a6
    if-gez v0, :cond_121

    if-ne v10, v8, :cond_ac

    goto/16 :goto_121

    .line 363
    :cond_ac
    :try_start_ac
    iget-object v0, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v10}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 365
    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v9, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 366
    iget-object v2, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move v3, v10

    move/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_c6
    .catch Ljava/lang/IllegalStateException; {:try_start_ac .. :try_end_c6} :catch_10c
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c6} :catch_df

    .line 384
    nop

    .line 386
    iget v0, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mInputOnlyCount:I

    add-int/2addr v0, v12

    iput v0, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mInputOnlyCount:I

    .line 387
    iget v0, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mInputOnlyCount:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_de

    .line 388
    const-string v0, "MediaCodecDecoder"

    const-string v2, "No output for long time"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iput v9, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mInputOnlyCount:I

    .line 390
    iput-boolean v12, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    .line 391
    return v11

    .line 394
    :cond_de
    return v9

    .line 374
    :catch_df
    move-exception v0

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode onFrame failed exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaCodecDecoder"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->resetDecoder()I

    .line 378
    if-nez p5, :cond_109

    iget-boolean v0, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    if-eqz v0, :cond_109

    .line 379
    const/16 v1, -0x64

    return v1

    .line 382
    :cond_109
    iput-boolean v12, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    .line 383
    return v11

    .line 367
    :catch_10c
    move-exception v0

    .line 368
    const-string v0, "MediaCodecDecoder"

    const-string v2, "decode onFrame failed IllegalStateException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct {v1, v12}, Lcom/huawei/videoengine/MediaCodecDecoder;->resetDecoder(Z)I

    .line 370
    if-nez p5, :cond_120

    iget-boolean v0, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    if-eqz v0, :cond_120

    .line 371
    const/16 v1, -0x64

    return v1

    .line 373
    :cond_120
    return v11

    .line 357
    :cond_121
    :goto_121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIndexList is empty for:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long/2addr v3, v13

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaCodecDecoder"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iput-boolean v12, v1, Lcom/huawei/videoengine/MediaCodecDecoder;->mNeedKeyFrame:Z

    .line 359
    return v11
.end method

.method public setDisplayMirror(II)I
    .registers 5

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayMirror mirrorX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mirrorY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorX:I

    .line 577
    iput p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorY:I

    .line 579
    const/4 p1, 0x0

    return p1
.end method

.method public setDisplayMode(I)I
    .registers 4

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayMode mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mAspectMode:I

    .line 556
    const/4 p1, 0x0

    return p1
.end method

.method public setDisplayOrientation(I)I
    .registers 4

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayOrientation orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mOrientation:I

    .line 571
    const/4 p1, 0x0

    return p1
.end method

.method public setRenderScaleRate(FFF)I
    .registers 6

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRenderScaleRate rate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", moveX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", moveY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F

    .line 562
    iput p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMoveWidth:F

    .line 563
    iput p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMoveHeight:F

    .line 565
    const/4 p1, 0x0

    return p1
.end method

.method public uninit()V
    .registers 3

    .line 133
    const-string v0, "MediaCodecDecoder"

    const-string v1, "Enter uninit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mUseOpenGl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 135
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->stopDecoder()I

    goto :goto_28

    .line 137
    :cond_10
    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z

    if-eqz v0, :cond_28

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z

    .line 139
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mIndexList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 141
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 142
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoder:Landroid/media/MediaCodec;

    .line 146
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 147
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandler:Landroid/os/Handler;

    .line 148
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mIndexList:Ljava/util/LinkedList;

    .line 149
    iput-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mNativeObject:J

    .line 151
    return-void
.end method

.method public updateSurface(Landroid/view/Surface;Z)V
    .registers 6

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter updateSurface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " usegl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-boolean v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mUseOpenGl:Z

    const/4 v1, 0x0

    if-eq v0, p2, :cond_4b

    .line 157
    const-string v0, "MediaCodecDecoder"

    const-string v2, "egl not equal"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0, v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->stopDecoder(Z)I

    move-result v0

    .line 160
    if-eqz v0, :cond_38

    .line 161
    const-string p1, "MediaCodecDecoder"

    const-string p2, "resetDecoder failed in stop mDecoder"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 165
    :cond_38
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    .line 166
    iput-boolean p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mUseOpenGl:Z

    .line 168
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->startDecoder()I

    move-result p1

    .line 169
    if-eqz p1, :cond_4a

    .line 170
    const-string p1, "MediaCodecDecoder"

    const-string p2, "resetDecoder failed in start mDecoder"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 173
    :cond_4a
    goto :goto_87

    .line 174
    :cond_4b
    const/4 p2, 0x1

    if-ne v0, p2, :cond_74

    .line 175
    const-string p2, "MediaCodecDecoder"

    const-string v0, "egl equal"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    if-ne p2, p1, :cond_5a

    .line 178
    return-void

    .line 181
    :cond_5a
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mClientLock:Ljava/lang/Object;

    monitor-enter p2

    .line 182
    :try_start_5d
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    .line 184
    iget-boolean p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mStarted:Z

    if-nez p1, :cond_65

    .line 185
    monitor-exit p2

    return-void

    .line 188
    :cond_65
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/huawei/videoengine/MediaCodecDecoder$2;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/MediaCodecDecoder$2;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    monitor-exit p2

    goto :goto_87

    :catchall_71
    move-exception p1

    monitor-exit p2
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_71

    throw p1

    .line 208
    :cond_74
    iget-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    if-ne p2, p1, :cond_79

    .line 209
    return-void

    .line 212
    :cond_79
    if-eqz p2, :cond_7e

    .line 213
    invoke-direct {p0, v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->stopDecoder(Z)I

    .line 216
    :cond_7e
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    .line 218
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;

    if-eqz p1, :cond_87

    .line 219
    invoke-direct {p0}, Lcom/huawei/videoengine/MediaCodecDecoder;->startDecoder()I

    .line 223
    :cond_87
    :goto_87
    return-void
.end method
