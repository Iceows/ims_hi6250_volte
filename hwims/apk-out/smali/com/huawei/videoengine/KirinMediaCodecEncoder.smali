.class public Lcom/huawei/videoengine/KirinMediaCodecEncoder;
.super Ljava/lang/Object;
.source "KirinMediaCodecEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;,
        Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "hme_engine_KMC"

.field private static final VENDOR_KEY_CAPTURESTATUS:Ljava/lang/String; = "vendor.hisi.CaptureStatus"

.field private static final VENDOR_KEY_CROPBOTTOM:Ljava/lang/String; = "vendor.hisi.CropBottom"

.field private static final VENDOR_KEY_CROPLFT:Ljava/lang/String; = "vendor.hisi.CropLeft"

.field private static final VENDOR_KEY_CROPRIGHT:Ljava/lang/String; = "vendor.hisi.CropRight"

.field private static final VENDOR_KEY_CROPTOP:Ljava/lang/String; = "vendor.hisi.CropTop"

.field private static final VENDOR_KEY_ENABLECROPPING:Ljava/lang/String; = "vendor.hisi.EnableCropping"

.field private static final VENDOR_KEY_ENABLESCALING:Ljava/lang/String; = "vendor.hisi.EnableScaling"

.field private static final VENDOR_KEY_FPS:Ljava/lang/String; = "vendor.hisi.FrameRate"

.field private static final VENDOR_KEY_LTRPARAMS:Ljava/lang/String; = "vendor.hisi.LTRParams"

.field private static final VENDOR_KEY_MAXQP:Ljava/lang/String; = "vendor.hisi.MaxQP"

.field private static final VENDOR_KEY_MINQP:Ljava/lang/String; = "vendor.hisi.MinQP"

.field private static final VENDOR_KEY_NONREFFRAMENUM:Ljava/lang/String; = "vendor.hisi.NoneRefFrameNum"

.field private static final VENDOR_KEY_ROI_BREGIONEN0_NUMBER:Ljava/lang/String; = "vendor.hisi.EnableROIRegionenNumber"

.field private static final VENDOR_KEY_ROI_PARAMS0:Ljava/lang/String; = "vendor.hisi.ROIParams0"

.field private static final VENDOR_KEY_ROI_PARAMS1:Ljava/lang/String; = "vendor.hisi.ROIParams1"

.field private static final VENDOR_KEY_ROI_PARAMS2:Ljava/lang/String; = "vendor.hisi.ROIParams2"

.field private static final VENDOR_KEY_ROI_PARAMS3:Ljava/lang/String; = "vendor.hisi.ROIParams3"

.field private static final VENDOR_KEY_ROI_PARAMS4:Ljava/lang/String; = "vendor.hisi.ROIParams4"

.field private static final VENDOR_KEY_ROI_PARAMS5:Ljava/lang/String; = "vendor.hisi.ROIParams5"

.field private static final VENDOR_KEY_ROI_PARAMS6:Ljava/lang/String; = "vendor.hisi.ROIParams6"

.field private static final VENDOR_KEY_ROI_PARAMS7:Ljava/lang/String; = "vendor.hisi.ROIParams7"

.field private static final VENDOR_KEY_ROI_TIMESTAMP:Ljava/lang/String; = "vendor.hisi.ROI-timestamp"

.field private static final VENDOR_KEY_SCALEHEIGHT:Ljava/lang/String; = "vendor.hisi.ScaledHeight"

.field private static final VENDOR_KEY_SCALEWIDTH:Ljava/lang/String; = "vendor.hisi.ScaledWidth"

.field private static final VENDOR_KEY_SETMAXLTRFFRAMENUM:Ljava/lang/String; = "vendor.hisi.SetLTRFrameNum"

.field private static final VENDOR_KEY_VTMODE:Ljava/lang/String; = "vendor.hisi.SceneMode"


# instance fields
.field private dataLength:I

.field private encKeyFrame:I

.field private encoder:Landroid/media/MediaCodec;

.field private encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private indexList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private listLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private lnativeObject:J

.field private mBitrate:I

.field private mChannelID:I

.field private mCodecPNum:I

.field private mEncCBHandler:Landroid/os/Handler;

.field private mEncCallBackThread:Landroid/os/HandlerThread;

.field private mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

.field private mFps:I

.field private mHeightIn:I

.field private mHeightOut:I

.field private mKeyFrameInterval:I

.field private mLastTimeForKeyFrame:J

.field private mMCSurface:Landroid/view/Surface;

