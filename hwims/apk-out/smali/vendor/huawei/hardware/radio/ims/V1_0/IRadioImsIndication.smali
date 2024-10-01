.class public interface abstract Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
.super Ljava/lang/Object;
.source "IRadioImsIndication.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;,
        Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
    .locals 6
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 7
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 11
    :cond_0
    const-string v1, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    .line 12
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    .line 14
    .local v1, "iface":Landroid/os/IHwInterface;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;

    if-eqz v2, :cond_1

    .line 15
    move-object v0, v1

    check-cast v0, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;

    return-object v0

    .line 18
    :cond_1
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Proxy;

    invoke-direct {v2, p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v2, "proxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
    :try_start_0
    invoke-interface {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    .local v4, "descriptor":Ljava/lang/String;
    const-string v5, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 23
    return-object v2

    .line 25
    .end local v4    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 27
    :cond_3
    goto :goto_1

    .line 26
    :catch_0
    move-exception v3

    .line 29
    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 33
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const-string v0, "default"

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;->getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;->getService(Ljava/lang/String;Z)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract UnsolMsg(IILvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract asBinder()Landroid/os/IHwBinder;
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

.method public abstract imsCallModifyEndCauseInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsCallModifyInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsCallMtStatusInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsHandoverInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;)V
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

.method public abstract imsRegErrRptInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsSrvStatusInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsSuppSrvInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;)V
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

.method public abstract vtFlowInfoReport(ILvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
