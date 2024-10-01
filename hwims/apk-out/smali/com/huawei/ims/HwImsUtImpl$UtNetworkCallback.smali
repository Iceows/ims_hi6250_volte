.class Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UtNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0

    .line 5694
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p2, "x1"    # Lcom/huawei/ims/HwImsUtImpl$1;

    .line 5694
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 5697
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UtNetworkCallback got Network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 5699
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$2800(Lcom/huawei/ims/HwImsUtImpl;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsUtImpl;->access$2700(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5702
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v1, "UtNetworkCallback bindProcessToNetwork"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 5703
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5704
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 5705
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v2, "null == ConnectivityManager"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$600(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 5706
    return-void

    .line 5708
    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 5711
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->access$2902(Lcom/huawei/ims/HwImsUtImpl;Z)Z

    .line 5714
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$1100(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v0, v1, :cond_3

    .line 5716
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const-string v1, "handle UT data connection UT connected"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 5717
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$1102(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5718
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$3000(Lcom/huawei/ims/HwImsUtImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5719
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$1800(Lcom/huawei/ims/HwImsUtImpl;)V

    goto :goto_0

    .line 5721
    :cond_2
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$3100(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 5723
    :goto_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$3200(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 5725
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$400(Lcom/huawei/ims/HwImsUtImpl;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5726
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$400(Lcom/huawei/ims/HwImsUtImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5727
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsUtImpl;->access$400(Lcom/huawei/ims/HwImsUtImpl;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5732
    .end local v0    # "message":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 5736
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UtNetworkCallback lost Network:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 5738
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->access$1300(Lcom/huawei/ims/HwImsUtImpl;)V

    .line 5740
    return-void
.end method
