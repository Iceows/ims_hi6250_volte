.class public interface abstract Lcom/huawei/ims/HwImsCallSessionImpl$Listener;
.super Ljava/lang/Object;
.source "HwImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCallSessionHold(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
.end method

.method public abstract onCallSessionMerged()V
.end method

.method public abstract onCallSessionResumed(Lcom/huawei/ims/HwImsCallSessionImpl;Z)V
.end method

.method public abstract onCallSessionStarted(Lcom/huawei/ims/HwImsCallSessionImpl;)V
.end method

.method public abstract onClosed(Lcom/huawei/ims/HwImsCallSessionImpl;)V
.end method

.method public abstract onDisconnected(Lcom/huawei/ims/HwImsCallSessionImpl;)V
.end method

.method public abstract onUnsolCallModify(Lcom/huawei/ims/HwImsCallSessionImpl;Lcom/huawei/ims/ImsCallAdapter$CallModify;)V
.end method
