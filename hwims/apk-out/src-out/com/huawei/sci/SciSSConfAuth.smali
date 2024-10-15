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
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private procAkaResult(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)Z
    .registers 11
    .param p1, "callBackData"    # Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    .line 122
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getResultData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/huawei/sci/SciSSConfAuth$AkaResult;

    const-string v1, "SciSSConfAuth"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 123
    const-string v0, "procAkaResult the AkaResult is error."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v2

    .line 127
    :cond_11
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getResultData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/sci/SciSSConfAuth$AkaResult;

    .line 129
    .local v0, "akaResult":Lcom/huawei/sci/SciSSConfAuth$AkaResult;
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->getStatus()I

    move-result v3

    .line 130
    .local v3, "result":I
    const/4 v4, 0x0

    .line 131
    .local v4, "res":[B
    const/4 v5, 0x0

    .line 133
    .local v5, "auts":[B
    const/4 v6, 0x1

    if-eqz v3, :cond_2d

    if-eq v3, v6, :cond_28

    .line 141
    const-string v7, "procAkaResult operate failed."

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 138
    :cond_28
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->getAkaData()[B

    move-result-object v5

    .line 139
    goto :goto_32

    .line 135
    :cond_2d
    invoke-virtual {v0}, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->getAkaData()[B

    move-result-object v4

    .line 136
    nop

    .line 145
    :goto_32
    if-nez v4, :cond_36

    .line 146
    new-array v4, v2, [B

    .line 149
    :cond_36
    if-nez v5, :cond_3a

    .line 150
    new-array v5, v2, [B

    .line 153
    :cond_3a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "continueConfWithAuth: result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {v3, v4, v5}, Lcom/huawei/sci/SciSSConf;->continueConfWithAuth(I[B[B)I

    move-result v1

    if-nez v1, :cond_55

    move v2, v6

    :cond_55
    return v2
.end method


# virtual methods
.method public callBack(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)V
    .registers 10
    .param p1, "callBackData"    # Lcom/huawei/sci/SciSSConfAuth$CallBackData;

    .line 84
    const-string v0, "SciSSConfAuth"

    const-string v1, "callBack enter."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-nez p1, :cond_f

    .line 87
    const-string v1, "callBackData is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 91
    :cond_f
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getAsyncSign()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    const-string v2, "callBackData the asyncSign is error."

    if-nez v1, :cond_1d

    .line 92
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 96
    :cond_1d
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/sci/SciSSConfAuthInfo;->getGbaType()I

    move-result v1

    .line 97
    .local v1, "gbaType":I
    invoke-static {}, Lcom/huawei/sci/SciSSConfAuthInfo;->getInstance()Lcom/huawei/sci/SciSSConfAuthInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/sci/SciSSConfAuthInfo;->getNafId()[B

    move-result-object v3

    .line 98
    .local v3, "nafId":[B
    const/4 v4, 0x0

    .line 100
    .local v4, "isSuccess":Z
    invoke-virtual {p1}, Lcom/huawei/sci/SciSSConfAuth$CallBackData;->getAsyncSign()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4f

    const/4 v7, 0x2

    if-eq v5, v7, :cond_4a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_45

    .line 111
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 108
    :cond_45
    invoke-static {v1, v3, v6}, Lcom/huawei/sci/SciSSConfCb;->sciGetKsNaf(I[BI)Z

    move-result v2

    .line 109
    .end local v4    # "isSuccess":Z
    .local v2, "isSuccess":Z
    goto :goto_54

    .line 105
    .end local v2    # "isSuccess":Z
    .restart local v4    # "isSuccess":Z
    :cond_4a
    invoke-static {v1, v3}, Lcom/huawei/sci/SciSSConfCb;->sciTriggerGBAKsNAF(I[B)Z

    move-result v2

    .line 106
    .end local v4    # "isSuccess":Z
    .restart local v2    # "isSuccess":Z
    goto :goto_54

    .line 102
    .end local v2    # "isSuccess":Z
    .restart local v4    # "isSuccess":Z
    :cond_4f
    invoke-direct {p0, p1}, Lcom/huawei/sci/SciSSConfAuth;->procAkaResult(Lcom/huawei/sci/SciSSConfAuth$CallBackData;)Z

    move-result v2

    .line 103
    .end local v4    # "isSuccess":Z
    .restart local v2    # "isSuccess":Z
    nop

    .line 115
    :goto_54
    if-nez v2, :cond_63

    .line 116
    const-string v4, "continueSSConfService with failed."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    new-array v0, v0, [B

    const-string v4, ""

    invoke-static {v6, v4, v0}, Lcom/huawei/sci/SciSSConf;->continueSSConfService(ILjava/lang/String;[B)I

    .line 119
    :cond_63
    return-void
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
