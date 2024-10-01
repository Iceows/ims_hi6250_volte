.class public Lcom/huawei/ims/ImsRadioIndication;
.super Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;
.source "ImsRadioIndication.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioIndication"

.field private static final SRVSTATUS_LEN:I = 0x4


# instance fields
.field private START_LOCAL_HOLD_TONE:I

.field mRil:Lcom/huawei/ims/ImsRIL;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 1
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .line 50
    invoke-direct {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/ImsRadioIndication;->START_LOCAL_HOLD_TONE:I

    .line 51
    iput-object p1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    .line 52
    return-void
.end method


# virtual methods
.method public UnsolMsg(IILvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;)V
    .locals 3
    .param p1, "indicationType"    # I
    .param p2, "msgId"    # I
    .param p3, "payload"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;

    .line 287
    const-string v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnsolMsg:indicationType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/16 v0, 0x7ef

    if-eq p2, v0, :cond_6

    const/16 v0, 0x7f1

    if-eq p2, v0, :cond_5

    const/16 v0, 0x7f7

    if-eq p2, v0, :cond_4

    const/16 v0, 0x80a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x818

    if-eq p2, v0, :cond_2

    const/16 v0, 0x81a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x823

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 310
    :pswitch_0
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsLteRrcInfo(ILjava/util/ArrayList;)V

    .line 311
    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsLtePdcpInfo(ILjava/util/ArrayList;)V

    .line 307
    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsRegisterModeNotify(ILjava/util/ArrayList;)V

    .line 326
    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsHoldToneInd(ILjava/util/ArrayList;)V

    .line 315
    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsDMCNNotify(I)V

    .line 320
    goto :goto_0

    .line 302
    :cond_3
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsCsRedialNotify(I)V

    .line 303
    goto :goto_0

    .line 298
    :cond_4
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsVoiceBandInfo(ILjava/util/ArrayList;)V

    .line 299
    goto :goto_0

    .line 294
    :cond_5
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsCallRingBackTone(ILjava/util/ArrayList;)V

    .line 295
    goto :goto_0

    .line 290
    :cond_6
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsCallStateChanged(I)V

    .line 291
    nop

    .line 332
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x811
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public imsCallModifyEndCauseInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsModifyEndCause"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;

    .line 192
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 193
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbd6

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 194
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2, v0}, Lcom/huawei/ims/ImsRIL;->convertHalImsEndCause(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;Lcom/huawei/ims/ImsRIL;)[I

    move-result-object v0

    .line 195
    .local v0, "response":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 198
    :cond_0
    return-void
.end method

.method public imsCallModifyInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "imsCallModify"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;

    .line 178
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 179
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbd5

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 180
    new-instance v3, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v0, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    iget-object v1, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v1, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    const/4 v8, 0x0

    invoke-direct {v3, v0, v1, v8}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 182
    .local v3, "currImsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    new-instance v4, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v0, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v0, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callType:I

    iget-object v1, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget v1, v1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->callDomain:I

    invoke-direct {v4, v0, v1, v8}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 184
    .local v4, "destImsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget v5, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->callIndex:I

    iget v7, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->modifyReason:I

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;III)V

    .line 186
    .local v0, "callModify":Lcom/huawei/ims/ImsCallAdapter$CallModify;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v8, v0, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 189
    :cond_0
    return-void
.end method

.method public imsCallMtStatusInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsCallMtStatus"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;

    .line 201
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 202
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbdc

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 203
    new-instance v0, Lcom/huawei/ims/MtStatusReport;

    invoke-direct {v0, p2}, Lcom/huawei/ims/MtStatusReport;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;)V

    .line 204
    .local v0, "mtStatusReport":Lcom/huawei/ims/MtStatusReport;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 207
    :cond_0
    return-void
.end method

