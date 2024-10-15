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
    .registers 2

    .line 621
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 13

    .line 624
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 625
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCameraOutFps:Lcom/huawei/videoengine/FpsStatistic;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1500(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 628
    :cond_11
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 630
    :try_start_18
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 631
    monitor-exit v0

    return-void

    .line 633
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_247

    .line 634
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 636
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mWinLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1600(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 637
    :try_start_35
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mIsPreviewStart:Z
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1900(Lcom/huawei/videoengine/VideoCapture2Android;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_103

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    if-eqz v0, :cond_103

    .line 638
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 639
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewFps:Lcom/huawei/videoengine/FpsStatistic;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2000(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 641
    :cond_57
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 643
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v2

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I
    invoke-static {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2102(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 644
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v2

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I
    invoke-static {v0, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2202(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 646
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    if-eqz v0, :cond_fc

    .line 648
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v3

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v4, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v5, v0, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 649
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mIsFaceFront:Z
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2400(Lcom/huawei/videoengine/VideoCapture2Android;)Z

    move-result v0

    if-eqz v0, :cond_a8

    move v6, v1

    goto :goto_aa

    :cond_a8
    const/4 v0, 0x1

    move v6, v0

    :goto_aa
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 650
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mRotPrieview:I
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 651
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModePreView:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2600(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    move-result-object v8

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v9

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 652
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v10

    .line 648
    # invokes: Lcom/huawei/videoengine/VideoCapture2Android;->getMVPP([F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V
    invoke-static/range {v2 .. v10}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2700(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    .line 653
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewWidth:I
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2200(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v0

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 654
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mPreViewHeight:I
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v2

    .line 653
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 655
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 656
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F
    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v3

    .line 657
    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v4

    .line 655
    invoke-virtual {v0, v2, v3, v4}, Lcom/huawei/videoengine/FullFrameRect;->drawFrame(I[F[F)V

    .line 659
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1700(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->swapBuffers()Z

    .line 660
    const-string v0, "draw done"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    goto :goto_103

    .line 664
    :cond_fc
    const-string v0, "hme_engine_java"

    const-string v2, "PreView SF W or H is 0"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_103
    :goto_103
    monitor-exit p1
    :try_end_104
    .catchall {:try_start_35 .. :try_end_104} :catchall_244

    .line 670
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3000(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 671
    :try_start_10b
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    if-nez p1, :cond_116

    .line 672
    monitor-exit v0

    goto/16 :goto_23a

    .line 674
    :cond_116
    monitor-exit v0
    :try_end_117
    .catchall {:try_start_10b .. :try_end_117} :catchall_241

    .line 677
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mNativeClassInstance:J
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$900(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 678
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mRotLeft:I
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3100(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v8

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v9

    .line 677
    invoke-virtual/range {v2 .. v9}, Lcom/huawei/videoengine/VideoCapture2Android;->nDropEncFrame(JIIIII)Z

    move-result p1

    if-eqz p1, :cond_139

    .line 679
    goto/16 :goto_23a

    .line 681
    :cond_139
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMCELock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3200(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 682
    :try_start_140
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEnableROI:Z
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$000(Lcom/huawei/videoengine/VideoCapture2Android;)Z

    move-result v0

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    move-result-object v0

    if-eqz v0, :cond_16b

    .line 684
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMCE:Lcom/huawei/videoengine/KirinMediaCodecEncoder;
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3300(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/KirinMediaCodecEncoder;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->faces_length:I
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$200(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v2

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I
    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$300(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->time_stamp:J
    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$100(Lcom/huawei/videoengine/VideoCapture2Android;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/huawei/videoengine/KirinMediaCodecEncoder;->setRoiCoordinate(I[IJ)V

    .line 686
    :cond_16b
    monitor-exit p1
    :try_end_16c
    .catchall {:try_start_140 .. :try_end_16c} :catchall_23e

    .line 687
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWinLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3000(Lcom/huawei/videoengine/VideoCapture2Android;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 689
    :try_start_173
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    if-nez p1, :cond_17e

    .line 690
    monitor-exit v0

    goto/16 :goto_23a

    .line 694
    :cond_17e
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncInFps:Lcom/huawei/videoengine/FpsStatistic;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object p1

    if-eqz p1, :cond_18f

    .line 695
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncInFps:Lcom/huawei/videoengine/FpsStatistic;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3400(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FpsStatistic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/videoengine/FpsStatistic;->add()V

    .line 698
    :cond_18f
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 701
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v2

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I
    invoke-static {p1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3502(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 702
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v2

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I
    invoke-static {p1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3602(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 704
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result p1

    if-eqz p1, :cond_232

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result p1

    if-eqz p1, :cond_232

    .line 706
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v3

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v4, p1, Lcom/huawei/videoengine/VideoCapture2Android;->mPojectionM:[F

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    iget-object v5, p1, Lcom/huawei/videoengine/VideoCapture2Android;->mModelViewM:[F

    const/4 v6, 0x1

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 707
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mRotEnc:I
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3700(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v7

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 708
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mAspectModeEnc:Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;

    move-result-object v8

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWidth:I
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v9

    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncHeight:I
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$3500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v10

    .line 706
    # invokes: Lcom/huawei/videoengine/VideoCapture2Android;->getMVPP([F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V
    invoke-static/range {v2 .. v10}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2700(Lcom/huawei/videoengine/VideoCapture2Android;[F[F[FZILcom/huawei/videoengine/VideoCapture2Android$EAspectRatio;II)V

    .line 709
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 710
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result p1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 711
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v2

    .line 709
    invoke-static {v1, v1, p1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 712
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2900(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/FullFrameRect;

    move-result-object p1

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mTextureId:I
    invoke-static {v1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2800(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    .line 713
    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mDisplayProjectionMatrix:[F
    invoke-static {v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$2300(Lcom/huawei/videoengine/VideoCapture2Android;)[F

    move-result-object v2

    .line 714
    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v3

    .line 712
    invoke-virtual {p1, v1, v2, v3}, Lcom/huawei/videoengine/FullFrameRect;->drawFrame(I[F[F)V

    .line 715
    iget-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$6;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEncWindowSurface:Lcom/huawei/videoengine/WindowSurface;
    invoke-static {p1}, Lcom/huawei/videoengine/VideoCapture2Android;->access$1800(Lcom/huawei/videoengine/VideoCapture2Android;)Lcom/huawei/videoengine/WindowSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->swapBuffers()Z

    .line 716
    const-string p1, "draw done"

    invoke-static {p1}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 724
    monitor-exit v0

    goto :goto_23a

    .line 720
    :cond_232
    const-string p1, "hme_engine_java"

    const-string v1, "encode SF W or H is 0"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    monitor-exit v0

    .line 727
    :goto_23a
    return-void

    .line 724
    :catchall_23b
    move-exception p1

    monitor-exit v0
    :try_end_23d
    .catchall {:try_start_173 .. :try_end_23d} :catchall_23b

    throw p1

    .line 686
    :catchall_23e
    move-exception v0

    :try_start_23f
    monitor-exit p1
    :try_end_240
    .catchall {:try_start_23f .. :try_end_240} :catchall_23e

    throw v0

    .line 674
    :catchall_241
    move-exception p1

    :try_start_242
    monitor-exit v0
    :try_end_243
    .catchall {:try_start_242 .. :try_end_243} :catchall_241

    throw p1

    .line 667
    :catchall_244
    move-exception v0

    :try_start_245
    monitor-exit p1
    :try_end_246
    .catchall {:try_start_245 .. :try_end_246} :catchall_244

    throw v0

    .line 633
    :catchall_247
    move-exception p1

    :try_start_248
    monitor-exit v0
    :try_end_249
    .catchall {:try_start_248 .. :try_end_249} :catchall_247

    throw p1
.end method
