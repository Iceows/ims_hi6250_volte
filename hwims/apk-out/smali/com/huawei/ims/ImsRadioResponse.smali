.class public Lcom/huawei/ims/ImsRadioResponse;
.super Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;
.source "ImsRadioResponse.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioResponse"


# instance fields
.field mRil:Lcom/huawei/ims/ImsRIL;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/ImsRIL;)V
    .locals 0
    .param p1, "ril"    # Lcom/huawei/ims/ImsRIL;

    .line 47
    invoke-direct {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    .line 49
    return-void
.end method

.method private responseCurrentImsCalls(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 238
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_4

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_3

    .line 244
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 245
    .local v2, "num":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .local v3, "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 247
    new-instance v5, Lcom/huawei/ims/DriverImsCall;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;

    invoke-direct {v5, v6}, Lcom/huawei/ims/DriverImsCall;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;)V

    .line 248
    .local v5, "dc":Lcom/huawei/ims/DriverImsCall;
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v6}, Lcom/huawei/ims/ImsRIL;->isSupportCnap()Z

    move-result v6

    if-nez v6, :cond_0

    .line 249
    const/4 v6, 0x2

    iput v6, v5, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 250
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "isSupportCnap : false"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 252
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-boolean v6, v5, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    if-eqz v6, :cond_1

    .line 254
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 255
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_1
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 258
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 246
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .end local v4    # "i":I
    .end local v5    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 263
    move-object v1, v3

    .line 264
    iget-object v4, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 266
    .end local v2    # "num":I
    .end local v3    # "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 268
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private responseCurrentImsCallsV1_2(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 283
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_4

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_3

    .line 289
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 290
    .local v2, "num":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 291
    .local v3, "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 292
    new-instance v5, Lcom/huawei/ims/DriverImsCall;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;

    invoke-direct {v5, v6}, Lcom/huawei/ims/DriverImsCall;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;)V

    .line 293
    .local v5, "dc":Lcom/huawei/ims/DriverImsCall;
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v6}, Lcom/huawei/ims/ImsRIL;->isSupportCnap()Z

    move-result v6

    if-nez v6, :cond_0

    .line 294
    const/4 v6, 0x2

    iput v6, v5, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 295
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "isSupportCnap : false"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 297
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-boolean v6, v5, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    if-eqz v6, :cond_1

    .line 299
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 300
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 302
    :cond_1
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 303
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 291
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 307
    .end local v4    # "i":I
    .end local v5    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 308
    move-object v1, v3

    .line 309
    iget-object v4, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 311
    .end local v2    # "num":I
    .end local v3    # "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 313
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private responseCurrentImsCallsWithImsDomain(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;",
            ">;)V"
        }
    .end annotation

    .line 322
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 323
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_4

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_3

    .line 329
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 330
    .local v2, "num":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v3, "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 332
    new-instance v5, Lcom/huawei/ims/DriverImsCall;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;

    invoke-direct {v5, v6}, Lcom/huawei/ims/DriverImsCall;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;)V

    .line 333
    .local v5, "dc":Lcom/huawei/ims/DriverImsCall;
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v6}, Lcom/huawei/ims/ImsRIL;->isSupportCnap()Z

    move-result v6

    if-nez v6, :cond_0

    .line 334
    const/4 v6, 0x2

    iput v6, v5, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 335
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "isSupportCnap : false"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 337
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-boolean v6, v5, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    if-eqz v6, :cond_1

    .line 339
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 340
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is enabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_1
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    iget-object v6, v6, Lcom/huawei/ims/ImsRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 343
    iget-object v6, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const-string v7, "InCall VoicePrivacy is disabled"

    invoke-virtual {v6, v7}, Lcom/huawei/ims/ImsRIL;->logd(Ljava/lang/String;)V

    .line 331
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 347
    .end local v4    # "i":I
    .end local v5    # "dc":Lcom/huawei/ims/DriverImsCall;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 348
    move-object v1, v3

    .line 349
    iget-object v4, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 351
    .end local v2    # "num":I
    .end local v3    # "dcCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/ims/DriverImsCall;>;"
    :cond_3
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 353
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private responseIntArrayList(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 741
    .local p2, "var":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 743
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_2

    .line 744
    const/4 v1, 0x0

    .line 745
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_1

    .line 746
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 747
    .local v2, "list_size":I
    new-array v3, v2, [I

    .line 748
    .local v3, "response":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 749
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    .line 748
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 751
    .end local v4    # "i":I
    :cond_0
    move-object v1, v3

    .line 752
    iget-object v4, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v4, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 754
    .end local v2    # "list_size":I
    .end local v3    # "response":[I
    :cond_1
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 756
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private varargs responseInts(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;[I)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var"    # [I

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v0, "ints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 735
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseIntArrayList(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 738
    return-void
.end method

.method private responseLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V
    .locals 5
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;

    .line 114
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 116
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_1

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "ret":Lcom/android/internal/telephony/LastCallFailCause;
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 119
    .local v2, "response":[I
    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_0

    .line 120
    new-instance v3, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v3}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    move-object v1, v3

    .line 121
    iget v3, p2, Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v3, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 122
    const/4 v3, 0x0

    iget v4, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    aput v4, v2, v3

    .line 124
    iget-object v3, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, v0, p1, v2}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 128
    .end local v1    # "ret":Lcom/android/internal/telephony/LastCallFailCause;
    .end local v2    # "response":[I
    :cond_1
    return-void
.end method

.method private responseSetImsConfig(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V
    .locals 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "payload"    # Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v1, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v1

    .line 432
    .local v1, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v1, :cond_1

    .line 434
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 435
    iget-object v2, v1, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, v0}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 440
    :cond_1
    return-void
.end method

.method private responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "s"    # Ljava/lang/String;

    .line 759
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 760
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_1

    .line 761
    const/4 v1, 0x0

    .line 762
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 763
    move-object v1, p2

    .line 764
    iget-object v2, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 766
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 768
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private responseUiccAuth(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;)V
    .locals 12
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "uiccAuthRst"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;

    .line 655
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseUiccAuth, info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "uiccAuthRst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 657
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_3

    .line 658
    const/4 v1, 0x0

    .line 659
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_2

    .line 660
    const-string v2, "ImsRadioResponse"

    const-string v3, "NO ERROR,start to process GbaAuth"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v2, Lcom/huawei/ims/GbaAuth$AuthResp;

    invoke-direct {v2}, Lcom/huawei/ims/GbaAuth$AuthResp;-><init>()V

    .line 662
    .local v2, "auth":Lcom/huawei/ims/GbaAuth$AuthResp;
    iget v3, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;->authStatus:I

    iput v3, v2, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    .line 663
    const-string v3, "ImsRadioResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseUiccAuth, mStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget v3, v2, Lcom/huawei/ims/GbaAuth$AuthResp;->mStatus:I

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto/16 :goto_0

    .line 706
    :cond_0
    new-instance v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;

    invoke-direct {v3}, Lcom/huawei/ims/GbaAuth$AuthSyncfail;-><init>()V

    .line 707
    .local v3, "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    new-instance v4, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v4}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v4, v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 708
    iget-object v4, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;->authSyncfail:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    .line 709
    .local v4, "failType":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;
    iget-object v5, v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;

    .line 710
    .local v5, "autsDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;
    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v7, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;->autsPresent:I

    iput v7, v6, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 711
    const-string v6, "ImsRadioResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAuts.mPresent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v8, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v7, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;->auts:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v6, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 713
    const-string v6, "ImsRadioResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAuts="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthSyncfail;->mAuts:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v8, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iput-object v3, v2, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    .line 717
    .end local v3    # "as":Lcom/huawei/ims/GbaAuth$AuthSyncfail;
    .end local v4    # "failType":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;
    .end local v5    # "autsDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;
    goto/16 :goto_0

    .line 666
    :cond_1
    new-instance v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;

    invoke-direct {v3}, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;-><init>()V

    .line 668
    .local v3, "ac":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    new-instance v4, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v4}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v4, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 669
    iget-object v4, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;->authChallenge:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;

    .line 670
    .local v4, "authChang":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;
    iget-object v5, v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->resData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESTYPE;

    .line 671
    .local v5, "resDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESTYPE;
    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v7, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESTYPE;->resPresent:I

    iput v7, v6, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 672
    const-string v6, "ImsRadioResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRes.mPresent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v8, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v6, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v7, v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESTYPE;->res:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v6, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 676
    const-string v6, "ImsRadioResponse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mRes:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v8, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 677
    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v8, v9}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 676
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v6, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v6}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v6, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 681
    iget-object v6, v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->ikData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHIKTYPE;

    .line 682
    .local v6, "ikType":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHIKTYPE;
    iget-object v7, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v8, v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHIKTYPE;->ikPresent:I

    iput v8, v7, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 683
    const-string v7, "ImsRadioResponse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIk.mPresent="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v10, v10, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v7, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v8, v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHIKTYPE;->ik:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, v7, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 686
    const-string v7, "ImsRadioResponse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ik="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mIk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v10, v10, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 687
    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 686
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v7, Lcom/huawei/ims/GbaAuth$DataValue;

    invoke-direct {v7}, Lcom/huawei/ims/GbaAuth$DataValue;-><init>()V

    iput-object v7, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    .line 692
    iget-object v7, v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;->ckData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHCKTYPE;

    .line 693
    .local v7, "ckDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHCKTYPE;
    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v10, v7, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHCKTYPE;->ckPresent:I

    iput v10, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    .line 694
    const-string v8, "ImsRadioResponse"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCk.mPresent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget v11, v11, Lcom/huawei/ims/GbaAuth$DataValue;->mPresent:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v8, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v10, v7, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHCKTYPE;->ck:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, v8, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 697
    const-string v8, "ImsRadioResponse"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ck="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/huawei/ims/GbaAuth$AuthRespChallenge;->mCk:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v11, v11, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    .line 698
    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 697
    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iput-object v3, v2, Lcom/huawei/ims/GbaAuth$AuthResp;->mResp:Ljava/lang/Object;

    .line 704
    .end local v3    # "ac":Lcom/huawei/ims/GbaAuth$AuthRespChallenge;
    .end local v4    # "authChang":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPCHALLENGETYPE;
    .end local v5    # "resDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESTYPE;
    .end local v6    # "ikType":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHIKTYPE;
    .end local v7    # "ckDatas":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHCKTYPE;
    nop

    .line 721
    :goto_0
    move-object v1, v2

    .line 722
    iget-object v3, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 724
    .end local v2    # "auth":Lcom/huawei/ims/GbaAuth$AuthResp;
    :cond_2
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 726
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method private responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 216
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 217
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_1

    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 220
    iget-object v2, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 224
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ret"    # Ljava/lang/Object;

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 59
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public RspMsg(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ILvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "msgId"    # I
    .param p3, "payload"    # Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    .line 491
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RspMsg:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    .line 599
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->switchWaitingOrHoldingAndActiveForImsResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 600
    goto/16 :goto_0

    .line 568
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->sendBatteryStatusResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 569
    goto/16 :goto_0

    .line 520
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 521
    goto/16 :goto_0

    .line 502
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->getLteInfoRsp(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 503
    goto/16 :goto_0

    .line 498
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setImsCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 499
    goto/16 :goto_0

    .line 582
    :sswitch_5
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getImsImpuResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 583
    goto/16 :goto_0

    .line 506
    :sswitch_6
    goto/16 :goto_0

    .line 494
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->imsDialResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 495
    goto/16 :goto_0

    .line 622
    :pswitch_0
    const-string v0, "ImsRadioResponse"

    const-string v1, "RESPONSE GET_IMS_SMS_CONFIG"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p0, p1, p3}, Lcom/huawei/ims/ImsRadioResponse;->responseGetImsSmsStatus(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V

    .line 624
    goto/16 :goto_0

    .line 617
    :pswitch_1
    const-string v0, "ImsRadioResponse"

    const-string v1, "RESPONSE SET_IMS_SMS_CONFIG"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-direct {p0, p1, p3}, Lcom/huawei/ims/ImsRadioResponse;->responseSetImsConfig(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V

    .line 619
    goto/16 :goto_0

    .line 605
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallInitiateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 606
    goto/16 :goto_0

    .line 610
    :pswitch_3
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 611
    goto :goto_0

    .line 613
    :pswitch_4
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 614
    goto :goto_0

    .line 563
    :pswitch_5
    const-string v0, "ImsRadioResponse"

    const-string v1, "[Wifi-Call] RESPONSE came for WIFI_EMERGENCY_AID"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    goto :goto_0

    .line 587
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setImsVtCapabilityResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 588
    goto :goto_0

    .line 593
    :pswitch_7
    iget v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nData:I

    iget-object v1, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/huawei/ims/ImsRadioResponse;->responseHwImsLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ILjava/lang/String;)V

    .line 594
    goto :goto_0

    .line 557
    :pswitch_8
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMUSERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 558
    goto :goto_0

    .line 553
    :pswitch_9
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMSMSResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 554
    goto :goto_0

    .line 549
    :pswitch_a
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 550
    goto :goto_0

    .line 545
    :pswitch_b
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 546
    goto :goto_0

    .line 541
    :pswitch_c
    iget-object v0, p3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->getDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 542
    goto :goto_0

    .line 537
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMSMSReponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 538
    goto :goto_0

    .line 533
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 534
    goto :goto_0

    .line 529
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 530
    goto :goto_0

    .line 525
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->setDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 526
    goto :goto_0

    .line 577
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallConfirmResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 578
    goto :goto_0

    .line 573
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->modifyImsCallInitiateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 574
    goto :goto_0

    .line 515
    :pswitch_13
    invoke-virtual {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->acceptImsCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 516
    goto :goto_0

    .line 512
    :pswitch_14
    goto :goto_0

    .line 509
    :pswitch_15
    nop

    .line 630
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x24c
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x279
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2a2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2b5
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2c4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2c9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x243 -> :sswitch_7
        0x24a -> :sswitch_6
        0x25d -> :sswitch_5
        0x267 -> :sswitch_4
        0x29c -> :sswitch_3
        0x29e -> :sswitch_2
        0x2ad -> :sswitch_1
        0x2bc -> :sswitch_0
    .end sparse-switch
.end method

.method public acceptCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 171
    return-void
.end method

.method public acceptImsCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 369
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 370
    return-void
.end method

.method public acknowledgeLastIncomingGsmSmsResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 169
    return-void
.end method

.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 71
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processRequestAck(I)V

    .line 72
    return-void
.end method

.method public addImsConfMemberResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 381
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 382
    return-void
.end method

.method public conferenceResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 100
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "conferenceResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 102
    return-void
.end method

.method public deactivateDataCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 173
    return-void
.end method

.method public explicitCallTransferResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 211
    const-string v0, "ImsRadioResponse"

    const-string v1, "explicitCallTransferResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 213
    return-void
.end method

.method public explicitImsCallTransferResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 449
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 450
    return-void
.end method

.method public getAvailableNetworksResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/OperatorInfo;>;"
    return-void
.end method

.method public getBasebandVersionResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Ljava/lang/String;

    .line 201
    return-void
.end method

.method public getCallForwardStatusResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p2, "var2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_0/CallForwardInfo;>;"
    return-void
.end method

.method public getCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ZI)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Z
    .param p3, "var3"    # I

    .line 165
    return-void
.end method

.method public getCurrentImsCallsResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .line 232
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;>;"
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentImsCallsResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseCurrentImsCalls(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 234
    return-void
.end method

.method public getCurrentImsCallsResponseV1_2(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;>;"
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentImsCallsResponseV1_2:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseCurrentImsCallsV1_2(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 279
    return-void
.end method

.method public getCurrentImsCallsWithImsDomainResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;>;"
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentImsCallsWithImsDomainResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseCurrentImsCallsWithImsDomain(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 320
    return-void
.end method

.method public getDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public getDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public getDMSMSResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public getDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 471
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public getDMUSERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 480
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public getFacilityLockForAppResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .line 175
    return-void
.end method

.method public getImsImpuResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "response"    # Ljava/lang/String;

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseString(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public getImsRegisterStateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "regState"    # I

    .line 357
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;[I)V

    .line 358
    return-void
.end method

.method public getImsRegistrationStateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ZI)V
    .locals 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "isRegistered"    # Z
    .param p3, "ratFamily"    # I

    .line 647
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;[I)V

    .line 648
    return-void
.end method

.method public getLastCallFailCauseResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;

    .line 108
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastCallFailCauseResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "var2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V

    .line 110
    return-void
.end method

.method public getLastImsCallFailCauseResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;I)V
    .locals 2
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "ret"    # I

    .line 365
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/ImsRadioResponse;->responseInts(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;[I)V

    .line 366
    return-void
.end method

.method public getLteInfoRsp(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 453
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 454
    return-void
.end method

.method public getNetworkSelectionModeResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Z)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # Z

    .line 181
    return-void
.end method

.method public hangupConnectionResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 80
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupConnectionResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 82
    return-void
.end method

.method public hangupForegroundResumeBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 90
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupForegroundResumeBackgroundResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 92
    return-void
.end method

.method public hangupWaitingOrBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 85
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hangupWaitingOrBackgroundResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 87
    return-void
.end method

.method public imsConferenceResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 361
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 362
    return-void
.end method

.method public imsDialResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 75
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsDialResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 77
    return-void
.end method

.method public modifyImsCallConfirmResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 404
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 405
    return-void
.end method

.method public modifyImsCallInitiateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 394
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 395
    return-void
.end method

.method public modifyImsCallUpgradeCancelResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 399
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 400
    return-void
.end method

.method public rejectCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 104
    return-void
.end method

.method public reportStkServiceIsRunningResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 643
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 644
    return-void
.end method

.method public responseGetImsSmsStatus(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V
    .locals 6
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "payload"    # Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    .line 414
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 415
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 418
    .local v2, "response":[I
    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v3, :cond_1

    .line 419
    iget-object v3, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 420
    iget-object v3, p2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v5

    .line 422
    :cond_0
    aget v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 423
    iget-object v3, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 425
    :cond_1
    iget-object v3, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v3, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 427
    .end local v1    # "ret":Ljava/lang/Object;
    .end local v2    # "response":[I
    :cond_2
    return-void
.end method

.method public responseHwImsLastCallFailCauseInfo(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ILjava/lang/String;)V
    .locals 4
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "failCause"    # I
    .param p3, "failString"    # Ljava/lang/String;

    .line 132
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseHwImsLastCallFailCauseInfo:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "failCause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "failString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsRIL;->processResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)Lcom/huawei/ims/ImsRILRequest;

    move-result-object v0

    .line 136
    .local v0, "rr":Lcom/huawei/ims/ImsRILRequest;
    if-eqz v0, :cond_1

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "ret":Ljava/lang/Object;
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_0

    .line 139
    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    .local v2, "failInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object v1, v2

    .line 141
    iget-object v3, v0, Lcom/huawei/ims/ImsRILRequest;->mResult:Landroid/os/Message;

    invoke-direct {p0, v3, v1}, Lcom/huawei/ims/ImsRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 143
    .end local v2    # "failInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/huawei/ims/ImsRadioResponse;->mRil:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v2, v0, p1, v1}, Lcom/huawei/ims/ImsRIL;->processResponseDone(Lcom/huawei/ims/ImsRILRequest;Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 145
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public restartRILDResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 729
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 730
    return-void
.end method

.method public sendBatteryStatusResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 483
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 484
    return-void
.end method

.method public sendDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 149
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmfResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 151
    return-void
.end method

.method public separateConnectionResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 203
    return-void
.end method

.method public setBarringPasswordResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 179
    return-void
.end method

.method public setCallForwardResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 161
    return-void
.end method

.method public setCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 167
    return-void
.end method

.method public setClirResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 154
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClirResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 156
    return-void
.end method

.method public setDMDYNResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 459
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 460
    return-void
.end method

.method public setDMPCSCFResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 456
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 457
    return-void
.end method

.method public setDMSMSReponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 465
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 466
    return-void
.end method

.method public setDMTIMERResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 462
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 463
    return-void
.end method

.method public setFacilityLockForAppResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;I)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "var2"    # I

    .line 177
    return-void
.end method

.method public setImsCallWaitingResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 389
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsCallWaitingResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 391
    return-void
.end method

.method public setImsClirResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 385
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 386
    return-void
.end method

.method public setImsMuteResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 373
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 374
    return-void
.end method

.method public setImsRegErrReportResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 487
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 488
    return-void
.end method

.method public setImsVtCapabilityResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 409
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 410
    return-void
.end method

.method public setMuteResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 206
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMuteResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 208
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 183
    return-void
.end method

.method public setNetworkSelectionModeManualResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 185
    return-void
.end method

.method public setSimCardPowerResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 636
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 637
    return-void
.end method

.method public startDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 192
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmfResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 194
    return-void
.end method

.method public stopDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 197
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDtmfResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 199
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveForImsResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 0
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 444
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 445
    return-void
.end method

.method public switchWaitingOrHoldingAndActiveResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    .line 95
    const-string v0, "ImsRadioResponse"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchWaitingOrHoldingAndActiveResponse:responseInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p1}, Lcom/huawei/ims/ImsRadioResponse;->responseVoid(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 97
    return-void
.end method

.method public uiccAuthResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;)V
    .locals 0
    .param p1, "info"    # Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .param p2, "uiccAuthRst"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;

    .line 651
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/ImsRadioResponse;->responseUiccAuth(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;)V

    .line 652
    return-void
.end method
