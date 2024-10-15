.class Lcom/huawei/ims/VolteEncryptCallCmdService$MyHandler;
.super Landroid/os/Handler;
.source "VolteEncryptCallCmdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/VolteEncryptCallCmdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/VolteEncryptCallCmdService;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/VolteEncryptCallCmdService;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/huawei/ims/VolteEncryptCallCmdService$MyHandler;->this$0:Lcom/huawei/ims/VolteEncryptCallCmdService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/VolteEncryptCallCmdService;Lcom/huawei/ims/VolteEncryptCallCmdService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/huawei/ims/VolteEncryptCallCmdService;
    .param p2, "x1"    # Lcom/huawei/ims/VolteEncryptCallCmdService$1;

    .line 111
    invoke-direct {p0, p1}, Lcom/huawei/ims/VolteEncryptCallCmdService$MyHandler;-><init>(Lcom/huawei/ims/VolteEncryptCallCmdService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_23

    const/16 v1, 0x65

    if-eq v0, v1, :cond_b

    goto :goto_2b

    .line 119
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_2b

    .line 120
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 121
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_22

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_22

    .line 122
    const-string v1, "VolteEncryptCallCmdService"

    const-string v2, "SET FLAG ERROR!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_22
    goto :goto_2b

    .line 116
    :cond_23
    iget-object v0, p0, Lcom/huawei/ims/VolteEncryptCallCmdService$MyHandler;->this$0:Lcom/huawei/ims/VolteEncryptCallCmdService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/huawei/ims/VolteEncryptCallCmdService;->onSetDeviceValidFlag(I)V
    invoke-static {v0, v1}, Lcom/huawei/ims/VolteEncryptCallCmdService;->access$300(Lcom/huawei/ims/VolteEncryptCallCmdService;I)V

    .line 117
    nop

    .line 129
    :cond_2b
    :goto_2b
    return-void
.end method
