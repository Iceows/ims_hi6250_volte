.class Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;
.super Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleMsg"
.end annotation


# instance fields
.field public moveX:F

.field public moveY:F

.field public rate:F

.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;FFF)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    .line 785
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    .line 786
    iput p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;->rate:F

    .line 787
    iput p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;->moveX:F

    .line 788
    iput p4, p0, Lcom/huawei/videoengine/MediaCodecDecoder$ScaleMsg;->moveY:F

    .line 789
    return-void
.end method
