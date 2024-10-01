.class public interface abstract Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
.super Ljava/lang/Object;
.source "IRadioImsResponse.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;,
        Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
    .locals 6
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 7
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 11
    :cond_0
    const-string v1, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    .line 12
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    .line 14
    .local v1, "iface":Landroid/os/IHwInterface;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;

    if-eqz v2, :cond_1

    .line 15
    move-object v0, v1

    check-cast v0, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;

    return-object v0

    .line 18
    :cond_1
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Proxy;

    invoke-direct {v2, p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v2, "proxy":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
    :try_start_0
    invoke-interface {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;->interfaceChain()Ljava/util/ArrayList;

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
    const-string v5, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

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

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 33
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const-string v0, "default"

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;->getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;->getService(Ljava/lang/String;Z)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract RspMsg(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ILvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract conferenceResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract explicitCallTransferResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentImsCallsResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentImsCallsResponseV1_2(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentImsCallsWithImsDomainResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;",
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

.method public abstract getImsRegistrationStateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLastCallFailCauseResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hangupConnectionResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hangupForegroundResumeBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hangupWaitingOrBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
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

.method public abstract rejectCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setClirResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
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

.method public abstract setImsRegErrReportResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMuteResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract switchWaitingOrHoldingAndActiveResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uiccAuthResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;)V
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
