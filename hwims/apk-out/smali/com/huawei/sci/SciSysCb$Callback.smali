.class public interface abstract Lcom/huawei/sci/SciSysCb$Callback;
.super Ljava/lang/Object;
.source "SciSysCb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSysCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract sciSysCbMwiComing()I
.end method

.method public abstract sciSysCbQueryIpByName(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract sciSysCbRecvNotifyMsg(Ljava/lang/String;)I
.end method

.method public abstract sciSysCbServerConnected()I
.end method

.method public abstract sciSysCbServerDisconnected(J)I
.end method

.method public abstract sciSysCbServerTempUnavailable(J)I
.end method

.method public abstract sysCbChkIfAppOnForeGround()Z
.end method
