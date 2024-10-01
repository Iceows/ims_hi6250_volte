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
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.hisi.mapcon.IMapconServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hisi/mapcon/IMapconServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_0
    const-string v0, "com.hisi.mapcon.IMapconServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hisi/mapcon/IMapconServiceCallback;

    if-eqz v1, :cond_1

    .line 35
    move-object v1, v0

    check-cast v1, Lcom/hisi/mapcon/IMapconServiceCallback;

    return-object v1

    .line 37
    :cond_1
    new-instance v1, Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const-string v0, "com.hisi.mapcon.IMapconServiceCallback"

    .line 46
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 50
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v1

    .line 55
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub;->onVoWifiCloseDone()V

    .line 57
    return v1
.end method
