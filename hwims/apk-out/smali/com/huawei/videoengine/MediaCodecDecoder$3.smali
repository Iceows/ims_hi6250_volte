.class Lcom/huawei/videoengine/MediaCodecDecoder$3;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;->createSurfaceTexureForDecoder(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V
    .locals 0

    .line 966
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 8

    .line 971
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1600(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    const-string p1, "hme_engine_JavaDEC"

    const-string v0, "onFrameAvailable decoder has stoped"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void

    .line 976
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 977
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    iget-object p1, p1, Lcom/huawei/videoengine/MediaCodecDecoder;->configLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1600(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1700(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1700(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 983
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1700(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v0

    .line 984
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1700(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v7

    .line 986
    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    .line 988
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 989
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1800(Lcom/huawei/videoengine/MediaCodecDecoder;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    iget v3, v3, Lcom/huawei/videoengine/MediaCodecDecoder;->mOrientation:I

    iget-object v4, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    .line 991
    invoke-static {v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1900(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    move-result-object v4

    .line 989
    move v5, v7

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2000(Lcom/huawei/videoengine/MediaCodecDecoder;[FILcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;II)V

    .line 994
    const/4 v1, 0x0

    invoke-static {v1, v1, v7, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 995
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2200(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/FullFrameRect;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$2100(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    .line 996
    invoke-static {v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1800(Lcom/huawei/videoengine/MediaCodecDecoder;)[F

    move-result-object v2

    .line 997
    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v3

    .line 995
    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/videoengine/FullFrameRect;->drawFrame(I[F[F)V

    .line 999
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1700(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->swapBuffers()Z

    .line 1000
    const-string v0, "draw done"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_1
    const-string v0, "hme_engine_JavaDEC"

    const-string v1, "PreView SF W or H is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :goto_0
    goto :goto_1

    .line 1008
    :cond_2
    const-string v0, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSurfaceTexureForDecoder mWindowSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1700(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", started= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$3;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1600(Lcom/huawei/videoengine/MediaCodecDecoder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :goto_1
    monitor-exit p1

    .line 1015
    goto :goto_2

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1012
    :catch_0
    move-exception p1

    .line 1014
    const-string v0, "hme_engine_JavaDEC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameAvailable : failed message ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :goto_2
    return-void
.end method
