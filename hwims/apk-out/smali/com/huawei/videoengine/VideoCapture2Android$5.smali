.class Lcom/huawei/videoengine/VideoCapture2Android$5;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/VideoCapture2Android;->updatePreview()I
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

    .line 328
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$5;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method
