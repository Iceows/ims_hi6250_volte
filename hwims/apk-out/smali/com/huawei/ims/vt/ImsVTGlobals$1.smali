.class Lcom/huawei/ims/vt/ImsVTGlobals$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsVTGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVTGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 216
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ImsVTGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v1, "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    const-string v1, "ImsVTGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent.getAction is ACTION_BOOT_COMPLETED,mIsSdkInited = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->access$100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->imsProcBootCompleted()V

    .line 229
    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    const-string v1, "ImsVTGlobals"

    const-string v2, "create HME log folder when receive BootCompleted broadcast"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogFolder()V

    .line 233
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/huawei/ims/vt/ImsVTGlobals;->access$202(Z)Z

    goto :goto_1

    .line 235
    :cond_2
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    const-string v1, "ImsVTGlobals"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent.getAction is ACTION_SHUTDOWN,mIsSdkInited = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->access$100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVTSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 238
    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->deInit()V

    goto :goto_1

    .line 223
    :cond_3
    :goto_0
    invoke-static {}, Lcom/huawei/ims/vt/ImsVTGlobals;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/ims/vt/VTUtils;->isImsSwitchOn(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/vt/ImsVTGlobals;->reInitVtSdk(Z)V

    .line 242
    :cond_4
    :goto_1
    return-void
.end method
