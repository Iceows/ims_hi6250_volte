.class final Lcom/huawei/vtproxy/ImsThinClient$4;
.super Ljava/lang/Object;
.source "ImsThinClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field isSuccess:Z

.field path:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->isSuccess:Z

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 333
    # getter for: Lcom/huawei/vtproxy/ImsThinClient;->LOG_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 334
    :try_start_5
    # getter for: Lcom/huawei/vtproxy/ImsThinClient;->context:Landroid/content/Context;
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$500()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_14

    .line 335
    const-string v1, "VTPROXY"

    const-string v2, "ERROR createHmeLogFolder context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-exit v0

    return-void

    .line 339
    :cond_14
    # getter for: Lcom/huawei/vtproxy/ImsThinClient;->context:Landroid/content/Context;
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$500()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    .line 340
    iget-object v1, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    if-eqz v1, :cond_53

    .line 341
    const-string v1, "VTPROXY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createHmeLogFolder filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogPath(Ljava/io/File;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->isSuccess:Z

    .line 343
    iget-boolean v1, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->isSuccess:Z

    if-eqz v1, :cond_5a

    .line 344
    const-string v1, "VTPROXY"

    const-string v2, "createHmeLogFolder createHmeLogPath OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 347
    :cond_53
    const-string v1, "VTPROXY"

    const-string v2, "ERROR createHmeLogFolder getExternalFilesDir is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_5a
    :goto_5a
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5 .. :try_end_5e} :catchall_5c

    throw v1
.end method
