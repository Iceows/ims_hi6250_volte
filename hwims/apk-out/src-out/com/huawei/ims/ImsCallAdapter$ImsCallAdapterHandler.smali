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
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/ImsCallAdapter;

    .line 596
    iput-object p1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private clearMultiTaskRetryCount()V
    .registers 4

    .line 698
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing MultiTaskRetryCount from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # getter for: Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallAdapter;->access$700(Lcom/huawei/ims/ImsCallAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$300(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$702(Lcom/huawei/ims/ImsCallAdapter;I)I

    .line 700
    return-void
.end method

.method private handleModifyCallActionMessage(Landroid/os/Message;I)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "actionType"    # I

    .line 720
    if-nez p1, :cond_a

    .line 721
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "msg is null during handleModifyCallActionMessage"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$800(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 722
    return-void

    .line 724
    :cond_a
    const/4 v0, 0x0

    .line 725
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_16

    .line 726
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    .line 728
    :cond_16
    if-nez v0, :cond_20

    .line 729
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v2, "ar is null during handleModifyCallActionMessage"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$800(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 730
    return-void

    .line 733
    :cond_20
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2b

    .line 735
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v2, "videocall error during handleModifyCallActionMessage"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$800(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 737
    :cond_2b
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Message;

    if-eqz v1, :cond_41

    .line 738
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 742
    .local v1, "onComplete":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 743
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 744
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 746
    .end local v1    # "onComplete":Landroid/os/Message;
    :cond_41
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 747
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->processPendingVtMultiTask()V
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$400(Lcom/huawei/ims/ImsCallAdapter;)V

    .line 748
    return-void
.end method

.method private onAvpRetry(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 681
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "EVENT_AVP_UPGRADE received"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$300(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 682
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 683
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_30

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_30

    .line 684
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_30

    .line 685
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 686
    .local v1, "isNeedToNotifyUser":Z
    if-eqz v1, :cond_29

    .line 687
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v3, "AVP Retry error when Voice call was upgraded to video call"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallAdapter;->access$800(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    goto :goto_30

    .line 689
    :cond_29
    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v3, "AVP Retry error when Video call was dialed"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/huawei/ims/ImsCallAdapter;->access$800(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 693
    .end local v1    # "isNeedToNotifyUser":Z
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 694
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->processPendingVtMultiTask()V
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$400(Lcom/huawei/ims/ImsCallAdapter;)V

    .line 695
    return-void
.end method

.method private onModifyCallInitiateDone(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 629
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "EVENT_MODIFY_CALL_INITIATE_DONE received"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$300(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 631
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->handleModifyCallActionMessage(Landroid/os/Message;I)V

    .line 633
    return-void
.end method

.method private onModifyCallUpgradeCancelDone(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 709
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "EVENT_MODIFY_CALL_UPGRADE_CANCEL_DONE received"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$300(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 710
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->handleModifyCallActionMessage(Landroid/os/Message;I)V

    .line 711
    return-void
.end method

.method private onVideoPauseDone(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 636
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "EVENT_VIDEO_PAUSE_DONE received"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$300(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 637
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 638
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_7b

    .line 639
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x1

    if-nez v1, :cond_3e

    .line 642
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # getter for: Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$500(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$CallModify;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 643
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    .line 644
    # getter for: Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$500(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$CallModify;

    move-result-object v3

    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;
    invoke-static {v3}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$100(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    .line 643
    :goto_2d
    # setter for: Lcom/huawei/ims/ImsCallAdapter;->mIsLocallyPaused:Z
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$602(Lcom/huawei/ims/ImsCallAdapter;Z)Z

    .line 646
    :cond_30
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 647
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->clearMultiTaskRetryCount()V

    .line 648
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->processPendingVtMultiTask()V
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$400(Lcom/huawei/ims/ImsCallAdapter;)V

    goto :goto_82

    .line 651
    :cond_3e
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # getter for: Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$700(Lcom/huawei/ims/ImsCallAdapter;)I

    move-result v1

    if-gt v1, v2, :cond_66

    .line 652
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v2, "Error during video pause so retry"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$800(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    iget-object v1, v1, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    iget-object v2, v2, Lcom/huawei/ims/ImsCallAdapter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 655
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # operator++ for: Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$708(Lcom/huawei/ims/ImsCallAdapter;)I

    goto :goto_82

    .line 657
    :cond_66
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v2, "Video Pause retry limit reached."

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$300(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 658
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->clearMultiTaskRetryCount()V

    .line 659
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 660
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->processPendingVtMultiTask()V
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter;->access$400(Lcom/huawei/ims/ImsCallAdapter;)V

    goto :goto_82

    .line 664
    :cond_7b
    iget-object v1, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v2, "Error EVENT_VIDEO_PAUSE_DONE ar is null"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/huawei/ims/ImsCallAdapter;->access$800(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 666
    :goto_82
    return-void
.end method

.method private onVideoPauseRetry()V
    .registers 4

    .line 669
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_VIDEO_PAUSE_RETRY received mMultiTaskRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # getter for: Lcom/huawei/ims/ImsCallAdapter;->mMultiTaskRetryCount:I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallAdapter;->access$700(Lcom/huawei/ims/ImsCallAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$300(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # getter for: Lcom/huawei/ims/ImsCallAdapter;->mPendingVtMultiTask:Lcom/huawei/ims/ImsCallAdapter$PauseState;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallAdapter;->access$900(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$PauseState;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/ImsCallAdapter$PauseState;->NONE:Lcom/huawei/ims/ImsCallAdapter$PauseState;

    if-ne v0, v1, :cond_38

    .line 671
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # getter for: Lcom/huawei/ims/ImsCallAdapter;->mCallModifyRequest:Lcom/huawei/ims/ImsCallAdapter$CallModify;
    invoke-static {v0}, Lcom/huawei/ims/ImsCallAdapter;->access$500(Lcom/huawei/ims/ImsCallAdapter;)Lcom/huawei/ims/ImsCallAdapter$CallModify;

    move-result-object v1

    # getter for: Lcom/huawei/ims/ImsCallAdapter$CallModify;->mDestCallProfiles:Lcom/huawei/ims/ImsCallProfiles;
    invoke-static {v1}, Lcom/huawei/ims/ImsCallAdapter$CallModify;->access$100(Lcom/huawei/ims/ImsCallAdapter$CallModify;)Lcom/huawei/ims/ImsCallProfiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallProfiles;->getCallType()I

    move-result v1

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->createAndSendMultiTaskRequest(I)V
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$1000(Lcom/huawei/ims/ImsCallAdapter;I)V

    goto :goto_4c

    .line 673
    :cond_38
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "User pressed home/resume during retry so sending out new multitask request"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$300(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 675
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->clearMultiTaskRetryCount()V

    .line 676
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->processPendingVtMultiTask()V
    invoke-static {v0}, Lcom/huawei/ims/ImsCallAdapter;->access$400(Lcom/huawei/ims/ImsCallAdapter;)V

    .line 678
    :goto_4c
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 600
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_2c

    .line 620
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->onModifyCallUpgradeCancelDone(Landroid/os/Message;)V

    .line 621
    goto :goto_2c

    .line 613
    :pswitch_a
    invoke-direct {p0}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->onVideoPauseRetry()V

    .line 614
    goto :goto_2c

    .line 608
    :pswitch_e
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    const-string v1, "EVENT_MODIFY_CALL_CONFIRM_DONE received"

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/ImsCallAdapter;->access$300(Lcom/huawei/ims/ImsCallAdapter;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsCallAdapter;->clearPendingModify()V

    .line 610
    iget-object v0, p0, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->this$0:Lcom/huawei/ims/ImsCallAdapter;

    # invokes: Lcom/huawei/ims/ImsCallAdapter;->processPendingVtMultiTask()V
    invoke-static {v0}, Lcom/huawei/ims/ImsCallAdapter;->access$400(Lcom/huawei/ims/ImsCallAdapter;)V

    .line 611
    goto :goto_2c

    .line 605
    :pswitch_20
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->onVideoPauseDone(Landroid/os/Message;)V

    .line 606
    goto :goto_2c

    .line 602
    :pswitch_24
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->onModifyCallInitiateDone(Landroid/os/Message;)V

    .line 603
    goto :goto_2c

    .line 616
    :pswitch_28
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsCallAdapter$ImsCallAdapterHandler;->onAvpRetry(Landroid/os/Message;)V

    .line 617
    nop

    .line 626
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x5
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method
