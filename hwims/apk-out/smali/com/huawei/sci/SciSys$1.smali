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
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "SCI"

    const-string v1, "mSdkHandler msg.obj is null"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 97
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/huawei/sci/SciSys;->access$000(J)I

    .line 98
    return-void
.end method
