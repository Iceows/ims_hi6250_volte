.class public Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;
.super Ljava/lang/Object;
.source "SciSSConfAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConfAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GbaBpParams"
.end annotation


# instance fields
.field private btid:Ljava/lang/String;

.field private lifeTime:Ljava/lang/String;

.field private rand:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtid()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->btid:Ljava/lang/String;

    return-object v0
.end method

.method public getLifeTime()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->lifeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRand()[B
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->rand:[B

    return-object v0
.end method

.method public setBtid(Ljava/lang/String;)V
    .locals 0
    .param p1, "btid"    # Ljava/lang/String;

    .line 242
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->btid:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setLifeTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "lifeTime"    # Ljava/lang/String;

    .line 252
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->lifeTime:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setRand([B)V
    .locals 0
    .param p1, "rand"    # [B

    .line 232
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->rand:[B

    .line 233
    return-void
.end method
