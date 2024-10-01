.class Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;
.super Landroid/os/Handler;
.source "ImsCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsCallAdapterHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/ImsCallAdapter;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsCallAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 498
    iput-object p1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private clearMultiTaskRetryCount()I
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing MultiTaskRetryCount from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallAdapter;->access$400(Lcom/huawei/ims/ImsCallAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$000(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$402(Lcom/huawei/ims/ImsCallAdapter;I)I

    move-result v0

    return v0
.end method

.method private handleModifyCallActionMessage(Landroid/os/Message;I)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "actionType"    # I

    .line 626
    if-nez p1, :cond_0

    .line 627
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "msg is null during handleModifyCallActionMessage"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$500(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 628
    return-void

    .line 630
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 631
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_1

    .line 632
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v2, "ar is null during handleModifyCallActionMessage"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$500(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 633
    return-void

    .line 636
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 638
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v2, "videocall error during handleModifyCallActionMessage"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$500(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 640
    :cond_2
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 642
    .local v1, "onComplete":Landroid/os/Message;
    if-eqz v1, :cond_3

    .line 645
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 647
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 648
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 650
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v2}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 651
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallAdapter;->access$100(Lcom/huawei/ims/ImsCallAdapter;)V

    .line 652
    return-void
.end method

.method private onAvpRetry(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 584
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "EVENT_AVP_UPGRADE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$000(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 585
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 586
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 589
    .local v1, "shouldNotifyUser":Z
    if-eqz v1, :cond_0

    .line 590
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v3, "AVP Retry error when Voice call was upgraded to video call"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallAdapter;->access$500(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v3, "AVP Retry error when Video call was dialed"

    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallAdapter;->access$500(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 596
    .end local v1    # "shouldNotifyUser":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 597
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$100(Lcom/huawei/ims/ImsCallAdapter;)V

    .line 598
    return-void
.end method

.method private onModifyCallInitiateDone(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 530
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "EVENT_MODIFY_CALL_INITIATE_DONE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$000(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->handleModifyCallActionMessage(Landroid/os/Message;I)V

    .line 534
    return-void
.end method

.method private onModifyCallUpgradeCancelDone(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 613
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$000(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 614
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->handleModifyCallActionMessage(Landroid/os/Message;I)V

    .line 615
    return-void
.end method

.method private onVideoPauseDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 538
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "EVENT_VIDEO_PAUSE_DONE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$000(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 539
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 540
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_4

    .line 541
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 544
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$200(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$CallModify;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    iget-object v3, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v3}, Lcom/huawei/ims/ImsCallAdapter;->access$200(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$CallModify;

    move-result-object v3

    iget-object v3, v3, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v3, v3, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$302(Lcom/huawei/ims/ImsCallAdapter;Z)Z

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 549
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->clearMultiTaskRetryCount()I

    .line 550
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$100(Lcom/huawei/ims/ImsCallAdapter;)V

    goto :goto_1

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$400(Lcom/huawei/ims/ImsCallAdapter;)I

    move-result v1

    if-gt v1, v2, :cond_3

    .line 555
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v2, "Error during video pause so retry"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$500(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    iget-object v2, v2, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 558
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$408(Lcom/huawei/ims/ImsCallAdapter;)I

    goto :goto_1

    .line 560
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v2, "Video Pause retry limit reached."

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$000(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->clearMultiTaskRetryCount()I

    .line 562
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 563
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$100(Lcom/huawei/ims/ImsCallAdapter;)V

    goto :goto_1

    .line 567
    :cond_4
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v2, "Error EVENT_VIDEO_PAUSE_DONE ar is null"

    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$500(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 569
    :goto_1
    return-void
.end method

.method private onVideoPauseRetry()V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v2}, Lcom/huawei/ims/ImsCallAdapter;->access$400(Lcom/huawei/ims/ImsCallAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$000(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallAdapter;->access$600(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$PauseState;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-ne v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$200(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$CallModify;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/ims/ImsCallAdapter$CallModify;->dest_call_details:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, v1, Lcom/huawei/ims/ImsCallProfiles;->call_type:I

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$700(Lcom/huawei/ims/ImsCallAdapter;I)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "User pressed home/resume during retry so sending out new multitask request"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$000(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 578
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->clearMultiTaskRetryCount()I

    .line 579
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallAdapter;->access$100(Lcom/huawei/ims/ImsCallAdapter;)V

    .line 581
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 501
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 521
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->onModifyCallUpgradeCancelDone(Landroid/os/Message;)V

    .line 522
    goto :goto_0

    .line 514
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->onVideoPauseRetry()V

    .line 515
    goto :goto_0

    .line 509
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "EVENT_MODIFY_CALL_CONFIRM_DONE received"

    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$000(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 511
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-static {v0}, Lcom/huawei/ims/ImsCallAdapter;->access$100(Lcom/huawei/ims/ImsCallAdapter;)V

    .line 512
    goto :goto_0

    .line 506
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->onVideoPauseDone(Landroid/os/Message;)V

    .line 507
    goto :goto_0

    .line 503
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->onModifyCallInitiateDone(Landroid/os/Message;)V

    .line 504
    goto :goto_0

    .line 517
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->onAvpRetry(Landroid/os/Message;)V

    .line 518
    nop

    .line 527
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
