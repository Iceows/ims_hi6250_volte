.class public Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;
.super Lcom/android/ims/IHwImsUtManager$Stub;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HwInnerImsUt"
.end annotation


# instance fields
.field private imsUtImpl:Lcom/huawei/ims/ImsUtImpl;

.field final synthetic this$0:Lcom/huawei/ims/ImsUtImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsUtImpl;Lcom/huawei/ims/ImsUtImpl;)V
    .registers 3
    .param p1, "this$0"    # Lcom/huawei/ims/ImsUtImpl;
    .param p2, "imsUt"    # Lcom/huawei/ims/ImsUtImpl;

    .line 593
    iput-object p1, p0, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->this$0:Lcom/huawei/ims/ImsUtImpl;

    invoke-direct {p0}, Lcom/android/ims/IHwImsUtManager$Stub;-><init>()V

    .line 594
    iput-object p2, p0, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->imsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    .line 595
    return-void
.end method


# virtual methods
.method getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;
    .registers 5
    .param p1, "phoneId"    # I

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUtImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    move v0, p1

    .line 600
    .local v0, "tmpPhoneId":I
    sget-boolean v2, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v2, :cond_21

    .line 601
    const-string v2, "single ims, set phoneId to 0  "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    .line 604
    :cond_21
    iget-object v1, p0, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->imsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    # invokes: Lcom/huawei/ims/ImsUtImpl;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;
    invoke-static {v1, v0}, Lcom/huawei/ims/ImsUtImpl;->access$000(Lcom/huawei/ims/ImsUtImpl;I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v1

    return-object v1
.end method

.method public getUtIMPUFromNetwork(I)Ljava/lang/String;
    .registers 4
    .param p1, "phoneId"    # I

    .line 674
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 675
    .local v0, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v0, :cond_b

    .line 676
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 678
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public isSupportCFT(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 609
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 610
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 611
    .local v0, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v0, :cond_e

    .line 612
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->isSupportCFT()Z

    move-result v1

    return v1

    .line 614
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public isUtEnable(I)Z
    .registers 4
    .param p1, "phoneId"    # I

    .line 619
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 620
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 621
    .local v0, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v0, :cond_e

    .line 622
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->isUtEnable()Z

    move-result v1

    return v1

    .line 624
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public processECT(I)V
    .registers 3
    .param p1, "phoneId"    # I

    .line 661
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 662
    .local v0, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v0, :cond_9

    .line 663
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->processECT()V

    .line 665
    :cond_9
    return-void
.end method

.method public queryCallForwardForServiceClass(IILjava/lang/String;I)I
    .registers 7
    .param p1, "phoneId"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 652
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 653
    .local v0, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v0, :cond_b

    .line 654
    invoke-virtual {v0, p2, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->queryCallForwardForServiceClass(ILjava/lang/String;I)I

    move-result v1

    return v1

    .line 656
    :cond_b
    const/4 v1, -0x1

    return v1
.end method

.method public updateCallBarringOption(ILjava/lang/String;IZI[Ljava/lang/String;)I
    .registers 14
    .param p1, "phoneId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "cbType"    # I
    .param p4, "isEnable"    # Z
    .param p5, "serviceClass"    # I
    .param p6, "barrList"    # [Ljava/lang/String;

    .line 642
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 643
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v6

    .line 644
    .local v6, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v6, :cond_14

    .line 645
    move-object v0, v6

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringOption(Ljava/lang/String;IZI[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 647
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForwardUncondTimer(IIIIIIILjava/lang/String;)I
    .registers 18
    .param p1, "phoneId"    # I
    .param p2, "starthour"    # I
    .param p3, "startminute"    # I
    .param p4, "endhour"    # I
    .param p5, "endminute"    # I
    .param p6, "action"    # I
    .param p7, "condition"    # I
    .param p8, "number"    # Ljava/lang/String;

    .line 630
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 631
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v8

    .line 632
    .local v8, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v8, :cond_18

    .line 633
    move-object v0, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/huawei/ims/HwImsUtImpl;->updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I

    move-result v0

    return v0

    .line 636
    :cond_18
    const/4 v0, -0x1

    return v0
.end method
