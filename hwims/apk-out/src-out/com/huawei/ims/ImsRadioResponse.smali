.class public Lcom/huawei/ims/ImsRadioResponse;
.super Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;
.source "ImsRadioResponse.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsRadioResponse"


# instance fields
.field mRil:Lcom/huawei/ims/ImsRIL;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .registers 2
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .line 50
    invoke-direct {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    .line 52
    return-void
.end method

.method private responseCurrentImsCallsResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 11
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .line 417
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 418
    .local v0, "imsRilRequest":Lcom/huawei/ims/ImsRilRequest;
    if-eqz v0, :cond_6b

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_66

    .line 421
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 422
    .local v2, "num":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    .local v3, "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v2, :cond_5d

    .line 425
    new-instance v5, Lcom/huawei/ims/DriverImsCall;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;

    invoke-direct {v5, v6}, Lcom/huawei/ims/DriverImsCall;-><init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;)V

    .line 426
    .local v5, "driverImsCall":Lcom/huawei/ims/DriverImsCall;
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v6}, Lcom/huawei/ims/ImsRIL;->isSupportCnap()Z

    move-result v6

    if-nez v6, :cond_36

    .line 427
    const/4 v6, 0x2

    iput v6, v5, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 428
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "isSupportCnap : false"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 430
    :cond_36
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-boolean v6, v5, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    if-eqz v6, :cond_4c

    .line 432
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 433
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_5a

    .line 435
    :cond_4c
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 436
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 424
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 440
    .end local v4    # "i":I
    .end local v5    # "driverImsCall":Lcom/huawei/ims/DriverImsCall;
    :cond_5d
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 441
    move-object v1, v3

    .line 442
    iget-object v4, v0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 444
    .end local v2    # "num":I
    .end local v3    # "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    :cond_66
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRilRequest;Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 446
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_6b
    return-void
.end method

