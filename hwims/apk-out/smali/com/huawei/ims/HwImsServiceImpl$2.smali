.class Lcom/huawei/ims/HwImsServiceImpl$2;
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
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 641
    iput-object p1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 644
    if-nez p2, :cond_0

    .line 645
    iget-object v0, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v1, "the intent is null"

    invoke-static {v0, v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 646
    return-void

    .line 649
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 652
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "airplane mode on"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "UNREGISTERED"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$300(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 656
    invoke-static {v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$402(Z)Z

    goto/16 :goto_1

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "airplane mode off"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 664
    :cond_2
    const-string v1, "android.intent.action.ACTION_SWITCH_DUAL_CARDS_SLOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 665
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v2, "UNREGISTERED"

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$300(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 667
    :cond_3
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 669
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_4

    .line 670
    const-string v1, "subscription"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 671
    .local v1, "intentSubId":I
    iget-object v4, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v4, v4, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    if-eq v1, v4, :cond_4

    .line 672
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v3, "ACTION_CARRIER_CONFIG_CHANGED is not for this sub, return"

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 673
    return-void

    .line 677
    .end local v1    # "intentSubId":I
    :cond_4
    const-string v1, "carrierConfigChangeState"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    move v2, v3

    nop

    :cond_5
    move v1, v2

    .line 679
    .local v1, "isCarrierConfigLoaded":Z
    if-eqz v1, :cond_6

    sget-boolean v2, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    if-eqz v2, :cond_6

    .line 680
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsServiceImpl;->getDMUSER()V

    goto :goto_0

    .line 682
    :cond_6
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v3, "carrier config is not loaded or the card is not verizon!"

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 686
    :goto_0
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsServiceImpl;->handleSimRecordsLoaded()V

    .line 688
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    const-string v3, "carrier config changed "

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsServiceImpl;->access$200(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 689
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$500(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 692
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$600(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 694
    .end local v1    # "isCarrierConfigLoaded":Z
    goto/16 :goto_1

    .line 697
    :cond_7
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    .line 700
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    iget v1, v1, Lcom/huawei/ims/HwImsServiceImpl;->mSub:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubId(I)I

    move-result v1

    .line 701
    .local v1, "mainSlot":I
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "intent sub ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "subscription"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "intent phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "phone"

    .line 702
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 701
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsServiceImpl;->access$000(Lcom/huawei/ims/HwImsServiceImpl;Ljava/lang/String;)V

    .line 704
    const-string v3, "subscription"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 705
    iget-object v2, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$700(Lcom/huawei/ims/HwImsServiceImpl;)V

    .line 708
    .end local v1    # "mainSlot":I
    :cond_8
    goto :goto_1

    :cond_9
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 709
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$800(Lcom/huawei/ims/HwImsServiceImpl;)V

    goto :goto_1

    .line 713
    :cond_a
    const-string v1, "com.android.server.dm.BROADCAST_DMSYNCSERVICE_TO_IMS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 714
    const-string v1, "type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 715
    .local v1, "type":I
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v3, v1, v2}, Lcom/huawei/ims/HwImsServiceImpl;->access$900(Lcom/huawei/ims/HwImsServiceImpl;ILjava/lang/String;)V

    .line 717
    .end local v1    # "type":I
    .end local v2    # "data":Ljava/lang/String;
    goto :goto_1

    .line 720
    :cond_b
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 723
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsServiceImpl;->access$1000(Lcom/huawei/ims/HwImsServiceImpl;)Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isVolteLowbatteryEndcall()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 725
    iget-object v1, p0, Lcom/huawei/ims/HwImsServiceImpl$2;->this$0:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-static {v1, p2}, Lcom/huawei/ims/HwImsServiceImpl;->access$1100(Lcom/huawei/ims/HwImsServiceImpl;Landroid/content/Intent;)V

    .line 729
    :cond_c
    :goto_1
    return-void
.end method