.field private mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

.field private mProfile:I

.field private mSPSPPS:Ljava/nio/ByteBuffer;

.field private mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

.field private mWidthIn:I

.field private mWidthOut:I

.field private mediaFormat:Landroid/media/MediaFormat;

.field private menableROI:Z

.field private objSPS:Ljava/lang/Object;

.field private renderTime:J

.field private started:Z

.field private streamBuffer:Ljava/nio/ByteBuffer;

.field private yuvBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    .line 60
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 61
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    .line 62
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    .line 63
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mSPSPPS:Ljava/nio/ByteBuffer;

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->objSPS:Ljava/lang/Object;

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    .line 69
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    .line 71
    iput-wide v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J

    .line 73
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    .line 74
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 78
    sget-object v2, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH265:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    .line 79
    sget-object v2, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    .line 80
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;

    .line 81
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    .line 82
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    .line 83
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 84
    const/4 v2, -0x1

    iput v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    .line 85
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 86
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 87
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 88
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 93
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 94
    iput-boolean v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->menableROI:Z

    .line 97
    const-string v0, "hme_engine_KMC"

    const-string v1, "Enter KirinMediaCodecEncoder."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    .line 60
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 61
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    .line 62
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    .line 63
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mSPSPPS:Ljava/nio/ByteBuffer;

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->objSPS:Ljava/lang/Object;

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    .line 69
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    .line 71
    iput-wide v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J

    .line 73
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    .line 74
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 78
    sget-object v2, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH265:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    .line 79
    sget-object v2, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    iput-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    .line 80
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;

    .line 81
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    .line 82
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    .line 83
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 84
    const/4 v2, -0x1

    iput v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    .line 85
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 86
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 87
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 88
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 93
    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 94
    iput-boolean v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->menableROI:Z

    .line 102
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter KirinMediaCodecEncoder. mcType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-nez p1, :cond_0

    .line 104
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eData:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    goto :goto_0

    .line 106
    :cond_0
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    .line 108
    :goto_0
    new-instance p1, Lcom/huawei/videoengine/FpsStatistic;

    const-string v0, "Enc Out"

    const/16 v1, 0x21

    invoke-direct {p1, v0, v1}, Lcom/huawei/videoengine/FpsStatistic;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Landroid/media/MediaCodec;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/LinkedList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$700(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/huawei/videoengine/KirinMediaCodecEncoder;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mKeyFrameInterval:I

    return p0
.end method

.method private createCodec()I
    .locals 7

    .line 747
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 748
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 749
    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    if-eqz v2, :cond_0

    .line 750
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 751
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 754
    :cond_0
    iget-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    sget-object v3, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH264:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v2, v3, :cond_4

    .line 755
    const-string v2, "video/avc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 756
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mProfile:I

    const/16 v2, 0x42

    if-ne v1, v2, :cond_1

    .line 757
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "profile"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 758
    :cond_1
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mProfile:I

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_2

    .line 759
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "profile"

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 760
    :cond_2
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mProfile:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    .line 761
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "profile"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 763
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "level"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 766
    :try_start_0
    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    goto :goto_1

    .line 767
    :catch_0
    move-exception v0

    .line 768
    const-string v1, "hme_engine_KMC"

    const-string v2, "reinit. createEncoderByType failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 770
    return v5

    .line 773
    :cond_4
    const-string v2, "video/hevc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 774
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "profile"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 775
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "level"

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 778
    :try_start_1
    const-string v1, "video/hevc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 783
    nop

    .line 786
    :goto_1
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    if-eq v0, v1, :cond_5

    .line 787
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.hisi.ScaledWidth"

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 788
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.hisi.ScaledHeight"

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 789
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.hisi.EnableScaling"

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 791
    :cond_5
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.hisi.SceneMode"

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 801
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate-mode"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 802
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mBitrate:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 803
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "frame-rate"

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mFps:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 804
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    sget-object v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    if-ne v0, v1, :cond_6

    .line 805
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_2

    .line 807
    :cond_6
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    const v2, 0x7f420888

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 809
    :goto_2
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "i-frame-interval"

    const/16 v2, 0x2a30

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 810
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]->["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->addAsyncCallback()V

    .line 812
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 813
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    sget-object v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    if-ne v0, v1, :cond_7

    .line 814
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    .line 815
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    if-nez v0, :cond_7

    .line 816
    const-string v0, "hme_engine_KMC"

    const-string v1, "createInputSurface failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return v5

    .line 820
    :cond_7
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 821
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    .line 822
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 824
    :cond_8
    iput-boolean v6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    .line 826
    const/4 v0, 0x0

    return v0

    .line 779
    :catch_1
    move-exception v0

    .line 780
    const-string v1, "hme_engine_KMC"

    const-string v2, "reinit. createEncoderByType failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 782
    return v5
.end method

.method private createEncCBThread()I
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 714
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "encCbThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    .line 715
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 716
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 717
    if-nez v0, :cond_0

    .line 718
    const-string v0, "hme_engine_KMC"

    const-string v1, "looper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, -0x1

    return v0

    .line 721
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;

    .line 723
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private initBuffer()I
    .locals 2

    .line 732
    const v0, 0x3f4800

    :try_start_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    nop

    .line 740
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    .line 741
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 742
    const/4 v0, 0x0

    return v0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    const-string v0, "hme_engine_KMC"

    const-string v1, "Allocate buffer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    .line 737
    const/4 v0, -0x1

    return v0
.end method

.method private reinit()I
    .locals 3

    .line 658
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter reinit(none), mVc2a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->releaseEncoder()V

    .line 660
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 662
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 666
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->createCodec()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 667
    const/4 v0, -0x1

    .line 676
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 667
    return v0

    .line 670
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 677
    nop

    .line 679
    const/4 v0, 0x0

    return v0

    .line 676
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private releaseEncoder()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 687
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    .line 688
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 690
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 691
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 697
    nop

    .line 699
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 701
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 704
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 709
    nop

    .line 710
    return-void

    .line 708
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 696
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private saveParams(IIIIIIIZ)I
    .locals 1

    .line 840
    if-le p2, p3, :cond_0

    .line 841
    nop

    .line 842
    nop

    .line 843
    nop

    .line 845
    move v0, p3

    move p3, p2

    move p2, v0

    :cond_0
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 846
    iput p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 847
    iput p4, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mBitrate:I

    .line 848
    iput p5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mFps:I

    .line 849
    iput p6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mProfile:I

    .line 850
    iput p7, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mCodecPNum:I

    .line 851
    iput-boolean p8, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->menableROI:Z

    .line 853
    if-nez p1, :cond_1

    .line 854
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH264:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    goto :goto_0

    .line 855
    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 856
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH265:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    .line 861
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 858
    :cond_2
    const-string p1, "hme_engine_KMC"

    const-string p2, "the codec type is invailed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 p1, -0x1

    return p1
.end method

.method private saveParams(JIIIIIIIIZ)I
    .locals 9

    move-object v0, p0

    .line 833
    move-wide v1, p1

    iput-wide v1, v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    .line 834
    move v1, p3

    iput v1, v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mKeyFrameInterval:I

    .line 835
    move v1, p4

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->saveParams(IIIIIIIZ)I

    move-result v0

    return v0
.end method

.method private updateEncoderSize(II)V
    .locals 0

    .line 561
    if-ge p1, p2, :cond_0

    .line 562
    iput p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 563
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    goto :goto_0

    .line 565
    :cond_0
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 566
    iput p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 569
    :goto_0
    return-void
.end method


# virtual methods
.method public addAsyncCallback()V
    .locals 3

    .line 187
    const-string v0, "hme_engine_KMC"

    const-string v1, "Enter addAsyncCallback."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    new-instance v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder$1;-><init>(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)V

    iget-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 274
    return-void
.end method

.method public init(JIIIIIIIIZ)I
    .locals 16

    move-object/from16 v13, p0

    .line 114
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter init. width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bitrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p9

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enableROI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p11

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 120
    :try_start_0
    iget-boolean v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v14, 0x0

    if-ne v0, v1, :cond_0

    .line 121
    nop

    .line 147
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    return v14

    .line 124
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->createEncCBThread()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, -0x1

    if-eqz v0, :cond_1

    .line 125
    nop

    .line 147
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    return v15

    .line 128
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->initBuffer()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 129
    nop

    .line 147
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    return v15

    .line 132
    :cond_2
    move-object v1, v13

    move-wide/from16 v2, p1

    move/from16 v4, p10

    move/from16 v5, p3

    :try_start_3
    invoke-direct/range {v1 .. v12}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->saveParams(JIIIIIIIIZ)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 134
    nop

    .line 147
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    return v15

    .line 137
    :cond_3
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->createCodec()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    .line 138
    nop

    .line 147
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 138
    return v15

    .line 141
    :cond_4
    :try_start_5
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    if-eqz v0, :cond_5

    .line 142
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    iget v2, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    :cond_5
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 148
    nop

    .line 150
    return v14

    .line 147
    :catchall_0
    move-exception v0

    iget-object v1, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public markoruseLTRFrame(ZZI)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 346
    :cond_0
    nop

    .line 347
    nop

    .line 348
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 350
    nop

    .line 352
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 354
    goto :goto_1

    .line 358
    :cond_2
    nop

    .line 361
    move p3, v1

    move v0, p3

    .line 362
    :goto_1
    const/high16 p2, 0x1000000

    mul-int/2addr p1, p2

    const/high16 p2, 0x10000

    mul-int/2addr v0, p2

    add-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 363
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 365
    const-string p3, "vendor.hisi.LTRParams"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 371
    nop

    .line 372
    return-void

    .line 370
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 344
    return-void

    .line 370
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public native nSetReinitflag(J)V
.end method

.method public native nSetSPS(JLjava/nio/ByteBuffer;I)V
.end method

.method public onFrame()I
    .locals 1

    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public native procEncodedStream(JIIIZ)V
.end method

.method public reinit(IIIIIIIZ)I
    .locals 3

    .line 156
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter reinit. width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bitrate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enableROI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct/range {p0 .. p8}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->saveParams(IIIIIIIZ)I

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    const/4 p1, -0x1

    return p1

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->reinit()I

    move-result p1

    return p1
.end method

.method public requestIDRFrame()I
    .locals 3

    .line 470
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 479
    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 485
    nop

    .line 486
    return v2

    .line 475
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 484
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 475
    return v0

    .line 484
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setCapSource(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 4

    .line 527
    const-string v0, "hme_engine_KMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCapSource vc2a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 v1, 0x0

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V

    .line 532
    :cond_0
    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 533
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 534
    iput v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 535
    iput v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 536
    return v0

    .line 539
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->getWidthAfterRendering()I

    move-result v1

    .line 540
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->getHeighAftertRendering()I

    move-result v2

    .line 542
    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    if-eq v1, v3, :cond_2

    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    if-eq v1, v3, :cond_2

    .line 543
    iput v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 544
    iput v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 545
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_4

    .line 546
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->reinit()I

    .line 547
    iget-wide v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    invoke-virtual {p0, v1, v2}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->nSetReinitflag(J)V

    goto :goto_0

    .line 550
    :cond_2
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 551
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {p1, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V

    goto :goto_0

    .line 553
    :cond_3
    const-string p1, "hme_engine_KMC"

    const-string v1, "codec has not init, but connect"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_4
    :goto_0
    return v0
.end method

.method public setDynamicIpPMode(I)V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 306
    const-string v1, "hme_engine_KMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxm_test,setDynamicIpPMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v1, "vendor.hisi.NoneRefFrameNum"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    nop

    .line 315
    return-void

    .line 313
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 303
    return-void

    .line 313
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setFrameInfo(IJI)V
    .locals 0

    .line 463
    iput p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->dataLength:I

    .line 464
    iput-wide p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->renderTime:J

    .line 465
    iput p4, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encKeyFrame:I

    .line 466
    return-void
.end method

.method public setLTRFFrameNum(I)V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 327
    const-string v1, "hme_engine_KMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxm_test,setLTRFFrameNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v1, "vendor.hisi.SetLTRFrameNum"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 334
    nop

    .line 335
    return-void

    .line 333
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 324
    return-void

    .line 333
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method setRate(II)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    const-string v1, "video-bitrate"

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    const-string p1, "vendor.hisi.FrameRate"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    return-void

    .line 291
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setResolutionOut(II)I
    .locals 10

    .line 571
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 572
    iput p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 573
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 574
    return v1

    .line 577
    :cond_0
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    if-ne v0, p2, :cond_1

    .line 578
    return v1

    .line 581
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->updateEncoderSize(II)V

    .line 583
    nop

    .line 584
    nop

    .line 585
    nop

    .line 586
    nop

    .line 587
    nop

    .line 588
    nop

    .line 589
    iget p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 590
    iget p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 592
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    int-to-double v2, v0

    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 593
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 594
    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 596
    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    const/4 v4, 0x1

    if-lez v3, :cond_a

    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    if-lez v3, :cond_a

    .line 598
    if-ltz v2, :cond_5

    .line 601
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 602
    move v3, v2

    goto :goto_0

    .line 601
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 602
    :goto_0
    nop

    .line 603
    iget v5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    sub-int/2addr v5, v3

    .line 604
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_3

    add-int/lit8 v5, v5, -0x1

    .line 605
    :cond_3
    nop

    .line 606
    iget v6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    iget v6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    sub-int/2addr v6, v4

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 607
    :goto_1
    const-string v7, "hme_engine_KMC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#resolution# ui16CropLeft: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropRight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropTop:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropBottom:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cropW:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " diff:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iIsEnableScaling:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iIsEnableCropping:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    nop

    .line 631
    move v0, v1

    goto/16 :goto_4

    .line 609
    :cond_5
    if-gez v2, :cond_9

    .line 611
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    int-to-double v2, v0

    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    int-to-double v5, v0

    div-double/2addr v2, v5

    .line 612
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    int-to-double v5, v0

    mul-double/2addr v2, v5

    double-to-int v0, v2

    .line 613
    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 615
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_6

    .line 616
    move v3, v2

    goto :goto_2

    .line 615
    :cond_6
    add-int/lit8 v3, v2, 0x1

    .line 616
    :goto_2
    nop

    .line 617
    iget v5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_7

    iget v5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    sub-int/2addr v5, v4

    goto :goto_3

    :cond_7
    iget v5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 618
    :goto_3
    nop

    .line 619
    iget v6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    sub-int/2addr v6, v3

    .line 620
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_8

    add-int/lit8 v6, v6, -0x1

    .line 621
    :cond_8
    const-string v7, "hme_engine_KMC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#resolution# ui16CropLeft: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropRight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropTop:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ui16CropBottom:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cropH:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " diff:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iIsEnableScaling:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iIsEnableCropping:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    nop

    .line 631
    move v0, v3

    move v2, v4

    move v3, v1

    goto :goto_5

    :cond_9
    move v0, v1

    move v3, v0

    move v5, v3

    move v6, v5

    :goto_4
    move v2, v4

    goto :goto_5

    .line 627
    :cond_a
    nop

    .line 628
    const-string v0, "hme_engine_KMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unenable crop,mHeightIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mWidthIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    move v0, v1

    move v2, v0

    move v3, v2

    move v5, v3

    move v6, v5

    :goto_5
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 632
    const-string v8, "vendor.hisi.CropLeft"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    const-string v3, "vendor.hisi.CropRight"

    invoke-virtual {v7, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 634
    const-string v3, "vendor.hisi.CropTop"

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 635
    const-string v0, "vendor.hisi.CropBottom"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    const-string v0, "vendor.hisi.ScaledWidth"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    const-string p1, "vendor.hisi.ScaledHeight"

    invoke-virtual {v7, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    const-string p1, "vendor.hisi.EnableScaling"

    invoke-virtual {v7, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    const-string p1, "vendor.hisi.EnableCropping"

    invoke-virtual {v7, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 645
    :try_start_0
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_b

    .line 646
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v7}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :cond_b
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 652
    nop

    .line 654
    return v1

    .line 651
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setRoiCoordinate(I[IJ)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 398
    iget-boolean v2, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->menableROI:Z

    if-nez v2, :cond_0

    .line 400
    return-void

    .line 402
    :cond_0
    iget-object v2, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 405
    :try_start_0
    iget-object v2, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 409
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 410
    const/16 v3, 0x8

    if-le v0, v3, :cond_2

    .line 412
    nop

    .line 414
    move v0, v3

    :cond_2
    const-string v4, "vendor.hisi.EnableROIRegionenNumber"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    const-wide/high16 v8, 0x4048000000000000L    # 48.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 418
    :pswitch_0
    nop

    .line 419
    const/16 v0, 0x1f

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    const/16 v0, 0x1e

    aget v0, p2, v0

    int-to-double v8, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v8, v14

    double-to-long v8, v8

    add-long/2addr v12, v8

    const/16 v0, 0x1d

    aget v0, p2, v0

    int-to-double v8, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v8, v14

    double-to-long v8, v8

    add-long/2addr v12, v8

    const/16 v0, 0x1c

    aget v0, p2, v0

    int-to-long v8, v0

    add-long/2addr v12, v8

    .line 420
    const-string v0, "vendor.hisi.ROIParams7"

    invoke-virtual {v2, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 422
    :pswitch_1
    nop

    .line 423
    const/16 v0, 0x1b

    aget v0, p2, v0

    int-to-double v8, v0

    const-wide/high16 v12, 0x4048000000000000L    # 48.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v8, v14

    double-to-long v8, v8

    const/16 v0, 0x1a

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/16 v0, 0x19

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/16 v0, 0x18

    aget v0, p2, v0

    int-to-long v12, v0

    add-long/2addr v8, v12

    .line 424
    const-string v0, "vendor.hisi.ROIParams6"

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 426
    :pswitch_2
    nop

    .line 427
    const/16 v0, 0x17

    aget v0, p2, v0

    int-to-double v8, v0

    const-wide/high16 v12, 0x4048000000000000L    # 48.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v8, v14

    double-to-long v8, v8

    const/16 v0, 0x16

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/16 v0, 0x15

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/16 v0, 0x14

    aget v0, p2, v0

    int-to-long v12, v0

    add-long/2addr v8, v12

    .line 428
    const-string v0, "vendor.hisi.ROIParams5"

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 430
    :pswitch_3
    nop

    .line 431
    const/16 v0, 0x13

    aget v0, p2, v0

    int-to-double v8, v0

    const-wide/high16 v12, 0x4048000000000000L    # 48.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v8, v14

    double-to-long v8, v8

    const/16 v0, 0x12

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/16 v0, 0x11

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/16 v0, 0x10

    aget v0, p2, v0

    int-to-long v12, v0

    add-long/2addr v8, v12

    .line 432
    const-string v0, "vendor.hisi.ROIParams4"

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 434
    :pswitch_4
    nop

    .line 435
    const/16 v0, 0xf

    aget v0, p2, v0

    int-to-double v8, v0

    const-wide/high16 v12, 0x4048000000000000L    # 48.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v8, v14

    double-to-long v8, v8

    const/16 v0, 0xe

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/16 v0, 0xd

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/16 v0, 0xc

    aget v0, p2, v0

    int-to-long v12, v0

    add-long/2addr v8, v12

    .line 436
    const-string v0, "vendor.hisi.ROIParams3"

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 438
    :pswitch_5
    nop

    .line 439
    const/16 v0, 0xb

    aget v0, p2, v0

    int-to-double v8, v0

    const-wide/high16 v12, 0x4048000000000000L    # 48.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v8, v14

    double-to-long v8, v8

    const/16 v0, 0xa

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/16 v0, 0x9

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    aget v0, p2, v3

    int-to-long v12, v0

    add-long/2addr v8, v12

    .line 440
    const-string v0, "vendor.hisi.ROIParams2"

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 442
    :pswitch_6
    nop

    .line 443
    const/4 v0, 0x7

    aget v0, p2, v0

    int-to-double v8, v0

    const-wide/high16 v12, 0x4048000000000000L    # 48.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v8, v14

    double-to-long v8, v8

    const/4 v0, 0x6

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/4 v0, 0x5

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    add-long/2addr v8, v12

    const/4 v0, 0x4

    aget v0, p2, v0

    int-to-long v12, v0

    add-long/2addr v8, v12

    .line 444
    const-string v0, "vendor.hisi.ROIParams1"

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 446
    :pswitch_7
    nop

    .line 447
    const/4 v0, 0x3

    aget v0, p2, v0

    int-to-double v8, v0

    const-wide/high16 v12, 0x4048000000000000L    # 48.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v8, v12

    double-to-long v8, v8

    const/4 v0, 0x2

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v12, v6

    double-to-long v6, v12

    add-long/2addr v8, v6

    const/4 v0, 0x1

    aget v0, p2, v0

    int-to-double v6, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v6, v3

    double-to-long v3, v6

    add-long/2addr v8, v3

    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-long v3, v0

    add-long/2addr v8, v3

    .line 448
    const-string v0, "vendor.hisi.ROIParams0"

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 449
    nop

    .line 453
    :goto_0
    const-string v0, "vendor.hisi.ROI-timestamp"

    move-wide/from16 v3, p3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 454
    iget-object v0, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    iget-object v0, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 459
    nop

    .line 460
    return-void

    .line 458
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 407
    return-void

    .line 458
    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSpecEvent(I)V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 385
    const-string v1, "hme_engine_KMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxm_test,setSpecEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v1, "vendor.hisi.CaptureStatus"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 392
    nop

    .line 393
    return-void

    .line 391
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    return-void

    .line 391
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public uninit()V
    .locals 3

    .line 167
    const-string v0, "hme_engine_KMC"

    const-string v1, "Enter uninit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 175
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    .line 176
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 182
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->releaseEncoder()V

    .line 184
    return-void
.end method
