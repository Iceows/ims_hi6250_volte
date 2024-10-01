.class Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;
.super Landroid/os/Handler;
.source "HwImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HwImsCallSessionImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/HwImsCallSessionImpl;


# direct methods
.method constructor <init>(Lcom/huawei/ims/HwImsCallSessionImpl;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 720
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 721
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 725
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message received: what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$000(Lcom/huawei/ims/HwImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 730
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 935
    const-string v0, "HwImsCallSessionImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled EVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 884
    :pswitch_0
    const/4 v0, 0x0

    .line 886
    .local v0, "causeCode":I
    const/4 v2, 0x0

    .line 888
    .local v2, "message":Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 889
    .local v3, "ar":Landroid/os/AsyncResult;
    if-eqz v3, :cond_2

    .line 890
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 893
    const/4 v0, 0x0

    .line 894
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    const-string v5, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1300(Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 897
    :cond_1
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    .line 898
    .local v4, "failCausePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    .line 899
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 900
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, Ljava/lang/String;

    .line 906
    .end local v4    # "failCausePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/HwVolteChrManager;->setRemoteCauseCode(I)V

    .line 909
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before Fail Cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1400(Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/String;)V

    .line 912
    const/16 v4, 0x486f

    if-eq v0, v4, :cond_3

    const/16 v4, 0x48c8

    if-ne v0, v4, :cond_4

    :cond_3
    const-string v4, "Call completed elsewhere"

    .line 914
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 915
    const/16 v0, 0x3f6

    goto :goto_1

    .line 916
    :cond_4
    const/16 v4, 0x4a5b

    if-ne v0, v4, :cond_5

    const-string v4, "Declined"

    .line 917
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 919
    const/16 v0, 0x57c

    goto :goto_1

    .line 921
    :cond_5
    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->convertRilCauseCodeToImsCode(I)I

    move-result v0

    .line 925
    :goto_1
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v4, v0, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1500(Lcom/huawei/ims/HwImsCallSessionImpl;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 926
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last IMS Call Fail Cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "Message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1400(Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/String;)V

    .line 929
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v1, v4

    .line 931
    .local v1, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 932
    goto/16 :goto_3

    .line 879
    .end local v0    # "causeCode":I
    .end local v1    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1200(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 880
    goto/16 :goto_3

    .line 873
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$100(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$200(Lcom/huawei/ims/HwImsCallSessionImpl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->restartRild(Landroid/os/Message;)V

    .line 875
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerHangupFailedEvent()V

    .line 877
    goto/16 :goto_3

    .line 870
    :pswitch_3
    goto/16 :goto_3

    .line 866
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1100(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 867
    goto/16 :goto_3

    .line 864
    :pswitch_5
    goto/16 :goto_3

    .line 846
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 847
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    .line 848
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1002(Lcom/huawei/ims/HwImsCallSessionImpl;Z)Z

    .line 849
    const-string v2, "HwImsCallSessionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RINGBACK_TONE, playTone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1000(Lcom/huawei/ims/HwImsCallSessionImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$800(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/DriverImsCall;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$800(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/DriverImsCall;

    move-result-object v2

    iget-object v2, v2, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v2, v3, :cond_e

    .line 853
    new-instance v2, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 854
    .local v2, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1000(Lcom/huawei/ims/HwImsCallSessionImpl;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 855
    iput v1, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 858
    :cond_6
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 859
    .end local v2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto/16 :goto_3

    .line 745
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 746
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_7

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7

    .line 747
    const-string v2, "HwImsCallSessionImpl"

    const-string v3, "Add Participant error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Add Participant Failed"

    invoke-direct {v3, v1, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 752
    :cond_7
    if-eqz v0, :cond_e

    .line 753
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionInviteParticipantsRequestDelivered()V

    goto/16 :goto_3

    .line 832
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 833
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_8

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 834
    const-string v2, "HwImsCallSessionImpl"

    const-string v3, "Deflect error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Deflect Failed"

    invoke-direct {v3, v1, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionDeflectFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 839
    :cond_8
    const-string v1, "HwImsCallSessionImpl"

    const-string v2, "Deflect success"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    if-eqz v0, :cond_e

    .line 841
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionDeflected()V

    goto/16 :goto_3

    .line 824
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 825
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    .line 826
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "User Rejected"

    const/16 v5, 0x8f

    invoke-direct {v3, v5, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStartFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 828
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v1, v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$502(Lcom/huawei/ims/HwImsCallSessionImpl;I)I

    goto/16 :goto_3

    .line 792
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 793
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_9

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 794
    const-string v2, "HwImsCallSessionImpl"

    const-string v3, "Conference error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Conference Failed"

    invoke-direct {v3, v1, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 799
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$600(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/ims/ImsServiceCallTracker;->setConfInProgress(Z)V

    goto :goto_2

    .line 801
    :cond_9
    if-eqz v0, :cond_c

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_c

    .line 802
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$700(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    .line 807
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$800(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/DriverImsCall;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$800(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/DriverImsCall;

    move-result-object v2

    iget-object v2, v2, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v2, v3, :cond_a

    .line 810
    const-string v2, "HwImsCallSessionImpl"

    const-string v3, "EVENT_CONFERENCE: DriverImsCall State is HOLDING"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_a
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 814
    const-string v2, "HwImsCallSessionImpl"

    const-string v3, "notifyCallSessionMerged"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$900(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 817
    :cond_b
    const-string v2, "HwImsCallSessionImpl"

    const-string v3, "Conference in progress"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 819
    :cond_c
    const-string v2, "HwImsCallSessionImpl"

    const-string v3, "EVENT_CONFERENCE: shouldn\'t reach here"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :goto_2
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    iput-boolean v1, v2, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 822
    goto/16 :goto_3

    .line 783
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 784
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    .line 785
    const-string v2, "HwImsCallSessionImpl"

    const-string v3, "Resume error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Resume Failed"

    invoke-direct {v3, v1, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 774
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 775
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    .line 776
    const-string v2, "HwImsCallSessionImpl"

    const-string v3, "Hold error"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Hold Failed"

    invoke-direct {v3, v1, v1, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_3

    .line 767
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 768
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    .line 769
    const-string v1, "HwImsCallSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hangup error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_d
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    const/16 v2, 0x1f5

    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$502(Lcom/huawei/ims/HwImsCallSessionImpl;I)I

    .line 772
    goto :goto_3

    .line 758
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 759
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_e

    .line 760
    const-string v2, "HwImsCallSessionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accept error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$402(Lcom/huawei/ims/HwImsCallSessionImpl;Z)Z

    goto :goto_3

    .line 732
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 733
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 734
    const-string v1, "HwImsCallSessionImpl"

    const-string v2, "Dial error"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$100(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 739
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$100(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$200(Lcom/huawei/ims/HwImsCallSessionImpl;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->getLastCallFailCause(Landroid/os/Message;)V

    .line 938
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_e
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
