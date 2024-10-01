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
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsConfigImpl;

    .line 2758
    iput-object p1, p0, Lcom/huawei/ims/HwImsConfigImpl$2;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2761
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$2;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->access$000(Lcom/huawei/ims/HwImsConfigImpl;Ljava/lang/String;)V

    .line 2762
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$2;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-static {p2}, Lcom/hisi/mapcon/IMapconService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->access$102(Lcom/huawei/ims/HwImsConfigImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;

    .line 2763
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 2767
    iget-object v0, p0, Lcom/huawei/ims/HwImsConfigImpl$2;->this$0:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->access$102(Lcom/huawei/ims/HwImsConfigImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;

    .line 2768
    return-void
.end method
