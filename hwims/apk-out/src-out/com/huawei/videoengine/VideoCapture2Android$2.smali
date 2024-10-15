.class Lcom/huawei/videoengine/VideoCapture2Android$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCapture2Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/VideoCapture2Android;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/VideoCapture2Android;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    .line 183
    const-string v0, "hme_engine_java"

    const-string v1, "#step# CameraDevice onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1000(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 185
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1000(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 186
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1000(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 187
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;
    invoke-static {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1002(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 190
    :cond_27
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 191
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {p1, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$802(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 192
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#step#cameraDevice onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "hme_engine_java"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 198
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 p2, 0x0

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {p1, p2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$802(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 199
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 5

    .line 172
    const-string v0, "hme_engine_java"

    const-string v1, "#step#CameraDevice onOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$802(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 174
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$900(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 175
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1000(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 176
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMediaCodec:Landroid/media/MediaCodec;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1000(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 179
    :cond_27
    return-void
.end method
