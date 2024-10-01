.class public abstract Lcom/huawei/sci/SciSSConfAuth;
.super Ljava/lang/Object;
.source "SciSSConfAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSSConfAuth$CallBackData;,
        Lcom/huawei/sci/SciSSConfAuth$GbaResult;,
        Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;,
        Lcom/huawei/sci/SciSSConfAuth$AkaResult;,
        Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;
    }
.end annotation


# static fields
.field private static final AKA_ALGORITHM_SUCCESS:I = 0x0

.field private static final AKA_ALGORITHM_SYNC_FAILURE:I = 0x1

.field public static final GBABOOTSTRAP:I = 0x1

.field public static final GBABPUPDATE:I = 0x2

.field public static final GBAKSNAF:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    return-void
.end method

.method private procAkaResult(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)Z
    .locals 8
    .param p1, "callBackData"    # Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    .line 128
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getResultData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/huawei/sci/SciSSConfAuth$AkaResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    const-string v0, "SciSSConfAuth"

    const-string v2, "procAkaResult the AkaResult is error."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return v1

    .line 134
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getResultData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConfAuth$AkaResult;

    .line 136
    .local v0, "akaResult":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->getStatus()I

    move-result v2

    .line 137
    .local v2, "iResult":I
    const/4 v3, 0x0

    .line 138
    .local v3, "res":[B
    const/4 v4, 0x0

    .line 140
    .local v4, "auts":[B
    packed-switch v2, :pswitch_data_0

    .line 149
    const-string v5, "SciSSConfAuth"

    const-string v6, "procAkaResult operate failed."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->getAkaData()[B

    move-result-object v4

    .line 147
    goto :goto_0

    .line 143
    :pswitch_1
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->getAkaData()[B

    move-result-object v3

    .line 144
    nop

    .line 153
    :goto_0
    if-nez v3, :cond_1

    new-array v3, v1, [B

    .line 154
    :cond_1
    if-nez v4, :cond_2

    new-array v4, v1, [B

    .line 156
    :cond_2
    const-string v5, "SciSSConfAuth"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "continueConfWithAuth: iResult="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {v1, v1, v2, v3, v4}, Lcom/huawei/sci/SciSSConf;->continueConfWithAuth(III[B[B)I

    move-result v5

    if-nez v5, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public callBack(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)V
    .locals 7
    .param p1, "callBackData"    # Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    .line 85
    const-string v0, "SciSSConfAuth"

    const-string v1, "callBack enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-nez p1, :cond_0

    .line 89
    const-string v0, "SciSSConfAuth"

    const-string v1, "callBackData is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getAsyncSign()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 95
    const-string v0, "SciSSConfAuth"

    const-string v1, "callBackData the asyncSign is error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 99
    :cond_1
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v0

    .line 100
    .local v0, "gbaType":I
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getNaf_id()[B

    move-result-object v1

    .line 101
    .local v1, "naf_id":[B
    const/4 v2, 0x0

    .line 103
    .local v2, "isSuccess":Z
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getAsyncSign()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 115
    const-string v3, "SciSSConfAuth"

    const-string v4, "callBackData the asyncSign is error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 112
    :pswitch_0
    invoke-static {v0, v1, v4}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v2

    .line 113
    goto :goto_0

    .line 109
    :pswitch_1
    invoke-static {v0, v1}, Lcom/huawei/sci/SciSSConfCb;->sciTriggerGBAKsNAF(I[B)Z

    move-result v2

    .line 110
    goto :goto_0

    .line 106
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/huawei/sci/SciSSConfAuth;->procAkaResult(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)Z

    move-result v2

    .line 107
    nop

    .line 119
    :goto_0
    if-nez v2, :cond_2

    .line 121
    const-string v3, "SciSSConfAuth"

    const-string v5, "continueSSConfService with failed."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v3, ""

    const/4 v5, 0x0

    new-array v6, v5, [B

    invoke-static {v5, v5, v4, v3, v6}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(IIILjava/lang/String;[B)I

    .line 124
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract deleteGBAKsnaf(I[B)I
.end method

.method public abstract getGBAKsnaf(I[B)Lcom/huawei/sci/SciSSConfAuth$GbaResult;
.end method

.method public abstract triggerGBABootstrap(ILcom/huawei/sci/SciSSConfAuth$AkaAuthParams;Ljava/lang/Object;)I
.end method

.method public abstract triggerGBABpUpdate(ILcom/huawei/sci/SciSSConfAuth$GbaBpParams;Ljava/lang/Object;)I
.end method

.method public abstract triggerGBAKsNAF(I[BLjava/lang/String;Ljava/lang/Object;)I
.end method
