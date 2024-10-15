.class public Lcom/huawei/ims/ImsRadioIndication;
.super Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;
.source "ImsRadioIndication.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsRadioIndication"

.field private static final LONG_RADIX:I = 0x10

.field private static final SRVSTATUS_LEN:I = 0x4

.field private static final START_LOCAL_HOLD_TONE:I = 0x1


# instance fields
.field mRil:Lcom/huawei/ims/ImsRIL;


# direct methods
.method constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .registers 2
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .line 59
    invoke-direct {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    .line 61
    return-void
.end method


# virtual methods
.method public UnsolMsg(IILvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;)V
    .registers 6
    .param p1, "indicationType"    # I
    .param p2, "msgId"    # I
    .param p3, "payload"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsolMsg:indicationType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",msgId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/16 v0, 0x7ef

    if-eq p2, v0, :cond_6f

    const/16 v0, 0x7f1

    if-eq p2, v0, :cond_69

    const/16 v0, 0x7f7

    if-eq p2, v0, :cond_63

    const/16 v0, 0x80a

    if-eq p2, v0, :cond_5f

    const/16 v0, 0x818

    if-eq p2, v0, :cond_5b

    const/16 v0, 0x81a

    if-eq p2, v0, :cond_55

    const/16 v0, 0x823

    if-eq p2, v0, :cond_4f

    const/16 v0, 0x811

    if-eq p2, v0, :cond_49

    const/16 v0, 0x812

    if-eq p2, v0, :cond_43

    goto :goto_73

    .line 439
    :cond_43
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsLteRrcInfo(ILjava/util/ArrayList;)V

    .line 440
    goto :goto_73

    .line 435
    :cond_49
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsLtePdcpInfo(ILjava/util/ArrayList;)V

    .line 436
    goto :goto_73

    .line 454
    :cond_4f
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsRegisterModeNotify(ILjava/util/ArrayList;)V

    .line 455
    goto :goto_73

    .line 443
    :cond_55
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsHoldToneInd(ILjava/util/ArrayList;)V

    .line 444
    goto :goto_73

    .line 448
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsDmcnNotify(I)V

    .line 449
    goto :goto_73

    .line 431
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsCsRedialNotify(I)V

    .line 432
    goto :goto_73

    .line 427
    :cond_63
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsVoiceBandInfo(ILjava/util/ArrayList;)V

    .line 428
    goto :goto_73

    .line 423
    :cond_69
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioIndication;->imsCallRingBackTone(ILjava/util/ArrayList;)V

    .line 424
    goto :goto_73

    .line 419
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioIndication;->imsCallStateChanged(I)V

    .line 420
    nop

    .line 461
    :goto_73
    return-void
.end method

.method public imsCallModifyEndCauseInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "imsModifyEndCause"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;

    .line 266
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 267
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbd6

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 268
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2, v0}, Lcom/huawei/ims/ImsRIL;->convertHalImsEndCause(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;Lcom/huawei/ims/ImsRIL;)[I

    move-result-object v0

    .line 269
    .local v0, "response":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_25

    .line 270
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallResultRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 272
    :cond_25
    return-void
.end method

.method public imsCallModifyInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "imsCallModify"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;

    .line 245
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 246
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbd5

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 247
    new-instance v3, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v0, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    iget v0, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callType:I

    iget-object v1, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    iget v1, v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callDomain:I

    const/4 v8, 0x0

    invoke-direct {v3, v0, v1, v8}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 249
    .local v3, "currImsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    new-instance v4, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v0, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    iget v0, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callType:I

    iget-object v1, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    iget v1, v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->callDomain:I

    invoke-direct {v4, v0, v1, v8}, Lcom/huawei/ims/ImsCallProfiles;-><init>(II[Ljava/lang/String;)V

    .line 251
    .local v4, "destImsCallProfile":Lcom/huawei/ims/ImsCallProfiles;
    new-instance v0, Lcom/huawei/ims/ImsCallAdapter$CallModify;

    iget v5, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->callIndex:I

    iget v7, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->modifyReason:I

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/huawei/ims/ImsCallAdapter$CallModify;-><init>(Lcom/huawei/ims/ImsCallProfiles;Lcom/huawei/ims/ImsCallProfiles;III)V

    .line 253
    .local v0, "callModify":Lcom/huawei/ims/ImsCallAdapter$CallModify;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_44

    .line 254
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mModifyCallRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v8, v0, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 256
    :cond_44
    return-void
.end method

.method public imsCallMtStatusInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "imsCallMtStatus"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;

    .line 282
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 283
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbdc

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 284
    new-instance v0, Lcom/huawei/ims/MtStatusReport;

    invoke-direct {v0, p2}, Lcom/huawei/ims/MtStatusReport;-><init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;)V

    .line 285
    .local v0, "mtStatusReport":Lcom/huawei/ims/MtStatusReport;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_24

    .line 286
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mMtStatusReportRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 288
    :cond_24
    return-void
.end method

.method public imsCallRing(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 122
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 123
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc4

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 124
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_1f

    .line 125
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mRingRegistrant:Landroid/os/Registrant;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 127
    :cond_1f
    return-void
.end method

.method public imsCallRingBackTone(ILjava/util/ArrayList;)V
    .registers 9
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsCallRingBackTone, indicationType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 138
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 139
    .local v0, "tones":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbc5

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 140
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_4e

    .line 141
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    move v1, v3

    .line 142
    .local v1, "isPlayTone":Z
    :cond_3d
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 144
    .end local v1    # "isPlayTone":Z
    :cond_4e
    return-void
.end method

.method public imsCallStateChanged(I)V
    .registers 5
    .param p1, "indicationType"    # I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsCallStateChanged:indicationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 110
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc3

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 111
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_35

    .line 112
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 114
    :cond_35
    return-void
.end method

.method public imsCsRedialNotify(I)V
    .registers 6
    .param p1, "type"    # I

    .line 296
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 297
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbde

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 298
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsCsRedialRegistrations:Landroid/os/RegistrantList;

    if-eqz v0, :cond_23

    .line 299
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsCsRedialRegistrations:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 301
    :cond_23
    return-void
.end method

.method public imsDmcnNotify(I)V
    .registers 5
    .param p1, "type"    # I

    .line 369
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 370
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbec

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 371
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsDmcnRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1f

    .line 372
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsDmcnRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 374
    :cond_1f
    return-void
.end method

.method public imsHandoverInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;)V
    .registers 7
    .param p1, "indicationType"    # I
    .param p2, "imsHandover"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;

    .line 154
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "handover":Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;
    new-instance v1, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;

    invoke-direct {v1, p2}, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;-><init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;)V

    move-object v0, v1

    .line 157
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbc6

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 158
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_26

    .line 159
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHandoverStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 161
    :cond_26
    return-void
