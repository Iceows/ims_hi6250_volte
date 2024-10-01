.class Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 660
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1, p3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1202(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    .line 661
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p1, p4}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1302(Lcom/huawei/videoengine/MediaCodecDecoder;I)I

    .line 662
    const-string p1, "hme_engine_JavaDEC"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Enter surfaceChanged width="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1200(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", heightIn = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-static {p3}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$1300(Lcom/huawei/videoengine/MediaCodecDecoder;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 667
    const-string p1, "hme_engine_JavaDEC"

    const-string v0, "Enter surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-virtual {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->startDecoder()V

    .line 669
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 673
    const-string p1, "hme_engine_JavaDEC"

    const-string v0, "Enter surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceListener;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-virtual {p1}, Lcom/huawei/videoengine/MediaCodecDecoder;->stopDecoder()V

    .line 675
    return-void
.end method
