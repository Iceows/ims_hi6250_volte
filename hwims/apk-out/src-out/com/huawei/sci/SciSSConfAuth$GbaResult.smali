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
    .registers 2

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->btid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBtid()Ljava/lang/String;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->btid:Ljava/lang/String;

    return-object v0
.end method

.method public getKsnaf()[B
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->ksnaf:[B

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 266
    iget v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->status:I

    return v0
.end method

.method public setBtid(Ljava/lang/String;)V
    .registers 2
    .param p1, "btid"    # Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->btid:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setKsnaf([B)V
    .registers 2
    .param p1, "ksnaf"    # [B

    .line 286
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->ksnaf:[B

    .line 287
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .line 270
    iput p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaResult;->status:I

    .line 271
    return-void
.end method
