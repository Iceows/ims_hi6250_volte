.class public abstract Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;
.super Landroid/os/Binder;
.source "IP2pTransportForCallService.java"

# interfaces
.implements Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.ims.p2ptransport.service.IP2pTransportForCallService"

.field static final TRANSACTION_startP2pTransfer:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.huawei.ims.p2ptransport.service.IP2pTransportForCallService"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_4
    const-string v0, "com.huawei.ims.p2ptransport.service.IP2pTransportForCallService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;

    if-eqz v1, :cond_14

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;

    return-object v1

    .line 45
    :cond_14
    new-instance v1, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;
    .registers 1

    .line 137
    sget-object v0, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub$Proxy;->sDefaultImpl:Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;)Z
    .registers 2
    .param p0, "impl"    # Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;

    .line 130
    sget-object v0, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub$Proxy;->sDefaultImpl:Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 131
    sput-object p0, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub$Proxy;->sDefaultImpl:Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService;

    .line 132
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const-string v0, "com.huawei.ims.p2ptransport.service.IP2pTransportForCallService"

    .line 54
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 58
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v1

    .line 63
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    .line 66
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_26

    .line 69
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_25
    const/4 v2, 0x0

    .line 71
    .restart local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_26
    invoke-virtual {p0, v2}, Lcom/huawei/ims/p2ptransport/service/IP2pTransportForCallService$Stub;->startP2pTransfer(Landroid/os/ParcelFileDescriptor;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v1
.end method
