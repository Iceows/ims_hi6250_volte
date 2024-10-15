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
    .registers 2

    .line 884
    iput-object p1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    .line 885
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 886
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # invokes: Lcom/huawei/ims/HwImsCallSessionImpl;->isSessionValid()Z
    invoke-static {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$000(Lcom/huawei/ims/HwImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 892
    return-void

    .line 896
    :cond_21
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_338

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled EVENT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_337

    .line 1037
    :pswitch_3f
    const/4 v0, 0x0

    .line 1038
    .local v0, "causeCode":I
    const/4 v1, 0x0

    .line 1039
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 1040
    .local v3, "ar":Landroid/os/AsyncResult;
    if-eqz v3, :cond_67

    .line 1041
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_54

    .line 1044
    const/4 v0, 0x0

    .line 1045
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    const-string v5, "Exception during getLastCallFailCause, assuming normal disconnect"

    # invokes: Lcom/huawei/ims/HwImsCallSessionImpl;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1500(Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/String;)V

    goto :goto_67

    .line 1047
    :cond_54
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    .line 1048
    .local v4, "failCausePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v4, :cond_67

    .line 1049
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1050
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    .line 1054
    .end local v4    # "failCausePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_67
    :goto_67
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/HwVolteChrManager;->setRemoteCauseCode(I)V

    .line 1055
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before Fail Cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1600(Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/String;)V

    .line 1057
    const/16 v4, 0x486f

    if-eq v0, v4, :cond_8c

    const/16 v4, 0x48c8

    if-ne v0, v4, :cond_97

    .line 1059
    :cond_8c
    const-string v4, "Call completed elsewhere"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 1060
    const/16 v0, 0x3f6

    goto :goto_aa

    .line 1061
    :cond_97
    const/16 v4, 0x4a5b

    if-ne v0, v4, :cond_a6

    .line 1062
    const-string v4, "Declined"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 1064
    const/16 v0, 0x57c

    goto :goto_aa

    .line 1066
    :cond_a6
    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->convertRilCauseCodeToImsCode(I)I

    move-result v0

    .line 1068
    :goto_aa
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # invokes: Lcom/huawei/ims/HwImsCallSessionImpl;->convertMessageFromCauseCode(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0, v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1700(Lcom/huawei/ims/HwImsCallSessionImpl;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1069
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last IMS Call Fail Cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "Message = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/huawei/ims/HwImsCallSessionImpl;->logi(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1600(Lcom/huawei/ims/HwImsCallSessionImpl;Ljava/lang/String;)V

    .line 1071
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v0, v2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    move-object v2, v4

    .line 1072
    .local v2, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1073
    goto/16 :goto_337

    .line 1034
    .end local v0    # "causeCode":I
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v3    # "ar":Landroid/os/AsyncResult;
    :pswitch_df
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # invokes: Lcom/huawei/ims/HwImsCallSessionImpl;->initCallLists()V
    invoke-static {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1400(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 1035
    goto/16 :goto_337

    .line 1024
    :pswitch_e6
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;
    invoke-static {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$100(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$200(Lcom/huawei/ims/HwImsCallSessionImpl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->restartRild(Landroid/os/Message;)V

    .line 1025
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwVolteChrManager;->triggerHangupFailedEvent()V

    .line 1029
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mIsPendingDisconnect:Z
    invoke-static {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1300(Lcom/huawei/ims/HwImsCallSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_337

    .line 1030
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # invokes: Lcom/huawei/ims/HwImsCallSessionImpl;->doClose()V
    invoke-static {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1200(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    goto/16 :goto_337

    .line 1022
    :pswitch_111
    goto/16 :goto_337

    .line 1019
    :pswitch_113
    iget-object v0, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # invokes: Lcom/huawei/ims/HwImsCallSessionImpl;->doClose()V
    invoke-static {v0}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1200(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 1020
    goto/16 :goto_337

    .line 1017
    :pswitch_11a
    goto/16 :goto_337

    .line 1003
    :pswitch_11c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1004
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_337

    .line 1005
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    # setter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mIsRingbackToneRequest:Z
    invoke-static {v3, v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1102(Lcom/huawei/ims/HwImsCallSessionImpl;Z)Z

    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RINGBACK_TONE, playTone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mIsRingbackToneRequest:Z
    invoke-static {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1100(Lcom/huawei/ims/HwImsCallSessionImpl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$900(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/DriverImsCall;

    move-result-object v1

    if-eqz v1, :cond_337

    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$900(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/DriverImsCall;

    move-result-object v1

    iget-object v1, v1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v3, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v1, v3, :cond_337

    .line 1008
    new-instance v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1009
    .local v1, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mIsRingbackToneRequest:Z
    invoke-static {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1100(Lcom/huawei/ims/HwImsCallSessionImpl;)Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 1010
    iput v2, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1012
    :cond_16c
    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1013
    .end local v1    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    goto/16 :goto_337

    .line 909
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_177
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 910
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_198

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_198

    .line 911
    const-string v3, "Add Participant error"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Add Participant Failed"

    invoke-direct {v3, v2, v2, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_337

    .line 915
    :cond_198
    if-eqz v0, :cond_337

    .line 916
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionInviteParticipantsRequestDelivered()V

    goto/16 :goto_337

    .line 990
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1a5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 991
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1c6

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1c6

    .line 992
    const-string v3, "Deflect error"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Deflect Failed"

    invoke-direct {v3, v2, v2, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionDeflectFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_337

    .line 996
    :cond_1c6
    const-string v2, "Deflect success"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-eqz v0, :cond_337

    .line 998
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionDeflected()V

    goto/16 :goto_337

    .line 982
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1d8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 983
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_337

    .line 984
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x8f

    const-string v5, "User Rejected"

    invoke-direct {v3, v4, v2, v5}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionStartFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 986
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # setter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I
    invoke-static {v1, v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$602(Lcom/huawei/ims/HwImsCallSessionImpl;I)I

    goto/16 :goto_337

    .line 956
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1f7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 957
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_220

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_220

    .line 958
    const-string v3, "Conference error"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Conference Failed"

    invoke-direct {v3, v2, v2, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 961
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mTracker:Lcom/huawei/ims/ImsServiceCallTracker;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$700(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsServiceCallTracker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsServiceCallTracker;->setConfInProgress(Z)V

    goto :goto_269

    .line 962
    :cond_220
    if-eqz v0, :cond_264

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_264

    .line 963
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mConfCallSession:Lcom/huawei/ims/HwImsCallSessionImpl;
    invoke-static {v4}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$800(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/HwImsCallSessionImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    .line 968
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;
    invoke-static {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$900(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/DriverImsCall;

    move-result-object v3

    if-eqz v3, :cond_24e

    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mDc:Lcom/huawei/ims/DriverImsCall;
    invoke-static {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$900(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/DriverImsCall;

    move-result-object v3

    iget-object v3, v3, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    sget-object v4, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    if-ne v3, v4, :cond_24e

    .line 969
    const-string v3, "EVENT_CONFERENCE: DriverImsCall State is HOLDING"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_24e
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVilteEnhancementSupported()Z

    move-result v3

    if-eqz v3, :cond_25e

    .line 972
    const-string v3, "notifyCallSessionMerged"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v3, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # invokes: Lcom/huawei/ims/HwImsCallSessionImpl;->notifyCallSessionMerged()V
    invoke-static {v3}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$1000(Lcom/huawei/ims/HwImsCallSessionImpl;)V

    .line 975
    :cond_25e
    const-string v3, "Conference in progress"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_269

    .line 977
    :cond_264
    const-string v3, "EVENT_CONFERENCE: shouldn\'t reach here"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :goto_269
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    iput-boolean v2, v1, Lcom/huawei/ims/HwImsCallSessionImpl;->mIsConfInProgress:Z

    .line 980
    goto/16 :goto_337

    .line 948
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_26f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 949
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_337

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_337

    .line 950
    const-string v3, "Resume error"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Resume Failed"

    invoke-direct {v3, v2, v2, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_337

    .line 940
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_290
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 941
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_337

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_337

    .line 942
    const-string v3, "Hold error"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mListenerProxy:Lcom/huawei/ims/ImsCallSessionListenerProxy;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$300(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsCallSessionListenerProxy;

    move-result-object v1

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const-string v4, "Hold Failed"

    invoke-direct {v3, v2, v2, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 944
    invoke-virtual {v1, v3}, Lcom/huawei/ims/ImsCallSessionListenerProxy;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_337

    .line 928
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2b1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 929
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2dd

    .line 930
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2d2

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hangup error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2dd

    .line 933
    :cond_2d2
    const-string v2, "Hangup success"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    const/4 v2, 0x1

    # setter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mIsHangup:Z
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$502(Lcom/huawei/ims/HwImsCallSessionImpl;Z)Z

    .line 937
    :cond_2dd
    :goto_2dd
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    const/16 v2, 0x1f5

    # setter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mDisconnCause:I
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$602(Lcom/huawei/ims/HwImsCallSessionImpl;I)I

    .line 938
    goto :goto_337

    .line 921
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2e5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 922
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_337

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_337

    .line 923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accept error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # setter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mIsAcceptPending:Z
    invoke-static {v1, v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$402(Lcom/huawei/ims/HwImsCallSessionImpl;Z)Z

    goto :goto_337

    .line 898
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_30b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 899
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_337

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_337

    .line 900
    const-string v2, "Dial error"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$100(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v1

    if-eqz v1, :cond_337

    .line 904
    iget-object v1, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mCi:Lcom/huawei/ims/ImsRIL;
    invoke-static {v1}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$100(Lcom/huawei/ims/HwImsCallSessionImpl;)Lcom/huawei/ims/ImsRIL;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsCallSessionImpl$HwImsCallSessionImplHandler;->this$0:Lcom/huawei/ims/HwImsCallSessionImpl;

    # getter for: Lcom/huawei/ims/HwImsCallSessionImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/ims/HwImsCallSessionImpl;->access$200(Lcom/huawei/ims/HwImsCallSessionImpl;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->getLastCallFailCause(Landroid/os/Message;)V

    .line 1078
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_337
    :goto_337
    return-void

    :pswitch_data_338
    .packed-switch 0x1
        :pswitch_30b
        :pswitch_2e5
        :pswitch_2b1
        :pswitch_290
        :pswitch_26f
        :pswitch_1f7
        :pswitch_1d8
        :pswitch_1a5
        :pswitch_177
        :pswitch_11c
        :pswitch_11a
        :pswitch_113
        :pswitch_111
        :pswitch_e6
        :pswitch_df
        :pswitch_3f
    .end packed-switch
.end method
