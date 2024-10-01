.class Lcom/huawei/videoengine/VideoCapture2Android$6;
.super Ljava/lang/Object;
.source "VideoCapture2Android.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/VideoCapture2Android;->createSurfaceTexureForCamera(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/VideoCapture2Android;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/VideoCapture2Android;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 11

    .line 626
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    if-nez v1, :cond_1

    .line 633
    monitor-exit v0

    return-void

    .line 635
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 636
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 638
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 639
    :try_start_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 640
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 645
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2002(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 646
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2102(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 648
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v3

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v4, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v5, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 651
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 652
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 653
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    move-result-object v8

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v9

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 654
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v10

    .line 650
    invoke-static/range {v2 .. v10}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2600(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    .line 655
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 656
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v2

    .line 655
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 657
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2700(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 658
    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v3

    .line 659
    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v4

    .line 657
    invoke-virtual {v0, v2, v3, v4}, Lcom/huawei/videoengine/FullFrameRect;->drawFrame(I[F[F)V

    .line 661
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->swapBuffers()Z

    .line 662
    const-string v0, "draw done"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_3
    const-string v0, "hme_engine_java"

    const-string v2, "PreView SF W or H is 0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_4
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 672
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2900(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 673
    :try_start_2
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    if-nez p1, :cond_5

    .line 675
    monitor-exit v0

    goto/16 :goto_1

    .line 677
    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 680
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$800(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 681
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3000(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v8

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$300(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v9

    .line 680
    invoke-virtual/range {v2 .. v9}, Lcom/huawei/videoengine/VideoCapture2Android;->nDropEncFrame(JIIIII)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 682
    goto/16 :goto_1

    .line 684
    :cond_6
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3100(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 685
    :try_start_3
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 687
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$000(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->setRoiCoordinate(I[IJ)V

    .line 689
    :cond_7
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 690
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2900(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 692
    :try_start_4
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    if-nez p1, :cond_8

    .line 694
    monitor-exit v0

    goto/16 :goto_1

    .line 699
    :cond_8
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 700
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 703
    :cond_9
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 706
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v2

    invoke-static {p1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3402(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 707
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v2

    invoke-static {p1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3502(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 709
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result p1

    if-eqz p1, :cond_a

    .line 711
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v3

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v4, p1, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v5, p1, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    const/4 v6, 0x1

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 712
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 713
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    move-result-object v8

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v9

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v10

    .line 711
    invoke-static/range {v2 .. v10}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2600(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    .line 714
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 715
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result p1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 716
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v2

    .line 714
    invoke-static {v1, v1, p1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 717
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;

    move-result-object p1

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2700(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 718
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v2

    .line 719
    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v3

    .line 717
    invoke-virtual {p1, v1, v2, v3}, Lcom/huawei/videoengine/FullFrameRect;->drawFrame(I[F[F)V

    .line 720
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->swapBuffers()Z

    .line 721
    const-string p1, "draw done"

    invoke-static {p1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 729
    monitor-exit v0

    goto :goto_1

    .line 725
    :cond_a
    const-string p1, "hme_engine_java"

    const-string v1, "encode SF W or H is 0"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    monitor-exit v0

    .line 732
    :goto_1
    return-void

    .line 729
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    .line 689
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 677
    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    .line 669
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 635
    :catchall_4
    move-exception p1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1
.end method
