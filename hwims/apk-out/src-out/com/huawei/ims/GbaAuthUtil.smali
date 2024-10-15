.class public Lcom/huawei/ims/GbaAuthUtil;
.super Lcom/huawei/sci/SciSSConfAuth;
.source "GbaAuthUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GbaAuthUtil"


# instance fields
.field private final mGbaAuth:Lcom/huawei/ims/GbaAuth;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/GbaAuth;)V
    .registers 3
    .param p1, "gbaAuth"    # Lcom/huawei/ims/GbaAuth;

    .line 27
    invoke-direct {p0}, Lcom/huawei/sci/SciSSConfAuth;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 29
    return-void
.end method


# virtual methods
.method public callBack(Lcom/huawei/ims/GbaAuth$AkaResult;Ljava/lang/Object;)V
    .registers 8
    .param p1, "result"    # Lcom/huawei/ims/GbaAuth$AkaResult;
    .param p2, "asyncSign"    # Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_3
    new-instance v1, Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    invoke-direct {v1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;-><init>()V

    .line 40
    .local v1, "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    new-instance v2, Lcom/huawei/sci/SciSSConfAuth$AkaResult;

    invoke-direct {v2}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;-><init>()V

    .line 42
    .local v2, "aka":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    iget-object v3, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_33

    .line 43
    :try_start_10
    iget-object v4, p1, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;

    invoke-virtual {v4}, Lcom/huawei/ims/GbaAuth$AkaAlgorithmStatus;->getValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->setStatus(I)V

    .line 44
    iget-object v4, p1, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    if-eqz v4, :cond_24

    .line 45
    iget-object v4, p1, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v4, v4, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-virtual {v2, v4}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->setAkaData([B)V

    .line 48
    :cond_24
    invoke-virtual {v1, p2}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->setAsyncSign(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v1, v2}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->setResultData(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)V

    .line 52
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_30

    .line 53
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    .end local v2    # "aka":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_33

    .line 54
    return-void

    .line 52
    .restart local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    .restart local v2    # "aka":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    :catchall_30
    move-exception v4

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local p0    # "this":Lcom/huawei/ims/GbaAuthUtil;
    .end local p1    # "result":Lcom/huawei/ims/GbaAuth$AkaResult;
    .end local p2    # "asyncSign":Ljava/lang/Object;
    :try_start_32
    throw v4

    .line 53
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    .end local v2    # "aka":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    .restart local p0    # "this":Lcom/huawei/ims/GbaAuthUtil;
    .restart local p1    # "result":Lcom/huawei/ims/GbaAuth$AkaResult;
    .restart local p2    # "asyncSign":Ljava/lang/Object;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public callBack(Lcom/huawei/ims/GbaAuth$BtidElem;Ljava/lang/Object;)V
    .registers 7
    .param p1, "btid"    # Lcom/huawei/ims/GbaAuth$BtidElem;
    .param p2, "asyncSign"    # Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    new-instance v1, Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    invoke-direct {v1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;-><init>()V

    .line 66
    .local v1, "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    iget-object v2, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_17

    .line 67
    :try_start_b
    invoke-virtual {v1, p2}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->setAsyncSign(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)V

    .line 69
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    .line 70
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_17

    .line 71
    return-void

    .line 69
    .restart local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .end local p0    # "this":Lcom/huawei/ims/GbaAuthUtil;
    .end local p1    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    .end local p2    # "asyncSign":Ljava/lang/Object;
    :try_start_16
    throw v3

    .line 70
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    .restart local p0    # "this":Lcom/huawei/ims/GbaAuthUtil;
    .restart local p1    # "btid":Lcom/huawei/ims/GbaAuth$BtidElem;
    .restart local p2    # "asyncSign":Ljava/lang/Object;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public callBack(Lcom/huawei/ims/GbaAuth$KsNafElem;Ljava/lang/Object;)V
    .registers 7
    .param p1, "ksNaf"    # Lcom/huawei/ims/GbaAuth$KsNafElem;
    .param p2, "asyncSign"    # Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    new-instance v1, Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    invoke-direct {v1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;-><init>()V

    .line 83
    .local v1, "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    iget-object v2, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_17

    .line 84
    :try_start_b
    invoke-virtual {v1, p2}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->setAsyncSign(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)V

    .line 86
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    .line 87
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_17

    .line 88
    return-void

    .line 86
    .restart local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .end local p0    # "this":Lcom/huawei/ims/GbaAuthUtil;
    .end local p1    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .end local p2    # "asyncSign":Ljava/lang/Object;
    :try_start_16
    throw v3

    .line 87
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    .restart local p0    # "this":Lcom/huawei/ims/GbaAuthUtil;
    .restart local p1    # "ksNaf":Lcom/huawei/ims/GbaAuth$KsNafElem;
    .restart local p2    # "asyncSign":Ljava/lang/Object;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public deleteGBAKsnaf(I[B)I
    .registers 5
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B

    .line 174
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/ims/GbaAuth;->deleteGbaKsnaf(I[B)I

    move-result v1

    monitor-exit v0

    return v1

    .line 176
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getGBAKsnaf(I[B)Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    .registers 8
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B

    .line 152
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    new-instance v1, Lcom/huawei/sci/SciSSConfAuth$GbaResult;

    invoke-direct {v1}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;-><init>()V

    .line 155
    .local v1, "ret":Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    iget-object v2, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_26

    .line 156
    :try_start_b
    iget-object v3, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v3, p1, p2}, Lcom/huawei/ims/GbaAuth;->getGbaKsNaf(I[B)Lcom/huawei/ims/GbaAuth$GbaResult;

    move-result-object v3

    .line 157
    .local v3, "authRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    iget-object v4, v3, Lcom/huawei/ims/GbaAuth$GbaResult;->mBtid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->setBtid(Ljava/lang/String;)V

    .line 158
    iget-object v4, v3, Lcom/huawei/ims/GbaAuth$GbaResult;->mKsnaf:[B

    invoke-virtual {v1, v4}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->setKsnaf([B)V

    .line 159
    iget v4, v3, Lcom/huawei/ims/GbaAuth$GbaResult;->mStatus:I

    invoke-virtual {v1, v4}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->setStatus(I)V

    .line 160
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_23

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_26

    return-object v1

    .line 161
    .end local v3    # "authRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    .end local p0    # "this":Lcom/huawei/ims/GbaAuthUtil;
    .end local p1    # "gbaType":I
    .end local p2    # "nafId":[B
    :try_start_25
    throw v3

    .line 162
    .end local v1    # "ret":Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    .restart local p0    # "this":Lcom/huawei/ims/GbaAuthUtil;
    .restart local p1    # "gbaType":I
    .restart local p2    # "nafId":[B
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public triggerGBABootstrap(ILcom/huawei/sci/SciSSConfAuth$AkaAuthParams;Ljava/lang/Object;)I
    .registers 8
    .param p1, "gbaType"    # I
    .param p2, "akaParams"    # Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;
    .param p3, "asyncSign"    # Ljava/lang/Object;

    .line 100
    if-nez p2, :cond_4

    .line 101
    const/4 v0, 0x1

    return v0

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_7
    iget-object v1, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {p2}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->getRand()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->getAuth()[B

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, p3}, Lcom/huawei/ims/GbaAuth;->triggerGbaBootstrap(I[B[BLjava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 105
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public triggerGBABpUpdate(ILcom/huawei/sci/SciSSConfAuth$GbaBpParams;Ljava/lang/Object;)I
    .registers 11
    .param p1, "gbaType"    # I
    .param p2, "gbaParams"    # Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;
    .param p3, "asyncSign"    # Ljava/lang/Object;

    .line 118
    if-nez p2, :cond_4

    .line 119
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_7
    iget-object v1, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {p2}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->getRand()[B

    move-result-object v3

    iget-object v2, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 123
    invoke-virtual {p2}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->getBtid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huawei/ims/GbaAuth;->stringUtf8ToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p2}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->getLifeTime()Ljava/lang/String;

    move-result-object v5

    .line 122
    move v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/ims/GbaAuth;->triggerGbaBpUpdate(I[B[BLjava/lang/String;Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 124
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public triggerGBAKsNAF(I[BLjava/lang/String;Ljava/lang/Object;)I
    .registers 8
    .param p1, "gbaType"    # I
    .param p2, "nafId"    # [B
    .param p3, "impi"    # Ljava/lang/String;
    .param p4, "asyncSign"    # Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    iget-object v2, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v2, p3}, Lcom/huawei/ims/GbaAuth;->stringUtf8ToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2, p4}, Lcom/huawei/ims/GbaAuth;->triggerGbaKsNaf(I[B[BLjava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 140
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
