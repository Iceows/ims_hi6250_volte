.class public Lcom/huawei/sci/SciSSConfCb;
.super Ljava/lang/Object;
.source "SciSSConfCb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSSConfCb$Callback;
    }
.end annotation


# static fields
.field private static final BSF_LOCK:Ljava/lang/Object;

.field private static bsfSearchResult:I

.field private static bsfThread:Ljava/lang/Runnable;

.field private static callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

.field private static sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 18
    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->BSF_LOCK:Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/huawei/sci/SciSSConfCb$1;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfCb$1;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->bsfThread:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 15
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->BSF_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 15
    sget v0, Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 15
    sput p0, Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I

    return p0
.end method

.method public static sciCbPostAuthReq(I[BZ)V
    .registers 6
    .param p0, "gbaType"    # I
    .param p1, "nafId"    # [B
    .param p2, "isForceGba"    # Z

    .line 90
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostAuthReq enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/huawei/sci/SciSSConfAuthInfo;->setGbaType(I)V

    .line 93
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/sci/SciSSConfAuthInfo;->setNafId([B)V

    .line 96
    if-eqz p2, :cond_26

    sget-object v1, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-eqz v1, :cond_26

    .line 97
    invoke-virtual {v1, p0, p1}, Lcom/huawei/sci/SciSSConfAuth;->deleteGBAKsnaf(I[B)I

    move-result v1

    if-eqz v1, :cond_26

    .line 98
    const-string v1, "deleteGBAKsnaf  failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_26
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 103
    const-string v2, "continueSSConfService with failed."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [B

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(ILjava/lang/String;[B)I

    .line 106
    :cond_3a
    return-void
.end method

.method public static sciCbPostBsfAuth([B[B)V
    .registers 6
    .param p0, "rand"    # [B
    .param p1, "autn"    # [B

    .line 221
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostBsfAuth enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v1, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-nez v1, :cond_11

    .line 224
    const-string v1, "sciCbPostBsfAuth the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 228
    :cond_11
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuthInfo;->setRand([B)V

    .line 230
    new-instance v0, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;-><init>()V

    .line 231
    .local v0, "akaParams":Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;
    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->setAuth([B)V

    .line 232
    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->setRand([B)V

    .line 233
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v1

    .line 235
    .local v1, "gbaType":I
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBABootstrap(ILcom/huawei/sci/SciSSConfAuth$AkaAuthParams;Ljava/lang/Object;)I

    .line 236
    return-void
.end method

.method public static sciCbPostBsfResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "btid"    # Ljava/lang/String;
    .param p1, "lifeTime"    # Ljava/lang/String;

    .line 245
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostBsfResult enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v1, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-nez v1, :cond_11

    .line 248
    const-string v1, "sciCbPostBsfResult the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_11
    new-instance v0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;-><init>()V

    .line 253
    .local v0, "gbaParams":Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;
    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setBtid(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setLifeTime(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getRand()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setRand([B)V

    .line 256
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v1

    .line 258
    .local v1, "gbaType":I
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBABpUpdate(ILcom/huawei/sci/SciSSConfAuth$GbaBpParams;Ljava/lang/Object;)I

    .line 259
    return-void
.end method

.method public static sciGetKsNaf(I[BI)Z
    .registers 10
    .param p0, "gbaType"    # I
    .param p1, "nafId"    # [B
    .param p2, "times"    # I

    .line 117
    const-string v0, "SciSSConfCb"

    const-string v1, "sciGetKsNaf enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v1, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 119
    const-string v1, "sciGetKsNaf the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v2

    .line 123
    :cond_12
    invoke-virtual {v1, p0, p1}, Lcom/huawei/sci/SciSSConfAuth;->getGBAKsnaf(I[B)Lcom/huawei/sci/SciSSConfAuth$GbaResult;

    move-result-object v1

    .line 125
    .local v1, "gbaResult":Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    if-nez v1, :cond_1e

    .line 126
    const-string v3, "sciGetKsNaf the gbaResult is null."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v2

    .line 130
    :cond_1e
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getStatus()I

    move-result v3

    .line 131
    .local v3, "status":I
    const/4 v4, 0x0

    .line 133
    .local v4, "result":I
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getKsnaf()[B

    move-result-object v5

    if-nez v5, :cond_33

    .line 134
    const-string v5, "sciGetKsNaf the ks_naf is null."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-array v5, v2, [B

    invoke-virtual {v1, v5}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->setKsnaf([B)V

    .line 138
    :cond_33
    const/4 v5, 0x1

    if-eqz v3, :cond_7e

    if-eq v3, v5, :cond_77

    const/4 v6, 0x2

    if-eq v3, v6, :cond_6f

    const/4 v5, 0x3

    const-string v6, "sciGetKsNaf result = "

    if-eq v3, v5, :cond_53

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v2

    .line 157
    :cond_53
    const/16 v5, 0xa

    if-le p2, v5, :cond_6a

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v2

    .line 163
    :cond_6a
    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb;->waitToGetGBAKsnaf(I[BI)Z

    move-result v0

    return v0

    .line 153
    :cond_6f
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->bsfThread:Ljava/lang/Runnable;

    const-string v6, "bsfthread"

    invoke-static {v0, v6}, Lcom/huawei/sci/SciSSConfCb;->startThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 154
    goto :goto_90

    .line 149
    :cond_77
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSSConfCb;->sciTriggerGBAKsNAF(I[B)Z

    move-result v0

    xor-int/2addr v0, v5

    move v4, v0

    .line 150
    goto :goto_90

    .line 141
    :cond_7e
    const-string v6, "continueSSConfService with success."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getBtid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getKsnaf()[B

    move-result-object v6

    invoke-static {v3, v0, v6}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(ILjava/lang/String;[B)I

    move-result v4

    .line 143
    nop

    .line 169
    :goto_90
    if-nez v4, :cond_93

    move v2, v5

    :cond_93
    return v2
.end method

.method public static sciSSConfCbPostResult(III)V
    .registers 5
    .param p0, "ssType"    # I
    .param p1, "opType"    # I
    .param p2, "status"    # I

    .line 73
    const-string v0, "SciSSConfCb"

    const-string v1, "sciSSConfCbPostResult enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    if-eqz v1, :cond_f

    .line 76
    invoke-interface {v1, p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb$Callback;->sciSSConfCbPostResult(III)V

    goto :goto_14

    .line 78
    :cond_f
    const-string v1, "sciSSConfCbPostResult the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_14
    return-void
.end method

.method public static sciTriggerGBAKsNAF(I[B)Z
    .registers 6
    .param p0, "gbaType"    # I
    .param p1, "nafId"    # [B

    .line 180
    const-string v0, "SciSSConfCb"

    const-string v1, "sciTriggerGBAKsNAF enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getImpi()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "impi":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 184
    const-string v3, "triggerGBAKsNAF the impi is null."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v2

    .line 188
    :cond_18
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v1, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBAKsNAF(I[BLjava/lang/String;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_26

    const/4 v2, 0x1

    :cond_26
    return v2
.end method

.method public static setCallback(Lcom/huawei/sci/SciSSConfCb$Callback;)V
    .registers 1
    .param p0, "cb"    # Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 53
    sput-object p0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 54
    return-void
.end method

.method public static setSSConfAuth(Lcom/huawei/sci/SciSSConfAuth;)V
    .registers 1
    .param p0, "ssconfAuth"    # Lcom/huawei/sci/SciSSConfAuth;

    .line 62
    sput-object p0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    .line 63
    return-void
.end method

.method public static startThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    return-void
.end method

.method private static waitToGetGBAKsnaf(I[BI)Z
    .registers 7
    .param p0, "gbaType"    # I
    .param p1, "nafId"    # [B
    .param p2, "times"    # I

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitTogetGBAKsnaf index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SciSSConfCb"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 204
    .local v0, "lockObject":Ljava/lang/Object;
    :try_start_1b
    monitor-enter v0
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_26

    .line 205
    const-wide/16 v1, 0x3e8

    :try_start_1e
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 206
    monitor-exit v0

    .line 209
    goto :goto_2e

    .line 206
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    .end local v0    # "lockObject":Ljava/lang/Object;
    .end local p0    # "gbaType":I
    .end local p1    # "nafId":[B
    .end local p2    # "times":I
    :try_start_25
    throw v1
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_26} :catch_26

    .line 207
    .restart local v0    # "lockObject":Ljava/lang/Object;
    .restart local p0    # "gbaType":I
    .restart local p1    # "nafId":[B
    .restart local p2    # "times":I
    :catch_26
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "SciSSConfCb"

    const-string v3, "waitTogetGBAKsnaf InterruptedException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2e
    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v1

    return v1
.end method
