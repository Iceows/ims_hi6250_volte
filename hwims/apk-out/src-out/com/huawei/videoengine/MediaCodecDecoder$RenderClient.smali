.class Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderClient"
.end annotation


# instance fields
.field private mDisplayProjectionMatrix:[F

.field private mSurface:Landroid/view/Surface;

.field private mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

.field private moveMatrix:[F

.field private mvM:[F

.field private pM:[F

.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

.field private tmpMatrix:[F


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/view/Surface;)V
    .registers 4

    .line 671
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mDisplayProjectionMatrix:[F

    .line 666
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->pM:[F

    .line 667
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    .line 668
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->tmpMatrix:[F

    .line 669
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->moveMatrix:[F

    .line 672
    iput-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mSurface:Landroid/view/Surface;

    .line 673
    return-void
.end method

.method private getMVP([FII)V
    .registers 27

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->pM:[F

    move/from16 v2, p2

    int-to-float v9, v2

    move/from16 v2, p3

    int-to-float v10, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v9

    move v6, v10

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 706
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 708
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v9, v3

    div-float v5, v10, v3

    const/4 v6, 0x0

    invoke-static {v1, v2, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 709
    iget-object v11, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    const/4 v12, 0x0

    const/high16 v13, 0x43340000    # 180.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 710
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorY:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3700(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4a

    .line 711
    iget-object v11, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    const/4 v12, 0x0

    const/high16 v13, 0x43340000    # 180.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 713
    :cond_4a
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMirrorX:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3800(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1

    if-ne v1, v4, :cond_5f

    .line 714
    iget-object v11, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    const/4 v12, 0x0

    const/high16 v13, 0x43340000    # 180.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 717
    :cond_5f
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    const/16 v18, 0x0

    iget-object v5, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mOrientation:I
    invoke-static {v5}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3900(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v5

    int-to-float v5, v5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v17, v1

    move/from16 v19, v5

    invoke-static/range {v17 .. v22}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 718
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1800(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1

    if-eqz v1, :cond_177

    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1900(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1

    if-nez v1, :cond_89

    goto/16 :goto_177

    .line 723
    :cond_89
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderWidth:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1800(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1

    .line 724
    iget-object v5, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderHeight:I
    invoke-static {v5}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1900(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v5

    .line 725
    nop

    .line 726
    nop

    .line 728
    iget-object v7, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mOrientation:I
    invoke-static {v7}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3900(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v7

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_ae

    iget-object v7, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mOrientation:I
    invoke-static {v7}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3900(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v7

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_ac

    goto :goto_ae

    :cond_ac
    move v7, v9

    goto :goto_b1

    .line 729
    :cond_ae
    :goto_ae
    nop

    .line 730
    move v7, v10

    move v10, v9

    .line 733
    :goto_b1
    int-to-float v1, v1

    mul-float v8, v10, v1

    int-to-float v5, v5

    div-float/2addr v8, v5

    .line 734
    mul-float/2addr v5, v7

    div-float/2addr v5, v1

    .line 735
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mAspectMode:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4000(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1

    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    if-ne v1, v11, :cond_f5

    .line 736
    sub-float v1, v8, v9

    cmpl-float v1, v1, v6

    if-lez v1, :cond_df

    .line 737
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    div-float/2addr v8, v3

    iget-object v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F
    invoke-static {v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v4

    mul-float/2addr v8, v4

    div-float/2addr v10, v3

    iget-object v3, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F
    invoke-static {v3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v3

    mul-float/2addr v10, v3

    invoke-static {v1, v2, v8, v10, v12}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_144

    .line 739
    :cond_df
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    div-float/2addr v7, v3

    iget-object v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F
    invoke-static {v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v4

    mul-float/2addr v7, v4

    div-float/2addr v5, v3

    iget-object v3, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F
    invoke-static {v3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v3

    mul-float/2addr v5, v3

    invoke-static {v1, v2, v7, v5, v12}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_144

    .line 741
    :cond_f5
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mAspectMode:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4000(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1

    if-ne v1, v4, :cond_12f

    .line 742
    sub-float v1, v8, v9

    cmpl-float v1, v1, v6

    if-lez v1, :cond_119

    .line 743
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    div-float/2addr v7, v3

    iget-object v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F
    invoke-static {v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v4

    mul-float/2addr v7, v4

    div-float/2addr v5, v3

    iget-object v3, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F
    invoke-static {v3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v3

    mul-float/2addr v5, v3

    invoke-static {v1, v2, v7, v5, v12}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_144

    .line 746
    :cond_119
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    div-float/2addr v8, v3

    iget-object v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F
    invoke-static {v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v4

    mul-float/2addr v8, v4

    div-float/2addr v10, v3

    iget-object v3, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F
    invoke-static {v3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v3

    mul-float/2addr v10, v3

    invoke-static {v1, v2, v8, v10, v12}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_144

    .line 749
    :cond_12f
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    div-float/2addr v7, v3

    iget-object v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F
    invoke-static {v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v4

    mul-float/2addr v7, v4

    div-float/2addr v10, v3

    iget-object v3, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mScaleRatio:F
    invoke-static {v3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4100(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v3

    mul-float/2addr v10, v3

    invoke-static {v1, v2, v7, v10, v12}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 752
    :goto_144
    iget-object v13, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->tmpMatrix:[F

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->pM:[F

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mvM:[F

    const/16 v18, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 754
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->moveMatrix:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 755
    iget-object v1, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->moveMatrix:[F

    iget-object v3, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMoveWidth:F
    invoke-static {v3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4200(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v3

    iget-object v4, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mMoveHeight:F
    invoke-static {v4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$4300(Lcom/huawei/videoengine/MediaCodecDecoder;)F

    move-result v4

    invoke-static {v1, v2, v3, v4, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 756
    const/4 v8, 0x0

    iget-object v9, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->tmpMatrix:[F

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->moveMatrix:[F

    const/4 v12, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 757
    return-void

    .line 719
    :cond_177
    :goto_177
    const-string v0, "MediaCodecDecoder"

    const-string v1, "getMVPP mDecoderWidth or mDecoderHeight is zero"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 681
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->release()V

    .line 682
    return-void
.end method

.method public init(Lcom/huawei/videoengine/EglCore;)V
    .registers 5

    .line 676
    new-instance v0, Lcom/huawei/videoengine/WindowSurface;

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/huawei/videoengine/WindowSurface;-><init>(Lcom/huawei/videoengine/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    .line 677
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {p1}, Lcom/huawei/videoengine/WindowSurface;->makeCurrent()V

    .line 678
    return-void
.end method

.method protected processFrame()V
    .registers 5

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    if-eqz v0, :cond_38

    .line 688
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->getWidth()I

    move-result v0

    .line 689
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v1}, Lcom/huawei/videoengine/WindowSurface;->getHeight()I

    move-result v1

    .line 691
    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mDisplayProjectionMatrix:[F

    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->getMVP([FII)V

    .line 692
    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 693
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mFullFrameBlit:Lcom/huawei/videoengine/FullFrameRect;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3600(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/FullFrameRect;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mTextureId:I
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$3500(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mDisplayProjectionMatrix:[F

    .line 695
    invoke-static {}, Lcom/huawei/videoengine/GlUtil;->getIDENTITY_MATRIX()[F

    move-result-object v3

    .line 693
    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/videoengine/FullFrameRect;->drawFrame(I[F[F)V

    .line 696
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->mWindowSurface:Lcom/huawei/videoengine/WindowSurface;

    invoke-virtual {v0}, Lcom/huawei/videoengine/WindowSurface;->swapBuffers()Z

    .line 697
    const-string v0, "draw done"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    .line 701
    :cond_38
    goto :goto_54

    .line 699
    :catch_39
    move-exception v0

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrameAvailable : failed message ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecDecoder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :goto_54
    return-void
.end method
