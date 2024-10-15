.class Lcom/huawei/ims/p2ptransport/P2pTransportService$1;
.super Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;
.source "P2pTransportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/p2ptransport/P2pTransportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/p2ptransport/P2pTransportService;


# direct methods
.method constructor <init>(Lcom/huawei/ims/p2ptransport/P2pTransportService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/p2ptransport/P2pTransportService;

    .line 29
    iput-object p1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportService$1;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportService;

    invoke-direct {p0}, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startP2pTransfer(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 32
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportService$1;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportService;

    # invokes: Lcom/huawei/ims/p2ptransport/P2pTransportService;->checkPermission()Z
    invoke-static {v0}, Lcom/huawei/ims/p2ptransport/P2pTransportService;->access$000(Lcom/huawei/ims/p2ptransport/P2pTransportService;)Z

    move-result v0

    const-string v1, "P2pTransportService"

    if-nez v0, :cond_10

    .line 33
    const-string v0, "has no permission or is not meetime app calling"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 36
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get pfd from voip service is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportService$1;->this$0:Lcom/huawei/ims/p2ptransport/P2pTransportService;

    # getter for: Lcom/huawei/ims/p2ptransport/P2pTransportService;->mP2pTransportManager:Lcom/huawei/ims/p2ptransport/P2pTransportManager;
    invoke-static {v0}, Lcom/huawei/ims/p2ptransport/P2pTransportService;->access$100(Lcom/huawei/ims/p2ptransport/P2pTransportService;)Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->init(Landroid/os/ParcelFileDescriptor;)V

    .line 38
    return-void
.end method
