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
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsUtImpl;
    .param p2, "imsUt"    # Lcom/huawei/ims/ImsUtImpl;

    .line 457
    iput-object p1, p0, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->this$0:Lcom/huawei/ims/ImsUtImpl;

    invoke-direct {p0}, Lcom/android/ims/IHwImsUtManager$Stub;-><init>()V

    .line 458
    iput-object p2, p0, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->imsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    .line 459
    return-void
.end method


# virtual methods
.method getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;
    .locals 3
    .param p1, "phoneId"    # I

    .line 462
    const-string v0, "ImsUtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v0, :cond_0

    .line 464
    const-string v0, "ImsUtImpl"

    const-string v1, "single ims, set phoneId to 0  "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 p1, 0x0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->imsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    invoke-static {v0, p1}, Lcom/huawei/ims/ImsUtImpl;->access$000(Lcom/huawei/ims/ImsUtImpl;I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    return-object v0
.end method

.method public getUtIMPUFromNetwork(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .line 533
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 534
    .local v0, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 537
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isSupportCFT(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 472
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 474
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 475
    .local v0, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->isSupportCFT()Z

    move-result v1

    return v1

    .line 478
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isUtEnable(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 483
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 485
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 486
    .local v0, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->isUtEnable()Z

    move-result v1

    return v1

    .line 489
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public processECT(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 526
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 527
    .local v0, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsUtImpl;->processECT()V

    .line 530
    :cond_0
    return-void
.end method

.method public queryCallForwardForServiceClass(IILjava/lang/String;I)I
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 518
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v0

    .line 519
    .local v0, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0, p2, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->queryCallForwardForServiceClass(ILjava/lang/String;I)I

    move-result v1

    return v1

    .line 522
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public updateCallBarringOption(ILjava/lang/String;IZI[Ljava/lang/String;)I
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "cbType"    # I
    .param p4, "enable"    # Z
    .param p5, "serviceClass"    # I
    .param p6, "barrList"    # [Ljava/lang/String;

    .line 508
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 510
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v6

    .line 511
    .local v6, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v6, :cond_0

    .line 512
    move-object v0, v6

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringOption(Ljava/lang/String;IZI[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 514
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForwardUncondTimer(IIIIIIILjava/lang/String;)I
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "starthour"    # I
    .param p3, "startminute"    # I
    .param p4, "endhour"    # I
    .param p5, "endminute"    # I
    .param p6, "action"    # I
    .param p7, "condition"    # I
    .param p8, "number"    # Ljava/lang/String;

    .line 496
    invoke-static {}, Lcom/huawei/ims/ImsUtImpl;->checkAccessPermission()V

    .line 498
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsUtImpl$HwInnerImsUt;->getHwImsUtImpl(I)Lcom/huawei/ims/HwImsUtImpl;

    move-result-object v8

    .line 499
    .local v8, "hwImsUt":Lcom/huawei/ims/HwImsUtImpl;
    if-eqz v8, :cond_0

    .line 500
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

    .line 502
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
