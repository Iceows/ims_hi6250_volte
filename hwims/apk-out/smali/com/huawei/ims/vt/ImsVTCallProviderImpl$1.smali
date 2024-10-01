.class Lcom/huawei/ims/vt/ImsVTCallProviderImpl$1;
.super Landroid/os/Handler;
.source "ImsVTCallProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/vt/ImsVTCallProviderImpl;-><init>(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/ImsVTCallProviderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    .line 63
    iput-object p1, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl$1;->this$0:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 66
    const-string v0, "ImsVTCallProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "ImsVTCallProviderImpl"

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

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/vt/ImsVTCallProviderImpl$1;->this$0:Lcom/huawei/ims/vt/ImsVTCallProviderImpl;

    invoke-static {v0, p1}, Lcom/huawei/ims/vt/ImsVTCallProviderImpl;->access$000(Lcom/huawei/ims/vt/ImsVTCallProviderImpl;Landroid/os/Message;)V

    .line 70
    nop

    .line 75
    :goto_0
    return-void
.end method
