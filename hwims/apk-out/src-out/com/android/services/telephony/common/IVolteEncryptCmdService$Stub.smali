.class public abstract Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub;
.super Landroid/os/Binder;
.source "IVolteEncryptCmdService.java"

# interfaces
.implements Lcom/android/services/telephony/common/IVolteEncryptCmdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/IVolteEncryptCmdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.services.telephony.common.IVolteEncryptCmdService"

.field static final TRANSACTION_setEncryptDeviceValidFlag:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.android.services.telephony.common.IVolteEncryptCmdService"

    invoke-virtual {p0, p0, v0}, Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/IVolteEncryptCmdService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "com.android.services.telephony.common.IVolteEncryptCmdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/services/telephony/common/IVolteEncryptCmdService;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Lcom/android/services/telephony/common/IVolteEncryptCmdService;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/services/telephony/common/IVolteEncryptCmdService;
    .registers 1

    .line 133
    sget-object v0, Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub$Proxy;->sDefaultImpl:Lcom/android/services/telephony/common/IVolteEncryptCmdService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/services/telephony/common/IVolteEncryptCmdService;)Z
    .registers 2
    .param p0, "impl"    # Lcom/android/services/telephony/common/IVolteEncryptCmdService;

    .line 126
    sget-object v0, Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub$Proxy;->sDefaultImpl:Lcom/android/services/telephony/common/IVolteEncryptCmdService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 127
    sput-object p0, Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub$Proxy;->sDefaultImpl:Lcom/android/services/telephony/common/IVolteEncryptCmdService;

    .line 128
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
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

    .line 60
    const-string v0, "com.android.services.telephony.common.IVolteEncryptCmdService"

    .line 61
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v1

    .line 70
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub;->setEncryptDeviceValidFlag(I)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v1
.end method
