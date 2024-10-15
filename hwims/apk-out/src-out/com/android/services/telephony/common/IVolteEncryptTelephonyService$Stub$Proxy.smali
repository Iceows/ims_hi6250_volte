.class Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVolteEncryptTelephonyService.java"

# interfaces
.implements Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 103
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public fallBack()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.services.telephony.common.IVolteEncryptTelephonyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 147
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    invoke-static {}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;->getDefaultImpl()Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 148
    invoke-static {}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;->getDefaultImpl()Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;->fallBack()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    return-void

    .line 151
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 154
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    nop

    .line 157
    return-void

    .line 154
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 110
    const-string v0, "com.android.services.telephony.common.IVolteEncryptTelephonyService"

    return-object v0
.end method

.method public startVolteEncryptCallService(Lcom/android/services/telephony/common/IVolteEncryptCmdService;)V
    .registers 7
    .param p1, "cmdService"    # Lcom/android/services/telephony/common/IVolteEncryptCmdService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.services.telephony.common.IVolteEncryptTelephonyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/android/services/telephony/common/IVolteEncryptCmdService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 124
    iget-object v2, p0, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 125
    .local v2, "_status":Z
    if-nez v2, :cond_36

    invoke-static {}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;->getDefaultImpl()Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 126
    invoke-static {}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;->getDefaultImpl()Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;->startVolteEncryptCallService(Lcom/android/services/telephony/common/IVolteEncryptCmdService;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    .line 129
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 132
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    nop

    .line 135
    return-void

    .line 132
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
