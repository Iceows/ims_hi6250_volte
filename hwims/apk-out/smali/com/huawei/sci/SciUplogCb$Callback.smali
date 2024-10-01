.class public interface abstract Lcom/huawei/sci/SciUplogCb$Callback;
.super Ljava/lang/Object;
.source "SciUplogCb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciUplogCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract sciUplogCbLogErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sciUplogCbUplogFileClosed(Ljava/lang/String;)V
.end method

.method public abstract sciUplogCbUplogNotify(Ljava/lang/String;)V
.end method

.method public abstract sciUplogCbUplogResult(I)V
.end method
