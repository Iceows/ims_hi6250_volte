.class final Lcom/huawei/sci/SciSys$4;
.super Ljava/lang/Object;
.source "SciSys.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 242
    # getter for: Lcom/huawei/sci/SciSys;->MOD_DRIVE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/huawei/sci/SciSys;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 243
    :try_start_5
    # invokes: Lcom/huawei/sci/SciSys;->zpandModDriveMsg()V
    invoke-static {}, Lcom/huawei/sci/SciSys;->access$200()V

    .line 244
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method
