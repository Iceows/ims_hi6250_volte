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
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 179
    const-string v0, "hme_engine_java"

    const-string v1, "#step# CameraDevice onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$900(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$900(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 182
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$900(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 183
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$902(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 187
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$702(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 188
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    .line 192
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#step#cameraDevice onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 194
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$702(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 195
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 168
    const-string v0, "hme_engine_java"

    const-string v1, "#step#CameraDevice onOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$702(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 170
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$800(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 171
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$900(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$2;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$900(Lcom/huawei/videoengine/VideoCapture2Android;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 175
    :cond_0
    return-void
.end method