.method private responseIntArrayList(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1024
    .local p2, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 1026
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    if-eqz v0, :cond_30

    .line 1027
    const/4 v1, 0x0

    .line 1028
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_2b

    .line 1029
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1030
    .local v2, "listSize":I
    new-array v3, v2, [I

    .line 1031
    .local v3, "response":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-ge v4, v2, :cond_25

    .line 1032
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    .line 1031
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1034
    .end local v4    # "i":I
    :cond_25
    move-object v1, v3

    .line 1035
    iget-object v4, v0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1037
    .end local v2    # "listSize":I
    .end local v3    # "response":[I
    :cond_2b
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRilRequest;Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1039
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_30
    return-void
.end method

.method private varargs responseInts(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;[I)V
    .registers 6
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 1016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 1018
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1020
    .end local v1    # "i":I
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseIntArrayList(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1021
    return-void
.end method

.method private responseLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;)V
    .registers 8
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "var2"    # Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;

    .line 158
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 160
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    if-eqz v0, :cond_29

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "ret":Lcom/android/internal/telephony/LastCallFailCause;
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 163
    .local v2, "response":[I
    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_24

    .line 164
    new-instance v3, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v3}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    move-object v1, v3

    .line 165
    iget v3, p2, Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;->causeCode:I

    iput v3, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 166
    const/4 v3, 0x0

    iget v4, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    aput v4, v2, v3

    .line 167
    iget-object v3, v0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 169
    :cond_24
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, v0, p1, v2}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRilRequest;Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 171
    .end local v1    # "ret":Lcom/android/internal/telephony/LastCallFailCause;
    .end local v2    # "response":[I
    :cond_29
    return-void
.end method

.method private responseSetImsConfig(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;)V
    .registers 7
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "payload"    # Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v1

    .line 594
    .local v1, "rr":Lcom/huawei/ims/ImsRilRequest;
    if-eqz v1, :cond_18

    .line 596
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_12

    .line 597
    iget-object v2, v1, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, v0}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 600
    :cond_12
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRilRequest;Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 602
    :cond_18
    return-void
.end method

.method private responseString(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "str"    # Ljava/lang/String;

    .line 1042
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 1043
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    if-eqz v0, :cond_18

    .line 1044
    const/4 v1, 0x0

    .line 1045
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_13

    .line 1046
    move-object v1, p2

    .line 1047
    iget-object v2, v0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1049
    :cond_13
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRilRequest;Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1051
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_18
    return-void
.end method

.method private responseUiccAuth(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;)V
    .registers 15
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "uiccAuthRst"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseUiccAuth, info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "uiccAuthRst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 933
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    if-eqz v0, :cond_1bd

    .line 934
    const/4 v2, 0x0

    .line 935
    .local v2, "ret":Ljava/lang/Object;
    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_1b8

    .line 936
    const-string v3, "NO ERROR,start to process GbaAuth"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    new-instance v3, Lcom/huawei/ims/GbaAuth$AuthResp;

    invoke-direct {v3}, Lcom/huawei/ims/GbaAuth$AuthResp;-><init>()V

    .line 938
    .local v3, "auth":Lcom/huawei/ims/GbaAuth$AuthResp;
    iget v4, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;->authStatus:I

    iput v4, v3, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    .line 939
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseUiccAuth, mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget v4, v3, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    const/4 v5, 0x4

    if-eqz v4, :cond_b5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_59

    goto/16 :goto_1b2

    .line 982
    :cond_59
    new-instance v4, Lcom/huawei/ims/GbaAuth$AuthSyncfail;

    invoke-direct {v4}, Lcom/huawei/ims/GbaAuth$AuthSyncfail;-><init>()V

    .line 983
    .local v4, "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    new-instance v6, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v6}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v6, v4, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 984
    iget-object v6, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPSYNCFAILTYPE;

    .line 985
    .local v6, "failType":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPSYNCFAILTYPE;
    iget-object v7, v6, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHAUTSTYPE;

    .line 986
    .local v7, "autsDatas":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHAUTSTYPE;
    iget-object v8, v4, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v9, v7, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHAUTSTYPE;->autsPresent:I

    iput v9, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 987
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAuts.mPresent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v9, v9, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v8, v4, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v9, v7, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHAUTSTYPE;->auts:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 989
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAuts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v9, v9, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 990
    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 989
    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iput-object v4, v3, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    .line 994
    goto/16 :goto_1b2

    .line 942
    .end local v4    # "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    .end local v6    # "failType":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPSYNCFAILTYPE;
    .end local v7    # "autsDatas":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHAUTSTYPE;
    :cond_b5
    new-instance v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;

    invoke-direct {v4}, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;-><init>()V

    .line 944
    .local v4, "ac":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    new-instance v6, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v6}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v6, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 945
    iget-object v6, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPCHALLENGETYPE;

    .line 946
    .local v6, "authChang":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPCHALLENGETYPE;
    iget-object v7, v6, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPCHALLENGETYPE;->resData:Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESTYPE;

    .line 947
    .local v7, "resDatas":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESTYPE;
    iget-object v8, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v9, v7, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESTYPE;->resPresent:I

    iput v9, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 948
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRes.mPresent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v9, v9, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v8, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v9, v7, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESTYPE;->res:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 952
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "res="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v9, v9, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 953
    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 952
    invoke-static {v1, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v8, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v8}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v8, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 957
    iget-object v8, v6, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPCHALLENGETYPE;->ikData:Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHIKTYPE;

    .line 958
    .local v8, "ikType":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHIKTYPE;
    iget-object v9, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v10, v8, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHIKTYPE;->ikPresent:I

    iput v10, v9, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 959
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIk.mPresent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v10, v10, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v9, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v10, v8, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHIKTYPE;->ik:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, v9, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 962
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ik="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v10, v10, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 963
    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 962
    invoke-static {v1, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v9, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v9}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v9, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 968
    iget-object v9, v6, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPCHALLENGETYPE;->ckData:Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHCKTYPE;

    .line 969
    .local v9, "ckDatas":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHCKTYPE;
    iget-object v10, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v11, v9, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHCKTYPE;->ckPresent:I

    iput v11, v10, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 970
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCk.mPresent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v11, v11, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v10, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v11, v9, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHCKTYPE;->ck:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v11

    iput-object v11, v10, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 973
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ck="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v11, v11, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 974
    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 973
    invoke-static {v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iput-object v4, v3, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    .line 979
    nop

    .line 999
    .end local v4    # "ac":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    .end local v6    # "authChang":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPCHALLENGETYPE;
    .end local v7    # "resDatas":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESTYPE;
    .end local v8    # "ikType":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHIKTYPE;
    .end local v9    # "ckDatas":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHCKTYPE;
    :goto_1b2
    move-object v2, v3

    .line 1000
    iget-object v1, v0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1002
    .end local v3    # "auth":Lcom/huawei/ims/GbaAuth$AuthResp;
    :cond_1b8
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, v0, p1, v2}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRilRequest;Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1004
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_1bd
    return-void
.end method

.method private responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 395
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 396
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    if-eqz v0, :cond_17

    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_12

    .line 399
    iget-object v2, v0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 401
    :cond_12
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRilRequest;Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 403
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_17
    return-void
.end method

.method private sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;

    .line 61
    if-eqz p1, :cond_9

    .line 62
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 63
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 65
    :cond_9
    return-void
.end method


# virtual methods
.method public RspMsg(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;ILvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;)V
    .registers 6
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "msgId"    # I
    .param p3, "payload"    # Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RspMsg:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",msgId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v0, 0x24a

    if-eq p2, v0, :cond_eb

    const/16 v0, 0x25d

    if-eq p2, v0, :cond_e5

    const/16 v0, 0x267

    if-eq p2, v0, :cond_e1

    const/16 v0, 0x29c

    if-eq p2, v0, :cond_dd

    const/16 v0, 0x29e

    if-eq p2, v0, :cond_d9

    const/16 v0, 0x2ad

    if-eq p2, v0, :cond_d5

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_d1

    const/16 v0, 0x279

    if-eq p2, v0, :cond_cd

    const/16 v0, 0x27a

    if-eq p2, v0, :cond_c9

    const/16 v0, 0x2c9

    if-eq p2, v0, :cond_c0

    const/16 v0, 0x2ca

    if-eq p2, v0, :cond_b7

    packed-switch p2, :pswitch_data_ee

    packed-switch p2, :pswitch_data_f8

    packed-switch p2, :pswitch_data_10e

    packed-switch p2, :pswitch_data_118

    goto/16 :goto_ec

    .line 863
    :pswitch_58
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallInitiateResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 864
    goto/16 :goto_ec

    .line 868
    :pswitch_5d
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 869
    goto/16 :goto_ec

    .line 871
    :pswitch_64
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 872
    goto/16 :goto_ec

    .line 821
    :pswitch_6b
    const-string v0, "[Wifi-Call] RESPONSE came for WIFI_EMERGENCY_AID"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    goto/16 :goto_ec

    .line 845
    :pswitch_72
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setImsVtCapabilityResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 846
    goto/16 :goto_ec

    .line 851
    :pswitch_77
    iget v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->nData:I

    iget-object v1, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/huawei/ims/ImsRadioResponse;->responseHwImsLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;ILjava/lang/String;)V

    .line 852
    goto/16 :goto_ec

    .line 815
    :pswitch_80
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMUSERResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 816
    goto/16 :goto_ec

    .line 811
    :pswitch_87
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMSMSResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 812
    goto/16 :goto_ec

    .line 807
    :pswitch_8e
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 808
    goto/16 :goto_ec

    .line 803
    :pswitch_95
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 804
    goto :goto_ec

    .line 799
    :pswitch_9b
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 800
    goto :goto_ec

    .line 795
    :pswitch_a1
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMSMSReponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 796
    goto :goto_ec

    .line 791
    :pswitch_a5
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 792
    goto :goto_ec

    .line 787
    :pswitch_a9
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 788
    goto :goto_ec

    .line 783
    :pswitch_ad
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 784
    goto :goto_ec

    .line 773
    :pswitch_b1
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->acceptImsCallResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 774
    goto :goto_ec

    .line 770
    :pswitch_b5
    goto :goto_ec

    .line 767
    :pswitch_b6
    goto :goto_ec

    .line 880
    :cond_b7
    const-string v0, "RESPONSE GET_IMS_SMS_CONFIG"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {p0, p1, p3}, Lcom/huawei/ims/ImsRadioResponse;->responseGetImsSmsStatus(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;)V

    .line 882
    goto :goto_ec

    .line 875
    :cond_c0
    const-string v0, "RESPONSE SET_IMS_SMS_CONFIG"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-direct {p0, p1, p3}, Lcom/huawei/ims/ImsRadioResponse;->responseSetImsConfig(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;)V

    .line 877
    goto :goto_ec

    .line 835
    :cond_c9
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallConfirmResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 836
    goto :goto_ec

    .line 831
    :cond_cd
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallInitiateResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 832
    goto :goto_ec

    .line 857
    :cond_d1
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->switchWaitingOrHoldingAndActiveForImsResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 858
    goto :goto_ec

    .line 826
    :cond_d5
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->sendBatteryStatusResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 827
    goto :goto_ec

    .line 778
    :cond_d9
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 779
    goto :goto_ec

    .line 760
    :cond_dd
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->getLteInfoRsp(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 761
    goto :goto_ec

    .line 756
    :cond_e1
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setImsCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 757
    goto :goto_ec

    .line 840
    :cond_e5
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getImsImpuResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 841
    goto :goto_ec

    .line 764
    :cond_eb
    nop

    .line 888
    :goto_ec
    return-void

    nop

    :pswitch_data_ee
    .packed-switch 0x24c
        :pswitch_b6
        :pswitch_b5
        :pswitch_b1
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x2a2
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9b
        :pswitch_95
        :pswitch_8e
        :pswitch_87
        :pswitch_80
    .end packed-switch

    :pswitch_data_10e
    .packed-switch 0x2b5
        :pswitch_77
        :pswitch_72
        :pswitch_6b
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x2c4
        :pswitch_64
        :pswitch_5d
        :pswitch_58
    .end packed-switch
.end method

.method public acceptCallResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 266
    return-void
.end method

.method public acceptImsCallResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 483
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 484
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 258
    return-void
.end method

.method public acknowledgeRequest(I)V
    .registers 3
    .param p1, "serial"    # I

    .line 75
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processRequestAck(I)V

    .line 76
    return-void
.end method

.method public addImsConfMemberResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 511
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 512
    return-void
.end method

.method public conferenceResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conferenceResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 136
    return-void
.end method

.method public deactivateDataCallResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 274
    return-void
.end method

.method public explicitCallTransferResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 390
    const-string v0, "ImsRadioResponse"

    const-string v1, "explicitCallTransferResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 392
    return-void
.end method

.method public explicitImsCallTransferResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 619
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 620
    return-void
.end method

.method public getAvailableNetworksResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 335
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    return-void
.end method

.method public getBasebandVersionResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;

    .line 364
    return-void
.end method

.method public getCallForwardStatusResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 224
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    return-void
.end method

.method public getCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;ZI)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "isVar2"    # Z
    .param p3, "var3"    # I

    .line 242
    return-void
