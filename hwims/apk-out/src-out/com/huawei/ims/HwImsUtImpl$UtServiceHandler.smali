.class Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;
.super Landroid/os/Handler;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UtServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2130
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    .line 2131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2136
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->access$2500(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Message;)V

    .line 2137
    return-void
.end method
