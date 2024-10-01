.class Lcom/huawei/ims/HwImsUtImpl$2;
.super Ljava/lang/Object;
.source "HwImsUtImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/HwImsUtImpl;->startUtServiceThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 1568
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1570
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsUT Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1572
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1574
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v2, Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;-><init>(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Looper;)V

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$402(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1576
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$2;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(I)Z

    .line 1577
    return-void
.end method
