.class Lcom/huawei/ims/HwImsConfigImpl$2;
.super Ljava/lang/Object;
.source "HwImsConfigImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/HwImsConfigImpl;->bindMapconService()V
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

    .line 3544
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl$2;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 3547
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$2;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    const-string v1, "onServiceConnected"

    # invokes: Lcom/huawei/ims/HwImsConfigImpl;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->access$000(Lcom/huawei/ims/HwImsConfigImpl;Ljava/lang/String;)V

    .line 3548
    invoke-static {p2}, Lcom/hisi/mapcon/IMapconService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconService;

    move-result-object v0

    instance-of v0, v0, Lcom/hisi/mapcon/IMapconService;

    if-eqz v0, :cond_18

    .line 3549
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$2;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-static {p2}, Lcom/hisi/mapcon/IMapconService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconService;

    move-result-object v1

    # setter for: Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->access$102(Lcom/huawei/ims/HwImsConfigImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;

    .line 3551
    :cond_18
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 3555
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$2;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v1, 0x0

    # setter for: Lcom/huawei/ims/HwImsConfigImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->access$102(Lcom/huawei/ims/HwImsConfigImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;

    .line 3556
    return-void
.end method
