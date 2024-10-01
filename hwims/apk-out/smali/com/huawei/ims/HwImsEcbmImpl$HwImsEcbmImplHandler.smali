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
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;->this$0:Lcom/huawei/ims/HwImsEcbmImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/HwImsEcbmImpl;Lcom/huawei/ims/HwImsEcbmImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/ims/HwImsEcbmImpl;
    .param p2, "x1"    # Lcom/huawei/ims/HwImsEcbmImpl$1;

    .line 86
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;-><init>(Lcom/huawei/ims/HwImsEcbmImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 89
    const-string v0, "HwImsEcbmImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    const-string v0, "HwImsEcbmImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :pswitch_0
    const-string v0, "HwImsEcbmImpl"

    const-string v1, "EVENT_EXIT_EMERGENCY_CALLBACK_MODE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;->this$0:Lcom/huawei/ims/HwImsEcbmImpl;

    iget-object v1, p0, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;->this$0:Lcom/huawei/ims/HwImsEcbmImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsEcbmImpl;->access$100(Lcom/huawei/ims/HwImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/huawei/ims/HwImsEcbmImpl;->access$200(Lcom/huawei/ims/HwImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V

    .line 99
    goto :goto_0

    .line 93
    :pswitch_1
    const-string v0, "HwImsEcbmImpl"

    const-string v1, "EVENT_ENTER_EMERGENCY_CALLBACK_MODE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;->this$0:Lcom/huawei/ims/HwImsEcbmImpl;

    iget-object v1, p0, Lcom/huawei/ims/HwImsEcbmImpl$HwImsEcbmImplHandler;->this$0:Lcom/huawei/ims/HwImsEcbmImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsEcbmImpl;->access$100(Lcom/huawei/ims/HwImsEcbmImpl;)Lcom/android/ims/internal/IImsEcbmListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/huawei/ims/HwImsEcbmImpl;->access$200(Lcom/huawei/ims/HwImsEcbmImpl;Lcom/android/ims/internal/IImsEcbmListener;Z)V

    .line 95
    nop

    .line 104
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
