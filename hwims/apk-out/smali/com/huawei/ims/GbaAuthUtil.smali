.class public Lcom/huawei/ims/GbaAuthUtil;
.super Lcom/huawei/sci/SciSSConfAuth;
.source "GbaAuthUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GbaAuthUtil"


# instance fields
.field private mGbaAuth:Lcom/huawei/ims/GbaAuth;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/GbaAuth;)V
    .locals 1
    .param p1, "gbaAuth"    # Lcom/huawei/ims/GbaAuth;

    .line 19
    invoke-direct {p0}, Lcom/huawei/sci/SciSSConfAuth;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 21
    return-void
.end method


# virtual methods
.method public callBack(Lcom/huawei/ims/GbaAuth$AkaResult;Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Lcom/huawei/ims/GbaAuth$AkaResult;
    .param p2, "asyncSign"    # Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_0
    new-instance v1, Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    invoke-direct {v1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;-><init>()V

    .line 28
    .local v1, "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    new-instance v2, Lcom/huawei/sci/SciSSConfAuth$AkaResult;

    invoke-direct {v2}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;-><init>()V

    .line 30
    .local v2, "aka":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    iget-object v3, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget-object v4, p1, Lcom/huawei/ims/GbaAuth$AkaResult;->mStatus:Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;

    invoke-virtual {v4}, Lcom/huawei/ims/GbaAuth$AKA_ALGORITHM_STATUS;->getValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->setStatus(I)V

    .line 32
    iget-object v4, p1, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    if-eqz v4, :cond_0

    .line 33
    iget-object v4, p1, Lcom/huawei/ims/GbaAuth$AkaResult;->mAkaData:Lcom/huawei/ims/GbaAuth$DataValue;

    iget-object v4, v4, Lcom/huawei/ims/GbaAuth$DataValue;->mValue:[B

    invoke-virtual {v2, v4}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->setAkaData([B)V

    .line 36
    :cond_0
    invoke-virtual {v1, p2}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->setAsyncSign(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v1, v2}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->setResultData(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)V

    .line 40
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    .end local v2    # "aka":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    return-void

    .line 40
    .restart local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    .restart local v2    # "aka":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 41
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    .end local v2    # "aka":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public callBack(Lcom/huawei/ims/GbaAuth$BtidElem;Ljava/lang/Object;)V
    .locals 4
    .param p1, "btid"    # Lcom/huawei/ims/GbaAuth$BtidElem;
    .param p2, "asyncSign"    # Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    new-instance v1, Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    invoke-direct {v1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;-><init>()V

    .line 49
    .local v1, "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    iget-object v2, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->setAsyncSign(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)V

    .line 52
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    return-void

    .line 52
    .restart local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 53
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public callBack(Lcom/huawei/ims/GbaAuth$KsNafElem;Ljava/lang/Object;)V
    .locals 4
    .param p1, "ksNaf"    # Lcom/huawei/ims/GbaAuth$KsNafElem;
    .param p2, "asyncSign"    # Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    new-instance v1, Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    invoke-direct {v1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;-><init>()V

    .line 61
    .local v1, "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    iget-object v2, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->setAsyncSign(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/huawei/ims/GbaAuthUtil;->callBack(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)V

    .line 64
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    return-void

    .line 64
    .restart local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 65
    .end local v1    # "data":Lcom/huawei/sci/SciSSConfAuth$CallBackData;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public deleteGBAKsnaf(I[B)I
    .locals 2
    .param p1, "gbaType"    # I
    .param p2, "naf_id"    # [B

    .line 106
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/ims/GbaAuth;->deleteGBAKsnaf(I[B)I

    move-result v1

    monitor-exit v0

    return v1

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGBAKsnaf(I[B)Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    .locals 5
    .param p1, "gbaType"    # I
    .param p2, "naf_id"    # [B

    .line 88
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    new-instance v1, Lcom/huawei/sci/SciSSConfAuth$GbaResult;

    invoke-direct {v1}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;-><init>()V

    .line 91
    .local v1, "ret":Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    iget-object v2, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    iget-object v3, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v3, p1, p2}, Lcom/huawei/ims/GbaAuth;->getGBAKsnaf(I[B)Lcom/huawei/ims/GbaAuth$GbaResult;

    move-result-object v3

    .line 94
    .local v3, "authRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    iget-object v4, v3, Lcom/huawei/ims/GbaAuth$GbaResult;->btid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->setBtid(Ljava/lang/String;)V

    .line 95
    iget-object v4, v3, Lcom/huawei/ims/GbaAuth$GbaResult;->ksnaf:[B

    invoke-virtual {v1, v4}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->setKsnaf([B)V

    .line 96
    iget v4, v3, Lcom/huawei/ims/GbaAuth$GbaResult;->status:I

    invoke-virtual {v1, v4}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->setStatus(I)V

    .line 98
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .line 99
    .end local v3    # "authRet":Lcom/huawei/ims/GbaAuth$GbaResult;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    .line 100
    .end local v1    # "ret":Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public triggerGBABootstrap(ILcom/huawei/sci/SciSSConfAuth$AkaAuthParams;Ljava/lang/Object;)I
    .locals 4
    .param p1, "gbaType"    # I
    .param p2, "akaParams"    # Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;
    .param p3, "asyncSign"    # Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {p2}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->getRand()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->getAuth()[B

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, p3}, Lcom/huawei/ims/GbaAuth;->triggerGBABootstrap(I[B[BLjava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public triggerGBABpUpdate(ILcom/huawei/sci/SciSSConfAuth$GbaBpParams;Ljava/lang/Object;)I
    .locals 7
    .param p1, "gbaType"    # I
    .param p2, "gbaParams"    # Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;
    .param p3, "asyncSign"    # Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {p2}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->getRand()[B

    move-result-object v3

    iget-object v2, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 77
    invoke-virtual {p2}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->getBtid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huawei/ims/GbaAuth;->stringUtf8ToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 78
    invoke-virtual {p2}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->getLifeTime()Ljava/lang/String;

    move-result-object v5

    .line 76
    move v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/huawei/ims/GbaAuth;->triggerGBABpUpdate(I[B[BLjava/lang/String;Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public triggerGBAKsNAF(I[BLjava/lang/String;Ljava/lang/Object;)I
    .locals 3
    .param p1, "gbaType"    # I
    .param p2, "naf_id"    # [B
    .param p3, "impi"    # Ljava/lang/String;
    .param p4, "asyncSign"    # Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/huawei/ims/GbaAuthUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    iget-object v2, p0, Lcom/huawei/ims/GbaAuthUtil;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v2, p3}, Lcom/huawei/ims/GbaAuth;->stringUtf8ToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2, p4}, Lcom/huawei/ims/GbaAuth;->triggerGBAKsNAF(I[B[BLjava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
