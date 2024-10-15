.class Lcom/huawei/ims/HemihuaLoaderService$2;
.super Ljava/lang/Object;
.source "HemihuaLoaderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 56
    iput-object p1, p0, Lcom/huawei/ims/HemihuaLoaderService$2;->this$0:Lcom/huawei/ims/HemihuaLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 59
    const-string v0, "HemihuaLoaderService"

    const-string v1, "Hemihua-connected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 64
    const-string v0, "HemihuaLoaderService"

    const-string v1, "Hemihua-disconnected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/huawei/ims/HemihuaLoaderService$2;->this$0:Lcom/huawei/ims/HemihuaLoaderService;

    # invokes: Lcom/huawei/ims/HemihuaLoaderService;->startHemihuaService()V
    invoke-static {v0}, Lcom/huawei/ims/HemihuaLoaderService;->access$000(Lcom/huawei/ims/HemihuaLoaderService;)V

    .line 66
    return-void
.end method
