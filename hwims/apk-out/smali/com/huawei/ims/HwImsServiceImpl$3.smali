.class Lcom/huawei/ims/HwImsServiceImpl$3;
.super Ljava/lang/Object;
.source "HwImsServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/ims/HwImsServiceImpl;->createFeatureCapabilityCallBackThread(Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsServiceImpl;

.field final synthetic val$listener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsServiceImpl;Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 1026
    iput-object p1, p0, Lcom/huawei/ims/HwImsServiceImpl$3;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iput-object p2, p0, Lcom/huawei/ims/HwImsServiceImpl$3;->val$listener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1030
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$3;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter createFeatureCapabilityCallBackThread.  mTelCapabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$3;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$3;->val$listener:Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$3;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1200(Lcom/huawei/ims/HwImsServiceImpl;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/huawei/ims/ImsServiceCallTracker$FeatureCapatilityListener;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    goto :goto_0

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$3;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " createFeatureCapabilityCallBackThread()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 1035
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
