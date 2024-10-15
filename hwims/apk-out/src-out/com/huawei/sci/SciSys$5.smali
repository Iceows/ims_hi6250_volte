.class final Lcom/huawei/sci/SciSys$5;
.super Ljava/lang/Object;
.source "SciSys.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/sci/SciSys;->zpandTimerInit()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 548
    # getter for: Lcom/huawei/sci/SciSys;->TIMER_ACTIVE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/huawei/sci/SciSys;->access$300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 549
    :try_start_5
    # invokes: Lcom/huawei/sci/SciSys;->zpandTimerActive()V
    invoke-static {}, Lcom/huawei/sci/SciSys;->access$400()V

    .line 550
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method
