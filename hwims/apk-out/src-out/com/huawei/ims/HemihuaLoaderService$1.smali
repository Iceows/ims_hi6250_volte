.class Lcom/huawei/ims/HemihuaLoaderService$1;
.super Landroid/content/BroadcastReceiver;
.source "HemihuaLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HemihuaLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HemihuaLoaderService;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HemihuaLoaderService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/HemihuaLoaderService;

    .line 35
    iput-object p1, p0, Lcom/huawei/ims/HemihuaLoaderService$1;->this$0:Lcom/huawei/ims/HemihuaLoaderService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 38
    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_5e

    invoke-static {}, Lcom/huawei/ims/HemihuaLoaderManager;->getHemihuaPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "HemihuaLoaderService"

    if-nez v1, :cond_54

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_54

    .line 45
    :cond_37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 46
    const-string v1, "close volte encrypt switch when package is removed."

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v1, p0, Lcom/huawei/ims/HemihuaLoaderService$1;->this$0:Lcom/huawei/ims/HemihuaLoaderService;

    # invokes: Lcom/huawei/ims/HemihuaLoaderService;->closeEncryptSwitch()V
    invoke-static {v1}, Lcom/huawei/ims/HemihuaLoaderService;->access$100(Lcom/huawei/ims/HemihuaLoaderService;)V

    goto :goto_5e

    .line 49
    :cond_4e
    const-string v1, "no used action."

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 43
    :cond_54
    :goto_54
    const-string v1, "startHemihuaService when package is added or replaced"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v1, p0, Lcom/huawei/ims/HemihuaLoaderService$1;->this$0:Lcom/huawei/ims/HemihuaLoaderService;

    # invokes: Lcom/huawei/ims/HemihuaLoaderService;->startHemihuaService()V
    invoke-static {v1}, Lcom/huawei/ims/HemihuaLoaderService;->access$000(Lcom/huawei/ims/HemihuaLoaderService;)V

    .line 53
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_5e
    :goto_5e
    return-void
.end method
