.class Lcom/huawei/ims/HwImsUtImpl$4;
.super Ljava/lang/Object;
.source "HwImsUtImpl.java"

# interfaces
.implements Lcom/huawei/sci/SciSSConfCb$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsUtImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsUtImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 4689
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$4;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sciBsfCbPostResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rand"    # Ljava/lang/String;
    .param p2, "autn"    # Ljava/lang/String;

    .line 4707
    return-void
.end method

.method public sciSSConfCbPostResult(III)V
    .locals 3
    .param p1, "ssType"    # I
    .param p2, "opType"    # I
    .param p3, "status"    # I

    .line 4692
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$4;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sciSSConfCbPostResult ssType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", opType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 4694
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UTData;

    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/ims/HwImsUtImpl$UTData;-><init>(III)V

    .line 4697
    .local v0, "ut":Lcom/huawei/ims/HwImsUtImpl$UTData;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$4;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsUtImpl;->access$2500(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/GbaAuth;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4698
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$4;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsUtImpl;->access$2500(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/GbaAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->clearAuthCounts()V

    .line 4701
    :cond_0
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$4;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUTMessage(ILjava/lang/Object;)Z

    .line 4702
    return-void
.end method
