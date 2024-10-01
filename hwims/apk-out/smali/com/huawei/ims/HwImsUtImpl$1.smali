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
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 690
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 693
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$100(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v1, "apn db changed,query xcap apn."

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$1;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$300(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 697
    :cond_0
    return-void
.end method
