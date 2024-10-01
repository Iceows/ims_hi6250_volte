.class Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;
.super Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameInfoMsg"
.end annotation


# instance fields
.field public dataLength:I

.field public height:I

.field public isKeyFrame:I

.field public renderTime:J

.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;IJIII)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    .line 364
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    .line 365
    iput p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->dataLength:I

    .line 366
    iput-wide p3, p0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->renderTime:J

    .line 367
    iput p5, p0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->isKeyFrame:I

    .line 368
    iput p6, p0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->width:I

    .line 369
    iput p7, p0, Lcom/huawei/videoengine/MediaCodecDecoder$FrameInfoMsg;->height:I

    .line 370
    return-void
.end method
