.class Lcom/huawei/ims/vt/ImsVtGlobals$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsVtGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/ImsVtGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 112
    const-string v0, "ImsVtGlobals"

    if-eqz p2, :cond_ad

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto/16 :goto_ad

    .line 116
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v2, "com.huawei.ACTION_IMS_SWITCH_STATE_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 119
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_a1

    .line 121
    :cond_35
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent.getAction is ACTION_BOOT_COMPLETED, sIsSdkInited = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->access$200()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->imsProcBootCompleted()V

    .line 124
    # getter for: Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->access$200()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 125
    const-string v2, "create HME log folder when receive BootCompleted broadcast"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogFolder()V

    .line 128
    :cond_66
    const/4 v0, 0x1

    # setter for: Lcom/huawei/ims/vt/ImsVtGlobals;->sIsBootCompleted:Z
    invoke-static {v0}, Lcom/huawei/ims/vt/ImsVtGlobals;->access$302(Z)Z

    goto :goto_ac

    .line 129
    :cond_6b
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent.getAction is ACTION_SHUTDOWN, sIsSdkInited = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->access$200()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    # getter for: Lcom/huawei/ims/vt/ImsVtGlobals;->sIsSdkInited:Z
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->access$200()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtSupported()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 132
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->deInit()V

    goto :goto_ac

    .line 135
    :cond_9b
    const-string v2, "error branch"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 120
    :cond_a1
    :goto_a1
    # getter for: Lcom/huawei/ims/vt/ImsVtGlobals;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/huawei/ims/vt/ImsVtGlobals;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/ims/vt/VtUtils;->isImsSwitchOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/huawei/ims/vt/ImsVtGlobals;->reInitVtSdk(Z)V

    .line 137
    :cond_ac
    :goto_ac
    return-void

    .line 113
    .end local v1    # "action":Ljava/lang/String;
    :cond_ad
    :goto_ad
    const-string v1, "Received Intent: intent or intent.getAction() is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method