.end method

.method public getCurrentImsCallsResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .line 412
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentImsCallsResponse:responseInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseCurrentImsCallsResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 414
    return-void
.end method

.method public getDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 694
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method public getDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public getDMSMSResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 704
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public getDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 684
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public getDMUSERResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 714
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method public getFacilityLockForAppResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .line 283
    return-void
.end method

.method public getImsImpuResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 502
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public getImsRegisterStateResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;I)V
    .registers 5
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "regState"    # I

    .line 455
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;[I)V

    .line 456
    return-void
.end method

.method public getImsRegistrationStateResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;ZI)V
    .registers 6
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "isRegistered"    # Z
    .param p3, "ratFamily"    # I

    .line 917
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;[I)V

    .line 918
    return-void
.end method

.method public getLastCallFailCauseResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;)V
    .registers 5
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "var2"    # Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLastCallFailCauseResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "var2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;)V

    .line 155
    return-void
.end method

.method public getLastImsCallFailCauseResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;I)V
    .registers 5
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "ret"    # I

    .line 474
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;[I)V

    .line 475
    return-void
.end method

.method public getLteInfoRsp(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 628
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 629
    return-void
.end method

.method public getNetworkSelectionModeResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Z)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "isVar2"    # Z

    .line 309
    return-void
