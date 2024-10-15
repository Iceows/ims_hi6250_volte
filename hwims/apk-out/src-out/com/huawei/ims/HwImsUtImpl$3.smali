.class Lcom/huawei/ims/HwImsUtImpl$3;
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
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 1191
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sciBsfCbPostResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "rand"    # Ljava/lang/String;
    .param p2, "autn"    # Ljava/lang/String;

    .line 1206
    return-void
.end method

.method public sciSSConfCbPostResult(III)V
    .registers 7
    .param p1, "ssType"    # I
    .param p2, "opType"    # I
    .param p3, "status"    # I

    .line 1194
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

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

    # invokes: Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V

    .line 1195
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtData;

    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/ims/HwImsUtImpl$UtData;-><init>(III)V

    .line 1198
    .local v0, "ut":Lcom/huawei/ims/HwImsUtImpl$UtData;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # getter for: Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;
    invoke-static {v1}, Lcom/huawei/ims/HwImsUtImpl;->access$2300(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/GbaAuth;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 1199
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    # getter for: Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;
    invoke-static {v1}, Lcom/huawei/ims/HwImsUtImpl;->access$2300(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/GbaAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->clearAuthCounts()V

    .line 1201
    :cond_3c
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$3;->this$0:Lcom/huawei/ims/HwImsUtImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 1202
    return-void
.end method
