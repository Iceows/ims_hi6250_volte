.class public Lcom/huawei/videoengine/VideoCaptureAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static DEBUG:Z = false

.field private static LOGLEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "hme-video"

.field private static VERBOSE:Z = false

.field private static captureSysLock:Ljava/util/concurrent/locks/ReentrantLock; = null

.field private static final java_version:Ljava/lang/String; = "LOG-iMedia Video VILTE 1.2.1.SPC005.B018"

.field private static final model:Ljava/lang/String;

.field private static final numCaptureBuffers:I = 0x3


# instance fields
.field private PIXEL_FORMAT:I

.field private camera:Landroid/hardware/Camera;

.field private capMemorySize:I

.field private captureSystemRunFlag:Z

.field private config_PIXEL_FORMAT:I

.field private context:J

.field private currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

.field private currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

.field private expectedFrameSize:I

.field private g_buffer1:[B

.field private g_buffer2:[B

.field private g_buffer3:[B

.field private id:I

.field private isRunning:Z

.field private isStartPreviewFlag:Z

.field private localPreview:Landroid/view/SurfaceHolder;

.field private orientation:I

.field private ownsBuffers:Z

.field pixelFormat:Landroid/graphics/PixelFormat;

.field private sysLockFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    const/4 v0, 0x2

    sput v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->LOGLEVEL:I

    .line 77
    sget v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->LOGLEVEL:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v0, :cond_16

    move v0, v3

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    sput-boolean v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    .line 78
    sget v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->LOGLEVEL:I

    if-le v0, v3, :cond_1e

    move v2, v3

    :cond_1e
    sput-boolean v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(IJLandroid/hardware/Camera;Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .registers 10

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 34
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 40
    const/16 v1, 0x11

    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    .line 43
    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I

    .line 45
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 49
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 51
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->sysLockFlag:Z

    .line 54
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    .line 60
    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    .line 66
    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 67
    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->orientation:I

    .line 68
    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    .line 70
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    .line 71
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 73
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 80
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 157
    const-string v0, "hme-video"

    const-string v2, "VideoCaptureAndroid.java! enter VideoCaptureAndroid! java version:LOG-iMedia Video VILTE 1.2.1.SPC005.B018"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device model is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 163
    :try_start_4d
    new-instance v2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v2}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 164
    new-instance v2, Landroid/graphics/PixelFormat;

    invoke-direct {v2}, Landroid/graphics/PixelFormat;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 166
    iput p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    .line 167
    iput-wide p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    .line 168
    iput-object p4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 169
    iput-object p5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 170
    iget p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    iget-object p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {p1, p2}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 172
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    .line 174
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget p2, p2, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_89

    .line 176
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, "Java VideoCaptureAndroid fail! not support format:%d"

    new-array p1, p1, [Ljava/lang/Object;

    iget p4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p1, v1

    invoke-static {p2, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_4d .. :try_end_89} :catchall_95

    .line 179
    :cond_89
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    nop

    .line 181
    const-string p1, "VideoCaptureAndroid.java! leave VideoCaptureAndroid!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 179
    :catchall_95
    move-exception p1

    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    throw p1
.end method

.method private setPreviewCallback()V
    .registers 6

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewCallback, sdk version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :try_start_18
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    .line 923
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Camera not initialized in setPreviewCallback!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void

    .line 928
    :cond_2b
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v0, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v3, v3, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v3, v3, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x8

    .line 929
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_86

    .line 931
    nop

    .line 933
    nop

    :goto_42
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_7c

    .line 937
    if-eqz v2, :cond_60

    if-eq v2, v4, :cond_55

    .line 963
    iget v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    if-eq v3, v0, :cond_52

    .line 965
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    .line 968
    :cond_52
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    goto :goto_6b

    .line 952
    :cond_55
    iget v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    if-eq v3, v0, :cond_5d

    .line 954
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    .line 957
    :cond_5d
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    .line 958
    goto :goto_6b

    .line 941
    :cond_60
    iget v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    if-eq v3, v0, :cond_68

    .line 943
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    .line 946
    :cond_68
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    .line 947
    nop

    .line 974
    :goto_6b
    if-nez v3, :cond_73

    .line 976
    const-string v0, "null == buffer in local setPreviewCallback!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void

    .line 981
    :cond_73
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 982
    nop

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 985
    :cond_7c
    iput v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    .line 988
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 989
    iput-boolean v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 990
    goto :goto_8b

    .line 993
    :cond_86
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_8b} :catch_8d

    .line 1003
    :goto_8b
    nop

    .line 1005
    return-void

    .line 997
    :catch_8d
    move-exception v0

    .line 999
    const-string v2, "Failed in setPreviewCallback!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-void
.end method


# virtual methods
.method public configureCameraEncoder(II)I
    .registers 8

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#singleBox# ConfigureCameraEncoder!startkbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " kbps keyInternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "hme-video"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 207
    const/4 p2, -0x1

    :try_start_26
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_47

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera not initialized!!!id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_92
    .catchall {:try_start_26 .. :try_end_40} :catchall_90

    .line 210
    nop

    .line 234
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 210
    return p2

    .line 214
    :cond_47
    :try_start_47
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 215
    const/4 v2, 0x0

    if-nez v1, :cond_64

    .line 217
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "setCaptureEncoderRate! null == parameters!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5d} :catch_92
    .catchall {:try_start_47 .. :try_end_5d} :catchall_90

    .line 218
    nop

    .line 234
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    return p2

    .line 222
    :cond_64
    :try_start_64
    const-string v3, "double_stream_bit_rate"

    invoke-virtual {v1, v3, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dengxijia: set start bitrate to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " kbps"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_89} :catch_92
    .catchall {:try_start_64 .. :try_end_89} :catchall_90

    .line 234
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    nop

    .line 236
    return v2

    .line 234
    :catchall_90
    move-exception p1

    goto :goto_b7

    .line 227
    :catch_92
    move-exception p1

    .line 229
    :try_start_93
    const-string v1, "Failed to ConfigureCameraEncoder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_93 .. :try_end_b0} :catchall_90

    .line 232
    nop

    .line 234
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 232
    return p2

    .line 234
    :goto_b7
    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    throw p1
.end method

.method public deleteVideoCaptureAndroid(Lcom/huawei/videoengine/VideoCaptureAndroid;)V
    .registers 6

    .line 85
    const-string v0, "hme-video"

    const-string v1, "VideoCaptureAndroid.java! enter DeleteVideoCaptureAndroid!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CaptureSystemRunFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isRunningFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    if-eqz v1, :cond_82

    .line 96
    iget-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-eqz v1, :cond_37

    .line 98
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCaptureAndroid;->stopCapture()I
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_91

    .line 103
    :cond_37
    const/4 v1, 0x0

    :try_start_38
    const-string v2, "before camera.release"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_4e

    .line 106
    iget-object v2, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 107
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 108
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    goto :goto_53

    .line 112
    :cond_4e
    const-string v2, "camera already free!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_53
    const-string v2, "after camera.release"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_58} :catch_5c
    .catchall {:try_start_38 .. :try_end_58} :catchall_91

    .line 128
    nop

    .line 135
    :try_start_59
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    goto :goto_82

    .line 120
    :catch_5c
    move-exception p1

    .line 122
    const-string v2, "Failed to delete camera android!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z
    :try_end_7c
    .catchall {:try_start_59 .. :try_end_7c} :catchall_91

    .line 149
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    return-void

    .line 139
    :cond_82
    :goto_82
    :try_start_82
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCaptureAndroid;->freeCaptureResource()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_91

    .line 149
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    nop

    .line 152
    const-string p1, "VideoCaptureAndroid.java! leave DeleteVideoCaptureAndroid!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 149
    :catchall_91
    move-exception p1

    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    throw p1
.end method

.method public freeCaptureResource()V
    .registers 5

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 188
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 189
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    .line 190
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    .line 191
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 192
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 193
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 194
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    .line 195
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    .line 196
    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    .line 197
    iput v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    .line 198
    const-string v0, "hme-video"

    const-string v1, "VideoCaptureAndroid.java! leave FreeCaptureResource!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 12

    .line 655
    const-string v0, "hme-video"

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 657
    :try_start_7
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2a

    .line 659
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "preview frame length %d context %x"

    new-array v6, v3, [Ljava/lang/Object;

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-wide v7, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_2a
    iget-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-eqz v1, :cond_73

    if-eqz p1, :cond_73

    if-eqz p2, :cond_73

    .line 669
    array-length v1, p1

    iget v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    if-ne v1, v5, :cond_57

    .line 671
    iget v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    iget-wide v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/huawei/videoengine/VideoCaptureAndroid;->provideCameraFrame([BIJ)V

    .line 672
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    if-eqz v1, :cond_4f

    .line 674
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "frame delivered"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_4f
    iget-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    if-eqz v1, :cond_73

    .line 680
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_73

    .line 685
    :cond_57
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "err! frame delivered data.length:%d, expectedFrameSize:%d "

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 686
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    iget p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    .line 685
    invoke-static {p2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_73} :catch_7c
    .catchall {:try_start_7 .. :try_end_73} :catchall_7a

    .line 702
    :cond_73
    :goto_73
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 703
    nop

    .line 704
    return-void

    .line 702
    :catchall_7a
    move-exception p1

    goto :goto_88

    .line 695
    :catch_7c
    move-exception p1

    .line 697
    :try_start_7d
    const-string p1, "Failed in onPreviewFrame!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_7a

    .line 702
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 698
    return-void

    .line 702
    :goto_88
    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 703
    throw p1
.end method

.method public openFlashLight(Z)I
    .registers 6

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenFlashLight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1019
    const/4 v0, -0x1

    :try_start_1c
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_3d

    .line 1021
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera not initialized!!!id: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_36} :catch_6a
    .catchall {:try_start_1c .. :try_end_36} :catchall_68

    .line 1022
    nop

    .line 1048
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1022
    return v0

    .line 1025
    :cond_3d
    :try_start_3d
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1026
    const/4 v3, 0x1

    if-ne v3, p1, :cond_51

    .line 1028
    const-string p1, "torch"

    invoke-virtual {v2, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1029
    const-string p1, "open device FlashLight!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 1033
    :cond_51
    const-string p1, "off"

    invoke-virtual {v2, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1034
    const-string p1, "close device FlashLight!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :goto_5b
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_60} :catch_6a
    .catchall {:try_start_3d .. :try_end_60} :catchall_68

    .line 1048
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1049
    nop

    .line 1050
    const/4 p1, 0x0

    return p1

    .line 1048
    :catchall_68
    move-exception p1

    goto :goto_8f

    .line 1039
    :catch_6a
    move-exception p1

    .line 1041
    :try_start_6b
    const-string v2, "Failed to OpenFlashLight"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_6b .. :try_end_88} :catchall_68

    .line 1045
    nop

    .line 1048
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1045
    return v0

    .line 1048
    :goto_8f
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1049
    throw p1
.end method

.method native provideCameraFrame([BIJ)V
.end method

.method public requestKeyFrame()I
    .registers 7

    .line 280
    const-string v0, "hme-video"

    const-string v1, "#singleBox# requestKeyFrame!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 284
    const/4 v1, -0x1

    :try_start_d
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_2e

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera not initialized!!!id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_6a
    .catchall {:try_start_d .. :try_end_27} :catchall_68

    .line 287
    nop

    .line 318
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 287
    return v1

    .line 290
    :cond_2e
    :try_start_2e
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 291
    const/4 v3, 0x0

    if-nez v2, :cond_4b

    .line 293
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "setCaptureEncoderRate! null == parameters!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_44} :catch_6a
    .catchall {:try_start_2e .. :try_end_44} :catchall_68

    .line 294
    nop

    .line 318
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 294
    return v1

    .line 298
    :cond_4b
    :try_start_4b
    const-string v4, "query_frame"

    const-string v5, "i_frame"

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v4, "#singleBox# requestKeyFrame set value!!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 302
    const-string v2, "#singleBox# requestKeyFrame setParameter!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_61} :catch_6a
    .catchall {:try_start_4b .. :try_end_61} :catchall_68

    .line 318
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 319
    nop

    .line 321
    return v3

    .line 318
    :catchall_68
    move-exception v0

    goto :goto_8f

    .line 310
    :catch_6a
    move-exception v2

    .line 312
    :try_start_6b
    const-string v3, "Failed to requestKeyFrame"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_6b .. :try_end_88} :catchall_68

    .line 316
    nop

    .line 318
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 316
    return v1

    .line 318
    :goto_8f
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 319
    throw v0
.end method

.method public setCaptureEncoderRate(I)I
    .registers 9

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#singleBox# setCaptureEncoderRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " kbps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "hme-video"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 245
    const/4 v0, -0x1

    :try_start_23
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v3, :cond_44

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera not initialized!!!id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3d} :catch_8d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_8b

    .line 248
    nop

    .line 272
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 248
    return v0

    .line 251
    :cond_44
    :try_start_44
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 252
    const/4 v4, 0x0

    if-nez v3, :cond_61

    .line 254
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "setCaptureEncoderRate! null == parameters!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5a} :catch_8d
    .catchall {:try_start_44 .. :try_end_5a} :catchall_8b

    .line 255
    nop

    .line 272
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    return v0

    .line 259
    :cond_61
    :try_start_61
    const-string v5, "double_stream_bit_rate"

    invoke-virtual {v3, v5, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dengxijia: set bitrate to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_84} :catch_8d
    .catchall {:try_start_61 .. :try_end_84} :catchall_8b

    .line 272
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 273
    nop

    .line 275
    return v4

    .line 272
    :catchall_8b
    move-exception p1

    goto :goto_b2

    .line 265
    :catch_8d
    move-exception p1

    .line 267
    :try_start_8e
    const-string v1, "Failed to setCaptureEncoderRate"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_8e .. :try_end_ab} :catchall_8b

    .line 270
    nop

    .line 272
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 270
    return v0

    .line 272
    :goto_b2
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 273
    throw p1
.end method

.method public setPreviewRotation(I)I
    .registers 12

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetPreviewRotation start, rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 766
    const/4 v0, -0x1

    :try_start_1c
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    if-nez v2, :cond_35

    .line 768
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Camera not initialized in SetPreviewRotation!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2e} :catch_c2
    .catchall {:try_start_1c .. :try_end_2e} :catchall_c0

    .line 769
    nop

    .line 848
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 769
    return v0

    .line 774
    :cond_35
    :try_start_35
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 775
    nop

    .line 776
    nop

    .line 777
    nop

    .line 779
    const/16 v4, 0xe

    if-eqz v2, :cond_52

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v5, v4, :cond_52

    .line 781
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v5, v5, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 782
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v6, v6, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 783
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v7, v7, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 784
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->stopCapture()I

    goto :goto_55

    .line 787
    :cond_52
    move v5, v3

    move v6, v5

    move v7, v6

    :goto_55
    nop

    .line 788
    iget-object v8, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v8, v8, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v9, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-ne v8, v9, :cond_7f

    .line 795
    sget-object v8, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v9, "GT-I9001"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_78

    sget-object v8, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v9, "LG-E730"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_73

    goto :goto_78

    .line 802
    :cond_73
    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    goto :goto_80

    .line 797
    :cond_78
    :goto_78
    rsub-int p1, p1, 0x168

    add-int/lit16 p1, p1, 0xb4

    rem-int/lit16 p1, p1, 0x168

    goto :goto_80

    .line 809
    :cond_7f
    nop

    .line 812
    :goto_80
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x7

    if-le v8, v9, :cond_8b

    .line 814
    iget-object v8, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v8, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_99

    .line 821
    :cond_8b
    iget-object v8, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 822
    invoke-virtual {v8, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 823
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 826
    :goto_99
    if-eqz v2, :cond_b9

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v4, :cond_b9

    .line 829
    iget p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I

    .line 830
    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/huawei/videoengine/VideoCaptureAndroid;->startCapture(IIII)I

    .line 831
    const-string p1, "before setPreviewCallback "

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->setPreviewCallback()V

    .line 833
    const-string p1, "before startPreview"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 835
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_b9} :catch_c2
    .catchall {:try_start_35 .. :try_end_b9} :catchall_c0

    .line 848
    :cond_b9
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 849
    nop

    .line 852
    return v3

    .line 848
    :catchall_c0
    move-exception p1

    goto :goto_e7

    .line 840
    :catch_c2
    move-exception p1

    .line 842
    :try_start_c3
    const-string v2, "Failed in setPreviewCallback!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_c3 .. :try_end_e0} :catchall_c0

    .line 846
    nop

    .line 848
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 846
    return v0

    .line 848
    :goto_e7
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 849
    throw p1
