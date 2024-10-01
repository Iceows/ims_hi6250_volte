.class public Lcom/huawei/sci/SciLoginCb;
.super Ljava/lang/Object;
.source "SciLoginCb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciLoginCb$Callback;
    }
.end annotation


# static fields
.field private static mCallback:Lcom/huawei/sci/SciLoginCb$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciLoginCb;->mCallback:Lcom/huawei/sci/SciLoginCb$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static loginCbAkaAuth([B[B)I
    .locals 1
    .param p0, "pcRand"    # [B
    .param p1, "pcAutn"    # [B

    .line 8
    sget-object v0, Lcom/huawei/sci/SciConfCb;->mCallback:Lcom/huawei/sci/SciConfCb$Callback;

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/huawei/sci/SciLoginCb;->mCallback:Lcom/huawei/sci/SciLoginCb$Callback;

    invoke-interface {v0, p0, p1}, Lcom/huawei/sci/SciLoginCb$Callback;->sciLoginCbAkaAuth([B[B)I

    move-result v0

    return v0

    .line 11
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setCallback(Lcom/huawei/sci/SciLoginCb$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciLoginCb$Callback;

    .line 20
    sput-object p0, Lcom/huawei/sci/SciLoginCb;->mCallback:Lcom/huawei/sci/SciLoginCb$Callback;

    .line 21
    return-void
.end method
