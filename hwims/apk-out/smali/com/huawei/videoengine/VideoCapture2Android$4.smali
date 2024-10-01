.class Lcom/huawei/videoengine/VideoCapture2Android$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/VideoCapture2Android;->createCaptureSession()V
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

    .line 290
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 301
    const-string p1, "hme_engine_java"

    const-string v0, "#step#capture session onConfigureFailed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 294
    const-string v0, "hme_engine_java"

    const-string v1, "#step#capture session onConfigured"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1302(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 296
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$4;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$800(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->nMsgSend(IJ)V

    .line 297
    return-void
.end method

.method public onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 307
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    .line 308
    return-void
.end method
