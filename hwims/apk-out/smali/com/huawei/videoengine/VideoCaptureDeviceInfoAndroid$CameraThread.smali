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
    .locals 1

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
    .locals 4

    .line 948
    :try_start_0
    iget v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->index:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    .line 952
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_0
    return-void
.end method
