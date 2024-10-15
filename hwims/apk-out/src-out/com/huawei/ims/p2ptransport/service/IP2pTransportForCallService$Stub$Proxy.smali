.class Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IP2pTransportForCallService.java"

# interfaces
.implements Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 87
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 94
    const-string v0, "com.huawei.ims.p2ptransport.service.IP2pTransportForCallService"

    return-object v0
.end method

.method public startP2pTransfer(Landroid/os/ParcelFileDescriptor;)V
    .registers 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.huawei.ims.p2ptransport.service.IP2pTransportForCallService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 108
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {p1, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 112
    :cond_18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    :goto_1b
    iget-object v4, p0, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 115
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;->getDefaultImpl()Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 116
    invoke-static {}, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;->getDefaultImpl()Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;->startP2pTransfer(Landroid/os/ParcelFileDescriptor;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    return-void

    .line 119
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 122
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    nop

    .line 125
    return-void

    .line 122
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
