.class Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$TeleServiceConnection;
.super Ljava/lang/Object;
.source "VolteEncryptTelephonyServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TeleServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;


# direct methods
.method private constructor <init>(Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$TeleServiceConnection;->this$0:Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;
    .param p2, "x1"    # Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$1;

    .line 101
    invoke-direct {p0, p1}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$TeleServiceConnection;-><init>(Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service Connected className = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VolteEncryptTelephonyServiceProxy"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$TeleServiceConnection;->this$0:Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;

    invoke-static {p2}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    move-result-object v1

    # invokes: Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->onCallHandlerServiceConnected(Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;)V
    invoke-static {v0, v1}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->access$000(Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;)V

    .line 106
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 110
    const-string v0, "VolteEncryptTelephonyServiceProxy"

    const-string v1, "Disconnected from UI service."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    # getter for: Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->OBJECT_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 112
    :try_start_c
    iget-object v1, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$TeleServiceConnection;->this$0:Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;

    # invokes: Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->unbind()V
    invoke-static {v1}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->access$200(Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;)V

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1
.end method
