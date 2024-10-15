.class Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;
.super Landroid/os/Handler;
.source "HwImsEcbmImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsEcbmImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HwImsEcbmImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsEcbmImpl;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/HwImsEcbmImpl;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;->this$0:Lcom/huawei/ims/HwImsEcbmImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/HwImsEcbmImpl;Lcom/huawei/ims/HwImsEcbmImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/huawei/ims/HwImsEcbmImpl;
    .param p2, "x1"    # Lcom/huawei/ims/HwImsEcbmImpl$1;

    .line 103
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;-><init>(Lcom/huawei/ims/HwImsEcbmImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsEcbmImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_47

    const/4 v2, 0x2

    if-eq v0, v2, :cond_37

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 114
    :cond_37
    const-string v0, "EVENT_EXIT_EMERGENCY_CALLBACK_MODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;->this$0:Lcom/huawei/ims/HwImsEcbmImpl;

    # getter for: Lcom/huawei/ims/HwImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;
    invoke-static {v0}, Lcom/huawei/ims/HwImsEcbmImpl;->access$100(Lcom/huawei/ims/HwImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/huawei/ims/HwImsEcbmImpl;->createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V
    invoke-static {v0, v1, v2}, Lcom/huawei/ims/HwImsEcbmImpl;->access$200(Lcom/huawei/ims/HwImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V

    .line 116
    goto :goto_56

    .line 110
    :cond_47
    const-string v0, "EVENT_ENTER_EMERGENCY_CALLBACK_MODE"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;->this$0:Lcom/huawei/ims/HwImsEcbmImpl;

    # getter for: Lcom/huawei/ims/HwImsEcbmImpl;->mListener:Lcom/android/ims/internal/IImsEcbmListener;
    invoke-static {v0}, Lcom/huawei/ims/HwImsEcbmImpl;->access$100(Lcom/huawei/ims/HwImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v1

    # invokes: Lcom/huawei/ims/HwImsEcbmImpl;->createEcbmCallBackThread(Lcom/android/ims/internal/IImsEcbmListener;Z)V
    invoke-static {v0, v1, v2}, Lcom/huawei/ims/HwImsEcbmImpl;->access$200(Lcom/huawei/ims/HwImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V

    .line 112
    nop

    .line 121
    :goto_56
    return-void
.end method
