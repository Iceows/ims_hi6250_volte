.class public Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Default;
.super Ljava/lang/Object;
.source "IVolteEncryptTelephonyService.java"

# interfaces
.implements Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public fallBack()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public startVolteEncryptCallService(Lcom/android/services/telephony/common/IVolteEncryptCmdService;)V
    .registers 2
    .param p1, "cmdService"    # Lcom/android/services/telephony/common/IVolteEncryptCmdService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
