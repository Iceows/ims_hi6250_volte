.class Lcom/huawei/videoengine/VideoCapture2Android$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCapture2Android;
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

    .line 99
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .registers 11

    .line 102
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mEnableROI:Z
    invoke-static {v0}, Lcom/huawei/videoengine/VideoCapture2Android;->access$000(Lcom/huawei/videoengine/VideoCapture2Android;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 103
    return-void

    .line 105
    :cond_9
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 106
    const-string v1, "hme_engine_java"

    if-nez v0, :cond_1b

    .line 108
    const-string p1, "#ROI# detect_mode is null !!!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 111
    :cond_1b
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 112
    if-nez v2, :cond_2b

    .line 114
    const-string p1, "#ROI# ts is null !!!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 117
    :cond_2b
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->time_stamp:J
    invoke-static {v3, v4, v5}, Lcom/huawei/videoengine/VideoCapture2Android;->access$102(Lcom/huawei/videoengine/VideoCapture2Android;J)J

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_40

    .line 120
    const-string p1, "#ROI# DETECT_MODE is OFF !!!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 124
    :cond_40
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    .line 125
    array-length v0, p1

    .line 126
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    array-length v2, p1

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->faces_length:I
    invoke-static {v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$202(Lcom/huawei/videoengine/VideoCapture2Android;I)I

    .line 127
    if-lez v0, :cond_5a

    .line 128
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    mul-int/lit8 v2, v0, 0x4

    new-array v2, v2, [I

    # setter for: Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I
    invoke-static {v1, v2}, Lcom/huawei/videoengine/VideoCapture2Android;->access$302(Lcom/huawei/videoengine/VideoCapture2Android;[I)[I

    .line 132
    :cond_5a
    :goto_5a
    if-lez v0, :cond_eb

    .line 133
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 134
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I
    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMaxWidth:I
    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v3

    div-int/2addr v2, v3

    .line 135
    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I
    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v4

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMaxHeight:I
    invoke-static {v4}, Lcom/huawei/videoengine/VideoCapture2Android;->access$700(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v4

    div-int/2addr v3, v4

    .line 136
    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I
    invoke-static {v5}, Lcom/huawei/videoengine/VideoCapture2Android;->access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMaxWidth:I
    invoke-static {v5}, Lcom/huawei/videoengine/VideoCapture2Android;->access$500(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v5

    div-int/2addr v4, v5

    .line 137
    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCapH:I
    invoke-static {v6}, Lcom/huawei/videoengine/VideoCapture2Android;->access$600(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v6

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mMaxHeight:I
    invoke-static {v6}, Lcom/huawei/videoengine/VideoCapture2Android;->access$700(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v6

    div-int/2addr v5, v6

    .line 138
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I
    invoke-static {v6}, Lcom/huawei/videoengine/VideoCapture2Android;->access$300(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v6

    mul-int/lit8 v1, v1, 0x4

    aput v3, v6, v1

    .line 139
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I
    invoke-static {v6}, Lcom/huawei/videoengine/VideoCapture2Android;->access$300(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->mCapW:I
    invoke-static {v8}, Lcom/huawei/videoengine/VideoCapture2Android;->access$400(Lcom/huawei/videoengine/VideoCapture2Android;)I

    move-result v8

    sub-int/2addr v8, v4

    aput v8, v6, v7

    .line 140
    iget-object v6, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I
    invoke-static {v6}, Lcom/huawei/videoengine/VideoCapture2Android;->access$300(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v6

    add-int/lit8 v7, v1, 0x2

    sub-int/2addr v5, v3

    aput v5, v6, v7

    .line 141
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCapture2Android$1;->this$0:Lcom/huawei/videoengine/VideoCapture2Android;

    # getter for: Lcom/huawei/videoengine/VideoCapture2Android;->iROI:[I
    invoke-static {v3}, Lcom/huawei/videoengine/VideoCapture2Android;->access$300(Lcom/huawei/videoengine/VideoCapture2Android;)[I

    move-result-object v3

    add-int/lit8 v1, v1, 0x3

    sub-int/2addr v4, v2

    aput v4, v3, v1

    .line 142
    add-int/lit8 v0, v0, -0x1

    .line 143
    goto/16 :goto_5a

    .line 144
    :cond_eb
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    .line 150
    invoke-direct {p0, p3}, Lcom/huawei/videoengine/VideoCapture2Android$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 151
    return-void
.end method
