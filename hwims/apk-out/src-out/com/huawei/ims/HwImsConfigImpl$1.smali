.class Lcom/huawei/ims/HwImsConfigImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "HwImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsConfigImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsConfigImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsConfigImpl;

    .line 1247
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl$1;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1250
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3d

    .line 1254
    :cond_9
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$1;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBroadCastReceiver: action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->access$000(Lcom/huawei/ims/HwImsConfigImpl;Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.hisi.vowifi.started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1256
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$1;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    # getter for: Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;
    invoke-static {v0}, Lcom/huawei/ims/HwImsConfigImpl;->access$100(Lcom/huawei/ims/HwImsConfigImpl;)Lcom/hisi/mapcon/IMapconService;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 1257
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$1;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    # invokes: Lcom/huawei/ims/HwImsConfigImpl;->bindMapconService()V
    invoke-static {v0}, Lcom/huawei/ims/HwImsConfigImpl;->access$200(Lcom/huawei/ims/HwImsConfigImpl;)V

    .line 1260
    :cond_3c
    return-void

    .line 1251
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$1;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    const-string v1, "HwImsConfigImpl onReceive: intent or intent.getAction() is null"

    # invokes: Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->access$000(Lcom/huawei/ims/HwImsConfigImpl;Ljava/lang/String;)V

    .line 1252
    return-void
.end method
