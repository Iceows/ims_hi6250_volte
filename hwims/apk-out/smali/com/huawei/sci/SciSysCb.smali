.class public Lcom/huawei/sci/SciSysCb;
.super Ljava/lang/Object;
.source "SciSysCb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSysCb$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SciSysCb"

.field static mCallback:Lcom/huawei/sci/SciSysCb$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static setCallback(Lcom/huawei/sci/SciSysCb$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciSysCb$Callback;

    .line 82
    sput-object p0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    .line 83
    return-void
.end method

.method public static sysCbChkIfAppOnForeGround()Z
    .locals 2

    .line 52
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "SciSysCb"

    const-string v1, "sysCbChkIfAppOnForeGround null == SciSysCb.mCallback"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    invoke-interface {v0}, Lcom/huawei/sci/SciSysCb$Callback;->sysCbChkIfAppOnForeGround()Z

    move-result v0

    return v0
.end method

.method public static sysCbMwiComing()I
    .locals 2

    .line 26
    const-string v0, "SciSysCb"

    const-string v1, "sysCbMwiComing start!"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    if-nez v0, :cond_0

    .line 28
    const-string v0, "SciSysCb"

    const-string v1, "sysCbMwiComing null == SciSysCb.mCallback"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    return v0

    .line 31
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    invoke-interface {v0}, Lcom/huawei/sci/SciSysCb$Callback;->sciSysCbMwiComing()I

    move-result v0

    return v0
.end method

.method public static sysCbQueryIpByName(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "pcDomainName"    # Ljava/lang/String;
    .param p1, "pcIP4Addr"    # [Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "SciSysCb"

    const-string v1, "sysCbQueryIpByName null == SciSysCb.mCallback"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    invoke-interface {v0, p0, p1}, Lcom/huawei/sci/SciSysCb$Callback;->sciSysCbQueryIpByName(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static sysCbRecvNotifyMsg(Ljava/lang/String;)I
    .locals 2
    .param p0, "strNotifyStr"    # Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    if-nez v0, :cond_0

    .line 18
    const-string v0, "SciSysCb"

    const-string v1, "sysCbRecvNotifyMsg null == SciSysCb.mCallback"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    return v0

    .line 21
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    invoke-interface {v0, p0}, Lcom/huawei/sci/SciSysCb$Callback;->sciSysCbRecvNotifyMsg(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static sysCbServerConnected()I
    .locals 2

    .line 9
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    if-nez v0, :cond_0

    .line 10
    const-string v0, "SciSysCb"

    const-string v1, "sysCbServerConnected null == SciSysCb.mCallback"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x1

    return v0

    .line 13
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    invoke-interface {v0}, Lcom/huawei/sci/SciSysCb$Callback;->sciSysCbServerConnected()I

    move-result v0

    return v0
.end method

.method public static sysCbServerDisconnected(J)I
    .locals 2
    .param p0, "dwStatCode"    # J

    .line 36
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "SciSysCb"

    const-string v1, "sysCbServerDisconnected null == SciSysCb.mCallback"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    invoke-interface {v0, p0, p1}, Lcom/huawei/sci/SciSysCb$Callback;->sciSysCbServerDisconnected(J)I

    move-result v0

    return v0
.end method

.method public static sysCbServerTempUnavailable(J)I
    .locals 2
    .param p0, "dwStatCode"    # J

    .line 44
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "SciSysCb"

    const-string v1, "sysCbServerTempUnavailable null == SciSysCb.mCallback"

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSysCb;->mCallback:Lcom/huawei/sci/SciSysCb$Callback;

    invoke-interface {v0, p0, p1}, Lcom/huawei/sci/SciSysCb$Callback;->sciSysCbServerTempUnavailable(J)I

    move-result v0

    return v0
.end method
