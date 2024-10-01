.class Lcom/huawei/ims/vt/CameraManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/vt/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/vt/CameraManager;


# direct methods
.method constructor <init>(Lcom/huawei/ims/vt/CameraManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/vt/CameraManager;

    .line 544
    iput-object p1, p0, Lcom/huawei/ims/vt/CameraManager$1;->this$0:Lcom/huawei/ims/vt/CameraManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 548
    if-nez p2, :cond_0

    .line 549
    const-string v0, "CameraManager"

    const-string v1, "onReceive, intent is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return-void

    .line 553
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "action":Ljava/lang/String;
    const-string v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v1, "com.huawei.caas.vtproxy.thinclient.PARAM_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager$1;->this$0:Lcom/huawei/ims/vt/CameraManager;

    const-string v2, "ims_sdk_res_id"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/huawei/ims/vt/CameraManager;->access$002(Lcom/huawei/ims/vt/CameraManager;I)I

    .line 557
    const-string v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params ready broadcast received, mIMSSDKResId is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/ims/vt/CameraManager$1;->this$0:Lcom/huawei/ims/vt/CameraManager;

    invoke-static {v3}, Lcom/huawei/ims/vt/CameraManager;->access$000(Lcom/huawei/ims/vt/CameraManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->access$100()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager$1;->this$0:Lcom/huawei/ims/vt/CameraManager;

    invoke-static {v2}, Lcom/huawei/ims/vt/CameraManager;->access$000(Lcom/huawei/ims/vt/CameraManager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-static {}, Lcom/huawei/ims/vt/CameraManager;->access$100()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager$1;->this$0:Lcom/huawei/ims/vt/CameraManager;

    invoke-static {v2}, Lcom/huawei/ims/vt/CameraManager;->access$200(Lcom/huawei/ims/vt/CameraManager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/ims/vt/CameraManager$1;->this$0:Lcom/huawei/ims/vt/CameraManager;

    invoke-static {v1}, Lcom/huawei/ims/vt/CameraManager;->access$300(Lcom/huawei/ims/vt/CameraManager;)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 560
    invoke-static {}, Lcom/huawei/ims/vt/MediaManager;->getInstance()Lcom/huawei/ims/vt/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/vt/MediaManager;->setDisplaySurface()Z

    move-result v1

    .line 561
    .local v1, "setSuccess":Z
    if-eqz v1, :cond_1

    .line 562
    iget-object v2, p0, Lcom/huawei/ims/vt/CameraManager$1;->this$0:Lcom/huawei/ims/vt/CameraManager;

    invoke-static {v2}, Lcom/huawei/ims/vt/CameraManager;->access$300(Lcom/huawei/ims/vt/CameraManager;)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 564
    .local v2, "cp":Landroid/telephony/ims/ImsCallProfile;
    iget v3, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->convertToInternalCallType(I)I

    move-result v3

    .line 565
    .local v3, "currentCallType":I
    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->isVideoCall(I)Z

    move-result v4

    .line 566
    .local v4, "isVideoCallType":Z
    if-eqz v4, :cond_1

    .line 567
    iget-object v5, p0, Lcom/huawei/ims/vt/CameraManager$1;->this$0:Lcom/huawei/ims/vt/CameraManager;

    invoke-static {v5, v3}, Lcom/huawei/ims/vt/CameraManager;->access$400(Lcom/huawei/ims/vt/CameraManager;I)V

    .line 572
    .end local v1    # "setSuccess":Z
    .end local v2    # "cp":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "currentCallType":I
    .end local v4    # "isVideoCallType":Z
    :cond_1
    return-void
.end method