.method public imsCallRing(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 99
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 100
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc4

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 101
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 104
    :cond_0
    return-void
.end method

.method public imsCallRingBackTone(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsCallRingBackTone, indicationType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 109
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 110
    .local v0, "tones":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbc5

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 111
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    .line 112
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    nop

    .line 113
    .local v1, "playtone":Z
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 115
    .end local v1    # "playtone":Z
    :cond_1
    return-void
.end method

.method public imsCallStateChanged(I)V
    .locals 3
    .param p1, "indicationType"    # I

    .line 90
    const-string v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsCallStateChanged:indicationType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 92
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc3

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 93
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 96
    :cond_0
    return-void
.end method

.method public imsCsRedialNotify(I)V
    .locals 4
    .param p1, "type"    # I

    .line 210
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 211
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbde

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 212
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsCSRedialRegistrations:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 215
    :cond_0
    return-void
.end method

.method public imsDMCNNotify(I)V
    .locals 3
    .param p1, "type"    # I

    .line 257
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 258
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbec

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 259
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsDMCNRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 262
    :cond_0
    return-void
.end method

.method public imsHandoverInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;)V
    .locals 4
    .param p1, "indicationType"    # I
    .param p2, "imsHandover"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;

    .line 118
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "handover":Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;
    new-instance v1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;

    invoke-direct {v1, p2}, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;)V

    move-object v0, v1

    .line 121
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbc6

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 122
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 125
    :cond_0
    return-void
.end method

.method public imsHoldToneInd(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 245
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbee

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 246
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 247
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 249
    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/huawei/ims/ImsRadioIndication;->START_LOCAL_HOLD_TONE:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    .line 250
    .local v1, "playtone":Z
    :cond_0
    const-string v2, "ImsRadioIndication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsHoldToneInd playtone ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 253
    .end local v1    # "playtone":Z
    :cond_1
    return-void
.end method

.method public imsLtePdcpInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 227
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbe5

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 228
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 229
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLtePDCPInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 232
    :cond_0
    return-void
.end method

.method public imsLteRrcInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 236
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbe6

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 237
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 238
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLteRRCInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 241
    :cond_0
    return-void
.end method

.method public imsNetworkStateChanged(I)V
    .locals 2
    .param p1, "indicationType"    # I

    .line 218
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 220
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0x40d

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 222
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 223
    return-void
.end method

.method public imsRegErrRptInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsRegErrRpt"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;

    .line 276
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 277
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbf0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 278
    new-instance v0, Lcom/huawei/ims/VoWiFiRegErrReport;

    invoke-direct {v0, p2}, Lcom/huawei/ims/VoWiFiRegErrReport;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;)V

    .line 279
    .local v0, "mVoWiFiRegErrRpt":Lcom/huawei/ims/VoWiFiRegErrReport;
    const-string v1, "ImsRadioIndication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoWiFiRegErrReport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/ims/VoWiFiRegErrReport;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mVoWiFiRegErrReportRegistrations:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 283
    :cond_0
    return-void
.end method

