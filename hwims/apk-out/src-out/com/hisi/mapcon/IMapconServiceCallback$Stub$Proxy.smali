.class Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMapconServiceCallback.java"

# interfaces
.implements Lcom/hisi/mapcon/IMapconServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisi/mapcon/IMapconServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/hisi/mapcon/IMapconServiceCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 87
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 94
    const-string v0, "com.hisi.mapcon.IMapconServiceCallback"

    return-object v0
.end method

.method public onVoWifiCloseDone()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 106
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.hisi.mapcon.IMapconServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/hisi/mapcon/IMapconServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 108
    .local v1, "_status":Z
    if-nez v1, :cond_24

    invoke-static {}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub;->getDefaultImpl()Lcom/hisi/mapcon/IMapconServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 109
    invoke-static {}, Lcom/hisi/mapcon/IMapconServiceCallback$Stub;->getDefaultImpl()Lcom/hisi/mapcon/IMapconServiceCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisi/mapcon/IMapconServiceCallback;->onVoWifiCloseDone()V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_29

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    return-void

    .line 114
    .end local v1    # "_status":Z
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    nop

    .line 116
    return-void

    .line 114
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
