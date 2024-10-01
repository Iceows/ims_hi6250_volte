.class public Lcom/huawei/sci/SciSSConfAuth$GbaResult;
.super Ljava/lang/Object;
.source "SciSSConfAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConfAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GbaResult"
.end annotation


# instance fields
.field private btid:Ljava/lang/String;

.field private ksnaf:[B

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->btid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBtid()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->btid:Ljava/lang/String;

    return-object v0
.end method

.method public getKsnaf()[B
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->ksnaf:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->status:I

    return v0
.end method

.method public setBtid(Ljava/lang/String;)V
    .locals 0
    .param p1, "btid"    # Ljava/lang/String;

    .line 281
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->btid:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setKsnaf([B)V
    .locals 0
    .param p1, "ksnaf"    # [B

    .line 291
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->ksnaf:[B

    .line 292
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 271
    iput p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->status:I

    .line 272
    return-void
.end method
