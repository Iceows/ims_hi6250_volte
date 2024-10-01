.class Lcom/huawei/videoengine/MediaCodecDecoder$2;
.super Landroid/os/Handler;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;->startBackgroundThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/os/Looper;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 854
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 855
    nop

    .line 856
    nop

    .line 857
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 918
    :pswitch_0
    const-string v0, "hme_engine_JavaDEC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle message unknow msgid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 914
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceInfoMsg;

    .line 915
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    iget-object v0, v0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceInfoMsg;->updateSf:Landroid/view/Surface;

    invoke-static {v1, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1500(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/view/Surface;)I

    move-result v1

    .line 916
    goto :goto_1

    .line 911
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-virtual {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_ResetDecoder()I

    move-result v1

    .line 912
    goto :goto_1

    .line 868
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;

    .line 869
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->dataLength:I

    iget-wide v3, v0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->renderTime:J

    iget v5, v0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->isKeyFrame:I

    iget v6, v0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->width:I

    iget v7, v0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->height:I

    invoke-virtual/range {v1 .. v7}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_setFrameInfo(IJIII)I

    move-result v1

    .line 871
    goto :goto_1

    .line 874
    :pswitch_4
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-virtual {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_putFrame()I

    move-result v1

    .line 876
    goto :goto_1

    .line 878
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 879
    sget-object v2, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->none:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 880
    packed-switch v0, :pswitch_data_1

    .line 892
    const/4 v1, -0x1

    goto :goto_0

    .line 889
    :pswitch_6
    sget-object v2, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->crop:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 890
    goto :goto_0

    .line 886
    :pswitch_7
    sget-object v2, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->encapsulate:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 887
    goto :goto_0

    .line 883
    :pswitch_8
    sget-object v2, Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;->none:Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;

    .line 884
    nop

    .line 895
    :goto_0
    if-nez v1, :cond_0

    .line 897
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {v0, v2}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1400(Lcom/huawei/videoengine/MediaCodecDecoder;Lcom/huawei/videoengine/MediaCodecDecoder$EAspectRatio;)I

    move-result v1

    goto :goto_1

    .line 901
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;

    .line 902
    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    iget v2, v0, Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;->rate:F

    iget v3, v0, Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;->moveX:F

    iget v0, v0, Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;->moveY:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_SetScaleRate(FFF)I

    move-result v1

    .line 903
    goto :goto_1

    .line 905
    :pswitch_a
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-virtual {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_stopDecoder()I

    move-result v1

    .line 906
    goto :goto_1

    .line 908
    :pswitch_b
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-virtual {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->handleProcessFunc_startDecoder()I

    move-result v1

    .line 909
    nop

    .line 921
    :cond_0
    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;

    invoke-virtual {p1}, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;->getSemaphore()Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;

    move-result-object p1

    .line 922
    if-eqz p1, :cond_1

    .line 924
    monitor-enter p1

    .line 925
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;->setRes(I)V

    .line 926
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 927
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 929
    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
