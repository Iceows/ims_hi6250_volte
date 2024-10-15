.class Lcom/huawei/ims/HwImsUtImpl$1;
.super Landroid/database/ContentObserver;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 1100
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "isSelfChange"    # Z

    .line 1103
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z
    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$100(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1104
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v1, "apn db changed,query xcap apn."

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->queryUtApn()V
    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$300(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 1107
    :cond_14
    return-void
.end method
