.class final Lcom/huawei/sci/SciSSConfCb$1;
.super Ljava/lang/Object;
.source "SciSSConfCb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/sci/SciSSConfCb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 27
    # getter for: Lcom/huawei/sci/SciSSConfCb;->BSF_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/huawei/sci/SciSSConfCb;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 28
    :try_start_5
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->startBsfAuthRequest()I

    move-result v1

    # setter for: Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfCb;->access$102(I)I

    .line 29
    # getter for: Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I
    invoke-static {}, Lcom/huawei/sci/SciSSConfCb;->access$100()I

    move-result v1

    if-eqz v1, :cond_31

    .line 30
    const-string v1, "SciSSConfCb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run startBsfAuthRequest ret=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/huawei/sci/SciSSConfCb;->bsfSearchResult:I
    invoke-static {}, Lcom/huawei/sci/SciSSConfCb;->access$100()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_31
    monitor-exit v0

    .line 33
    return-void

    .line 32
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw v1
.end method
