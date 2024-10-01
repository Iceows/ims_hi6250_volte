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
.field private static bsfSearchResult:I

.field private static bsfThread:Ljava/lang/Runnable;

.field private static callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

.field private static sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 9
    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    .line 11
    const/4 v0, 0x0

    sput v0, Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I

    .line 14
    new-instance v0, Lcom/huawei/sci/SciSSConfCb$1;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfCb$1;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSSConfCb;->bsfThread:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 5
    sput p0, Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I

    return p0
.end method

.method public static sciCbPostAuthReq(I[BZ)V
    .locals 4
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B
    .param p2, "forceGba"    # Z

    .line 78
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostAuthReq enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuthInfo;->setGbaType(I)V

    .line 81
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuthInfo;->setNaf_id([B)V

    .line 85
    if-eqz p2, :cond_0

    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/sci/SciSSConfAuth;->deleteGBAKsnaf(I[B)I

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "SciSSConfCb"

    const-string v1, "deleteGBAKsnaf  failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    const-string v1, "SciSSConfCb"

    const-string v2, "continueSSConfService with failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v1, ""

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-static {v2, v2, v0, v1, v3}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(IIILjava/lang/String;[B)I

    .line 97
    :cond_1
    return-void
.end method

.method public static sciCbPostBsfAuth([B[B)V
    .locals 4
    .param p0, "rand"    # [B
    .param p1, "autn"    # [B

    .line 216
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostBsfAuth enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-nez v0, :cond_0

    .line 220
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostBsfAuth the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuthInfo;->setRand([B)V

    .line 226
    new-instance v0, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;-><init>()V

    .line 227
    .local v0, "akaParams":Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;
    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->setAuth([B)V

    .line 228
    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->setRand([B)V

    .line 229
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v1

    .line 231
    .local v1, "gbaType":I
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBABootstrap(ILcom/huawei/sci/SciSSConfAuth$AkaAuthParams;Ljava/lang/Object;)I

    .line 232
    return-void
.end method

.method public static sciCbPostBsfResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "btid"    # Ljava/lang/String;
    .param p1, "lifeTime"    # Ljava/lang/String;

    .line 242
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostBsfResult enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    if-nez v0, :cond_0

    .line 246
    const-string v0, "SciSSConfCb"

    const-string v1, "sciCbPostBsfResult the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    :cond_0
    new-instance v0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;-><init>()V

    .line 251
    .local v0, "gbaParams":Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;
    invoke-virtual {v0, p0}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setBtid(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, p1}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setLifeTime(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getRand()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->setRand([B)V

    .line 254
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v1

    .line 256
    .local v1, "gbaType":I
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBABpUpdate(ILcom/huawei/sci/SciSSConfAuth$GbaBpParams;Ljava/lang/Object;)I

    .line 257
    return-void
.end method

.method public static sciGetKsNaf(I[BI)Z
    .locals 7
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B
    .param p2, "times"    # I

    .line 108
    const-string v0, "SciSSConfCb"

    const-string v1, "sciGetKsNaf enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    const-string v0, "SciSSConfCb"

    const-string v2, "sciGetKsNaf the call back interface is null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v1

    .line 115
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/sci/SciSSConfAuth;->getGBAKsnaf(I[B)Lcom/huawei/sci/SciSSConfAuth$GbaResult;

    move-result-object v0

    .line 117
    .local v0, "gbaResult":Lcom/huawei/sci/SciSSConfAuth$GbaResult;
    if-nez v0, :cond_1

    .line 119
    const-string v2, "SciSSConfCb"

    const-string v3, "sciGetKsNaf the gbaResult is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v1

    .line 123
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getStatus()I

    move-result v2

    .line 124
    .local v2, "iStatus":I
    const/4 v3, 0x0

    .line 126
    .local v3, "iResult":I
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getKsnaf()[B

    move-result-object v4

    if-nez v4, :cond_2

    .line 128
    const-string v4, "SciSSConfCb"

    const-string v5, "sciGetKsNaf the ks_naf is null."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-array v4, v1, [B

    invoke-virtual {v0, v4}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->setKsnaf([B)V

    .line 132
    :cond_2
    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 154
    const-string v4, "SciSSConfCb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sciGetKsNaf iResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v1

    .line 145
    :pswitch_0
    const/16 v4, 0xa

    if-le p2, v4, :cond_3

    .line 147
    const-string v4, "SciSSConfCb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sciGetKsNaf iResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v1

    .line 152
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb;->waitToGetGBAKsnaf(I[BI)Z

    move-result v1

    return v1

    .line 142
    :pswitch_1
    sget-object v5, Lcom/huawei/sci/SciSSConfCb;->bsfThread:Ljava/lang/Runnable;

    const-string v6, "bsfthread"

    invoke-static {v5, v6}, Lcom/huawei/sci/SciSSConfCb;->startThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 143
    goto :goto_0

    .line 139
    :pswitch_2
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSSConfCb;->sciTriggerGBAKsNAF(I[B)Z

    move-result v5

    xor-int/2addr v5, v4

    move v3, v5

    .line 140
    goto :goto_0

    .line 135
    :pswitch_3
    const-string v5, "SciSSConfCb"

    const-string v6, "continueSSConfService with success."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getBtid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->getKsnaf()[B

    move-result-object v6

    invoke-static {v1, v1, v2, v5, v6}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(IIILjava/lang/String;[B)I

    move-result v3

    .line 137
    nop

    .line 158
    :goto_0
    if-nez v3, :cond_4

    move v1, v4

    nop

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sciSSConfCbPostResult(III)V
    .locals 2
    .param p0, "ssType"    # I
    .param p1, "opType"    # I
    .param p2, "status"    # I

    .line 57
    const-string v0, "SciSSConfCb"

    const-string v1, "sciSSConfCbPostResult enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    invoke-interface {v0, p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb$Callback;->sciSSConfCbPostResult(III)V

    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "SciSSConfCb"

    const-string v1, "sciSSConfCbPostResult the call back interface is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void
.end method

.method public static sciTriggerGBAKsNAF(I[B)Z
    .locals 4
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B

    .line 169
    const-string v0, "SciSSConfCb"

    const-string v1, "sciTriggerGBAKsNAF enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuthInfo;->getImpi()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "impi":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 174
    const-string v2, "SciSSConfCb"

    const-string v3, "triggerGBAKsNAF the impi is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v1

    .line 178
    :cond_0
    sget-object v2, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, p1, v0, v3}, Lcom/huawei/sci/SciSSConfAuth;->triggerGBAKsNAF(I[BLjava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static setCallback(Lcom/huawei/sci/SciSSConfCb$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 35
    sput-object p0, Lcom/huawei/sci/SciSSConfCb;->callBack:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 36
    return-void
.end method

.method public static setSSConfAuth(Lcom/huawei/sci/SciSSConfAuth;)V
    .locals 0
    .param p0, "ssconfAuth"    # Lcom/huawei/sci/SciSSConfAuth;

    .line 45
    sput-object p0, Lcom/huawei/sci/SciSSConfCb;->sciSSConfAuth:Lcom/huawei/sci/SciSSConfAuth;

    .line 46
    return-void
.end method

.method public static startThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "name"    # Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 26
    return-void
.end method

.method private static waitToGetGBAKsnaf(I[BI)Z
    .locals 4
    .param p0, "gbaType"    # I
    .param p1, "naf_id"    # [B
    .param p2, "times"    # I

    .line 190
    const-string v0, "SciSSConfCb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitTogetGBAKsnaf index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 195
    .local v0, "lockObject":Ljava/lang/Object;
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 198
    monitor-exit v0

    .line 203
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 200
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "SciSSConfCb"

    const-string v3, "waitTogetGBAKsnaf InterruptedException."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v1

    return v1
.end method
