.class Lcom/huawei/videoengine/ViERenderer$ListenThread;
.super Ljava/lang/Thread;
.source "ViERenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/ViERenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenThread"
.end annotation


# instance fields
.field icontext:Landroid/content/Context;

.field isFrontlast:Z

.field isFrontnow:Z

.field isRun:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontlast:Z

    .line 295
    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontnow:Z

    .line 296
    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isRun:Z

    .line 299
    iput-object p1, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->icontext:Landroid/content/Context;

    .line 300
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isRun:Z

    .line 301
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 310
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isRun:Z

    if-eqz v0, :cond_1

    .line 313
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    goto :goto_1

    .line 314
    :catch_0
    move-exception v0

    .line 318
    :goto_1
    iget-object v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->icontext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/videoengine/ViERenderer;->isAppOnForeground2(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontnow:Z

    .line 319
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontlast:Z

    iget-boolean v1, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontnow:Z

    if-eq v0, v1, :cond_0

    .line 321
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the app is on front "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontnow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontnow:Z

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isFrontlast:Z

    goto :goto_0

    .line 326
    :cond_1
    return-void
.end method

.method public stop1()V
    .locals 1

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViERenderer$ListenThread;->isRun:Z

    .line 306
    return-void
.end method
