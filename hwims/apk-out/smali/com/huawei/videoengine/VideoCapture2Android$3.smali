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
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 223
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1200(Lcom/huawei/videoengine/VideoCapture2Android;)V

    .line 241
    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    invoke-static {v0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1100(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;)V

    .line 238
    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1000(Lcom/huawei/videoengine/VideoCapture2Android;Landroid/view/Surface;II)V

    .line 235
    goto :goto_0

    .line 230
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$302(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 231
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$3;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$502(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 232
    goto :goto_0

    .line 226
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;

    .line 227
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

    .line 228
    nop

    .line 245
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
