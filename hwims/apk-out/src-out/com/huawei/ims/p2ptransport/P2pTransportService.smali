.class public Lcom/huawei/ims/p2ptransport/P2pTransportService;
.super Landroid/app/Service;
.source "P2pTransportService.java"


# static fields
.field private static final PERMISSION_P2P_TRANSPORT_SERVICE_FOR_CALL:Ljava/lang/String; = "com.huawei.ims.permission.P2P_TRANSPORT_SERVICE_FOR_CALL"

.field private static final TAG:Ljava/lang/String; = "P2pTransportService"


# instance fields
.field private final mBinder:Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;

.field private mP2pTransportManager:Lcom/huawei/ims/p2ptransport/P2pTransportManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lcom/huawei/ims/p2ptransport/P2pTransportService$1;

    invoke-direct {v0, p0}, Lcom/huawei/ims/p2ptransport/P2pTransportService$1;-><init>(Lcom/huawei/ims/p2ptransport/P2pTransportService;)V

    iput-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportService;->mBinder:Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/p2ptransport/P2pTransportService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/p2ptransport/P2pTransportService;

    .line 21
    invoke-direct {p0}, Lcom/huawei/ims/p2ptransport/P2pTransportService;->checkPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/p2ptransport/P2pTransportService;)Lcom/huawei/ims/p2ptransport/P2pTransportManager;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/p2ptransport/P2pTransportService;

    .line 21
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportService;->mP2pTransportManager:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    return-object v0
.end method

.method private checkPermission()Z
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportService;->mP2pTransportManager:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    if-nez v0, :cond_6

    .line 63
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_6
    const-string v1, "com.huawei.ims.permission.P2P_TRANSPORT_SERVICE_FOR_CALL"

    invoke-virtual {v0, p0, v1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportService;->mBinder:Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    invoke-static {}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->getInstance()Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportService;->mP2pTransportManager:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    .line 45
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 54
    const-string v0, "P2pTransportService"

    const-string v1, "Unbind service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportService;->mP2pTransportManager:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    if-eqz v0, :cond_e

    .line 56
    invoke-virtual {v0}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->deInit()V

    .line 58
    :cond_e
    const/4 v0, 0x1

    return v0
.end method
