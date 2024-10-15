.class public Lcom/hisi/mapcon/IMapconService$Default;
.super Ljava/lang/Object;
.source "IMapconService.java"

# interfaces
.implements Lcom/hisi/mapcon/IMapconService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisi/mapcon/IMapconService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtOverWifiApn()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoWifiServiceDomain(II)I
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getVoWifiServiceState(II)I
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public notifyImsOff(II)I
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "currentDomain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public notifyImsOn(I)I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public notifyRoaming(I)V
    .registers 2
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    return-void
.end method

.method public notifyWifiOff(Lcom/hisi/mapcon/IMapconServiceCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/hisi/mapcon/IMapconServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public sendMessage(I)V
    .registers 2
    .param p1, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public setDomain(II)I
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "domain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public setVoWifiOff(I)I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public setVoWifiOn(I)I
    .registers 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public setVoWifiServiceDomain(III)I
    .registers 5
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "domain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public setVoWifiServiceOff(II)I
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setVoWifiServiceOn(II)I
    .registers 4
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public setupTunnelOverWifi(IILjava/lang/String;Lcom/hisi/mapcon/ServerAddr;)I
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "serviceType"    # I
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "serverAddr"    # Lcom/hisi/mapcon/ServerAddr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public teardownTunnelOverWifi(IILjava/lang/String;Lcom/hisi/mapcon/ServerAddr;)I
    .registers 6
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "serverAddr"    # Lcom/hisi/mapcon/ServerAddr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    return v0
.end method
