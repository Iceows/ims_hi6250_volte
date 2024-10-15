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
    .registers 5

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
    .registers 6

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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter KirinMediaCodecEncoder. mcType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_KMC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-nez p1, :cond_6a

    .line 104
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eData:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    goto :goto_6e

    .line 106
    :cond_6a
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    .line 108
    :goto_6e
    new-instance p1, Lcom/huawei/videoengine/FpsStatistic;

    const/16 v0, 0x21

    const-string v1, "Enc Out"

    invoke-direct {p1, v1, v0}, Lcom/huawei/videoengine/FpsStatistic;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Landroid/media/MediaCodec;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/LinkedList;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)J
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Ljava/nio/ByteBuffer;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)Lcom/huawei/videoengine/FpsStatistic;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncOutFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$700(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)J
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/huawei/videoengine/KirinMediaCodecEncoder;J)J
    .registers 3

    .line 18
    iput-wide p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mLastTimeForKeyFrame:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)I
    .registers 1

    .line 18
    iget p0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mKeyFrameInterval:I

    return p0
.end method

.method private createCodec()I
    .registers 12

    .line 747
    iget v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 748
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 749
    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    if-eqz v2, :cond_c

    .line 750
    nop

    .line 751
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    move v0, v2

    .line 754
    :cond_c
    iget-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    sget-object v3, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH264:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    const-string v4, "reinit. createEncoderByType failed"

    const/4 v5, 0x2

    const-string v6, "level"

    const/4 v7, -0x1

    const-string v8, "hme_engine_KMC"

    const-string v9, "profile"

    const/4 v10, 0x1

    if-ne v2, v3, :cond_5a

    .line 755
    const-string v2, "video/avc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 756
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mProfile:I

    const/16 v3, 0x42

    if-ne v1, v3, :cond_31

    .line 757
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_46

    .line 758
    :cond_31
    const/16 v3, 0x4d

    if-ne v1, v3, :cond_3b

    .line 759
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v9, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_46

    .line 760
    :cond_3b
    const/16 v3, 0x64

    if-ne v1, v3, :cond_46

    .line 761
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const/16 v3, 0x8

    invoke-virtual {v1, v9, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 763
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 766
    :try_start_4b
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_51} :catch_52

    .line 771
    goto :goto_73

    .line 767
    :catch_52
    move-exception v0

    .line 768
    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 770
    return v7

    .line 773
    :cond_5a
    const-string v2, "video/hevc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    .line 774
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v9, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 775
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 778
    :try_start_6c
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_72} :catch_142

    .line 783
    nop

    .line 786
    :goto_73
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    if-eq v0, v1, :cond_8e

    .line 787
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "vendor.hisi.ScaledWidth"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 788
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    const-string v2, "vendor.hisi.ScaledHeight"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 789
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.hisi.EnableScaling"

    invoke-virtual {v0, v1, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 791
    :cond_8e
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "vendor.hisi.SceneMode"

    invoke-virtual {v0, v1, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 801
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "bitrate-mode"

    invoke-virtual {v0, v1, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 802
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mBitrate:I

    mul-int/lit16 v1, v1, 0x3e8

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 803
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mFps:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 804
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    sget-object v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    const-string v2, "color-format"

    if-ne v0, v1, :cond_c1

    .line 805
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const v1, 0x7f000789

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_c9

    .line 807
    :cond_c1
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const v1, 0x7f420888

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 809
    :goto_c9
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const/16 v1, 0x2a30

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]->["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->addAsyncCallback()V

    .line 813
    :try_start_10c
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mediaFormat:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 814
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    sget-object v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;->eSurface:Lcom/huawei/videoengine/KirinMediaCodecEncoder$MCType;

    if-ne v0, v1, :cond_12c

    .line 815
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    .line 816
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    if-nez v0, :cond_12c

    .line 817
    const-string v0, "createInputSurface failed"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return v7

    .line 821
    :cond_12c
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_131} :catch_13d

    .line 825
    nop

    .line 826
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->yuvBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_139

    .line 827
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 829
    :cond_139
    iput-boolean v10, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    .line 831
    const/4 v0, 0x0

    return v0

    .line 822
    :catch_13d
    move-exception v0

    .line 823
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 824
    return v7

    .line 779
    :catch_142
    move-exception v0

    .line 780
    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 782
    return v7
.end method

.method private createEncCBThread()I
    .registers 3

    .line 713
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2a

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
    if-nez v0, :cond_23

    .line 718
    const-string v0, "hme_engine_KMC"

    const-string v1, "looper is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, -0x1

    return v0

    .line 721
    :cond_23
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;

    .line 723
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private initBuffer()I
    .registers 3

    .line 732
    const v0, 0x3f4800

    :try_start_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_18

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
    :catch_18
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
    .registers 4

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter reinit(none), mVc2a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_KMC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->releaseEncoder()V

    .line 660
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->streamBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 662
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 666
    :try_start_25
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->createCodec()I

    move-result v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_47

    if-eqz v0, :cond_32

    .line 667
    const/4 v0, -0x1

    .line 676
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 667
    return v0

    .line 670
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    if-eqz v0, :cond_3f

    .line 671
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_47

    .line 676
    :cond_3f
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 677
    nop

    .line 679
    const/4 v0, 0x0

    return v0

    .line 676
    :catchall_47
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 677
    throw v0
.end method

.method private releaseEncoder()V
    .registers 3

    .line 684
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 687
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    .line 688
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 689
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 690
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 691
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_39

    .line 696
    :cond_19
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
    :try_start_26
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->indexList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_32

    .line 708
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 709
    nop

    .line 710
    return-void

    .line 708
    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->listLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 709
    throw v0

    .line 696
    :catchall_39
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 697
    throw v0
.end method

.method private saveParams(IIIIIIIZ)I
    .registers 10

    .line 845
    if-le p2, p3, :cond_7

    .line 846
    nop

    .line 847
    nop

    .line 848
    move v0, p3

    move p3, p2

    move p2, v0

    .line 850
    :cond_7
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 851
    iput p3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 852
    iput p4, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mBitrate:I

    .line 853
    iput p5, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mFps:I

    .line 854
    iput p6, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mProfile:I

    .line 855
    iput p7, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mCodecPNum:I

    .line 856
    iput-boolean p8, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->menableROI:Z

    .line 858
    if-nez p1, :cond_1c

    .line 859
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH264:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    goto :goto_23

    .line 860
    :cond_1c
    const/4 p2, 0x1

    if-ne p1, p2, :cond_25

    .line 861
    sget-object p1, Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;->eH265:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncType:Lcom/huawei/videoengine/KirinMediaCodecEncoder$EncType;

    .line 866
    :goto_23
    const/4 p1, 0x0

    return p1

    .line 863
    :cond_25
    const-string p1, "hme_engine_KMC"

    const-string p2, "the codec type is invailed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 p1, -0x1

    return p1
.end method

.method private saveParams(JIIIIIIIIZ)I
    .registers 21

    .line 838
    move-object v0, p0

    move-wide v1, p1

    iput-wide v1, v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    .line 839
    move v1, p3

    iput v1, v0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mKeyFrameInterval:I

    .line 840
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
    .registers 3

    .line 561
    if-ge p1, p2, :cond_7

    .line 562
    iput p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 563
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    goto :goto_b

    .line 565
    :cond_7
    iput p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 566
    iput p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 569
    :goto_b
    return-void
.end method


# virtual methods
.method public addAsyncCallback()V
    .registers 4

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
    .registers 28

    .line 114
    move-object/from16 v13, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter init. width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitrate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p8

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pNum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p9

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enableROI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p11

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_KMC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 120
    :try_start_5b
    iget-boolean v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_c7

    const/4 v1, 0x1

    const/4 v14, 0x0

    if-ne v0, v1, :cond_68

    .line 121
    nop

    .line 147
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    return v14

    .line 124
    :cond_68
    :try_start_68
    invoke-direct/range {p0 .. p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->createEncCBThread()I

    move-result v0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_c7

    const/4 v15, -0x1

    if-eqz v0, :cond_76

    .line 125
    nop

    .line 147
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    return v15

    .line 128
    :cond_76
    :try_start_76
    invoke-direct/range {p0 .. p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->initBuffer()I

    move-result v0
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_c7

    if-eqz v0, :cond_83

    .line 129
    nop

    .line 147
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    return v15

    .line 132
    :cond_83
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p10

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p11

    :try_start_99
    invoke-direct/range {v1 .. v12}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->saveParams(JIIIIIIIIZ)I

    move-result v0
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_c7

    if-eqz v0, :cond_a6

    .line 134
    nop

    .line 147
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    return v15

    .line 137
    :cond_a6
    :try_start_a6
    invoke-direct/range {p0 .. p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->createCodec()I

    move-result v0
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_c7

    if-eqz v0, :cond_b3

    .line 138
    nop

    .line 147
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 138
    return v15

    .line 141
    :cond_b3
    :try_start_b3
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    if-eqz v0, :cond_c0

    .line 142
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    iget v2, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V
    :try_end_c0
    .catchall {:try_start_b3 .. :try_end_c0} :catchall_c7

    .line 147
    :cond_c0
    iget-object v0, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 148
    nop

    .line 150
    return v14

    .line 147
    :catchall_c7
    move-exception v0

    iget-object v1, v13, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 148
    throw v0
.end method

.method public markoruseLTRFrame(ZZI)V
    .registers 6

    .line 339
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 342
    :try_start_5
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_e

    goto :goto_3b

    .line 346
    :cond_e
    nop

    .line 347
    nop

    .line 348
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    .line 350
    move p1, v0

    goto :goto_17

    .line 348
    :cond_16
    move p1, v1

    .line 352
    :goto_17
    if-eqz p2, :cond_1a

    .line 354
    goto :goto_1c

    .line 358
    :cond_1a
    move p3, v1

    move v0, p3

    .line 361
    :goto_1c
    nop

    .line 362
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
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_41

    .line 370
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 371
    nop

    .line 372
    return-void

    .line 370
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 344
    return-void

    .line 370
    :catchall_41
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 371
    throw p1
.end method

.method public native nSetReinitflag(J)V
.end method

.method public native nSetSPS(JLjava/nio/ByteBuffer;I)V
.end method

.method public onFrame()I
    .registers 2

    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public native procEncodedStream(JIIIZ)V
.end method

.method public reinit(IIIIIIIZ)I
    .registers 11

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter reinit. width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitrate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pNum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enableROI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_KMC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct/range {p0 .. p8}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->saveParams(IIIIIIIZ)I

    move-result p1

    if-eqz p1, :cond_4e

    .line 160
    const/4 p1, -0x1

    return p1

    .line 163
    :cond_4e
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->reinit()I

    move-result p1

    return p1
.end method

.method public requestIDRFrame()I
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 473
    :try_start_5
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_e

    goto :goto_25

    .line 478
    :cond_e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 479
    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_2c

    .line 484
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 485
    nop

    .line 486
    return v2

    .line 475
    :cond_25
    :goto_25
    const/4 v0, -0x1

    .line 484
    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 475
    return v0

    .line 484
    :catchall_2c
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 485
    throw v0
.end method

.method public setCapSource(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 7

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCapSource vc2a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_KMC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    if-eqz v0, :cond_20

    .line 530
    const/4 v2, 0x0

    iget v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v2, v3}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V

    .line 532
    :cond_20
    iput-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 533
    const/4 v0, 0x0

    if-nez p1, :cond_2a

    .line 534
    iput v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 535
    iput v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 536
    return v0

    .line 539
    :cond_2a
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->getWidthAfterRendering()I

    move-result v2

    .line 540
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->getHeighAftertRendering()I

    move-result v3

    .line 542
    iget v4, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    if-eq v2, v4, :cond_4b

    iget v4, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    if-eq v2, v4, :cond_4b

    .line 543
    iput v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    .line 544
    iput v3, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    .line 545
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz p1, :cond_5a

    .line 546
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->reinit()I

    .line 547
    iget-wide v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->lnativeObject:J

    invoke-virtual {p0, v1, v2}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->nSetReinitflag(J)V

    goto :goto_5a

    .line 550
    :cond_4b
    iget-object v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mMCSurface:Landroid/view/Surface;

    if-eqz v2, :cond_55

    .line 551
    iget v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {p1, v2, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V

    goto :goto_5a

    .line 553
    :cond_55
    const-string p1, "codec has not init, but connect"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_5a
    :goto_5a
    return v0
.end method

.method public setDynamicIpPMode(I)V
    .registers 6

    .line 298
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 301
    :try_start_5
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_e

    goto :goto_3a

    .line 305
    :cond_e
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
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_40

    .line 313
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    nop

    .line 315
    return-void

    .line 313
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 303
    return-void

    .line 313
    :catchall_40
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    throw p1
.end method

.method public setFrameInfo(IJI)V
    .registers 5

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
    .registers 6

    .line 319
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 322
    :try_start_5
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_e

    goto :goto_3a

    .line 326
    :cond_e
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
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_40

    .line 333
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 334
    nop

    .line 335
    return-void

    .line 333
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 324
    return-void

    .line 333
    :catchall_40
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 334
    throw p1
.end method

.method setRate(II)V
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 280
    :try_start_5
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_e

    goto :goto_2b

    .line 283
    :cond_e
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
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_31

    .line 291
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    return-void

    .line 291
    :catchall_31
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 292
    throw p1
.end method

.method public setResolutionOut(II)I
    .registers 21

    .line 571
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    iget v3, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    const/4 v4, 0x0

    if-nez v3, :cond_10

    .line 572
    iput v0, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 573
    iput v2, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 574
    return v4

    .line 577
    :cond_10
    if-ne v3, v0, :cond_17

    iget v3, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    if-ne v3, v2, :cond_17

    .line 578
    return v4

    .line 581
    :cond_17
    invoke-direct/range {p0 .. p2}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->updateEncoderSize(II)V

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
    iget v0, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthOut:I

    .line 590
    iget v2, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightOut:I

    .line 592
    iget v3, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    int-to-double v5, v3

    int-to-double v7, v2

    div-double/2addr v5, v7

    .line 593
    int-to-double v7, v0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 594
    iget v6, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    sub-int v7, v6, v5

    div-int/lit8 v7, v7, 0x2

    .line 596
    const-string v8, "hme_engine_KMC"

    if-lez v3, :cond_123

    if-lez v6, :cond_123

    .line 598
    const-string v10, " iIsEnableCropping:"

    const-string v11, " iIsEnableScaling:"

    const-string v12, " diff:"

    const-string v13, " ui16CropBottom:"

    const-string v14, " ui16CropTop:"

    const-string v15, " ui16CropRight:"

    const-string v9, "#resolution# ui16CropLeft: "

    if-ltz v7, :cond_ac

    .line 601
    rem-int/lit8 v3, v7, 0x2

    if-nez v3, :cond_4e

    move v3, v7

    goto :goto_50

    :cond_4e
    add-int/lit8 v3, v7, 0x1

    .line 602
    :goto_50
    nop

    .line 603
    iget v6, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    sub-int/2addr v6, v3

    .line 604
    rem-int/lit8 v16, v6, 0x2

    if-nez v16, :cond_5a

    add-int/lit8 v6, v6, -0x1

    .line 605
    :cond_5a
    nop

    .line 606
    iget v4, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    rem-int/lit8 v17, v4, 0x2

    if-nez v17, :cond_63

    add-int/lit8 v4, v4, -0x1

    .line 607
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cropW:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v1, 0x1

    move-object/from16 v5, p0

    move/from16 v17, v2

    move v7, v4

    const/4 v4, 0x0

    goto/16 :goto_14c

    .line 609
    :cond_ac
    if-gez v7, :cond_119

    .line 611
    int-to-double v4, v6

    int-to-double v6, v0

    div-double/2addr v4, v6

    .line 612
    int-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 613
    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 615
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_bd

    move v4, v3

    goto :goto_bf

    :cond_bd
    add-int/lit8 v4, v3, 0x1

    .line 616
    :goto_bf
    nop

    .line 617
    move-object/from16 v5, p0

    iget v6, v5, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_ca

    add-int/lit8 v6, v6, -0x1

    .line 618
    :cond_ca
    nop

    .line 619
    iget v7, v5, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    sub-int/2addr v7, v4

    .line 620
    rem-int/lit8 v17, v7, 0x2

    if-nez v17, :cond_d4

    add-int/lit8 v7, v7, -0x1

    .line 621
    :cond_d4
    move/from16 v17, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cropH:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v1, 0x1

    const/4 v3, 0x0

    goto :goto_14c

    .line 609
    :cond_119
    move-object/from16 v5, p0

    move/from16 v17, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_14c

    .line 596
    :cond_123
    move-object v5, v1

    move/from16 v17, v2

    .line 627
    nop

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unenable crop,mHeightIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mHeightIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWidthIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mWidthIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 631
    :goto_14c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 632
    const-string v8, "vendor.hisi.CropLeft"

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    const-string v3, "vendor.hisi.CropRight"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 634
    const-string v3, "vendor.hisi.CropTop"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 635
    const-string v3, "vendor.hisi.CropBottom"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    const-string v3, "vendor.hisi.ScaledWidth"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    const-string v0, "vendor.hisi.ScaledHeight"

    move/from16 v3, v17

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    const-string v0, "vendor.hisi.EnableScaling"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    const-string v0, "vendor.hisi.EnableCropping"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    iget-object v0, v5, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 645
    :try_start_181
    iget-object v0, v5, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_18a

    .line 646
    iget-object v0, v5, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_18a
    .catchall {:try_start_181 .. :try_end_18a} :catchall_192

    .line 651
    :cond_18a
    iget-object v0, v5, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 652
    nop

    .line 654
    const/4 v0, 0x0

    return v0

    .line 651
    :catchall_192
    move-exception v0

    iget-object v1, v5, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 652
    throw v0
.end method

.method public setRoiCoordinate(I[IJ)V
    .registers 23

    .line 398
    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-boolean v2, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->menableROI:Z

    if-nez v2, :cond_9

    .line 400
    return-void

    .line 402
    :cond_9
    iget-object v2, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 405
    :try_start_e
    iget-object v2, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_1c6

    iget-boolean v2, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-eqz v2, :cond_1c6

    if-nez v0, :cond_1a

    goto/16 :goto_1c6

    .line 409
    :cond_1a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 410
    const/16 v3, 0x8

    if-le v0, v3, :cond_24

    .line 412
    move v0, v3

    .line 414
    :cond_24
    const-string v4, "vendor.hisi.EnableROIRegionenNumber"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    const-wide/high16 v8, 0x4048000000000000L    # 48.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    packed-switch v0, :pswitch_data_1d4

    goto/16 :goto_1b3

    .line 418
    :pswitch_36
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

    int-to-double v14, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0x1d

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0x1c

    aget v0, p2, v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    .line 420
    const-string v0, "vendor.hisi.ROIParams7"

    invoke-virtual {v2, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 422
    :pswitch_67
    nop

    .line 423
    const/16 v0, 0x1b

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    const/16 v0, 0x1a

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0x19

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0x18

    aget v0, p2, v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    .line 424
    const-string v0, "vendor.hisi.ROIParams6"

    invoke-virtual {v2, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 426
    :pswitch_98
    nop

    .line 427
    const/16 v0, 0x17

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    const/16 v0, 0x16

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0x15

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0x14

    aget v0, p2, v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    .line 428
    const-string v0, "vendor.hisi.ROIParams5"

    invoke-virtual {v2, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 430
    :pswitch_c9
    nop

    .line 431
    const/16 v0, 0x13

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    const/16 v0, 0x12

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0x11

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0x10

    aget v0, p2, v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    .line 432
    const-string v0, "vendor.hisi.ROIParams4"

    invoke-virtual {v2, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 434
    :pswitch_fa
    nop

    .line 435
    const/16 v0, 0xf

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    const/16 v0, 0xe

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0xd

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0xc

    aget v0, p2, v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    .line 436
    const-string v0, "vendor.hisi.ROIParams3"

    invoke-virtual {v2, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 438
    :pswitch_12b
    nop

    .line 439
    const/16 v0, 0xb

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    const/16 v0, 0xa

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/16 v0, 0x9

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    aget v0, p2, v3

    int-to-long v14, v0

    add-long/2addr v12, v14

    .line 440
    const-string v0, "vendor.hisi.ROIParams2"

    invoke-virtual {v2, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 442
    :pswitch_15a
    nop

    .line 443
    const/4 v0, 0x7

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    const/4 v0, 0x6

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/4 v0, 0x5

    aget v0, p2, v0

    int-to-double v14, v0

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    const/4 v0, 0x4

    aget v0, p2, v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    .line 444
    const-string v0, "vendor.hisi.ROIParams1"

    invoke-virtual {v2, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 446
    :pswitch_187
    nop

    .line 447
    const/4 v0, 0x3

    aget v0, p2, v0

    int-to-double v12, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v12, v8

    double-to-long v8, v12

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
    :goto_1b3
    const-string v0, "vendor.hisi.ROI-timestamp"

    move-wide/from16 v3, p3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 454
    iget-object v0, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_1bf
    .catchall {:try_start_e .. :try_end_1bf} :catchall_1cc

    .line 458
    iget-object v0, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 459
    nop

    .line 460
    return-void

    .line 458
    :cond_1c6
    :goto_1c6
    iget-object v0, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 407
    return-void

    .line 458
    :catchall_1cc
    move-exception v0

    iget-object v1, v1, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 459
    throw v0

    nop

    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_187
        :pswitch_15a
        :pswitch_12b
        :pswitch_fa
        :pswitch_c9
        :pswitch_98
        :pswitch_67
        :pswitch_36
    .end packed-switch
.end method

.method public setSpecEvent(I)V
    .registers 6

    .line 377
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 380
    :try_start_5
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->started:Z

    if-nez v0, :cond_e

    goto :goto_3a

    .line 384
    :cond_e
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
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_40

    .line 391
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 392
    nop

    .line 393
    return-void

    .line 391
    :cond_3a
    :goto_3a
    iget-object p1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    return-void

    .line 391
    :catchall_40
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->encoderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 392
    throw p1
.end method

.method public uninit()V
    .registers 4

    .line 167
    const-string v0, "hme_engine_KMC"

    const-string v1, "Enter uninit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mVc2a:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 169
    iget v2, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mChannelID:I

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateEncSf(Landroid/view/Surface;I)V

    .line 171
    :cond_11
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_26

    .line 172
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 174
    :try_start_18
    iget-object v0, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 175
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCallBackThread:Landroid/os/HandlerThread;

    .line 176
    iput-object v1, p0, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->mEncCBHandler:Landroid/os/Handler;
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_21} :catch_22

    .line 179
    goto :goto_26

    .line 177
    :catch_22
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 182
    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->releaseEncoder()V

    .line 184
    return-void
.end method
