.class public Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;
.super Ljava/lang/Object;
.source "HwMMTelFeature.java"

# interfaces
.implements Lcom/huawei/ims/ImsServiceCallTracker$InComingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/feature/HwMMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/feature/HwMMTelFeature;


# direct methods
.method public constructor <init>(Lcom/huawei/ims/feature/HwMMTelFeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/ims/feature/HwMMTelFeature;

    .line 44
    iput-object p1, p0, Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;->this$0:Lcom/huawei/ims/feature/HwMMTelFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 51
    const-class v0, Landroid/telephony/ims/feature/MmTelFeature;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;->this$0:Lcom/huawei/ims/feature/HwMMTelFeature;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/ims/feature/HwMMTelFeature;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 58
    const-class v0, Landroid/telephony/ims/feature/MmTelFeature;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/huawei/ims/feature/HwMMTelFeature$InCallListener;->this$0:Lcom/huawei/ims/feature/HwMMTelFeature;

    invoke-virtual {v1, p1, p2}, Lcom/huawei/ims/feature/HwMMTelFeature;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
