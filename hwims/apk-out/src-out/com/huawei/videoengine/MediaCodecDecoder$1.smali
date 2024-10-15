.class Lcom/huawei/videoengine/MediaCodecDecoder$1;
.super Ljava/lang/Thread;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;->init(III)I
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

    .line 105
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 108
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 109
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$1;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/huawei/videoengine/MediaCodecDecoder;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/huawei/videoengine/MediaCodecDecoder;->access$002(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/os/Handler;)Landroid/os/Handler;

    .line 110
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 111
    return-void
.end method
