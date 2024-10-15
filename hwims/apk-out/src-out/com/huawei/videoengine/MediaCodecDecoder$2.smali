.class Lcom/huawei/videoengine/MediaCodecDecoder$2;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;->updateSurface(Landroid/view/Surface;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;


# direct methods
.method constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 191
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$100(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 193
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mOffscreenSurface:Lcom/huawei/videoengine/OffscreenSurface;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$200(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/OffscreenSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/OffscreenSurface;->makeCurrent()V

    .line 196
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$100(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->destroy()V

    .line 197
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    const/4 v1, 0x0

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
    invoke-static {v0, v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$102(Lcom/huawei/videoengine/MediaCodecDecoder;Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;)Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    .line 200
    :cond_20
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$300(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 201
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    new-instance v1, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mDecoderSurface:Landroid/view/Surface;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$300(Lcom/huawei/videoengine/MediaCodecDecoder;)Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/view/Surface;)V

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
    invoke-static {v0, v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$102(Lcom/huawei/videoengine/MediaCodecDecoder;Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;)Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    .line 202
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mRenderClient:Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;
    invoke-static {v0}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$100(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$2;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    # getter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mEglCore:Lcom/huawei/videoengine/EglCore;
    invoke-static {v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$400(Lcom/huawei/videoengine/MediaCodecDecoder;)Lcom/huawei/videoengine/EglCore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/MediaCodecDecoder$RenderClient;->init(Lcom/huawei/videoengine/EglCore;)V

    .line 204
    :cond_45
    return-void
.end method
