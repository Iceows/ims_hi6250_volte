.class public interface abstract Lcom/hisi/mapcon/IMapconServiceCallback;
.super Ljava/lang/Object;
.source "IMapconServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisi/mapcon/IMapconServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onVoWifiCloseDone()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
