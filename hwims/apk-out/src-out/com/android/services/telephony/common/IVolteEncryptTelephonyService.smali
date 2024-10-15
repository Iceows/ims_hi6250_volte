.class public interface abstract Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;
.super Ljava/lang/Object;
.source "IVolteEncryptTelephonyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;,
        Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Default;
    }
.end annotation


# virtual methods
.method public abstract fallBack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startVolteEncryptCallService(Lcom/android/services/telephony/common/IVolteEncryptCmdService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