.end method

.method public hangupConnectionResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangupConnectionResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 96
    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangupForegroundResumeBackgroundResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 116
    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangupWaitingOrBackgroundResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 106
    return-void
.end method

.method public imsConferenceResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 464
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 465
    return-void
.end method

.method public imsDialResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsDialResponse:responseInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 86
    return-void
.end method

.method public modifyImsCallConfirmResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 557
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 558
    return-void
.end method

.method public modifyImsCallInitiateResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 539
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 540
    return-void
.end method

.method public modifyImsCallUpgradeCancelResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 548
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 549
    return-void
.end method

.method public rejectCallResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 144
    return-void
.end method

.method public reportStkServiceIsRunningResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 905
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 906
    return-void
.end method

.method public responseGetImsSmsStatus(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;)V
    .registers 9
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "payload"    # Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;

    .line 576
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 577
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    if-eqz v0, :cond_3f

    if-eqz p2, :cond_3f

    .line 578
    const/4 v1, 0x0

    .line 579
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 580
    .local v2, "response":[I
    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_3a

    .line 581
    iget-object v3, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_2f

    .line 582
    iget-object v3, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v5

    .line 584
    :cond_2f
    aget v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 585
    iget-object v3, v0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 587
    :cond_3a
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRilRequest;Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 589
    .end local v1    # "ret":Ljava/lang/Object;
    .end local v2    # "response":[I
    :cond_3f
    return-void
.end method

.method public responseHwImsLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;ILjava/lang/String;)V
    .registers 8
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "failCause"    # I
    .param p3, "failString"    # Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseHwImsLastCallFailCauseInfo:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "failCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "failString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRilRequest;

    move-result-object v0

    .line 185
    .local v0, "rr":Lcom/huawei/ims/ImsRilRequest;
    if-eqz v0, :cond_47

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_42

    .line 188
    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .local v2, "failInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object v1, v2

    .line 190
    iget-object v3, v0, Lcom/huawei/ims/ImsRilRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 192
    .end local v2    # "failInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_42
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRilRequest;Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 194
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_47
    return-void
