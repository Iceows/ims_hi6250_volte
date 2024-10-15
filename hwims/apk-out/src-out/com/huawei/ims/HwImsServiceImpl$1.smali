.class Lcom/huawei/ims/HwImsServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "HwImsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsServiceImpl;
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

    .line 602
    iput-object p1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 605
    if-eqz p2, :cond_12c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_12c

    .line 610
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver: action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 612
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "UNREGISTERED"

    if-eqz v1, :cond_52

    .line 613
    const/4 v1, 0x0

    const-string v3, "state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 614
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v3, "airplane mode on"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->notifyImsState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 616
    const/4 v1, 0x1

    # setter for: Lcom/huawei/ims/HwImsServiceImpl;->sIsFirstReg:Z
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$302(Z)Z

    goto/16 :goto_12b

    .line 618
    :cond_49
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "airplane mode off"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 620
    :cond_52
    const-string v1, "huawei.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 621
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->notifyImsState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_12b

    .line 622
    :cond_61
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 623
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->notifyCarrierConfigChanged(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/huawei/ims/HwImsServiceImpl;->access$400(Lcom/huawei/ims/HwImsServiceImpl;Landroid/content/Intent;)V

    goto/16 :goto_12b

    .line 624
    :cond_70
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_b2

    .line 625
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mSlotId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v1

    .line 626
    .local v1, "mainSlot":I
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "intent phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    const-string v5, "phone"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 626
    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_b0

    .line 629
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->updatePhoneBaseEvent()V
    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$500(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 631
    .end local v1    # "mainSlot":I
    :cond_b0
    goto/16 :goto_12b

    :cond_b2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 632
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->moveSharePreferenceToDe()V
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$600(Lcom/huawei/ims/HwImsServiceImpl;)V

    goto :goto_12b

    .line 633
    :cond_c0
    const-string v1, "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 635
    :try_start_c8
    const-string v1, "type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 636
    .local v1, "type":I
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->processDmBroadcast(ILjava/lang/String;)V
    invoke-static {v3, v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$700(Lcom/huawei/ims/HwImsServiceImpl;ILjava/lang/String;)V
    :try_end_d9
    .catch Landroid/os/BadParcelableException; {:try_start_c8 .. :try_end_d9} :catch_e3
    .catch Ljava/lang/RuntimeException; {:try_start_c8 .. :try_end_d9} :catch_da

    .end local v1    # "type":I
    .end local v2    # "data":Ljava/lang/String;
    goto :goto_eb

    .line 640
    :catch_da
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v3, "ACTION_DMPROVIDER_TO_IMS RuntimeException"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/RuntimeException;
    goto :goto_eb

    .line 638
    :catch_e3
    move-exception v1

    .line 639
    .local v1, "e":Landroid/os/BadParcelableException;
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v3, "ACTION_DMPROVIDER_TO_IMS BadParcelableException"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$100(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 642
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :goto_eb
    goto :goto_12b

    .line 643
    :cond_ec
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 644
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    if-eqz v1, :cond_12b

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isVolteLowbatteryEndcall()Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 645
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->sendBatteryStatus(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/huawei/ims/HwImsServiceImpl;->access$900(Lcom/huawei/ims/HwImsServiceImpl;Landroid/content/Intent;)V

    goto :goto_12b

    .line 647
    :cond_10e
    const-string v1, "com.hisi.vowifi.started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 648
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    # getter for: Lcom/huawei/ims/HwImsServiceImpl;->mMapconService:Lcom/hisi/mapcon/IMapconService;
    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/hisi/mapcon/IMapconService;

    move-result-object v1

    if-nez v1, :cond_12b

    .line 649
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsServiceImpl;->bindMapconService()V

    goto :goto_12b

    .line 652
    :cond_124
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "not define action"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 654
    :cond_12b
    :goto_12b
    return-void

    .line 606
    .end local v0    # "action":Ljava/lang/String;
    :cond_12c
    :goto_12c
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$1;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "mIntentReceiver: Received Intent: intent or intent.getAction() is null"

    # invokes: Lcom/huawei/ims/HwImsServiceImpl;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 607
    return-void
.end method
