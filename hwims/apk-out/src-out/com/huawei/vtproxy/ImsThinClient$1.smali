.class final Lcom/huawei/vtproxy/ImsThinClient$1;
.super Ljava/lang/Object;
.source "ImsThinClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/vtproxy/ImsThinClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 188
    # getter for: Lcom/huawei/vtproxy/ImsThinClient;->MOD_DRIVE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    :try_start_5
    # invokes: Lcom/huawei/vtproxy/ImsThinClient;->zpandModDriveMsg()V
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$100()V

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method
