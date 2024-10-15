.class Lcom/huawei/ims/vt/CameraManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/CameraManager;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/CameraManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/vt/CameraManager;

    .line 176
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager$1;->this$0:Lcom/huawei/ims/vt/CameraManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 179
    const-string v0, "CameraManager"

    if-nez p2, :cond_a

    .line 180
    const-string v1, "onReceive, intent is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 183
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v0, "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 186
    iget-object v0, p0, Lcom/huawei/ims/vt/CameraManager$1;->this$0:Lcom/huawei/ims/vt/CameraManager;

    # invokes: Lcom/huawei/ims/vt/CameraManager;->processCaasEventParamReadyIntent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/huawei/ims/vt/CameraManager;->access$000(Lcom/huawei/ims/vt/CameraManager;Landroid/content/Intent;)V

    .line 188
    :cond_2f
    return-void
.end method
