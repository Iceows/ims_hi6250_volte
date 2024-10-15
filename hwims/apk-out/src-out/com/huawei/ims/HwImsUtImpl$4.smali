.class Lcom/huawei/ims/HwImsUtImpl$4;
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
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 2108
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$4;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsUT Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2112
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2114
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$4;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v2, Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;-><init>(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Looper;)V

    # setter for: Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$2402(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2115
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$4;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 2116
    return-void
.end method
