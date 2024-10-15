.class Lcom/huawei/videoengine/VideoCapture2Android$3;
.super Landroid/os/Handler;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/VideoCapture2Android;->startBackgroundThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/VideoCapture2Android;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/os/Looper;)V
    .registers 3

    .line 222
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 227
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    const/4 p1, 0x4

    if-eq v0, p1, :cond_14

    goto :goto_5b

    .line 244
    :cond_14
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # invokes: Lcom/huawei/videoengine/VideoCapture2Android;->backDestroy()V
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1300(Lcom/huawei/videoengine/VideoCapture2Android;)V

    .line 245
    goto :goto_5b

    .line 241
    :cond_1a
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    # invokes: Lcom/huawei/videoengine/VideoCapture2Android;->backUpdateEncSf(Landroid/view/Surface;)V
    invoke-static {v0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1200(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;)V

    .line 242
    goto :goto_5b

    .line 238
    :cond_24
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/huawei/videoengine/VideoCapture2Android;->backUpdatePreViewSf(Landroid/view/Surface;II)V
    invoke-static {v0, v1, v2, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1100(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;II)V

    .line 239
    goto :goto_5b

    .line 234
    :cond_32
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I
    invoke-static {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$402(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 235
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget p1, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I
    invoke-static {v0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$602(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 236
    goto :goto_5b

    .line 230
    :cond_41
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;

    .line 231
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->getViewSf()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->getEncSf()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->getHeigth()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->backInitEGl(Landroid/view/Surface;Landroid/view/Surface;II)I

    .line 232
    nop

    .line 249
    :goto_5b
    return-void
.end method