.method public imsRegisterModeNotify(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 266
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 267
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbef

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 268
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 269
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 272
    :cond_0
    return-void
.end method

.method public imsSrvStatusInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "imsSrvStatus"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;

    .line 128
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 129
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc7

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v0, "srvStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ImsServiceState;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 132
    new-instance v4, Lcom/huawei/ims/ImsServiceState;

    invoke-direct {v4}, Lcom/huawei/ims/ImsServiceState;-><init>()V

    .line 133
    .local v4, "srv":Lcom/huawei/ims/ImsServiceState;
    iget-object v5, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v5, v5, v3

    iget v5, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->isValid:I

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iput-boolean v5, v4, Lcom/huawei/ims/ImsServiceState;->isValid:Z

    .line 134
    iget-object v5, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v5, v5, v3

    iget v5, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->callType:I

    iput v5, v4, Lcom/huawei/ims/ImsServiceState;->type:I

    .line 135
    iget-object v5, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v5, v5, v3

    iget v5, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->srvStatus:I

    iput v5, v4, Lcom/huawei/ims/ImsServiceState;->state:I

    .line 136
    iget-object v5, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;

    .line 137
    .local v5, "rILImsUserData":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;
    iget-object v7, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;->data:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, v4, Lcom/huawei/ims/ImsServiceState;->userdata:[B

    .line 138
    new-array v7, v6, [Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    iput-object v7, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    .line 140
    iget-object v7, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v7, v7, v3

    .line 141
    .local v7, "rILImsServiceStatus":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;
    move v8, v2

    .local v8, "j":I
    :goto_2
    if-ge v8, v6, :cond_1

    .line 142
    iget-object v9, v7, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

    aget-object v9, v9, v8

    .line 143
    .local v9, "rILImsStatusForAccTech":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;
    new-instance v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    invoke-direct {v10}, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;-><init>()V

    .line 144
    .local v10, "accessTechStatus":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    iget v11, v9, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;->restrictCause:I

    iput v11, v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    .line 145
    iget v11, v9, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;->nwMode:I

    iput v11, v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    .line 146
    iget v11, v9, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;->srvStatus:I

    iput v11, v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    .line 147
    iget v11, v9, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;->regStatus:I

    iput v11, v10, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->registered:I

    .line 148
    iget-object v11, v4, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    aput-object v10, v11, v8

    .line 141
    .end local v9    # "rILImsStatusForAccTech":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 150
    .end local v8    # "j":I
    .end local v10    # "accessTechStatus":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v4    # "srv":Lcom/huawei/ims/ImsServiceState;
    .end local v5    # "rILImsUserData":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;
    .end local v7    # "rILImsServiceStatus":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 156
    :cond_3
    return-void
.end method

.method public imsSuppSrvInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "imsSuppSvcNofitication"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;

    .line 159
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 160
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbca

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 161
    new-instance v0, Lcom/huawei/ims/HwImsSuppServiceNotification;

    invoke-direct {v0, p2}, Lcom/huawei/ims/HwImsSuppServiceNotification;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;)V

    .line 162
    .local v0, "notification":Lcom/huawei/ims/HwImsSuppServiceNotification;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 165
    :cond_0
    return-void
.end method

.method public imsVoiceBandInfo(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p2, "bandInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsVoiceBandInfo, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",bandInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 170
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 171
    .local v0, "bands":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbcb

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 172
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 175
    :cond_0
    return-void
.end method

.method public vtFlowInfoReport(ILvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;)V
    .locals 9
    .param p1, "indicationType"    # I
    .param p2, "rilVtFlowInfoReport"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;

    .line 56
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->isVtFlowInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-string v0, "ImsRadioIndication"

    const-string v1, "ro.config.vt_flow_info=false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 61
    const-string v0, "ImsRadioIndication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currVtTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->currVtTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currTxFlow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->currTxFlow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currRxFlow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->currRxFlow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 65
    .local v2, "currCallDataUsage":J
    :try_start_0
    iget-object v4, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->currRxFlow:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iget-object v4, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->currTxFlow:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-long v2, v6, v4

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v4

    .line 68
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    const-string v5, "ImsRadioIndication"

    const-string v6, "vtFlowInfoReport : NumberFormatException "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-static {}, Lcom/huawei/ims/vt/VTUtils;->getPreCallDataUsage()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 75
    .local v4, "tempCallDataUsage":J
    const-string v6, "ImsRadioIndication"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currCallDataUsage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ";tempCallDataUsage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    cmp-long v6, v4, v0

    const/4 v7, 0x0

    if-lez v6, :cond_1

    .line 77
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v1, v7, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 78
    :cond_1
    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v1, v7, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 81
    :cond_2
    const-string v0, "ImsRadioIndication"

    const-string v1, "video call dataUsage is not change"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1
    invoke-static {v2, v3}, Lcom/huawei/ims/vt/VTUtils;->setPreCallDataUsage(J)V

    .line 86
    return-void
.end method
