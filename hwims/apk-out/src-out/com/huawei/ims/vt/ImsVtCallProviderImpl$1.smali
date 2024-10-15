.class Lcom/huawei/ims/vt/ImsVtCallProviderImpl$1;
.super Landroid/os/Handler;
.source "ImsVtCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/vt/ImsVtCallProviderImpl;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/ImsVtCallProviderImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    .line 83
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl$1;->this$0:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVtCallProviderImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_33

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 89
    :cond_33
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVtCallProviderImpl$1;->this$0:Lcom/huawei/ims/vt/ImsVtCallProviderImpl;

    # invokes: Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->handleSessionModifyRequestDone(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/huawei/ims/vt/ImsVtCallProviderImpl;->access$000(Lcom/huawei/ims/vt/ImsVtCallProviderImpl;Landroid/os/Message;)V

    .line 90
    nop

    .line 95
    :goto_39
    return-void
.end method