.end method

.method public startCapture(IIII)I
    .registers 21

    .line 325
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const-string v6, "continuous-picture"

    sget-boolean v7, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    const-string v8, "hme-video"

    if-eqz v7, :cond_3e

    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartCapture width:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " height:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " fps:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " previewImageType:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_3e
    const-string v7, "StartCapture "

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :try_start_43
    iget-object v7, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-nez v7, :cond_66

    .line 331
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Camera not initialized %d"

    new-array v4, v9, [Ljava/lang/Object;

    iget v1, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v11

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_5f} :catch_3bf
    .catchall {:try_start_43 .. :try_end_5f} :catchall_3bc

    .line 332
    nop

    .line 583
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 332
    return v10

    .line 335
    :cond_66
    :try_start_66
    sget-object v7, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 337
    iget-object v7, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 338
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v7

    .line 339
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    .line 340
    nop

    .line 341
    nop

    .line 343
    if-gtz v12, :cond_9d

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartCapture: suport format num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_96} :catch_3bf
    .catchall {:try_start_66 .. :try_end_96} :catchall_3bc

    .line 346
    nop

    .line 583
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    return v10

    .line 348
    :cond_9d
    const/16 v13, 0x62

    const-string v14, "M310"

    if-ne v13, v5, :cond_f6

    .line 350
    :try_start_a3
    sget-object v13, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_cc

    .line 352
    nop

    .line 353
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 354
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "StartCapture change previewImageType from 98(just for M310) to "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v9

    goto :goto_f7

    .line 358
    :cond_cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartCapture input rawType is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  modle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_ef} :catch_3bf
    .catchall {:try_start_a3 .. :try_end_ef} :catchall_3bc

    .line 360
    nop

    .line 583
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    return v10

    .line 348
    :cond_f6
    move v13, v11

    .line 364
    :goto_f7
    :try_start_f7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartCapture: suport format num:"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v12, v11

    :goto_110
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15
    :try_end_114
    .catch Ljava/lang/RuntimeException; {:try_start_f7 .. :try_end_114} :catch_3bf
    .catchall {:try_start_f7 .. :try_end_114} :catchall_3bc

    const-string v11, "StartCapture: suport format:"

    if-eqz v15, :cond_13a

    :try_start_118
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 369
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v5, :cond_137

    .line 372
    const/4 v12, 0x1

    .line 374
    :cond_137
    const/4 v10, -0x1

    const/4 v11, 0x0

    goto :goto_110

    .line 376
    :cond_13a
    nop

    .line 377
    if-nez v12, :cond_19b

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start capture! not support config format: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget v9, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    .line 381
    nop

    .line 382
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v9

    :goto_159
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_183

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 385
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v9, :cond_17e

    .line 388
    const/4 v12, 0x1

    .line 391
    :cond_17e
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 392
    goto :goto_159

    .line 394
    :cond_183
    if-nez v12, :cond_19c

    .line 396
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start capture! not support default format: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move v9, v10

    goto :goto_19c

    .line 377
    :cond_19b
    move v9, v5

    .line 402
    :cond_19c
    :goto_19c
    iget-object v7, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    if-nez v7, :cond_1ad

    .line 404
    const-string v1, "null == currentCapability in StartCapture!"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a5
    .catch Ljava/lang/RuntimeException; {:try_start_118 .. :try_end_1a5} :catch_3bf
    .catchall {:try_start_118 .. :try_end_1a5} :catchall_3bc

    .line 405
    nop

    .line 583
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 405
    const/4 v1, -0x1

    return v1

    .line 408
    :cond_1ad
    :try_start_1ad
    iget-object v7, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput v2, v7, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 409
    iget-object v7, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput v3, v7, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 410
    iget-object v7, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput v4, v7, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 412
    iget-object v7, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 414
    if-nez v7, :cond_1d7

    .line 416
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "start capture! null == parameters!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_1ad .. :try_end_1cf} :catch_3bf
    .catchall {:try_start_1ad .. :try_end_1cf} :catchall_3bc

    .line 417
    nop

    .line 583
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    const/4 v1, -0x1

    return v1

    .line 421
    :cond_1d7
    :try_start_1d7
    iget-object v10, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v10, v10, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    iget-object v11, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v11, v11, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    invoke-virtual {v7, v10, v11}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 423
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StartCapture: current format:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v10, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v9, v10}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 427
    iget-object v10, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v10, v10, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_23b

    .line 429
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "start capture! not support format:%d"

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v15, v12

    invoke-static {v10, v11, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/16 v9, 0x11

    .line 435
    iget-object v10, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v9, v10}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 438
    iget-object v10, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v10, v10, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_23b

    .line 440
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "start capture! not support format:NV21"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_233
    .catch Ljava/lang/RuntimeException; {:try_start_1d7 .. :try_end_233} :catch_3bf
    .catchall {:try_start_1d7 .. :try_end_233} :catchall_3bc

    .line 441
    nop

    .line 583
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 441
    const/4 v1, -0x1

    return v1

    .line 445
    :cond_23b
    :try_start_23b
    invoke-virtual {v7, v9}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 448
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StartCapture! PIXEL_FORMAT:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " Config PicFormat: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "current PicFormat:"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pixelFormat.bitsPerPixel:"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v5, v5, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 458
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v10
    :try_end_278
    .catch Ljava/lang/RuntimeException; {:try_start_23b .. :try_end_278} :catch_3bf
    .catchall {:try_start_23b .. :try_end_278} :catchall_3bc

    .line 459
    if-nez v10, :cond_282

    .line 461
    nop

    .line 583
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 461
    const/4 v1, -0x1

    return v1

    .line 463
    :cond_282
    :try_start_282
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_286
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_29e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 465
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v4, v11, :cond_29d

    .line 467
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 468
    goto :goto_29e

    .line 487
    :cond_29d
    goto :goto_286

    .line 489
    :cond_29e
    :goto_29e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iLocalConfigFrame:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", InputFrameFps:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 494
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_315

    .line 497
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 504
    invoke-virtual {v7, v4}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 505
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "minFps:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget v12, v4, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " maxFps:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    aget v4, v4, v11

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " model:"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    nop

    .line 508
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v10, "XT910"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30e

    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v10, "XT928"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_315

    .line 510
    :cond_30e
    const/16 v4, 0x1388

    const/16 v10, 0x4e20

    invoke-virtual {v7, v4, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 515
    :cond_315
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xe

    if-lt v4, v10, :cond_36d

    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v10, "Full Android on exynos4412"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36d

    .line 517
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_368

    .line 520
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 521
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_337
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_367

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 523
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "focesMode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_366

    .line 526
    const-string v4, "Support continuous-picture mode!"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v7, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 528
    goto :goto_367

    .line 530
    :cond_366
    goto :goto_337

    .line 531
    :cond_367
    :goto_367
    goto :goto_36d

    .line 534
    :cond_368
    const-string v4, "Default mode is continuous-picture!"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_36d
    :goto_36d
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_373
    .catch Ljava/lang/RuntimeException; {:try_start_282 .. :try_end_373} :catch_3bf
    .catchall {:try_start_282 .. :try_end_373} :catchall_3bc

    if-eqz v4, :cond_38c

    .line 540
    const-string v4, "camera_support_stream"

    if-eqz v13, :cond_383

    .line 542
    const/4 v6, 0x1

    :try_start_37a
    invoke-virtual {v7, v4, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 543
    const-string v4, "#single_box# StartCapture: M310 enalbe double stream!!"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38c

    .line 549
    :cond_383
    const/4 v6, 0x0

    invoke-virtual {v7, v4, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 550
    const-string v4, "#single_box# StartCapture: M310 disalbe 2 streams, only YUV preview stream!!"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_38c
    :goto_38c
    iget-object v4, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 557
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->getLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object v4

    iput-object v4, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 558
    iget-object v4, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_3a1

    .line 560
    iget-object v4, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_3a6

    .line 565
    :cond_3a1
    const-string v4, "localPreview null!!"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_3a6
    mul-int/2addr v2, v3

    iget-object v3, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v3, v3, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v5

    .line 571
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 572
    iput v2, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 574
    iput v9, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I
    :try_end_3b4
    .catch Ljava/lang/RuntimeException; {:try_start_37a .. :try_end_3b4} :catch_3bf
    .catchall {:try_start_37a .. :try_end_3b4} :catchall_3bc

    .line 583
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 584
    nop

    .line 586
    const/4 v1, 0x0

    return v1

    .line 583
    :catchall_3bc
    move-exception v0

    move-object v1, v0

    goto :goto_3e5

    .line 576
    :catch_3bf
    move-exception v0

    move-object v1, v0

    .line 578
    :try_start_3c1
    const-string v2, "Failed to start camera"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3de
    .catchall {:try_start_3c1 .. :try_end_3de} :catchall_3bc

    .line 581
    const/4 v1, -0x2

    .line 583
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 581
    return v1

    .line 583
    :goto_3e5
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 584
    throw v1
.end method

.method public stopCapture()I
    .registers 7

    .line 591
    sget-boolean v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    const-string v1, "hme-video"

    if-eqz v0, :cond_1c

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter java StopCapture! isRunning:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_1c
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 596
    :try_start_21
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_af

    if-eqz v0, :cond_5a

    .line 600
    :try_start_2b
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 601
    iput-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 603
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    const/4 v5, 0x0

    if-le v0, v4, :cond_3e

    .line 605
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_43

    .line 609
    :cond_3e
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 612
    :goto_43
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_4c

    .line 614
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_4c} :catch_4d
    .catchall {:try_start_2b .. :try_end_4c} :catchall_af

    .line 621
    :cond_4c
    goto :goto_85

    .line 617
    :catch_4d
    move-exception v0

    .line 619
    :try_start_4e
    const-string v0, "Failed to stop camera"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_af

    .line 620
    nop

    .line 644
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 620
    return v3

    .line 624
    :cond_5a
    :try_start_5a
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_7b

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera==null or camera flag not true in StopCapture! flag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_af

    .line 627
    nop

    .line 644
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 627
    return v3

    .line 633
    :cond_7b
    :try_start_7b
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_84

    .line 635
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_84} :catch_a2
    .catchall {:try_start_7b .. :try_end_84} :catchall_af

    .line 641
    :cond_84
    nop

    .line 644
    :goto_85
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 645
    nop

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leave java StopCapture! isRunning:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return v2

    .line 637
    :catch_a2
    move-exception v0

    .line 639
    :try_start_a3
    const-string v0, "Failed to removeCallback!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_af

    .line 640
    nop

    .line 644
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 640
    return v3

    .line 644
    :catchall_af
    move-exception v0

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 645
    throw v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    .line 707
    const-string p1, "hme-video"

    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 709
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCaptureAndroid.java! enter surfaceChanged, format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", widht="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isStartPreviewFlag:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " captureSystemRunFlag:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-boolean p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    if-eqz p2, :cond_73

    .line 717
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz p2, :cond_6d

    .line 720
    iget-boolean p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-nez p2, :cond_78

    .line 722
    const-string p2, "before start preview in surfaceChanged!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 724
    const-string p2, "after  start preview in surfaceChanged!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 726
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    goto :goto_78

    .line 731
    :cond_6d
    const-string p2, "capture has destory in surfaceChanged!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 736
    :cond_73
    const-string p2, "capture system had destroy in surfaceChanged!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_78} :catch_81
    .catchall {:try_start_7 .. :try_end_78} :catchall_7f

    .line 749
    :cond_78
    :goto_78
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 750
    nop

    .line 756
    return-void

    .line 749
    :catchall_7f
    move-exception p1

    goto :goto_a5

    .line 740
    :catch_81
    move-exception p2

    .line 742
    :try_start_82
    const-string p3, "startPreview Failed in surfaceChanged!"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Message"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_82 .. :try_end_9f} :catchall_7f

    .line 749
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 745
    return-void

    .line 749
    :goto_a5
    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 750
    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    .line 856
    const-string v0, "hme-video"

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 859
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCaptureAndroid.java! surfaceCreated! isRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isStartPreviewFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated! surface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " holder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    if-eqz v1, :cond_71

    iget-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    if-nez v1, :cond_71

    .line 864
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_80

    .line 867
    iget-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-eqz v1, :cond_65

    .line 869
    const-string v1, "before stop preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 871
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 872
    const-string v1, "before set preview buf null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 875
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->setPreviewCallback()V

    .line 876
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_80

    .line 881
    :cond_71
    iget-boolean p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    if-eqz p1, :cond_7b

    .line 883
    const-string p1, "now is starting preview, can\'t repeat start preview!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 887
    :cond_7b
    const-string p1, "camera has destory in surfaceCreated"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_7 .. :try_end_80} :catchall_87

    .line 899
    :cond_80
    :goto_80
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 900
    nop

    .line 909
    return-void

    .line 891
    :catchall_87
    move-exception p1

    .line 894
    :try_start_88
    const-string v1, "Exception in surfaceCreated()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_93

    .line 899
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 896
    return-void

    .line 899
    :catchall_93
    move-exception p1

    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 900
    throw p1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed! surface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " holder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hme-video"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method
