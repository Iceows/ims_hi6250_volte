.class Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;
.super Ljava/lang/Thread;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CameraThread"
.end annotation


# instance fields
.field public camera:Landroid/hardware/Camera;

.field index:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 941
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 939
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->index:I

    .line 940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    .line 942
    iput p1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->index:I

    .line 943
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 948
    :try_start_0
    iget v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->index:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 953
    goto :goto_24

    .line 950
    :catch_9
    move-exception v0

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_24
    return-void
.end method
