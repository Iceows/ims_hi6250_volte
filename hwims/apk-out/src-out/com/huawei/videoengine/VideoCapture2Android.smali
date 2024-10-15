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

.field private static final java_version:Ljava/lang/String; = "LOG-iMedia Video VILTE 1.2.1.SPC005.B018"


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

.field private mEnableROI:Z

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
    .registers 6

    .line 86
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

    .line 70
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEnableROI:Z

    .line 96
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 98
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 167
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 168
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$2;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$2;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 204
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 205
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 430
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 431
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 432
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 433
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 435
    const/16 v3, 0x10

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 436
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 437
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 438
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 439
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 440
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 441
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 442
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 443
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 504
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 535
    new-instance v4, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v4}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 536
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 608
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 609
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 610
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 741
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 812
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 813
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 1010
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 1011
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1118
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1130
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1131
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 87
    const-string v0, "hme_engine_java"

    const-string v1, "#step#VideoCapture2Android()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 89
    return-void
.end method

.method public constructor <init>(J)V
    .registers 8

    .line 158
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

    .line 70
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEnableROI:Z

    .line 96
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 98
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 167
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 168
    new-instance v3, Lcom/huawei/videoengine/VideoCapture2Android$2;

    invoke-direct {v3, p0}, Lcom/huawei/videoengine/VideoCapture2Android$2;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 204
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 205
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 430
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 431
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 432
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 433
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 435
    const/16 v3, 0x10

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 436
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 437
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 438
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 439
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 440
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 441
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 442
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 443
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 504
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 535
    new-instance v4, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v4}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 536
    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 608
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 609
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 610
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 741
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 812
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 813
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 1010
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 1011
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1118
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1130
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1131
    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 159
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 160
    const-string v0, "hme_engine_java"

    const-string v1, "VideoCapture2Android.java! enter VideoCapture2Android! java version:LOG-iMedia Video VILTE 1.2.1.SPC005.B018"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-wide p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    .line 163
    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 6

    .line 91
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

    .line 70
    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEnableROI:Z

    .line 96
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    .line 98
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$1;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$1;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 167
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 168
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$2;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/VideoCapture2Android$2;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 204
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 205
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 430
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 431
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 432
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    .line 433
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 435
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    .line 436
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 437
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    .line 438
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    .line 439
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    .line 440
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 441
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 442
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 443
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 504
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, p3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 535
    new-instance v1, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objInitEGL:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 536
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, p3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->semInitEGL:Ljava/util/concurrent/Semaphore;

    .line 608
    new-array p3, v0, [F

    iput-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    .line 609
    new-array p3, v0, [F

    iput-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    .line 610
    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 741
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 812
    new-instance p1, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {p1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 813
    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 1010
    new-instance p1, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-direct {p1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;-><init>()V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    .line 1011
    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1118
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1130
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1131
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 92
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->init()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/videoengine/VideoCapture2Android;)Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEnableROI:Z

    return p0
.end method

.method static synthetic access$100(Lcom/huawei/videoengine/VideoCapture2Android;)J
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->time_stamp:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic access$102(Lcom/huawei/videoengine/VideoCapture2Android;J)J
    .registers 3

    .line 36
    iput-wide p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->time_stamp:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;II)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/videoengine/VideoCapture2Android;->backUpdatePreViewSf(Landroid/view/Surface;II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->backUpdateEncSf(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/huawei/videoengine/VideoCapture2Android;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->backDestroy()V

    return-void
.end method

.method static synthetic access$1402(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    return p0
.end method

.method static synthetic access$200(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->faces_length:I

    return p0
.end method

.method static synthetic access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$202(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->faces_length:I

    return p1
.end method

.method static synthetic access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    return p0
.end method

.method static synthetic access$2102(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    return p1
.end method

.method static synthetic access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    return p0
.end method

.method static synthetic access$2202(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    return p1
.end method

.method static synthetic access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)[F
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F

    return-object p0
.end method

.method static synthetic access$2400(Lcom/huawei/videoengine/VideoCapture2Android;)Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsFaceFront:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    return p0
.end method

.method static synthetic access$2600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V
    .registers 9

    .line 36
    invoke-direct/range {p0 .. p8}, Lcom/huawei/videoengine/VideoCapture2Android;->getMVPP([F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    return p0
.end method

.method static synthetic access$2900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/videoengine/VideoCapture2Android;)[I
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    return-object p0
.end method

.method static synthetic access$3000(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/huawei/videoengine/VideoCapture2Android;[I)[I
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I

    return-object p1
.end method

.method static synthetic access$3100(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    return p0
.end method

.method static synthetic access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/KirinMediaCodecEncoder;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    return p0
.end method

.method static synthetic access$3502(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I

    return p1
.end method

.method static synthetic access$3600(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    return p0
.end method

.method static synthetic access$3602(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I

    return p1
.end method

.method static synthetic access$3700(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    return p0
.end method

.method static synthetic access$3800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    return p0
.end method

.method static synthetic access$402(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    return p1
.end method

.method static synthetic access$500(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    return p0
.end method

.method static synthetic access$602(Lcom/huawei/videoengine/VideoCapture2Android;I)I
    .registers 2

    .line 36
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    return p1
.end method

.method static synthetic access$700(Lcom/huawei/videoengine/VideoCapture2Android;)I
    .registers 1

    .line 36
    iget p0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$802(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/huawei/videoengine/VideoCapture2Android;)J
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    return-wide v0
.end method

.method private backDestroy()V
    .registers 5

    .line 1086
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v0, :cond_7

    .line 1087
    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 1090
    :cond_7
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_a
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 1092
    const-string v1, "hme_engine_java"

    const-string v3, "#winsf#mWinowSuface release"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 1094
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 1096
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_46

    .line 1099
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 1100
    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/FullFrameRect;->release(Z)V

    .line 1101
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 1104
    :cond_28
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-eqz v0, :cond_31

    .line 1105
    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->release()V

    .line 1106
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 1109
    :cond_31
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter v2

    .line 1110
    const/4 v0, 0x1

    :try_start_35
    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    .line 1111
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 1112
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1113
    monitor-exit v2

    .line 1115
    return-void

    .line 1113
    :catchall_43
    move-exception v0

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_43

    throw v0

    .line 1096
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private backUpdateEncSf(Landroid/view/Surface;)V
    .registers 4

    .line 801
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez p1, :cond_26

    .line 802
    const-string p1, "hme_engine_java"

    const-string v0, "wwmax mEncWindowSurface new program 655"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 804
    new-instance p1, Lcom/huawei/videoengine/FullFrameRect;

    new-instance v0, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object v1, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, v0}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 805
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {p1}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 807
    :cond_26
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 808
    return-void
.end method

.method private backUpdatePreViewSf(Landroid/view/Surface;II)V
    .registers 8

    .line 844
    nop

    .line 846
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 847
    const-string p1, "hme_engine_java"

    const-string p2, "egl has not init, return"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v1, -0x1

    .line 849
    goto/16 :goto_8a

    .line 851
    :cond_10
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_13
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopPreview()I

    .line 853
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v2, :cond_3d

    .line 859
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 860
    const-string v2, "hme_engine_java"

    const-string v3, "#winsf#mWindowSurface makeNothingCurrent "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v2}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 863
    :cond_2e
    const-string v2, "hme_engine_java"

    const-string v3, "#winsf#mWinowSurface realease"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 865
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 868
    :cond_3d
    new-instance v2, Lcom/huawei/videoengine/WindowSurface;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-direct {v2, v3, p1, v1}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 869
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

    .line 870
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 871
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 872
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->startPreview()I

    .line 874
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 875
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez p1, :cond_89

    .line 876
    new-instance p1, Lcom/huawei/videoengine/FullFrameRect;

    new-instance p2, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object p3, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {p2, p3}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 877
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {p1}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 878
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 880
    :cond_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_13 .. :try_end_8a} :catchall_a3

    .line 884
    :goto_8a
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter p1

    .line 885
    :try_start_8d
    iget-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    if-nez p2, :cond_9e

    .line 887
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    .line 888
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p2, v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 889
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 891
    :cond_9e
    monitor-exit p1

    .line 892
    return-void

    .line 891
    :catchall_a0
    move-exception p2

    monitor-exit p1
    :try_end_a2
    .catchall {:try_start_8d .. :try_end_a2} :catchall_a0

    throw p2

    .line 880
    :catchall_a3
    move-exception p1

    :try_start_a4
    monitor-exit v0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw p1
.end method

.method private createSurfaceTexureForCamera(I)I
    .registers 5

    .line 613
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 614
    const-string p1, "hme_engine_java"

    const-string v1, "cameraTexure is already exist, no need to create"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return v0

    .line 618
    :cond_d
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 619
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    iget v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 621
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    new-instance v1, Lcom/huawei/videoengine/VideoCapture2Android$6;

    invoke-direct {v1, p0}, Lcom/huawei/videoengine/VideoCapture2Android$6;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    invoke-virtual {p1, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 730
    return v0
.end method

.method private getMVPP([F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V
    .registers 29

    .line 1157
    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

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

    .line 1158
    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1160
    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v6, v13

    div-float v15, v5, v13

    const/4 v4, 0x0

    invoke-static {v7, v12, v14, v15, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 1161
    int-to-float v3, v8

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v1, p3

    move/from16 v19, v4

    move/from16 v4, v16

    move v12, v5

    move/from16 v5, v17

    move v13, v6

    move/from16 v6, v18

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 1164
    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq v8, v2, :cond_59

    if-ne v8, v1, :cond_4a

    goto :goto_59

    .line 1171
    :cond_4a
    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v4, v3

    mul-float v5, v12, v4

    iget v4, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 1172
    int-to-float v4, v4

    mul-float v6, v13, v4

    int-to-float v3, v3

    div-float/2addr v6, v3

    goto :goto_67

    .line 1166
    :cond_59
    :goto_59
    iget v3, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v4, v3

    mul-float v5, v12, v4

    iget v4, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 1167
    int-to-float v4, v4

    mul-float v6, v13, v4

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 1174
    :goto_67
    sget-object v3, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v9, v3, :cond_e7

    .line 1175
    if-eq v8, v2, :cond_ad

    if-ne v8, v1, :cond_72

    goto :goto_ad

    .line 1188
    :cond_72
    if-le v11, v10, :cond_82

    .line 1189
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    if-eqz p4, :cond_7c

    neg-float v1, v12

    div-float v15, v1, v0

    :cond_7c
    const/4 v0, 0x0

    invoke-static {v7, v0, v5, v15, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_115

    .line 1192
    :cond_82
    div-float v1, v13, v12

    iget v2, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v2, v2

    iget v0, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    cmpg-float v0, v1, v19

    if-gez v0, :cond_9e

    .line 1193
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    if-eqz p4, :cond_98

    neg-float v1, v12

    div-float v15, v1, v0

    :cond_98
    const/4 v0, 0x0

    invoke-static {v7, v0, v5, v15, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_115

    .line 1196
    :cond_9e
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p4, :cond_a5

    neg-float v1, v6

    div-float/2addr v1, v0

    goto :goto_a7

    :cond_a5
    div-float v1, v6, v0

    :goto_a7
    const/4 v0, 0x0

    invoke-static {v7, v0, v14, v1, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_115

    .line 1176
    :cond_ad
    :goto_ad
    if-le v11, v10, :cond_da

    .line 1177
    div-float v1, v12, v13

    iget v2, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    int-to-float v2, v2

    iget v0, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    cmpl-float v0, v1, v19

    if-lez v0, :cond_cd

    .line 1178
    if-eqz p4, :cond_c4

    neg-float v0, v5

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_c8

    :cond_c4
    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, v5, v1

    :goto_c8
    const/4 v1, 0x0

    invoke-static {v7, v1, v15, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_115

    .line 1181
    :cond_cd
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    if-eqz p4, :cond_d5

    neg-float v0, v13

    div-float v14, v0, v1

    :cond_d5
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_115

    .line 1184
    :cond_da
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    if-eqz p4, :cond_e2

    neg-float v0, v13

    div-float v14, v0, v1

    :cond_e2
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_115

    .line 1200
    :cond_e7
    sget-object v0, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    if-ne v9, v0, :cond_10a

    .line 1201
    if-ge v11, v10, :cond_fd

    .line 1202
    if-eqz p4, :cond_f4

    neg-float v0, v5

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_f8

    :cond_f4
    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, v5, v1

    :goto_f8
    const/4 v1, 0x0

    invoke-static {v7, v1, v15, v0, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_115

    .line 1204
    :cond_fd
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v6, v1

    if-eqz p4, :cond_105

    neg-float v0, v13

    div-float v14, v0, v1

    :cond_105
    const/4 v0, 0x0

    invoke-static {v7, v0, v6, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_115

    .line 1207
    :cond_10a
    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p4, :cond_112

    neg-float v2, v13

    div-float v14, v2, v1

    :cond_112
    invoke-static {v7, v0, v15, v14, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 1210
    :goto_115
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1212
    return-void
.end method

.method private init()V
    .registers 4

    .line 75
    new-instance v0, Lcom/huawei/videoengine/FpsStatistic;

    const-string v1, "Camera Out"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/FpsStatistic;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 76
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    const/4 v1, 0x0

    :try_start_f
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncInFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 78
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1c

    .line 80
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v2

    .line 81
    :try_start_15
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;

    .line 82
    monitor-exit v2

    .line 84
    return-void

    .line 82
    :catchall_19
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v0

    .line 78
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 348
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 349
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEnableROI:Z

    if-eqz v0, :cond_18

    .line 350
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 352
    :cond_18
    return-void
.end method

.method private startBackgroundThread()V
    .registers 4

    .line 210
    const-string v0, "hme_engine_java"

    const-string v1, "#step#startBackgroudThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CameraBackground"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 212
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 213
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 215
    if-nez v1, :cond_26

    .line 217
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V

    .line 218
    const-string v1, "startBackgroudThread getLooper err!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 222
    :cond_26
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$3;

    invoke-direct {v0, p0, v1}, Lcom/huawei/videoengine/VideoCapture2Android$3;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    .line 253
    return-void
.end method

.method private stopBackgroundThread()V
    .registers 3

    .line 256
    const-string v0, "hme_engine_java"

    const-string v1, "#step#stopBackgroundThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 259
    :try_start_c
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 261
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_16} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_20

    .line 264
    :catch_17
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    .line 262
    :catch_1c
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 266
    :goto_20
    nop

    .line 267
    :goto_21
    return-void
.end method

.method private updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 8

    .line 446
    nop

    .line 447
    monitor-enter p3

    .line 448
    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 449
    :try_start_5
    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-ne v1, p2, :cond_28

    .line 450
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

    .line 451
    move p1, v0

    goto :goto_30

    .line 453
    :cond_28
    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->release()V

    goto :goto_2f

    .line 498
    :catchall_2c
    move-exception p1

    goto/16 :goto_fc

    .line 458
    :cond_2f
    :goto_2f
    const/4 p1, 0x1

    :goto_30
    if-nez p2, :cond_34

    .line 459
    move p1, v0

    goto :goto_3b

    .line 460
    :cond_34
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 461
    move p1, v0

    .line 464
    :cond_3b
    :goto_3b
    if-nez p1, :cond_62

    .line 465
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

    .line 466
    monitor-exit p3

    return v0

    .line 470
    :cond_62
    const-string p1, "mWindowSurface"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 471
    new-instance p1, Lcom/huawei/videoengine/WindowSurface;

    iget-object p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-direct {p1, p4, p2, v0}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 472
    const-string p1, "hme_engine_java"

    const-string p2, "#winsf# mWindowSurface create"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    goto :goto_cd

    .line 474
    :cond_80
    const-string p1, "mEncWindowSurface"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_86
    .catchall {:try_start_5 .. :try_end_86} :catchall_2c

    if-eqz p1, :cond_b2

    .line 476
    :try_start_88
    new-instance p1, Lcom/huawei/videoengine/WindowSurface;

    iget-object p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-direct {p1, p4, p2, v0}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 478
    const-string p1, "hme_engine_java"

    const-string p2, "#winsf# mEncWindowSurface create"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V
    :try_end_9d
    .catch Ljava/lang/RuntimeException; {:try_start_88 .. :try_end_9d} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9d} :catch_9e
    .catchall {:try_start_88 .. :try_end_9d} :catchall_2c

    goto :goto_a2

    .line 483
    :catch_9e
    move-exception p1

    .line 484
    :try_start_9f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 485
    :goto_a2
    goto :goto_cd

    .line 480
    :catch_a3
    move-exception p1

    .line 481
    const-string p1, "hme_engine_java"

    const-string p2, "RuntimeException error"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 p1, 0x3

    iget-wide v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    invoke-virtual {p0, p1, v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    goto :goto_a2

    .line 487
    :cond_b2
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

    .line 491
    :goto_cd
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    if-nez p1, :cond_fa

    .line 492
    const-string p1, "hme_engine_java"

    const-string p2, "#step#FullFrame 2d programe create "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance p1, Lcom/huawei/videoengine/FullFrameRect;

    new-instance p2, Lcom/huawei/videoengine/Texture2dProgram;

    sget-object p4, Lcom/huawei/videoengine/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/huawei/videoengine/Texture2dProgram$ProgramType;

    invoke-direct {p2, p4}, Lcom/huawei/videoengine/Texture2dProgram;-><init>(Lcom/huawei/videoengine/Texture2dProgram$ProgramType;)V

    invoke-direct {p1, p2}, Lcom/huawei/videoengine/FullFrameRect;-><init>(Lcom/huawei/videoengine/Texture2dProgram;)V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    .line 494
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;

    invoke-virtual {p1}, Lcom/huawei/videoengine/FullFrameRect;->createTextureObject()I

    move-result p1

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    .line 495
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I

    invoke-direct {p0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I

    .line 496
    const-string p1, "hme_engine_java"

    const-string p2, "FullFrame created "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_fa
    monitor-exit p3

    .line 499
    return v0

    .line 498
    :goto_fc
    monitor-exit p3
    :try_end_fd
    .catchall {:try_start_9f .. :try_end_fd} :catchall_2c

    throw p1
.end method


# virtual methods
.method public allocateCamera(ILandroid/content/Context;Ljava/lang/String;)I
    .registers 7

    .line 390
    const-string p3, "hme_engine_java"

    const-string v0, "#step# allocateCamera"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v0, "camera"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    .line 392
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    const/4 v0, -0x1

    if-nez p2, :cond_1c

    .line 393
    const-string p1, "get camera manager failed"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return v0

    .line 396
    :cond_1c
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->startBackgroundThread()V

    .line 398
    const/4 p2, 0x0

    :try_start_20
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_43

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is beyond the cameraList length"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return v0

    .line 403
    :cond_43
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    .line 404
    move v0, p2

    :goto_4c
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_7c

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 409
    :cond_7c
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 410
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxWidth:I

    .line 411
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMaxHeight:I

    .line 414
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    invoke-static {v0, p1}, Lcom/huawei/videoengine/Camera2Characteristic;->isFaceFront(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsFaceFront:Z

    .line 415
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->manager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_ab
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_20 .. :try_end_ab} :catch_bb
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_ab} :catch_b1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_ab} :catch_ac

    goto :goto_c4

    .line 422
    :catch_ac
    move-exception p1

    .line 423
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_c5

    .line 419
    :catch_b1
    move-exception p1

    .line 420
    const-string v0, "NULL PointerEx"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_c4

    .line 416
    :catch_bb
    move-exception p1

    .line 417
    const-string v0, "CameraAccessException, maybe cameraDevice has been disconnected"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 424
    :goto_c4
    nop

    .line 426
    :goto_c5
    return p2
.end method

.method public backInitEGl(Landroid/view/Surface;Landroid/view/Surface;II)I
    .registers 9

    .line 554
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v1, 0x0

    if-nez v0, :cond_7f

    .line 556
    const/4 v0, 0x0

    :try_start_6
    new-instance v2, Lcom/huawei/videoengine/EglCore;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/huawei/videoengine/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_70
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_13

    .line 561
    :catch_f
    move-exception v2

    .line 562
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 563
    :goto_13
    nop

    .line 572
    if-eqz p4, :cond_18

    if-nez p3, :cond_36

    .line 573
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wwmax viewSfW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", viewSfH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hme_engine_java"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_36
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    monitor-enter v2

    .line 577
    :try_start_39
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I

    .line 578
    iput p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I

    .line 579
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_6d

    .line 580
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object p4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;

    const-string v2, "mWindowSurface"

    invoke-direct {p0, p3, p1, p4, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 582
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    if-eqz p1, :cond_60

    .line 583
    const-string p1, "hme_engine_java"

    const-string p2, "encSf exit befor initEGL, use encSfupdateTmp for mEncWindowSurface"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    const-string p4, "mEncWindowSurface"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 585
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    goto :goto_69

    .line 587
    :cond_60
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    iget-object p3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    const-string p4, "mEncWindowSurface"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/videoengine/VideoCapture2Android;->updateWinowSurface(Lcom/huawei/videoengine/WindowSurface;Landroid/view/Surface;Ljava/lang/Object;Ljava/lang/String;)I

    .line 590
    :goto_69
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->createCaptureSession()V

    .line 604
    return v1

    .line 579
    :catchall_6d
    move-exception p1

    :try_start_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p1

    .line 557
    :catch_70
    move-exception p1

    .line 558
    const-string p1, "hme_engine_java"

    const-string p2, "new EglCore fail"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 p1, 0x3

    iget-wide p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 560
    return v1

    .line 567
    :cond_7f
    const-string p1, "hme_engine_java"

    const-string p2, "egl has been inited"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 p1, 0x2

    iget-wide p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 569
    return v1
.end method

.method public createCaptureSession()V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const-string v1, "hme_engine_java"

    if-eqz v0, :cond_c

    .line 272
    const-string v0, "capture session exist, no need create "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 275
    :cond_c
    const-string v0, "#step#captrue session create"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_1b

    .line 277
    const-string v0, "cameraDevice is null, can not create capture session"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 282
    :cond_1b
    const/4 v2, 0x3

    :try_start_1c
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 283
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mReq:Landroid/hardware/camera2/CaptureRequest;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_39

    .line 287
    const-string v0, "cameraTexure is null when create capture session, must be initEGL first"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 290
    :cond_39
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 291
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 294
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v2, Lcom/huawei/videoengine/VideoCapture2Android$4;

    invoke-direct {v2, p0}, Lcom/huawei/videoengine/VideoCapture2Android$4;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_54
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1c .. :try_end_54} :catch_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_54} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_54} :catch_55

    goto :goto_63

    .line 318
    :catch_55
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64

    .line 316
    :catch_5a
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_63

    .line 314
    :catch_5f
    move-exception v0

    .line 315
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 320
    :goto_63
    nop

    .line 321
    :goto_64
    return-void
.end method

.method public destroy()I
    .registers 6

    .line 1018
    const-string v0, "hme_engine_java"

    const-string v1, "#step#destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1020
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1023
    :cond_f
    const-string v0, "hme_engine_java"

    const-string v2, "#step#stopBackgroundThread start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    nop

    .line 1026
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter v0

    .line 1027
    :try_start_1a
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 1029
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1030
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_e1

    .line 1032
    :goto_2f
    :try_start_2f
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z

    if-nez v2, :cond_3e

    .line 1033
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1034
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bDestroyed:Z
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_3d} :catch_68
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3d} :catch_54
    .catchall {:try_start_2f .. :try_end_3d} :catchall_51

    goto :goto_2f

    .line 1041
    :cond_3e
    :try_start_3e
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v2

    .line 1042
    if-eqz v2, :cond_4d

    .line 1043
    const-string v3, "hme_engine_java"

    const-string v4, "destroy failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_4d
    :goto_4d
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_e1

    .line 1046
    goto :goto_7c

    .line 1041
    :catchall_51
    move-exception v1

    goto/16 :goto_ce

    .line 1038
    :catch_54
    move-exception v2

    .line 1039
    :try_start_55
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_51

    .line 1041
    :try_start_58
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v2

    .line 1042
    if-eqz v2, :cond_4d

    .line 1043
    const-string v3, "hme_engine_java"

    const-string v4, "destroy failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_e1

    goto :goto_4d

    .line 1036
    :catch_68
    move-exception v2

    .line 1037
    :try_start_69
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_51

    .line 1041
    :try_start_6c
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v2

    .line 1042
    if-eqz v2, :cond_4d

    .line 1043
    const-string v3, "hme_engine_java"

    const-string v4, "destroy failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1047
    :goto_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_6c .. :try_end_7d} :catchall_e1

    .line 1049
    const-string v0, "hme_engine_java"

    const-string v3, "#step#stopBackgroundThread end"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_8d

    .line 1052
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1053
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1055
    :cond_8d
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_96

    .line 1056
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1057
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 1060
    :cond_96
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_9f

    .line 1061
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1062
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 1065
    :cond_9f
    const-string v0, "hme_engine_java"

    const-string v3, "#step#destroy end"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1068
    :try_start_a9
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v0, :cond_bb

    .line 1069
    const-string v0, "hme_engine_java"

    const-string v4, "#winsf#mEncWindowSurface realse"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 1071
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 1073
    :cond_bb
    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_a9 .. :try_end_bc} :catchall_cb

    .line 1075
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_ca

    .line 1076
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1077
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 1078
    iput-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;

    .line 1081
    :cond_ca
    return v2

    .line 1073
    :catchall_cb
    move-exception v0

    :try_start_cc
    monitor-exit v3
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v0

    .line 1041
    :goto_ce
    :try_start_ce
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objDestroy:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {v2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result v2

    .line 1042
    if-eqz v2, :cond_dd

    .line 1043
    const-string v2, "hme_engine_java"

    const-string v3, "destroy failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_dd
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCapture2Android;->stopBackgroundThread()V

    .line 1046
    throw v1

    .line 1047
    :catchall_e1
    move-exception v1

    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_ce .. :try_end_e3} :catchall_e1

    throw v1
.end method

.method public dropFrame()V
    .registers 2

    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mNeedDropEncFrame:Z

    .line 737
    return-void
.end method

.method public getHeighAftertRendering()I
    .registers 3

    .line 1251
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    .line 1252
    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    if-ge v0, v1, :cond_7

    .line 1254
    move v0, v1

    .line 1256
    :cond_7
    return v0
.end method

.method public getWidthAfterRendering()I
    .registers 3

    .line 1242
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I

    .line 1243
    iget v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I

    if-le v0, v1, :cond_7

    .line 1245
    move v0, v1

    .line 1247
    :cond_7
    return v0
.end method

.method public initEGl(Landroid/view/Surface;Landroid/view/Surface;IIII)I
    .registers 10

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#step# initEGL, viewSf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encSf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "View("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "); Cap("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_4c

    .line 543
    const-string p1, "wwmax backThreadHandler is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 p1, -0x1

    return p1

    .line 546
    :cond_4c
    new-instance v0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;-><init>(Landroid/view/Surface;Landroid/view/Surface;II)V

    .line 547
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p5, p6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 548
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    return p2
.end method

.method native nDropEncFrame(JIIIII)Z
.end method

.method native nGetRoiCoordinate(JI[IJ)V
.end method

.method native nMsgSend(IJ)V
.end method

.method public setAspectMode(IZ)I
    .registers 5

    .line 1218
    const/4 v0, 0x1

    const-string v1, "hme_engine_java"

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    .line 1229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wwmax setAspectMode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/4 p1, -0x1

    return p1

    .line 1226
    :cond_21
    sget-object p1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1227
    goto :goto_2a

    .line 1223
    :cond_24
    sget-object p1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->crop:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1224
    goto :goto_2a

    .line 1220
    :cond_27
    sget-object p1, Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;->none:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1221
    nop

    .line 1232
    :goto_2a
    if-eqz p2, :cond_2f

    .line 1233
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    goto :goto_45

    .line 1235
    :cond_2f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " set Enc AspectMode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    .line 1238
    :goto_45
    const/4 p1, 0x0

    return p1
.end method

.method public setCaptureWH(II)I
    .registers 5

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#step#capture width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_29

    .line 1147
    const-string p1, "wwmax backThreadHandler is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/4 p1, -0x1

    return p1

    .line 1150
    :cond_29
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1151
    const/4 p1, 0x0

    return p1
.end method

.method public setDstSf([Landroid/view/Surface;I)I
    .registers 7

    .line 365
    const-string v0, "hme_engine_java"

    if-gtz p2, :cond_1a

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dstSf, invailed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 p1, -0x1

    return p1

    .line 368
    :cond_1a
    const/4 v1, 0x2

    if-lt p2, v1, :cond_31

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dstSf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_31
    const/4 v0, 0x0

    move v1, v0

    :goto_33
    if-ge v1, p2, :cond_3f

    .line 373
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mArraySf:Ljava/util/ArrayList;

    aget-object v3, p1, p2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 375
    :cond_3f
    return v0
.end method

.method public setEncRotation(II)I
    .registers 5

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#step#rotate enc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", left for cvo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1136
    :try_start_21
    iput p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I

    .line 1137
    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    .line 1138
    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_4d

    iget p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_4d

    .line 1139
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

    .line 1141
    :cond_4d
    monitor-exit v0

    .line 1142
    const/4 p1, 0x0

    return p1

    .line 1141
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_21 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public setFrameReceiver(Lcom/huawei/videoengine/KirinMediaCodecEncoder;)I
    .registers 6

    .line 909
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;

    monitor-enter v0

    .line 910
    :try_start_3
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

    .line 911
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_2a

    .line 912
    monitor-exit v0

    return v2

    .line 914
    :cond_2a
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    if-eqz v1, :cond_34

    .line 915
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->setCapSource(Lcom/huawei/videoengine/VideoCapture2Android;)I

    .line 918
    :cond_34
    if-eqz p1, :cond_39

    .line 919
    invoke-virtual {p1, p0}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->setCapSource(Lcom/huawei/videoengine/VideoCapture2Android;)I

    .line 921
    :cond_39
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    .line 922
    monitor-exit v0

    .line 923
    return v2

    .line 922
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public setFrameReceiver(Lcom/huawei/videoengine/SurfaceEncoder;)I
    .registers 4

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#step# setFrameReceiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfELock:Ljava/lang/Object;

    monitor-enter v0

    .line 903
    :try_start_19
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    .line 904
    monitor-exit v0

    .line 905
    const/4 p1, 0x0

    return p1

    .line 904
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public setPreviewRotation(I)I
    .registers 4

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#step# rotate preiview: r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    rsub-int p1, p1, 0x168

    .line 1126
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I

    .line 1127
    const/4 p1, 0x0

    return p1
.end method

.method public setPreviewSf(Landroid/view/Surface;)V
    .registers 2

    .line 356
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfPreview:Landroid/view/Surface;

    .line 357
    return-void
.end method

.method public startCapture()I
    .registers 7

    .line 938
    const-string v0, "camera err"

    const-string v1, "hme_engine_java"

    const-string v2, "#step#startCapture"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_14

    .line 941
    const-string v0, "wwmax mCaptureSession is null when startCapture"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v0, -0x1

    return v0

    .line 951
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 952
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "CameraPreview"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    .line 953
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 954
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_36
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_14 .. :try_end_36} :catch_47
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_36} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_36} :catch_37

    goto :goto_4e

    .line 961
    :catch_37
    move-exception v2

    .line 962
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f

    .line 958
    :catch_3f
    move-exception v2

    .line 959
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4e

    .line 955
    :catch_47
    move-exception v2

    .line 956
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 964
    :goto_4e
    nop

    .line 966
    :goto_4f
    const-string v0, "startCapture end"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v0, 0x0

    return v0
.end method

.method public startPreview()I
    .registers 3

    .line 998
    const-string v0, "hme_engine_java"

    const-string v1, "#step#start preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 1000
    const/4 v0, 0x0

    return v0
.end method

.method public stopCapture()I
    .registers 4

    .line 972
    const-string v0, "camera err"

    const-string v1, "hme_engine_java"

    const-string v2, "#step# stopcapture"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_2d

    .line 975
    :try_start_d
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 976
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCapturePreviewThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z
    :try_end_15
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_15} :catch_26
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_15} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    goto :goto_2d

    .line 984
    :catch_16
    move-exception v2

    .line 985
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 981
    :catch_1e
    move-exception v2

    .line 982
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2d

    .line 977
    :catch_26
    move-exception v2

    .line 979
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 994
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method public stopPreview()I
    .registers 3

    .line 1004
    const-string v0, "hme_engine_java"

    const-string v1, "#step#stop preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z

    .line 1006
    return v0
.end method

.method public updateEncSf(Landroid/view/Surface;I)V
    .registers 6

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#step# update encSf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mEncWindowSurface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eglcore:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mSfE:Lcom/huawei/videoengine/SurfaceEncoder;

    if-eqz v0, :cond_33

    if-eqz p1, :cond_33

    .line 751
    invoke-virtual {v0, p1, p2}, Lcom/huawei/videoengine/SurfaceEncoder;->setEncSurface(Landroid/view/Surface;I)V

    .line 755
    :cond_33
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    if-nez p2, :cond_3f

    .line 756
    const-string p1, "hme_engine_java"

    const-string p2, "background is null when updateEncSf"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void

    .line 760
    :cond_3f
    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p2

    if-nez p2, :cond_4f

    .line 761
    const-string p1, "hme_engine_java"

    const-string p2, "encsf is invalid"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void

    .line 765
    :cond_4f
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    if-nez p2, :cond_5d

    .line 766
    const-string p2, "hme_engine_java"

    const-string v0, "#step#now egl has not init, save update encSf"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 768
    return-void

    .line 770
    :cond_5d
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;

    monitor-enter p2

    .line 771
    :try_start_60
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v0, :cond_87

    .line 773
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 774
    const-string v0, "hme_engine_java"

    const-string v1, "#winsf#mEncWindowSurface makeNothingCurrent "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0}, Lcom/huawei/videoengine/EglCore;->makeNothingCurrent()V

    .line 777
    :cond_78
    const-string v0, "hme_engine_java"

    const-string v1, "#winsf#mEncWindowSurface  release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 783
    :cond_87
    if-nez p1, :cond_8b

    .line 784
    monitor-exit p2

    return-void

    .line 787
    :cond_8b
    const-string v0, "hme_engine_java"

    const-string v1, "#winsf#mEncWindowSurface create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncSfUpdateTmp:Landroid/view/Surface;

    .line 789
    new-instance v0, Lcom/huawei/videoengine/WindowSurface;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEglCore:Lcom/huawei/videoengine/EglCore;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 791
    monitor-exit p2
    :try_end_9f
    .catchall {:try_start_60 .. :try_end_9f} :catchall_aa

    .line 793
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 794
    return-void

    .line 791
    :catchall_aa
    move-exception p1

    :try_start_ab
    monitor-exit p2
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw p1
.end method

.method public updatePreViewSf(Landroid/view/Surface;II)I
    .registers 9

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#step# update PreViewSf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    if-nez v0, :cond_33

    .line 817
    const-string p1, "hme_engine_java"

    const-string p2, "wwmax mBackThread is null when updatepreview"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return v1

    .line 821
    :cond_33
    nop

    .line 822
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    monitor-enter v0

    .line 823
    :try_start_37
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 824
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p1, v1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->setRes(I)V

    .line 825
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_76

    .line 827
    :goto_4b
    :try_start_4b
    iget-boolean p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->bUpdated:Z

    if-nez p1, :cond_57

    .line 829
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_56} :catch_67
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_56} :catch_60
    .catchall {:try_start_4b .. :try_end_56} :catchall_5e

    goto :goto_4b

    .line 837
    :cond_57
    :try_start_57
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    :goto_59
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    move-result p1
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_76

    .line 838
    goto :goto_6e

    .line 837
    :catchall_5e
    move-exception p1

    goto :goto_70

    .line 834
    :catch_60
    move-exception p1

    .line 835
    :try_start_61
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    .line 837
    :try_start_64
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_76

    goto :goto_59

    .line 831
    :catch_67
    move-exception p1

    .line 833
    :try_start_68
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_5e

    .line 837
    :try_start_6b
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    goto :goto_59

    .line 839
    :goto_6e
    monitor-exit v0

    .line 840
    return p1

    .line 837
    :goto_70
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android;->objUpdatePreview:Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;

    invoke-virtual {p2}, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->getRes()I

    .line 838
    throw p1

    .line 839
    :catchall_76
    move-exception p1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_76

    throw p1
.end method

.method public updatePreview()I
    .registers 5

    .line 324
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_d

    .line 325
    const-string v0, "hme_engine_java"

    const-string v1, "wwmax mCaptureSession is null when startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, -0x1

    return v0

    .line 329
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/huawei/videoengine/VideoCapture2Android;->setUpCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 330
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraPreview"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 332
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mPreviewBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v2, Lcom/huawei/videoengine/VideoCapture2Android$5;

    invoke-direct {v2, p0}, Lcom/huawei/videoengine/VideoCapture2Android$5;-><init>(Lcom/huawei/videoengine/VideoCapture2Android;)V

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_2e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_2e} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_2e} :catch_34
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2e} :catch_2f

    goto :goto_3d

    .line 337
    :catch_2f
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e

    .line 335
    :catch_34
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3d

    .line 333
    :catch_39
    move-exception v0

    .line 334
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 339
    :goto_3d
    nop

    .line 340
    :goto_3e
    const/4 v0, 0x0

    return v0
.end method
