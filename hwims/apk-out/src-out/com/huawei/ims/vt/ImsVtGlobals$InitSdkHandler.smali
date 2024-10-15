.class Lcom/huawei/ims/vt/ImsVtGlobals$InitSdkHandler;
.super Landroid/os/Handler;
.source "ImsVtGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVtGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitSdkHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 506
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 507
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtGlobals"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1e

    goto :goto_27

    .line 514
    :cond_1e
    const-string v0, "Received event: EVENT_RETRY_TO_INIT_SDK"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-static {v2}, Lcom/huawei/ims/vt/ImsVtGlobals;->reInitVtSdk(Z)V

    .line 516
    nop

    .line 520
    :goto_27
    return-void
.end method
