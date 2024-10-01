.class Lcom/huawei/ims/HwImsUtImpl$UTData;
.super Ljava/lang/Object;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTData"
.end annotation


# instance fields
.field mStatus:I

.field mUtOpType:I

.field mUtType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "utType"    # I
    .param p2, "utOpType"    # I
    .param p3, "status"    # I

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput p1, p0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    .line 536
    iput p2, p0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    .line 537
    iput p3, p0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    .line 538
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUtType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUtOpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mUtOpType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl$UTData;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
