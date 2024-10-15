.class Lcom/huawei/ims/HwImsServiceImpl$3;
.super Ljava/lang/Object;
.source "HwImsServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/HwImsServiceImpl;->bindMapconService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsServiceImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 2789
    iput-object p1, p0, Lcom/huawei/ims/HwImsServiceImpl$3;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2792
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$3;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {p2}, Lcom/hisi/mapcon/IMapconService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconService;

    move-result-object v1

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1002(Lcom/huawei/ims/HwImsServiceImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;

    .line 2793
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 2797
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$3;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const/4 v1, 0x0

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1002(Lcom/huawei/ims/HwImsServiceImpl;Lcom/hisi/mapcon/IMapconService;)Lcom/hisi/mapcon/IMapconService;

    .line 2798
    return-void
.end method
