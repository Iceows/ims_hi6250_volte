.class public interface abstract Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;
.super Ljava/lang/Object;
.source "IP2pTransportAdapter.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter$Stub;,
        Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.huawei.hardware.vpeer.p2ptransport@1.0::IP2pTransportAdapter"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;
    .registers 8
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 13
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 14
    return-object v0

    .line 17
    :cond_4
    nop

    .line 18
    const-string v1, "vendor.huawei.hardware.vpeer.p2ptransport@1.0::IP2pTransportAdapter"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 20
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_15

    instance-of v3, v2, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;

    if-eqz v3, :cond_15

    .line 21
    move-object v0, v2

    check-cast v0, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;

    return-object v0

    .line 24
    :cond_15
    new-instance v3, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter$Proxy;

    invoke-direct {v3, p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 27
    .local v3, "proxy":Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;
    :try_start_1a
    invoke-interface {v3}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 28
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_37

    if-eqz v6, :cond_35

    .line 29
    return-object v3

    .line 31
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_35
    goto :goto_22

    .line 33
    :cond_36
    goto :goto_38

    .line 32
    :catch_37
    move-exception v1

    .line 35
    :goto_38
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;
    .registers 2
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 42
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getService()Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "default"

    invoke-static {v0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;->getService(Ljava/lang/String;)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;
    .registers 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const-string v0, "vendor.huawei.hardware.vpeer.p2ptransport@1.0::IP2pTransportAdapter"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;
    .registers 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const-string v0, "vendor.huawei.hardware.vpeer.p2ptransport@1.0::IP2pTransportAdapter"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;
    .registers 2
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;->getService(Ljava/lang/String;Z)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
