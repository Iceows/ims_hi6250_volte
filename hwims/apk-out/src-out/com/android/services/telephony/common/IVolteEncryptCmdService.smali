.class public interface abstract Lcom/android/services/telephony/common/IVolteEncryptCmdService;
.super Ljava/lang/Object;
.source "IVolteEncryptCmdService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/IVolteEncryptCmdService$Stub;,
        Lcom/android/services/telephony/common/IVolteEncryptCmdService$Default;
    }
.end annotation


# virtual methods
.method public abstract setEncryptDeviceValidFlag(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