.end method

.method public imsHoldToneInd(ILjava/util/ArrayList;)V
    .registers 9
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 353
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 354
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbee

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 355
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 356
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_4b

    if-eqz v0, :cond_4b

    array-length v1, v0

    if-lez v1, :cond_4b

    .line 357
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    move v1, v3

    .line 358
    .local v1, "isPlayTone":Z
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsHoldToneInd playtone ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsRadioIndication"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v2, v2, Lcom/huawei/ims/ImsRIL;->mHoldingToneRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 361
    .end local v1    # "isPlayTone":Z
    :cond_4b
    return-void
.end method

.method public imsLtePdcpInfo(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 324
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbe5

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 325
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 326
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLtePdcpInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_25

    .line 327
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLtePdcpInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 329
    :cond_25
    return-void
.end method

.method public imsLteRrcInfo(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 338
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 339
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbe6

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 340
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 341
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLteRrcInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_25

    .line 342
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mLteRrcInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 344
    :cond_25
    return-void
.end method

.method public imsNetworkStateChanged(I)V
    .registers 4
    .param p1, "indicationType"    # I

    .line 309
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 311
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0x40d

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 313
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 314
    return-void
.end method

.method public imsRegErrRptInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "imsRegErrRpt"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;

    .line 399
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 400
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbf0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 401
    new-instance v0, Lcom/huawei/ims/ImsRegErrReport;

    invoke-direct {v0, p2}, Lcom/huawei/ims/ImsRegErrReport;-><init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;)V

    .line 402
    .local v0, "mImsRegErrRpt":Lcom/huawei/ims/ImsRegErrReport;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsRegErrReport ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/ims/ImsRegErrReport;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsRadioIndication"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mVowifiRegErrReportRegistrations:Landroid/os/RegistrantList;

    if-eqz v1, :cond_3e

    .line 404
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mVowifiRegErrReportRegistrations:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 406
    :cond_3e
    return-void
.end method

.method public imsRegisterModeNotify(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 383
    .local p2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 384
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbef

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 385
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 386
    .local v0, "info":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_25

    .line 387
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mImsRegModeRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 389
    :cond_25
    return-void
.end method

.method public imsSrvStatusInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "imsSrvStatus"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;

    .line 171
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 172
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbc7

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v0, "srvStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/ImsServiceState;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_82

    .line 175
    new-instance v3, Lcom/huawei/ims/ImsServiceState;

    invoke-direct {v3}, Lcom/huawei/ims/ImsServiceState;-><init>()V

    .line 176
    .local v3, "srv":Lcom/huawei/ims/ImsServiceState;
    iget-object v4, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;

    aget-object v4, v4, v2

    iget v4, v4, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;->isValid:I

    const/4 v5, 0x1

    if-eqz v4, :cond_25

    move v4, v5

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    iput-boolean v4, v3, Lcom/huawei/ims/ImsServiceState;->isValid:Z

    .line 177
    iget-object v4, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;

    aget-object v4, v4, v2

    iget v4, v4, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;->callType:I

    iput v4, v3, Lcom/huawei/ims/ImsServiceState;->type:I

    .line 178
    iget-object v4, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;

    aget-object v4, v4, v2

    iget v4, v4, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;->srvStatus:I

    iput v4, v3, Lcom/huawei/ims/ImsServiceState;->state:I

    .line 179
    iget-object v4, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;

    aget-object v4, v4, v2

    iget-object v4, v4, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsUserData;

    .line 181
    .local v4, "rilImsUserData":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsUserData;
    :try_start_3e
    iget-object v6, v4, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsUserData;->data:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v3, Lcom/huawei/ims/ImsServiceState;->userdata:[B
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_48} :catch_49

    .line 184
    goto :goto_51

    .line 182
    :catch_49
    move-exception v6

    .line 183
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, "ImsRadioIndication"

    const-string v8, "imsSrvStatusInd:throw UnsupportedEncodingException"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_51
    new-array v6, v5, [Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    iput-object v6, v3, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    .line 187
    iget-object v6, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;

    aget-object v6, v6, v2

    .line 188
    .local v6, "rilImsServiceStatus":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5a
    if-ge v7, v5, :cond_7c

    .line 189
    iget-object v8, v6, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V2_0/RILImsStatusForAccTech;

    aget-object v8, v8, v7

    .line 190
    .local v8, "rilImsStatusForAccTech":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsStatusForAccTech;
    new-instance v9, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    invoke-direct {v9}, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;-><init>()V

    .line 191
    .local v9, "accessTechStatus":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    iget v10, v8, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsStatusForAccTech;->restrictCause:I

    iput v10, v9, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->restrictCause:I

    .line 192
    iget v10, v8, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsStatusForAccTech;->nwMode:I

    iput v10, v9, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->networkMode:I

    .line 193
    iget v10, v8, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsStatusForAccTech;->srvStatus:I

    iput v10, v9, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->state:I

    .line 194
    iget v10, v8, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsStatusForAccTech;->regStatus:I

    iput v10, v9, Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;->registered:I

    .line 195
    iget-object v10, v3, Lcom/huawei/ims/ImsServiceState;->accessTechStatus:[Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;

    aput-object v9, v10, v7

    .line 188
    .end local v8    # "rilImsStatusForAccTech":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsStatusForAccTech;
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 197
    .end local v7    # "j":I
    .end local v9    # "accessTechStatus":Lcom/huawei/ims/ImsServiceState$StatusForAccessTech;
    :cond_7c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v3    # "srv":Lcom/huawei/ims/ImsServiceState;
    .end local v4    # "rilImsUserData":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsUserData;
    .end local v6    # "rilImsServiceStatus":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsServiceStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 200
    .end local v2    # "i":I
    :cond_82
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    if-eqz v1, :cond_95

    .line 201
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSrvStatusRegistrations:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 203
    :cond_95
    return-void
.end method

.method public imsSuppSrvInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "imsSuppSvcNotification"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;

    .line 213
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 214
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v1, 0xbca

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 215
    new-instance v0, Lcom/huawei/ims/HwImsSuppServiceNotification;

    invoke-direct {v0, p2}, Lcom/huawei/ims/HwImsSuppServiceNotification;-><init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;)V

    .line 216
    .local v0, "notification":Lcom/huawei/ims/HwImsSuppServiceNotification;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_24

    .line 217
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSsnRegistrant:Landroid/os/Registrant;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 219
    :cond_24
    return-void
.end method

.method public imsVoiceBandInfo(ILjava/util/ArrayList;)V
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p2, "bandInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsVoiceBandInfo, type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bandInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRadioIndication"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 230
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-static {p2}, Lcom/huawei/ims/ImsRIL;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 231
    .local v0, "bands":[I
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/ImsRIL;->recordVoiceBandInfo([I)V

    .line 232
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    const/16 v2, 0xbcb

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsRIL;->unsljLog(I)V

    .line 233
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_4a

    if-eqz v0, :cond_4a

    .line 234
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v1, v1, Lcom/huawei/ims/ImsRIL;->mSpeechInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 236
    :cond_4a
    return-void
.end method

.method public vtFlowInfoReport(ILvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;)V
    .registers 12
    .param p1, "indicationType"    # I
    .param p2, "rilVtFlowInfoReport"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;

    .line 71
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->isVtFlowInfo()Z

    move-result v0

    const-string v1, "ImsRadioIndication"

    if-nez v0, :cond_e

    .line 72
    const-string v0, "ro.config.vt_flow_info=false"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 75
    :cond_e
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processIndication(I)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currVtTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;->currVtTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currTxFlow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;->currTxFlow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currRxFlow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;->currRxFlow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-wide/16 v2, 0x0

    .line 80
    .local v2, "currCallDataUsage":J
    :try_start_3f
    iget-object v0, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;->currRxFlow:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    iget-object v0, p2, Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;->currTxFlow:Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_4d} :catch_50

    add-long v2, v5, v7

    .line 84
    goto :goto_56

    .line 82
    :catch_50
    move-exception v0

    .line 83
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "vtFlowInfoReport : NumberFormatException "

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :goto_56
    invoke-static {}, Lcom/huawei/ims/vt/VtUtils;->getPreCallDataUsage()J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 89
    .local v4, "tempCallDataUsage":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currCallDataUsage="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ";tempCallDataUsage="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const/4 v8, 0x0

    if-lez v0, :cond_90

    .line 91
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v1, v8, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_aa

    .line 92
    :cond_90
    cmp-long v0, v4, v6

    if-gez v0, :cond_a5

    .line 93
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioIndication;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v0, v0, Lcom/huawei/ims/ImsRIL;->mVtFlowInfoReportRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v1, v8, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_aa

    .line 95
    :cond_a5
    const-string v0, "video call dataUsage is not change"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_aa
    invoke-static {v2, v3}, Lcom/huawei/ims/vt/VtUtils;->setPreCallDataUsage(J)V

    .line 100
    return-void
.end method
