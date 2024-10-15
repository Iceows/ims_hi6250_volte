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
    .registers 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtid()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->btid:Ljava/lang/String;

    return-object v0
.end method

.method public getLifeTime()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->lifeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRand()[B
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->rand:[B

    return-object v0
.end method

.method public setBtid(Ljava/lang/String;)V
    .registers 2
    .param p1, "btid"    # Ljava/lang/String;

    .line 240
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->btid:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setLifeTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "lifeTime"    # Ljava/lang/String;

    .line 248
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->lifeTime:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setRand([B)V
    .registers 2
    .param p1, "rand"    # [B

    .line 232
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$GbaBpParams;->rand:[B

    .line 233
    return-void
.end method
