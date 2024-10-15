.class final Lcom/huawei/sci/SciSys$1;
.super Landroid/os/Handler;
.source "SciSys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 210
    const-string v0, "SCI"

    if-nez p1, :cond_a

    .line 211
    const-string v1, "SDK_HANDLER msg is null"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void

    .line 215
    :cond_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_14

    .line 216
    const-string v1, "SDK_HANDLER msg.obj is null"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void

    .line 220
    :cond_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    # invokes: Lcom/huawei/sci/SciSys;->driveSdk(J)I
    invoke-static {v0, v1}, Lcom/huawei/sci/SciSys;->access$000(J)I

    .line 221
    return-void
.end method