.end method

.method public restartRILDResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 1012
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1013
    return-void
.end method

.method public sendBatteryStatusResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 723
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 724
    return-void
.end method

.method public sendDtmfResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmfResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 204
    return-void
.end method

.method public separateConnectionResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 372
    return-void
.end method

.method public setBarringPasswordResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 300
    return-void
.end method

.method public setCallForwardResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 232
    return-void
.end method

.method public setCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 250
    return-void
.end method

.method public setClirResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClirResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 214
    return-void
.end method

.method public setDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 646
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 647
    return-void
.end method

.method public setDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 637
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 638
    return-void
.end method

.method public setDMSMSReponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 664
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 665
    return-void
.end method

.method public setDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 655
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 656
    return-void
.end method

.method public setEncryptVolteCallSwitchResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEncryptVolteCallSwitchResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 743
    return-void
.end method

.method public setFacilityLockForAppResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;I)V
    .registers 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .line 292
    return-void
.end method

.method public setImsCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsCallWaitingResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 531
    return-void
.end method

.method public setImsClirResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 520
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 521
    return-void
.end method

.method public setImsMuteResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 492
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 493
    return-void
.end method

.method public setImsRegErrReportResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 732
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 733
    return-void
.end method

.method public setImsVtCapabilityResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 566
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 567
    return-void
.end method

.method public setMuteResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMuteResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 382
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 317
    return-void
.end method

.method public setNetworkSelectionModeManualResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 325
    return-void
.end method

.method public setSimCardPowerResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 896
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 897
    return-void
.end method

.method public startDtmfResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmfResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 345
    return-void
.end method

.method public stopDtmfResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDtmfResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 355
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveForImsResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 610
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 611
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V
    .registers 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchWaitingOrHoldingAndActiveResponse:responseInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioResponse"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 126
    return-void
.end method

.method public uiccAuthResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;)V
    .registers 3
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .param p2, "uiccAuthRst"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;

    .line 927
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseUiccAuth(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;)V

    .line 928
    return-void
.end method
