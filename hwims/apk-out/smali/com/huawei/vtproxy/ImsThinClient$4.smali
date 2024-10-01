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
.field isResult:Z

.field path:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->isResult:Z

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 279
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$200()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 281
    const-string v0, "VTPROXY"

    const-string v1, "ERROR createHmeLogFolder mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 285
    :cond_0
    invoke-static {}, Lcom/huawei/vtproxy/ImsThinClient;->access$200()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    .line 286
    iget-object v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 288
    const-string v0, "VTPROXY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createHmeLogFolder filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->path:Ljava/io/File;

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->createHmeLogPath(Ljava/io/File;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->isResult:Z

    .line 290
    iget-boolean v0, p0, Lcom/huawei/vtproxy/ImsThinClient$4;->isResult:Z

    if-eqz v0, :cond_2

    .line 292
    const-string v0, "VTPROXY"

    const-string v1, "createHmeLogFolder createHmeLogPath OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_1
    const-string v0, "VTPROXY"

    const-string v1, "ERROR createHmeLogFolder getExternalFilesDir is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_2
    :goto_0
    return-void
.end method
