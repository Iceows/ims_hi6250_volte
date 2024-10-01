.class public Lcom/huawei/videoengine/VideoCapture2Android;
.super Ljava/lang/Object;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;,
        Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;,
        Lcom/huawei/videoengine/VideoCapture2Android$TranObj;
    }
.end annotation


# static fields
.field private static final MSG_CAPTURE_SIZE:I = 0x1

.field private static final MSG_DESTROY:I = 0x4

.field private static final MSG_INIT_EGL:I = 0x0

.field private static final MSG_UPDATE_ENCSURFACE:I = 0x3

.field private static final MSG_UPDATE_PREVIEW:I = 0x2

.field private static final PREFIXSTEP:Ljava/lang/String; = "#step#"

.field private static final PREFIXWINSF:Ljava/lang/String; = "#winsf#"

.field private static final TAG:Ljava/lang/String; = "hme_engine_java"

.field private static final WAIT_TIME:J = 0xbb8L

.field private static final java_version:Ljava/lang/String; = "LOG-iMedia Video VILTE 1.2.1"


# instance fields
.field private bDestroyed:Z

.field private bUpdated:Z

.field private faces_length:I

.field private iROI:[I

.field private mArraySf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

.field private mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCapH:I

.field private mCapW:I

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCapturePreviewThread:Landroid/os/HandlerThread;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mDisplayProjectionMatrix:[F

.field private mDstCount:I

.field private mEglCore:Lcom/huawei/videoengine/EglCore;

.field private mEncHeight:I

.field private mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mEncSfJava:Landroid/view/Surface;

.field private mEncSfUpdateTmp:Landroid/view/Surface;

.field private mEncWidth:I

.field private mEncWinLock:Ljava/lang/Object;

.field private mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

.field private mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

.field private mIsFaceFront:Z

.field private mIsPreviewStart:Z

.field private mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

.field private mMCELock:Ljava/lang/Object;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMediaCodec:Landroid/media/MediaCodec;

.field mModelViewM:[F

.field private mNativeClassInstance:J

.field mNeedDropEncFrame:Z

.field private mNoSfECount:I

.field mPojectionM:[F

.field private mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

.field private mPreViewHeight:I

.field private mPreViewWidth:I

.field private mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mRecordSfJava:Landroid/view/Surface;

.field private mReq:Landroid/hardware/camera2/CaptureRequest;

.field private mRotEnc:I

.field private mRotLeft:I

.field private mRotPrieview:I

.field private mSfDst:[Landroid/view/Surface;

.field private mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

.field private mSfELock:Ljava/lang/Object;

.field private mSfPreview:Landroid/view/Surface;

.field private mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mTextureId:I

.field private mWinLock:Ljava/lang/Object;

.field private mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

.field private manager:Landroid/hardware/camera2/CameraManager;

.field private objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

.field private objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

.field private objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

.field public result:Landroid/hardware/camera2/TotalCaptureResult;

.field private semInitEGL:Ljava/util/concurrent/Semaphore;

.field private time_stamp:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfJava:Landroid/view/Surface;

    .line 43
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRecordSfJava:Landroid/view/Surface;

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 52
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 59
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 60
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 95
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 97
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 163
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 164
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$2;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$2;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 200
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 201
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 424
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 425
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 426
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 427
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 429
    const/16 v3, 0x10

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 430
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 431
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 432
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 433
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 434
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 435
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 436
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 437
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 498
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 537
    new-instance v4, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v4}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 538
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 610
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 611
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 612
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 746
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 818
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 819
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 1021
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 1022
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1121
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1137
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1138
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 86
    const-string v0, "hme_engine_java"

    const-string v1, "#step#VideoCapture2Android()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 88
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfJava:Landroid/view/Surface;

    .line 43
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRecordSfJava:Landroid/view/Surface;

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 52
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    .line 55
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 59
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 60
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 95
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 97
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 163
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 164
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$2;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$2;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 200
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 201
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 424
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 425
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 426
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 427
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 429
    const/16 v3, 0x10

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 430
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 431
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 432
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 433
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 434
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 435
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 436
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 437
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 498
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 537
    new-instance v4, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v4}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 538
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 610
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 611
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 612
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 746
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 818
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 819
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 1021
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 1022
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1121
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1137
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1138
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 155
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 156
    const-string v0, "hme_engine_java"

    const-string v1, "VideoCapture2Android.java! enter VideoCapture2Android! java version:LOG-iMedia Video VILTE 1.2.1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-wide p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    .line 159
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfJava:Landroid/view/Surface;

    .line 43
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRecordSfJava:Landroid/view/Surface;

    .line 49
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    .line 50
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 52
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    .line 53
    const/4 p2, 0x0

    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNoSfECount:I

    .line 55
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 59
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 60
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 95
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 97
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 163
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 164
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$2;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$2;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 200
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 201
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 424
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 425
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 426
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 427
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 429
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 430
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 431
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 432
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 433
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 434
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 435
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 436
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 437
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 498
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, p3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 537
    new-instance v1, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 538
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, p3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 610
    new-array p3, v0, [F

    iput-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 611
    new-array p3, v0, [F

    iput-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 612
    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 746
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 818
    new-instance p1, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {p1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 819
    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 1021
    new-instance p1, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {p1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 1022
    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1121
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1137
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1138
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 91
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/videoengine/VideoCapture2Android;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->time_stamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/huawei/videoengine/VideoCapture2Android;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->time_stamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->faces_length:I

    return p0
.end method

.method static synthetic access$1000(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/videoengine/VideoCapture2Android;->backUpdatePreViewSf(Landroid/view/Surface;II)V

    return-void
.end method

.method static synthetic access$102(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->faces_length:I

    return p1
.end method

.method static synthetic access$1100(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->backUpdateEncSf(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huawei/videoengine/VideoCapture2Android;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->backDestroy()V

    return-void
.end method

.method static synthetic access$1302(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    return-object p0
.end method

.method static synthetic access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    return p0
.end method

.method static synthetic access$2002(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    return p1
.end method

.method static synthetic access$202(Lcom/huawei/videoengine/VideoCapture2Android;[I)[I
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    return-object p1
.end method

.method static synthetic access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    return p0
.end method

.method static synthetic access$2102(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    return p1
.end method

.method static synthetic access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)[F
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    return-object p0
.end method

.method static synthetic access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsFaceFront:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    return p0
.end method

.method static synthetic access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p8}, Lcom/huawei/videoengine/VideoCapture2Android;->getMVPP([F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    return p0
.end method

.method static synthetic access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    return p0
.end method

.method static synthetic access$3000(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    return p0
.end method

.method static synthetic access$302(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    return p1
.end method

.method static synthetic access$3100(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/KirinMediaCodecEncoder;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    return p0
.end method

.method static synthetic access$3402(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    return p1
.end method

.method static synthetic access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    return p0
.end method

.method static synthetic access$3502(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    return p1
.end method

.method static synthetic access$3600(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    return p0
.end method

.method static synthetic access$3700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    return p0
.end method

.method static synthetic access$502(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    return p1
.end method

.method static synthetic access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$702(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/huawei/videoengine/VideoCapture2Android;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$902(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p1
.end method

.method private backDestroy()V
    .locals 4

    .line 1089
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1094
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1095
    const-string v1, "hme_engine_java"

    const-string v3, "#winsf#mWinowSuface release"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 1097
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 1099
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1102
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/FullFrameRect;->release(Z)V

    .line 1104
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 1107
    :cond_2
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v0, :cond_3

    .line 1108
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->release()V

    .line 1109
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 1112
    :cond_3
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter v2

    .line 1113
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1114
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 1115
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1116
    monitor-exit v2

    .line 1118
    return-void

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1099
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private backUpdateEncSf(Landroid/view/Surface;)V
    .locals 2

    .line 807
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez p1, :cond_0

    .line 808
    const-string p1, "hme_engine_java"

    const-string v0, "wwmax mEncWindowSurface new program 655"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 810
    new-instance p1, Lcom/huawei/videoengine/FullFrameRect;

    new-instance v0, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object v1, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, v0}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 811
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {p1}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 813
    :cond_0
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 814
    return-void
.end method

.method private backUpdatePreViewSf(Landroid/view/Surface;II)V
    .locals 4

    .line 850
    nop

    .line 852
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 853
    const-string p1, "hme_engine_java"

    const-string p2, "egl has not init, return"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v1, -0x1

    .line 855
    goto/16 :goto_0

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopPreview()I

    .line 859
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v2, :cond_2

    .line 865
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 866
    const-string v2, "hme_engine_java"

    const-string v3, "#winsf#mWindowSurface makeNothingCurrent "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v2}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 869
    :cond_1
    const-string v2, "hme_engine_java"

    const-string v3, "#winsf#mWinowSurface realease"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 871
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 874
    :cond_2
    new-instance v2, Lcom/huawei/videoengine/WindowSurface;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-direct {v2, v3, p1, v1}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 875
    const-string p1, "hme_engine_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#winsf#update new mWindowSurface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 877
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 878
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->startPreview()I

    .line 880
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 881
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez p1, :cond_3

    .line 882
    new-instance p1, Lcom/huawei/videoengine/FullFrameRect;

    new-instance p2, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object p3, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {p2, p3}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 883
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {p1}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 884
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 886
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 890
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter p1

    .line 891
    :try_start_1
    iget-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    if-nez p2, :cond_4

    .line 893
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 894
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p2, v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 895
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 897
    :cond_4
    monitor-exit p1

    .line 898
    return-void

    .line 897
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 886
    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private createSurfaceTexureForCamera(I)I
    .locals 3

    .line 615
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 616
    const-string p1, "hme_engine_java"

    const-string v1, "cameraTexure is already exist, no need to create"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return v0

    .line 620
    :cond_0
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 621
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    iget v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 623
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/huawei/videoengine/VideoCapture2Android$6;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/VideoCapture2Android$6;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 735
    return v0
.end method

.method private getMVPP([F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 1170
    move/from16 v11, p8

    int-to-float v6, v10

    int-to-float v5, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v12, p2

    move v15, v6

    move/from16 v17, v5

    invoke-static/range {v12 .. v19}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 1171
    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1173
    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v6, v13

    div-float v4, v5, v13

    const/4 v3, 0x0

    invoke-static {v7, v12, v14, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1174
    int-to-float v2, v8

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v1, v7

    move/from16 v19, v2

    move v2, v15

    move v15, v3

    move/from16 v3, v19

    move/from16 v20, v4

    move/from16 v4, v16

    move v12, v5

    move/from16 v5, v17

    move v13, v6

    move/from16 v6, v18

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1177
    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq v8, v2, :cond_1

    if-ne v8, v1, :cond_0

    goto :goto_0

    .line 1184
    :cond_0
    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    mul-float v5, v12, v3

    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 1185
    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    mul-float v6, v13, v3

    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    div-float/2addr v6, v3

    goto :goto_1

    .line 1179
    :cond_1
    :goto_0
    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    mul-float v5, v12, v3

    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    div-float/2addr v5, v3

    .line 1180
    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v3, v3

    mul-float v6, v13, v3

    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 1187
    :goto_1
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v9, v3, :cond_e

    .line 1188
    if-eq v8, v2, :cond_8

    if-ne v8, v1, :cond_2

    goto :goto_5

    .line 1201
    :cond_2
    if-le v11, v10, :cond_4

    .line 1202
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    if-eqz p4, :cond_3

    neg-float v1, v12

    div-float v0, v1, v0

    goto :goto_2

    :cond_3
    move/from16 v0, v20

    :goto_2
    const/4 v1, 0x0

    invoke-static {v7, v1, v5, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_8

    .line 1205
    :cond_4
    div-float v1, v13, v12

    iget v2, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v2, v2

    iget v0, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    cmpg-float v0, v1, v15

    if-gez v0, :cond_6

    .line 1206
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    if-eqz p4, :cond_5

    neg-float v1, v12

    div-float v0, v1, v0

    goto :goto_3

    :cond_5
    move/from16 v0, v20

    :goto_3
    const/4 v1, 0x0

    invoke-static {v7, v1, v5, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_8

    .line 1209
    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p4, :cond_7

    neg-float v1, v6

    div-float/2addr v1, v0

    goto :goto_4

    :cond_7
    div-float v1, v6, v0

    :goto_4
    const/4 v0, 0x0

    invoke-static {v7, v0, v14, v1, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_8

    .line 1189
    :cond_8
    :goto_5
    if-le v11, v10, :cond_c

    .line 1190
    div-float v1, v12, v13

    iget v2, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v2, v2

    iget v0, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    cmpl-float v0, v1, v15

    if-lez v0, :cond_a

    .line 1191
    if-eqz p4, :cond_9

    neg-float v0, v5

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_6

    :cond_9
    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, v5, v1

    :goto_6
    move/from16 v1, v20

    const/4 v2, 0x0

    invoke-static {v7, v2, v1, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_8

    .line 1194
    :cond_a
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    if-eqz p4, :cond_b

    neg-float v0, v13

    div-float v14, v0, v1

    nop

    :cond_b
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_8

    .line 1197
    :cond_c
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    if-eqz p4, :cond_d

    neg-float v0, v13

    div-float v14, v0, v1

    nop

    :cond_d
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_8

    .line 1213
    :cond_e
    move/from16 v1, v20

    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    if-ne v9, v0, :cond_12

    .line 1214
    if-ge v11, v10, :cond_10

    .line 1215
    if-eqz p4, :cond_f

    neg-float v0, v5

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    goto :goto_7

    :cond_f
    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v5, v2

    :goto_7
    const/4 v2, 0x0

    invoke-static {v7, v2, v1, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_8

    .line 1217
    :cond_10
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v6, v2

    if-eqz p4, :cond_11

    neg-float v0, v13

    div-float v14, v0, v2

    nop

    :cond_11
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_8

    .line 1220
    :cond_12
    const/4 v0, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p4, :cond_13

    neg-float v3, v13

    div-float v14, v3, v2

    nop

    :cond_13
    invoke-static {v7, v0, v1, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1223
    :goto_8
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1225
    return-void
.end method

.method private init()V
    .locals 3

    .line 74
    new-instance v0, Lcom/huawei/videoengine/FpsStatistic;

    const-string v1, "Camera Out"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/FpsStatistic;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 75
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v2

    .line 80
    :try_start_1
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 81
    monitor-exit v2

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 77
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 344
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 345
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 206
    const-string v0, "hme_engine_java"

    const-string v1, "#step#startBackgroudThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 208
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 209
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V

    .line 214
    const-string v0, "hme_engine_java"

    const-string v1, "startBackgroudThread getLooper err!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 218
    :cond_0
    new-instance v1, Lcom/huawei/videoengine/VideoCapture2Android$3;

    invoke-direct {v1, p0, v0}, Lcom/huawei/videoengine/VideoCapture2Android$3;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    .line 249
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 2

    .line 252
    const-string v0, "hme_engine_java"

    const-string v1, "#step#stopBackgroundThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 257
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 258
    :catch_1
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 262
    :goto_0
    nop

    .line 263
    :goto_1
    return-void
.end method

.method private updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3

    .line 440
    nop

    .line 441
    monitor-enter p3

    .line 442
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 443
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 444
    const-string p1, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upWindowSF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is same as current\'s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    nop

    .line 452
    move p1, v0

    goto :goto_1

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->release()V

    goto :goto_0

    .line 492
    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 452
    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p2, :cond_2

    .line 453
    nop

    .line 458
    :goto_2
    move p1, v0

    goto :goto_3

    .line 454
    :cond_2
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 455
    goto :goto_2

    .line 458
    :cond_3
    :goto_3
    if-nez p1, :cond_4

    .line 459
    const-string p1, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no need to create windowSF("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "), beause Surface:"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is null, or Surface isValid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    monitor-exit p3

    return v0

    .line 464
    :cond_4
    const-string p1, "mWindowSurface"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 465
    new-instance p1, Lcom/huawei/videoengine/WindowSurface;

    iget-object p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-direct {p1, p4, p2, v0}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 466
    const-string p1, "hme_engine_java"

    const-string p2, "#winsf# mWindowSurface create"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    goto :goto_5

    .line 468
    :cond_5
    const-string p1, "mEncWindowSurface"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    .line 470
    :try_start_1
    new-instance p1, Lcom/huawei/videoengine/WindowSurface;

    iget-object p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-direct {p1, p4, p2, v0}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 472
    const-string p1, "hme_engine_java"

    const-string p2, "#winsf# mEncWindowSurface create"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 477
    :catch_0
    move-exception p1

    .line 478
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    :goto_4
    goto :goto_5

    .line 474
    :catch_1
    move-exception p1

    .line 475
    const-string p1, "hme_engine_java"

    const-string p2, "RuntimeException error"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 p1, 0x3

    iget-wide v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    invoke-virtual {p0, p1, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    goto :goto_4

    .line 481
    :cond_6
    const-string p1, "hme_engine_java"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWinowSurface str:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "not mWindowSurface or mEncWindowSurface"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :goto_5
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez p1, :cond_7

    .line 486
    const-string p1, "hme_engine_java"

    const-string p2, "#step#FullFrame 2d programe create "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance p1, Lcom/huawei/videoengine/FullFrameRect;

    new-instance p2, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object p4, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {p2, p4}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 488
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {p1}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 489
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 490
    const-string p1, "hme_engine_java"

    const-string p2, "FullFrame created "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_7
    monitor-exit p3

    .line 493
    return v0

    .line 492
    :goto_6
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public allocateCamera(ILandroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 384
    const-string p3, "hme_engine_java"

    const-string v0, "#step# allocateCamera"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string p3, "camera"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    .line 386
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    const/4 p3, -0x1

    if-nez p2, :cond_0

    .line 387
    const-string p1, "hme_engine_java"

    const-string p2, "get camera manager failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return p3

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->startBackgroundThread()V

    .line 392
    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 393
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond the cameraList length"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return p3

    .line 397
    :cond_1
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p3

    aget-object p1, p3, p1

    .line 398
    move p3, p2

    :goto_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_2

    .line 399
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 403
    :cond_2
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p3

    .line 404
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxWidth:I

    .line 405
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxHeight:I

    .line 408
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-static {p3, p1}, Lcom/huawei/videoengine/Camera2Characteristic;->isFaceFront(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsFaceFront:Z

    .line 409
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p3, p1, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 416
    :catch_0
    move-exception p1

    .line 417
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 413
    :catch_1
    move-exception p1

    .line 414
    const-string p3, "hme_engine_java"

    const-string v0, "NULL PointerEx"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 410
    :catch_2
    move-exception p1

    .line 411
    const-string p3, "hme_engine_java"

    const-string v0, "CameraAccessException, maybe cameraDevice has been disconnected"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 418
    :goto_1
    nop

    .line 420
    :goto_2
    return p2
.end method

.method public backInitEGl(Landroid/view/Surface;Landroid/view/Surface;II)I
    .locals 5

    .line 556
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 558
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/huawei/videoengine/EglCore;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/huawei/videoengine/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v2

    .line 564
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    :goto_0
    nop

    .line 574
    if-eqz p4, :cond_0

    if-nez p3, :cond_1

    .line 575
    :cond_0
    const-string v2, "hme_engine_java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wwmax viewSfW:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", viewSfH:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_1
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v2

    .line 579
    :try_start_1
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 580
    iput p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 581
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    const-string v2, "mWindowSurface"

    invoke-direct {p0, p3, p1, p4, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 584
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    if-eqz p1, :cond_2

    .line 585
    const-string p1, "hme_engine_java"

    const-string p2, "encSf exit befor initEGL, use encSfupdateTmp for mEncWindowSurface"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    const-string p4, "mEncWindowSurface"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 587
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    goto :goto_1

    .line 589
    :cond_2
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    const-string p4, "mEncWindowSurface"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 592
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->createCaptureSession()V

    .line 606
    return v1

    .line 581
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 559
    :catch_1
    move-exception p1

    .line 560
    const-string p1, "hme_engine_java"

    const-string p2, "new EglCore fail"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 p1, 0x3

    iget-wide p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 562
    return v1

    .line 569
    :cond_3
    const-string p1, "hme_engine_java"

    const-string p2, "egl has been inited"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 p1, 0x2

    iget-wide p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 571
    return v1
.end method

.method public createCaptureSession()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 268
    const-string v0, "hme_engine_java"

    const-string v1, "capture session exist, no need create "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 271
    :cond_0
    const-string v0, "hme_engine_java"

    const-string v1, "#step#captrue session create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_1

    .line 273
    const-string v0, "hme_engine_java"

    const-string v1, "cameraDevice is null, can not create capture session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void

    .line 278
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 279
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mReq:Landroid/hardware/camera2/CaptureRequest;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_2

    .line 283
    const-string v0, "hme_engine_java"

    const-string v1, "cameraTexure is null when create capture session, must be initEGL first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 286
    :cond_2
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 287
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 290
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v2, Lcom/huawei/videoengine/VideoCapture2Android$4;

    invoke-direct {v2, p0}, Lcom/huawei/videoengine/VideoCapture2Android$4;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 312
    :catch_1
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 310
    :catch_2
    move-exception v0

    .line 311
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 316
    :goto_0
    nop

    .line 317
    :goto_1
    return-void
.end method

.method public destroy()I
    .locals 4

    .line 1028
    const-string v0, "hme_engine_java"

    const-string v1, "#step#destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1034
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1038
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 1041
    :cond_2
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1043
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 1046
    :cond_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1047
    :try_start_0
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v2, :cond_4

    .line 1048
    const-string v2, "hme_engine_java"

    const-string v3, "#winsf#mEncWindowSurface realse"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 1050
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 1052
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1054
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_5

    .line 1055
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1056
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 1057
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 1060
    :cond_5
    nop

    .line 1061
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter v1

    .line 1062
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 1064
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1065
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1067
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    if-nez v0, :cond_6

    .line 1068
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1076
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    .line 1077
    if-eqz v0, :cond_7

    .line 1078
    const-string v2, "hme_engine_java"

    const-string v3, "destroy failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1081
    goto :goto_2

    .line 1076
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1076
    :try_start_5
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    .line 1077
    if-eqz v0, :cond_7

    .line 1078
    const-string v2, "hme_engine_java"

    const-string v3, "destroy failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 1071
    :catch_1
    move-exception v0

    .line 1072
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1076
    :try_start_7
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v0

    .line 1077
    if-eqz v0, :cond_7

    .line 1078
    const-string v2, "hme_engine_java"

    const-string v3, "destroy failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1082
    :goto_2
    monitor-exit v1

    .line 1084
    return v0

    .line 1076
    :goto_3
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v2

    .line 1077
    if-eqz v2, :cond_8

    .line 1078
    const-string v2, "hme_engine_java"

    const-string v3, "destroy failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_8
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V

    throw v0

    .line 1082
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 1052
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method public dropFrame()V
    .locals 1

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 742
    return-void
.end method

.method public getHeighAftertRendering()I
    .locals 2

    .line 1279
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 1280
    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    if-ge v0, v1, :cond_0

    .line 1282
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 1284
    :cond_0
    return v0
.end method

.method public getWidthAfterRendering()I
    .locals 2

    .line 1266
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 1267
    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    if-le v0, v1, :cond_0

    .line 1269
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 1271
    :cond_0
    return v0
.end method

.method public initEGl(Landroid/view/Surface;Landroid/view/Surface;IIII)I
    .locals 3

    .line 543
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# initEGL, viewSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", encSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "View("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "); Cap("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 545
    const-string p1, "hme_engine_java"

    const-string p2, "wwmax backThreadHandler is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 p1, -0x1

    return p1

    .line 548
    :cond_0
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;-><init>(Landroid/view/Surface;Landroid/view/Surface;II)V

    .line 549
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p5, p6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 551
    return p3
.end method

.method native nDropEncFrame(JIIIII)Z
.end method

.method native nGetRoiCoordinate(JI[IJ)V
.end method

.method native nMsgSend(IJ)V
.end method

.method public setAspectMode(IZ)I
    .locals 2

    .line 1238
    packed-switch p1, :pswitch_data_0

    .line 1249
    const-string p2, "hme_engine_java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wwmax setAspectMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/4 p1, -0x1

    return p1

    .line 1246
    :pswitch_0
    sget-object p1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1247
    goto :goto_0

    .line 1243
    :pswitch_1
    sget-object p1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1244
    goto :goto_0

    .line 1240
    :pswitch_2
    sget-object p1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->none:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1241
    nop

    .line 1252
    :goto_0
    if-eqz p2, :cond_0

    .line 1253
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    goto :goto_1

    .line 1255
    :cond_0
    const-string p2, "hme_engine_java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " set Enc AspectMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1258
    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCaptureWH(II)I
    .locals 3

    .line 1158
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step#capture width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1160
    const-string p1, "hme_engine_java"

    const-string p2, "wwmax backThreadHandler is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 p1, -0x1

    return p1

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1164
    const/4 p1, 0x0

    return p1
.end method

.method public setDstSf([Landroid/view/Surface;I)I
    .locals 4

    .line 359
    if-gtz p2, :cond_0

    .line 360
    const-string p1, "hme_engine_java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dstSf, invailed"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 p1, -0x1

    return p1

    .line 362
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    .line 363
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstSf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mArraySf:Ljava/util/ArrayList;

    aget-object v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_2
    return v0
.end method

.method public setEncRotation(II)I
    .locals 3

    .line 1147
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step#rotate enc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", left for cvo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1149
    :try_start_0
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1150
    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 1151
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_0

    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_0

    .line 1152
    const-string p1, "hme_engine_java"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wwmax mRotEnc:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_0
    monitor-exit v0

    .line 1155
    const/4 p1, 0x0

    return p1

    .line 1154
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFrameReceiver(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)I
    .locals 4

    .line 920
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_0
    const-string v1, "hme_engine_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#step# setFrameReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mMCE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    .line 923
    monitor-exit v0

    return v2

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    if-eqz v1, :cond_1

    .line 926
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->setCapSource(Lcom/huawei/videoengine/VideoCapture2Android;)I

    .line 929
    :cond_1
    if-eqz p1, :cond_2

    .line 930
    invoke-virtual {p1, p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->setCapSource(Lcom/huawei/videoengine/VideoCapture2Android;)I

    .line 932
    :cond_2
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    .line 933
    monitor-exit v0

    .line 934
    return v2

    .line 933
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFrameReceiver(Lcom/huawei/videoengine/SurfaceEncoder;)I
    .locals 3

    .line 912
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# setFrameReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_0
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 915
    monitor-exit v0

    .line 916
    const/4 p1, 0x0

    return p1

    .line 915
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPreviewRotation(I)I
    .locals 3

    .line 1128
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# rotate preiview: r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    rsub-int p1, p1, 0x168

    .line 1133
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1134
    const/4 p1, 0x0

    return p1
.end method

.method public setPreviewSf(Landroid/view/Surface;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfPreview:Landroid/view/Surface;

    .line 351
    return-void
.end method

.method public startCapture()I
    .locals 4

    .line 949
    const-string v0, "hme_engine_java"

    const-string v1, "#step#startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 952
    const-string v0, "hme_engine_java"

    const-string v1, "wwmax mCaptureSession is null when startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v0, -0x1

    return v0

    .line 962
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/huawei/videoengine/VideoCapture2Android;->setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 963
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraPreview"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    .line 964
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 965
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    const-string v1, "hme_engine_java"

    const-string v2, "camera err"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 969
    :catch_1
    move-exception v0

    .line 970
    const-string v1, "hme_engine_java"

    const-string v2, "camera err"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 966
    :catch_2
    move-exception v0

    .line 967
    const-string v1, "hme_engine_java"

    const-string v2, "camera err"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 975
    :goto_0
    nop

    .line 977
    :goto_1
    const-string v0, "hme_engine_java"

    const-string v1, "startCapture end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v0, 0x0

    return v0
.end method

.method public startPreview()I
    .locals 2

    .line 1009
    const-string v0, "hme_engine_java"

    const-string v1, "#step#start preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method public stopCapture()I
    .locals 3

    .line 983
    const-string v0, "hme_engine_java"

    const-string v1, "#step# stopcapture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 987
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 995
    :catch_0
    move-exception v0

    .line 996
    const-string v1, "hme_engine_java"

    const-string v2, "camera err"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 992
    :catch_1
    move-exception v0

    .line 993
    const-string v1, "hme_engine_java"

    const-string v2, "camera err"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 988
    :catch_2
    move-exception v0

    .line 990
    const-string v1, "hme_engine_java"

    const-string v2, "camera err"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 998
    :goto_0
    nop

    .line 1005
    :cond_0
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public stopPreview()I
    .locals 2

    .line 1015
    const-string v0, "hme_engine_java"

    const-string v1, "#step#stop preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 1017
    return v0
.end method

.method public test(Landroid/content/Context;)I
    .locals 1

    .line 901
    const-string p1, "hme_engine_java"

    const-string v0, "wwmax test"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 p1, 0x0

    return p1
.end method

.method public updateEncSf(Landroid/view/Surface;I)V
    .locals 3

    .line 753
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# update encSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mEncWindowSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", eglcore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/videoengine/SurfaceEncoder;->setEncSurface(Landroid/view/Surface;I)V

    .line 760
    :cond_0
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-nez p2, :cond_1

    .line 761
    const-string p1, "hme_engine_java"

    const-string p2, "background is null when updateEncSf"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void

    .line 765
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-nez p2, :cond_2

    .line 766
    const-string p1, "hme_engine_java"

    const-string p2, "encsf is invalid"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-void

    .line 770
    :cond_2
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-nez p2, :cond_3

    .line 771
    const-string p2, "hme_engine_java"

    const-string v0, "#step#now egl has not init, save update encSf"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 773
    return-void

    .line 775
    :cond_3
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter p2

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v0, :cond_5

    .line 778
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 779
    const-string v0, "hme_engine_java"

    const-string v1, "#winsf#mEncWindowSurface makeNothingCurrent "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 782
    :cond_4
    const-string v0, "hme_engine_java"

    const-string v1, "#winsf#mEncWindowSurface  release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 788
    :cond_5
    if-nez p1, :cond_6

    .line 789
    monitor-exit p2

    return-void

    .line 792
    :cond_6
    const-string v0, "hme_engine_java"

    const-string v1, "#winsf#mEncWindowSurface create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 794
    new-instance v0, Lcom/huawei/videoengine/WindowSurface;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 796
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 799
    return-void

    .line 796
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updatePreViewSf(Landroid/view/Surface;II)I
    .locals 5

    .line 821
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step# update PreViewSf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 823
    const-string p1, "hme_engine_java"

    const-string p2, "wwmax mBackThread is null when updatepreview"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return v1

    .line 827
    :cond_0
    nop

    .line 828
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter v0

    .line 829
    :try_start_0
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 830
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p1, v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 831
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 833
    :goto_0
    :try_start_1
    iget-boolean p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    if-nez p1, :cond_1

    .line 835
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 843
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    :goto_1
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 844
    goto :goto_2

    .line 843
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 840
    :catch_0
    move-exception p1

    .line 841
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 843
    :try_start_4
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 837
    :catch_1
    move-exception p1

    .line 839
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 843
    :try_start_6
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    goto :goto_1

    .line 845
    :goto_2
    monitor-exit v0

    .line 846
    return p1

    .line 843
    :goto_3
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    throw p1

    .line 845
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public updatePreview()I
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 321
    const-string v0, "hme_engine_java"

    const-string v1, "wwmax mCaptureSession is null when startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, -0x1

    return v0

    .line 325
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/huawei/videoengine/VideoCapture2Android;->setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 326
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraPreview"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 328
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v2, Lcom/huawei/videoengine/VideoCapture2Android$5;

    invoke-direct {v2, p0}, Lcom/huawei/videoengine/VideoCapture2Android$5;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 331
    :catch_1
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 329
    :catch_2
    move-exception v0

    .line 330
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 335
    :goto_0
    nop

    .line 336
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
