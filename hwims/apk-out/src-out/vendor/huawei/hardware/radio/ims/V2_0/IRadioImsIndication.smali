.class public interface abstract Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
.super Ljava/lang/Object;
.source "IRadioImsIndication.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;,
        Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.huawei.hardware.radio.ims@2.0::IRadioImsIndication"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
    .registers 8
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 19
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 20
    return-object v0

    .line 23
    :cond_4
    nop

    .line 24
    const-string v1, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsIndication"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 26
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_15

    instance-of v3, v2, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;

    if-eqz v3, :cond_15

    .line 27
    move-object v0, v2

    check-cast v0, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;

    return-object v0

    .line 30
    :cond_15
    new-instance v3, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Proxy;

    invoke-direct {v3, p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 33
    .local v3, "proxy":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
    :try_start_1a
    invoke-interface {v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;->interfaceChain()Ljava/util/ArrayList;

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

    .line 34
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_32} :catch_37

    if-eqz v6, :cond_35

    .line 35
    return-object v3

    .line 37
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_35
    goto :goto_22

    .line 39
    :cond_36
    goto :goto_38

    .line 38
    :catch_37
    move-exception v1

    .line 41
    :goto_38
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
    .registers 2
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 48
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public static getService()Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const-string v0, "default"

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;->getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
    .registers 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsIndication"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
    .registers 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsIndication"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
    .registers 2
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;->getService(Ljava/lang/String;Z)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract UnsolMsg(IILvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

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

.method public abstract imsCallModifyEndCauseInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsCallModifyInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsCallMtStatusInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsHandoverInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsNetworkStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsRegErrRptInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsSrvStatusInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsSuppSrvInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;)V
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

.method public abstract vtFlowInfoReport(ILvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
