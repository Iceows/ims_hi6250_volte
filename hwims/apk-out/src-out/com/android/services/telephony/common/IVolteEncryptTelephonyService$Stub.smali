.class public abstract Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;
.super Landroid/os/Binder;
.source "IVolteEncryptTelephonyService.java"

# interfaces
.implements Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.services.telephony.common.IVolteEncryptTelephonyService"

.field static final TRANSACTION_fallBack:I = 0x2

.field static final TRANSACTION_startVolteEncryptCallService:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "com.android.services.telephony.common.IVolteEncryptTelephonyService"

    invoke-virtual {p0, p0, v0}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "com.android.services.telephony.common.IVolteEncryptTelephonyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;
    .registers 1

    .line 170
    sget-object v0, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;->sDefaultImpl:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;)Z
    .registers 2
    .param p0, "impl"    # Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    .line 163
    sget-object v0, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;->sDefaultImpl:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 164
    sput-object p0, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;->sDefaultImpl:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    .line 165
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
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

    .line 67
    const-string v0, "com.android.services.telephony.common.IVolteEncryptTelephonyService"

    .line 68
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_20

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v1

    .line 86
    :cond_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;->fallBack()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v1

    .line 77
    :cond_20
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/IVolteEncryptCmdService;

    move-result-object v2

    .line 80
    .local v2, "_arg0":Lcom/android/services/telephony/common/IVolteEncryptCmdService;
    invoke-virtual {p0, v2}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;->startVolteEncryptCallService(Lcom/android/services/telephony/common/IVolteEncryptCmdService;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v1
.end method
