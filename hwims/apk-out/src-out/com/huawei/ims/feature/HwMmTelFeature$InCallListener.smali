.class public Lcom/huawei/ims/feature/HwMmTelFeature$InCallListener;
.super Ljava/lang/Object;
.source "HwMmTelFeature.java"

# interfaces
.implements Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/feature/HwMmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/feature/HwMmTelFeature;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/feature/HwMmTelFeature;)V
    .registers 2
    .param p1, "this$0"    # Lcom/huawei/ims/feature/HwMmTelFeature;

    .line 67
    iput-object p1, p0, Lcom/huawei/ims/feature/HwMmTelFeature$InCallListener;->this$0:Lcom/huawei/ims/feature/HwMmTelFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 75
    const-class v0, Landroid/telephony/ims/feature/MmTelFeature;

    monitor-enter v0

    .line 76
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature$InCallListener;->this$0:Lcom/huawei/ims/feature/HwMmTelFeature;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/ims/feature/HwMmTelFeature;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 82
    const-class v0, Landroid/telephony/ims/feature/MmTelFeature;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMmTelFeature$InCallListener;->this$0:Lcom/huawei/ims/feature/HwMmTelFeature;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/ims/feature/HwMmTelFeature;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
