.class public abstract Lcom/hisi/mapcon/IMapconServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IMapconServiceCallback.java"

# interfaces
.implements Lcom/hisi/mapcon/IMapconServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisi/mapcon/IMapconServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.hisi.mapcon.IMapconServiceCallback"

.field static final TRANSACTION_onVoWifiCloseDone:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "com.hisi.mapcon.IMapconServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconServiceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "com.hisi.mapcon.IMapconServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/hisi/mapcon/IMapconServiceCallback;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/hisi/mapcon/IMapconServiceCallback;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/hisi/mapcon/IMapconServiceCallback;
    .registers 1

    .line 128
    sget-object v0, Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;->sDefaultImpl:Lcom/hisi/mapcon/IMapconServiceCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/hisi/mapcon/IMapconServiceCallback;)Z
    .registers 2
    .param p0, "impl"    # Lcom/hisi/mapcon/IMapconServiceCallback;

    .line 121
    sget-object v0, Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;->sDefaultImpl:Lcom/hisi/mapcon/IMapconServiceCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 122
    sput-object p0, Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;->sDefaultImpl:Lcom/hisi/mapcon/IMapconServiceCallback;

    .line 123
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
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

    .line 61
    const-string v0, "com.hisi.mapcon.IMapconServiceCallback"

    .line 62
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 66
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v1

    .line 71
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub;->onVoWifiCloseDone()V

    .line 73
    return v1
.end method
