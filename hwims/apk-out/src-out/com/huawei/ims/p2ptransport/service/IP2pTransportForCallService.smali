.class public interface abstract Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;
.super Ljava/lang/Object;
.source "IP2pTransportForCallService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;,
        Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Default;
    }
.end annotation


# virtual methods
.method public abstract startP2pTransfer(Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
