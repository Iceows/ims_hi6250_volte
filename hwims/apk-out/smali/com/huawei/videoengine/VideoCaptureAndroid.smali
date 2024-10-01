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

.field private static final java_version:Ljava/lang/String; = "LOG-iMedia Video VILTE 1.2.1"

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
    .locals 4

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

    if-le v1, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    .line 78
    sget v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->LOGLEVEL:I

    if-le v0, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    sput-boolean v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(IJLandroid/hardware/Camera;Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .locals 4

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

    const-string v2, "VideoCaptureAndroid.java! enter VideoCaptureAndroid! java version:LOG-iMedia Video VILTE 1.2.1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "hme-video"

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
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 163
    :try_start_0
    new-instance v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v0}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 164
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

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

    if-ne p2, p3, :cond_0

    .line 176
    const-string p2, "hme-video"

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p4, "Java VideoCaptureAndroid fail! not support format:%d"

    new-array p1, p1, [Ljava/lang/Object;

    iget p5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p1, v1

    invoke-static {p3, p4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    nop

    .line 181
    const-string p1, "hme-video"

    const-string p2, "VideoCaptureAndroid.java! leave VideoCaptureAndroid!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 179
    :catchall_0
    move-exception p1

    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private setPreviewCallback()V
    .locals 4

    .line 941
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewCallback, sdk version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 948
    const-string v0, "hme-video"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Camera not initialized in setPreviewCallback!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v0, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v2, v2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v2, v2, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    .line 954
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_6

    .line 956
    nop

    .line 958
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    .line 962
    packed-switch v1, :pswitch_data_0

    .line 988
    iget v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    goto :goto_1

    .line 977
    :pswitch_0
    iget v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    if-eq v2, v0, :cond_1

    .line 979
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    .line 982
    :cond_1
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    .line 983
    goto :goto_2

    .line 966
    :pswitch_1
    iget v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    if-eq v2, v0, :cond_2

    .line 968
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    .line 971
    :cond_2
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    .line 972
    goto :goto_2

    .line 988
    :goto_1
    if-eq v2, v0, :cond_3

    .line 990
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    .line 993
    :cond_3
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    .line 999
    :goto_2
    if-nez v2, :cond_4

    .line 1001
    const-string v0, "hme-video"

    const-string v1, "null == buffer in local setPreviewCallback!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-void

    .line 1006
    :cond_4
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1007
    nop

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    :cond_5
    iput v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->capMemorySize:I

    .line 1013
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 1015
    goto :goto_3

    .line 1018
    :cond_6
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :goto_3
    nop

    .line 1030
    return-void

    .line 1022
    :catch_0
    move-exception v0

    .line 1024
    const-string v1, "hme-video"

    const-string v2, "Failed in setPreviewCallback!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v1, "hme-video"

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

    .line 1027
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public configureCameraEncoder(II)I
    .locals 5

    .line 203
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#singleBox# ConfigureCameraEncoder!startkbps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " kbps keyInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 207
    const/4 p2, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 209
    const-string p1, "hme-video"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera not initialized!!!id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    nop

    .line 239
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 210
    return p2

    .line 214
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 217
    const-string p1, "hme-video"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "setCaptureEncoderRate! null == parameters!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    nop

    .line 239
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    return p2

    .line 225
    :cond_1
    :try_start_2
    const-string v2, "double_stream_bit_rate"

    invoke-virtual {v0, v2, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 226
    const-string v2, "hme-video"

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

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 240
    nop

    .line 241
    return v1

    .line 239
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 232
    :catch_0
    move-exception p1

    .line 234
    :try_start_3
    const-string v0, "hme-video"

    const-string v1, "Failed to ConfigureCameraEncoder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v0, "hme-video"

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    nop

    .line 239
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    return p2

    .line 239
    :goto_0
    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public deleteVideoCaptureAndroid(Lcom/huawei/videoengine/VideoCaptureAndroid;)V
    .locals 4

    .line 85
    const-string v0, "hme-video"

    const-string v1, "VideoCaptureAndroid.java! enter DeleteVideoCaptureAndroid!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    :try_start_0
    const-string v0, "hme-video"

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
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    if-eqz v0, :cond_2

    .line 96
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCaptureAndroid;->stopCapture()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "hme-video"

    const-string v2, "before camera.release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 107
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 108
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    goto :goto_0

    .line 112
    :cond_1
    const-string v1, "hme-video"

    const-string v2, "camera already free!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    const-string v1, "hme-video"

    const-string v2, "after camera.release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    nop

    .line 135
    :try_start_2
    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    goto :goto_1

    .line 120
    :catch_0
    move-exception p1

    .line 122
    const-string v1, "hme-video"

    const-string v2, "Failed to delete camera android!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v1, "hme-video"

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

    .line 126
    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    return-void

    .line 139
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCaptureAndroid;->freeCaptureResource()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    nop

    .line 152
    const-string p1, "hme-video"

    const-string v0, "VideoCaptureAndroid.java! leave DeleteVideoCaptureAndroid!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 149
    :catchall_0
    move-exception p1

    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public freeCaptureResource()V
    .locals 4

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
    .locals 9

    .line 678
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 680
    :try_start_0
    sget-boolean v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 682
    const-string v0, "hme-video"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "preview frame length %d context %x"

    new-array v6, v2, [Ljava/lang/Object;

    array-length v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-wide v7, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 692
    array-length v0, p1

    iget v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    if-ne v0, v4, :cond_2

    .line 694
    iget v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    iget-wide v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/huawei/videoengine/VideoCaptureAndroid;->provideCameraFrame([BIJ)V

    .line 695
    sget-boolean v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 697
    const-string v0, "hme-video"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "frame delivered"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    if-eqz v0, :cond_3

    .line 703
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 708
    :cond_2
    const-string p2, "hme-video"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "err! frame delivered data.length:%d, expectedFrameSize:%d "

    new-array v2, v2, [Ljava/lang/Object;

    array-length p1, p1

    .line 709
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    iget p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 708
    invoke-static {v0, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    :cond_3
    :goto_0
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 726
    nop

    .line 727
    return-void

    .line 725
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 718
    :catch_0
    move-exception p1

    .line 720
    :try_start_1
    const-string p1, "hme-video"

    const-string p2, "Failed in onPreviewFrame!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 721
    return-void

    .line 725
    :goto_1
    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public openFlashLight(Z)I
    .locals 4

    .line 1040
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenFlashLight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1044
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 1046
    const-string p1, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera not initialized!!!id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    nop

    .line 1073
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1047
    return v0

    .line 1050
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1051
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 1053
    const-string p1, "torch"

    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1054
    const-string p1, "hme-video"

    const-string v2, "open device FlashLight!"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1058
    :cond_1
    const-string p1, "off"

    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1059
    const-string p1, "hme-video"

    const-string v2, "close device FlashLight!"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_0
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1073
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1074
    nop

    .line 1075
    const/4 p1, 0x0

    return p1

    .line 1073
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1064
    :catch_0
    move-exception p1

    .line 1066
    :try_start_2
    const-string v1, "hme-video"

    const-string v2, "Failed to OpenFlashLight"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const-string v1, "hme-video"

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1070
    nop

    .line 1073
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1070
    return v0

    .line 1073
    :goto_1
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method native provideCameraFrame([BIJ)V
.end method

.method public requestKeyFrame()I
    .locals 5

    .line 287
    const-string v0, "hme-video"

    const-string v1, "#singleBox# requestKeyFrame!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 291
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 293
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera not initialized!!!id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    nop

    .line 328
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 294
    return v0

    .line 297
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 298
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 300
    const-string v1, "hme-video"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "setCaptureEncoderRate! null == parameters!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    nop

    .line 328
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 301
    return v0

    .line 307
    :cond_1
    :try_start_2
    const-string v3, "query_frame"

    const-string v4, "i_frame"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v3, "hme-video"

    const-string v4, "#singleBox# requestKeyFrame set value!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 311
    const-string v1, "hme-video"

    const-string v3, "#singleBox# requestKeyFrame setParameter!!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 329
    nop

    .line 331
    return v2

    .line 328
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 322
    :try_start_3
    const-string v2, "hme-video"

    const-string v3, "Failed to requestKeyFrame"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v2, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 326
    nop

    .line 328
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 326
    return v0

    .line 328
    :goto_0
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setCaptureEncoderRate(I)I
    .locals 6

    .line 246
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#singleBox# setCaptureEncoderRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " kbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 250
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 252
    const-string p1, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera not initialized!!!id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    nop

    .line 279
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 253
    return v0

    .line 256
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 257
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 259
    const-string p1, "hme-video"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "setCaptureEncoderRate! null == parameters!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    nop

    .line 279
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 260
    return v0

    .line 266
    :cond_1
    :try_start_2
    const-string v3, "double_stream_bit_rate"

    invoke-virtual {v1, v3, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 267
    const-string v3, "hme-video"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dengxijia: set bitrate to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " kbps"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 280
    nop

    .line 282
    return v2

    .line 279
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 272
    :catch_0
    move-exception p1

    .line 274
    :try_start_3
    const-string v1, "hme-video"

    const-string v2, "Failed to setCaptureEncoderRate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v1, "hme-video"

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    nop

    .line 279
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 277
    return v0

    .line 279
    :goto_0
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPreviewRotation(I)I
    .locals 9

    .line 784
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetPreviewRotation start, rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 789
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 791
    const-string p1, "hme-video"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Camera not initialized in SetPreviewRotation!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    nop

    .line 871
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 792
    return v0

    .line 797
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 798
    nop

    .line 799
    nop

    .line 800
    nop

    .line 802
    const/16 v3, 0xe

    if-eqz v1, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v3, :cond_1

    .line 804
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v4, v4, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 805
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v5, v5, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 806
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v6, v6, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 807
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->stopCapture()I

    goto :goto_0

    .line 810
    :cond_1
    move v4, v2

    move v5, v4

    move v6, v5

    .line 811
    :goto_0
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v7, v7, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v8, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-ne v7, v8, :cond_4

    .line 818
    sget-object v7, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v8, "GT-I9001"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v8, "LG-E730"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 825
    :cond_2
    rsub-int p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    goto :goto_2

    .line 820
    :cond_3
    :goto_1
    rsub-int p1, p1, 0x168

    add-int/lit16 p1, p1, 0xb4

    rem-int/lit16 p1, p1, 0x168

    goto :goto_2

    .line 832
    :cond_4
    nop

    .line 835
    :goto_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x7

    if-le v7, v8, :cond_5

    .line 837
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v7, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_3

    .line 844
    :cond_5
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 845
    invoke-virtual {v7, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 846
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 849
    :goto_3
    if-eqz v1, :cond_6

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v3, :cond_6

    .line 852
    iget p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I

    .line 853
    invoke-virtual {p0, v4, v5, v6, p1}, Lcom/huawei/videoengine/VideoCaptureAndroid;->startCapture(IIII)I

    .line 854
    const-string p1, "hme-video"

    const-string v1, "before setPreviewCallback "

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->setPreviewCallback()V

    .line 856
    const-string p1, "hme-video"

    const-string v1, "before startPreview"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 858
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 871
    :cond_6
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 872
    nop

    .line 875
    return v2

    .line 871
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 863
    :catch_0
    move-exception p1

    .line 865
    :try_start_2
    const-string v1, "hme-video"

    const-string v2, "Failed in setPreviewCallback!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string v1, "hme-video"

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 869
    nop

    .line 871
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 869
    return v0

    .line 871
    :goto_4
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public startCapture(IIII)I
    .locals 11

    .line 335
    sget-boolean v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 336
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartCapture width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " previewImageType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    const-string v0, "hme-video"

    const-string v1, "StartCapture "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 341
    const-string p1, "hme-video"

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, "Camera not initialized %d"

    new-array p4, v1, [Ljava/lang/Object;

    iget v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v3

    invoke-static {p2, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    nop

    .line 601
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 342
    return v2

    .line 345
    :cond_1
    :try_start_1
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 347
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    .line 349
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 350
    nop

    .line 351
    nop

    .line 353
    if-gtz v4, :cond_2

    .line 355
    const-string p1, "hme-video"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StartCapture: suport format num: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "is invalid"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    nop

    .line 601
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 356
    return v2

    .line 359
    :cond_2
    const/16 v5, 0x62

    if-ne v5, p4, :cond_4

    .line 361
    :try_start_2
    sget-object v5, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v6, "M310"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 363
    nop

    .line 364
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 365
    const-string v5, "hme-video"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartCapture change previewImageType from 98(just for M310) to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move v5, v1

    goto :goto_0

    .line 369
    :cond_3
    const-string p1, "hme-video"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StartCapture input rawType is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  modle: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not supported"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    nop

    .line 601
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 371
    return v2

    .line 375
    :cond_4
    move v5, v3

    :goto_0
    :try_start_3
    const-string v6, "hme-video"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StartCapture: suport format num:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 380
    const-string v8, "hme-video"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StartCapture: suport format:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p4, :cond_5

    .line 383
    nop

    .line 385
    move v6, v1

    :cond_5
    goto :goto_1

    .line 387
    :cond_6
    nop

    .line 388
    if-nez v6, :cond_9

    .line 390
    const-string v4, "hme-video"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start capture! not support config format: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    .line 392
    nop

    .line 393
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v7, v4

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 396
    const-string v8, "hme-video"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StartCapture: suport format:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_7

    .line 399
    nop

    .line 402
    move v6, v1

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 403
    goto :goto_2

    .line 405
    :cond_8
    if-nez v6, :cond_a

    .line 407
    const-string v0, "hme-video"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start capture! not support default format: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    nop

    .line 413
    move v4, v7

    goto :goto_3

    :cond_9
    move v4, p4

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    if-nez v0, :cond_b

    .line 415
    const-string p1, "hme-video"

    const-string p2, "null == currentCapability in StartCapture!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    nop

    .line 601
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 416
    return v2

    .line 419
    :cond_b
    :try_start_4
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput p1, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 420
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput p2, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 421
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput p3, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 423
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 425
    if-nez v0, :cond_c

    .line 427
    const-string p1, "hme-video"

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, "start capture! null == parameters!"

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 428
    nop

    .line 601
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 428
    return v2

    .line 432
    :cond_c
    :try_start_5
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v6, v6, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    iget-object v7, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v7, v7, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    invoke-virtual {v0, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 434
    const-string v6, "hme-video"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StartCapture: current format:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v4, v6}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 438
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v6, v6, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    if-ne v6, v2, :cond_d

    .line 440
    const-string v6, "hme-video"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "start capture! not support format:%d"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v4, 0x11

    .line 446
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v4, v6}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 449
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v6, v6, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    if-ne v6, v2, :cond_d

    .line 451
    const-string p1, "hme-video"

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p3, "start capture! not support format:NV21"

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 452
    nop

    .line 601
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 452
    return v2

    .line 456
    :cond_d
    :try_start_6
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 459
    const-string v6, "hme-video"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StartCapture! PIXEL_FORMAT:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Config PicFormat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "current PicFormat:"

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " pixelFormat.bitsPerPixel:"

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget p4, p4, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v6, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 469
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 470
    if-nez v6, :cond_e

    .line 472
    nop

    .line 601
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 472
    return v2

    .line 474
    :cond_e
    :try_start_7
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 476
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne p3, v6, :cond_f

    .line 478
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 479
    goto :goto_5

    .line 498
    :cond_f
    goto :goto_4

    .line 500
    :cond_10
    :goto_5
    const-string v2, "hme-video"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iLocalConfigFrame:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", InputFrameFps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 505
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x8

    if-le p3, p4, :cond_12

    .line 508
    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 515
    invoke-virtual {v0, p3}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 516
    const-string v2, "hme-video"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minFps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, p3, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " maxFps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p3, v1

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " model:"

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    nop

    .line 519
    sget-object p3, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v2, "XT910"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_11

    sget-object p3, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v2, "XT928"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 521
    :cond_11
    const/16 p3, 0x1388

    const/16 v2, 0x4e20

    invoke-virtual {v0, p3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 528
    :cond_12
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt p3, v2, :cond_16

    sget-object p3, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v2, "Full Android on exynos4412"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_16

    .line 530
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p3

    .line 532
    const-string v2, "continuous-picture"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_15

    .line 534
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p3

    .line 535
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    const-string v6, "hme-video"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "focesMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v6, "continuous-picture"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 540
    const-string p3, "hme-video"

    const-string v2, "Support continuous-picture mode!"

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string p3, "continuous-picture"

    invoke-virtual {v0, p3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 542
    goto :goto_7

    .line 544
    :cond_13
    goto :goto_6

    .line 545
    :cond_14
    :goto_7
    goto :goto_8

    .line 548
    :cond_15
    const-string p3, "hme-video"

    const-string v2, "Default mode is continuous-picture!"

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_16
    :goto_8
    sget-object p3, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v2, "M310"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 557
    if-eqz v5, :cond_17

    .line 559
    const-string p3, "camera_support_stream"

    invoke-virtual {v0, p3, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 560
    const-string p3, "hme-video"

    const-string v1, "#single_box# StartCapture: M310 enalbe double stream!!"

    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 567
    :cond_17
    const-string p3, "camera_support_stream"

    invoke-virtual {v0, p3, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 568
    const-string p3, "hme-video"

    const-string v1, "#single_box# StartCapture: M310 disalbe 2 streams, only YUV preview stream!!"

    invoke-static {p3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_18
    :goto_9
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 575
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->getLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object p3

    iput-object p3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 576
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz p3, :cond_19

    .line 578
    iget-object p3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {p3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_a

    .line 583
    :cond_19
    const-string p3, "hme-video"

    const-string v0, "localPreview null!!"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_a
    mul-int/2addr p1, p2

    iget-object p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget p2, p2, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr p1, p2

    div-int/2addr p1, p4

    .line 589
    iput-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 590
    iput p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 592
    iput v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 601
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 602
    nop

    .line 604
    return v3

    .line 601
    :catchall_0
    move-exception p1

    goto :goto_b

    .line 594
    :catch_0
    move-exception p1

    .line 596
    :try_start_8
    const-string p2, "hme-video"

    const-string p3, "Failed to start camera"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string p2, "hme-video"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Message"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 599
    const/4 p1, -0x2

    .line 601
    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 599
    return p1

    .line 601
    :goto_b
    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public stopCapture()I
    .locals 5

    .line 609
    sget-boolean v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 610
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter java StopCapture! isRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 618
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 619
    iput-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 621
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-le v0, v3, :cond_1

    .line 623
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 630
    :goto_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :cond_2
    goto :goto_1

    .line 635
    :catch_0
    move-exception v0

    .line 637
    :try_start_2
    const-string v0, "hme-video"

    const-string v1, "Failed to stop camera"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 638
    nop

    .line 667
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 638
    return v2

    .line 644
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    .line 647
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera==null or camera flag not true in StopCapture! flag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 648
    nop

    .line 667
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 648
    return v2

    .line 655
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_5

    .line 657
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 663
    :cond_5
    nop

    .line 667
    :goto_1
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 668
    nop

    .line 669
    const-string v0, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leave java StopCapture! isRunning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return v1

    .line 659
    :catch_1
    move-exception v0

    .line 661
    :try_start_5
    const-string v0, "hme-video"

    const-string v1, "Failed to removeCallback!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 662
    nop

    .line 667
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 662
    return v2

    .line 667
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 730
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 732
    :try_start_0
    const-string p1, "hme-video"

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

    .line 734
    const-string p1, "hme-video"

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

    .line 738
    iget-boolean p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    if-eqz p1, :cond_1

    .line 740
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    .line 743
    iget-boolean p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-nez p1, :cond_2

    .line 745
    const-string p1, "hme-video"

    const-string p2, "before start preview in surfaceChanged!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 747
    const-string p1, "hme-video"

    const-string p2, "after  start preview in surfaceChanged!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 749
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    goto :goto_0

    .line 754
    :cond_0
    const-string p1, "hme-video"

    const-string p2, "capture has destory in surfaceChanged!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 759
    :cond_1
    const-string p1, "hme-video"

    const-string p2, "capture system had destroy in surfaceChanged!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    :cond_2
    :goto_0
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 773
    nop

    .line 779
    return-void

    .line 772
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 763
    :catch_0
    move-exception p1

    .line 765
    :try_start_1
    const-string p2, "hme-video"

    const-string p3, "startPreview Failed in surfaceChanged!"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string p2, "hme-video"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Message"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 768
    return-void

    .line 772
    :goto_1
    sget-object p2, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 879
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 882
    :try_start_0
    const-string v0, "hme-video"

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

    .line 883
    const-string v0, "hme-video"

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

    .line 885
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSystemRunFlag:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    if-nez v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 890
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-eqz v0, :cond_0

    .line 892
    const-string v0, "hme-video"

    const-string v1, "before stop preview"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 895
    const-string v0, "hme-video"

    const-string v1, "before set preview buf null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 898
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->setPreviewCallback()V

    .line 899
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 904
    :cond_1
    iget-boolean p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    if-eqz p1, :cond_2

    .line 906
    const-string p1, "hme-video"

    const-string v0, "now is starting preview, can\'t repeat start preview!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 910
    :cond_2
    const-string p1, "hme-video"

    const-string v0, "camera has destory in surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :cond_3
    :goto_0
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 923
    nop

    .line 934
    return-void

    .line 922
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 914
    :catch_0
    move-exception p1

    .line 917
    :try_start_1
    const-string v0, "hme-video"

    const-string v1, "Exception in surfaceCreated()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    sget-object p1, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 919
    return-void

    .line 922
    :goto_1
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->captureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 937
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed! surface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " holder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void
.end method
