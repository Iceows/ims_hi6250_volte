.class public Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;
.super Ljava/lang/Object;
.source "SciSSConfAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConfAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AkaAuthParams"
.end annotation


# instance fields
.field private auth:[B

.field private rand:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuth()[B
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->auth:[B

    return-object v0
.end method

.method public getRand()[B
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->rand:[B

    return-object v0
.end method

.method public setAuth([B)V
    .locals 0
    .param p1, "auth"    # [B

    .line 183
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->auth:[B

    .line 184
    return-void
.end method

.method public setRand([B)V
    .locals 0
    .param p1, "rand"    # [B

    .line 173
    iput-object p1, p0, Lcom/huawei/sci/SciSSConfAuth$AkaAuthParams;->rand:[B

    .line 174
    return-void
.end method
