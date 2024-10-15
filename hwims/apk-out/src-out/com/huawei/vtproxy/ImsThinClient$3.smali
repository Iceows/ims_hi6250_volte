.class final Lcom/huawei/vtproxy/ImsThinClient$3;
.super Ljava/lang/Object;
.source "ImsThinClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/vtproxy/ImsThinClient;->zpandTimerInit()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 227
    # getter for: Lcom/huawei/vtproxy/ImsThinClient;->TIMER_ACTIVE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 228
    :try_start_5
    # invokes: Lcom/huawei/vtproxy/ImsThinClient;->zpandTimerActive()V
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$300()V

    .line 229
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method
