.class public Lcom/huawei/ims/HemihuaLoaderService;
.super Landroid/app/Service;
.source "HemihuaLoaderService.java"


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "package"

.field private static final SERVICE_ACTION_NAME:Ljava/lang/String; = ".UIService"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.cmcc.hemihua.server.UIService"

.field private static final TAG:Ljava/lang/String; = "HemihuaLoaderService"

.field private static isHemihuaBind:Z


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/ims/HemihuaLoaderService;->isHemihuaBind:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Lcom/huawei/ims/HemihuaLoaderService$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HemihuaLoaderService$1;-><init>(Lcom/huawei/ims/HemihuaLoaderService;)V

    iput-object v0, p0, Lcom/huawei/ims/HemihuaLoaderService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance v0, Lcom/huawei/ims/HemihuaLoaderService$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HemihuaLoaderService$2;-><init>(Lcom/huawei/ims/HemihuaLoaderService;)V

    iput-object v0, p0, Lcom/huawei/ims/HemihuaLoaderService;->mConnection:Landroid/content/ServiceConnection;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/HemihuaLoaderService;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HemihuaLoaderService;

    .line 24
    invoke-direct {p0}, Lcom/huawei/ims/HemihuaLoaderService;->startHemihuaService()V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/ims/HemihuaLoaderService;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HemihuaLoaderService;

    .line 24
    invoke-direct {p0}, Lcom/huawei/ims/HemihuaLoaderService;->closeEncryptSwitch()V

    return-void
.end method

.method private closeEncryptSwitch()V
    .registers 3

    .line 141
    invoke-static {p0}, Lcom/huawei/ims/HemihuaLoaderManager;->getInstance(Landroid/content/Context;)Lcom/huawei/ims/HemihuaLoaderManager;

    move-result-object v0

    .line 142
    .local v0, "manager":Lcom/huawei/ims/HemihuaLoaderManager;
    if-eqz v0, :cond_a

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/huawei/ims/HemihuaLoaderManager;->handleEncryptSwitchChanged(Landroid/content/Context;Z)V

    .line 145
    :cond_a
    return-void
.end method

.method private startHemihuaService()V
    .registers 7

    .line 116
    const-string v0, "HemihuaLoaderService"

    const-string v1, "startHemihuaErvice..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p0}, Lcom/huawei/ims/HemihuaLoaderManager;->getInstance(Landroid/content/Context;)Lcom/huawei/ims/HemihuaLoaderManager;

    move-result-object v1

    .line 118
    .local v1, "manager":Lcom/huawei/ims/HemihuaLoaderManager;
    if-eqz v1, :cond_4b

    invoke-virtual {v1, p0}, Lcom/huawei/ims/HemihuaLoaderManager;->isHemihuaAppExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 119
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    .line 121
    invoke-static {}, Lcom/huawei/ims/HemihuaLoaderManager;->getHemihuaPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.cmcc.hemihua.server.UIService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    const-string v4, ".UIService"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v4, p0, Lcom/huawei/ims/HemihuaLoaderService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v4, v5}, Lcom/huawei/ims/HemihuaLoaderService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    sput-boolean v4, Lcom/huawei/ims/HemihuaLoaderService;->isHemihuaBind:Z

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindservice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/huawei/ims/HemihuaLoaderService;->isHemihuaBind:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    goto :goto_53

    .line 127
    :cond_4b
    const-string v2, "close volte encrypt switch when expected app is not installed."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/huawei/ims/HemihuaLoaderService;->closeEncryptSwitch()V

    .line 130
    :goto_53
    return-void
.end method

.method private unbindHemihuaService()V
    .registers 3

    .line 133
    sget-boolean v0, Lcom/huawei/ims/HemihuaLoaderService;->isHemihuaBind:Z

    if-eqz v0, :cond_13

    .line 134
    iget-object v0, p0, Lcom/huawei/ims/HemihuaLoaderService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HemihuaLoaderService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 135
    const-string v0, "HemihuaLoaderService"

    const-string v1, "unbindHemihuaService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/ims/HemihuaLoaderService;->isHemihuaBind:Z

    .line 138
    :cond_13
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .line 80
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    const-string v0, "HemihuaLoaderService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/huawei/ims/HemihuaLoaderService;->startHemihuaService()V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "appFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/huawei/ims/HemihuaLoaderService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HemihuaLoaderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 97
    const-string v0, "HemihuaLoaderService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/huawei/ims/HemihuaLoaderService;->unbindHemihuaService()V

    .line 99
    iget-object v0, p0, Lcom/huawei/ims/HemihuaLoaderService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_14

    .line 100
    invoke-virtual {p0, v0}, Lcom/huawei/ims/HemihuaLoaderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    :cond_14
    return-void
.end method
