.class Lcom/huawei/ims/MtStatusManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MtStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/MtStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/MtStatusManager;


# direct methods
.method constructor <init>(Lcom/huawei/ims/MtStatusManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/MtStatusManager;

    .line 186
    iput-object p1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "action":Ljava/lang/String;
    if-nez p2, :cond_b

    .line 191
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    const-string v2, "intent null"

    # invokes: Lcom/huawei/ims/MtStatusManager;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/MtStatusManager;->access$000(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V

    .line 192
    return-void

    .line 194
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/MtStatusManager;->access$100(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V

    .line 196
    const-string v1, "com.android.internal.telephony.mt.monitor.timeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 197
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    const-string v2, "onReceive: monitor timer expires"

    # invokes: Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/MtStatusManager;->access$100(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    # invokes: Lcom/huawei/ims/MtStatusManager;->handleMonitorTimeOut()V
    invoke-static {v1}, Lcom/huawei/ims/MtStatusManager;->access$200(Lcom/huawei/ims/MtStatusManager;)V

    goto :goto_4e

    .line 199
    :cond_3a
    const-string v1, "com.android.internal.telephony.mt.reminder.timeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 200
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    const-string v2, "onReceive: reminder timer expires"

    # invokes: Lcom/huawei/ims/MtStatusManager;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/MtStatusManager;->access$100(Lcom/huawei/ims/MtStatusManager;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/huawei/ims/MtStatusManager$1;->this$0:Lcom/huawei/ims/MtStatusManager;

    # invokes: Lcom/huawei/ims/MtStatusManager;->handleReminderTimeOut()V
    invoke-static {v1}, Lcom/huawei/ims/MtStatusManager;->access$300(Lcom/huawei/ims/MtStatusManager;)V

    .line 203
    :cond_4e
    :goto_4e
    return-void
.end method
