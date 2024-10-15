.class public Lcom/huawei/sci/SciSSConfAuth$AkaResult;
.super Ljava/lang/Object;
.source "SciSSConfAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConfAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AkaResult"
.end annotation


# instance fields
.field private akaData:[B

.field private status:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAkaData()[B
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->akaData:[B

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 198
    iget v0, p0, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->status:I

    return v0
.end method

.method public setAkaData([B)V
    .registers 2
    .param p1, "akaData"    # [B

    .line 210
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->akaData:[B

    .line 211
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 202
    iput p1, p0, Lcom/huawei/sci/SciSSConfAuth$AkaResult;->status:I

    .line 203
    return-void
.end method
