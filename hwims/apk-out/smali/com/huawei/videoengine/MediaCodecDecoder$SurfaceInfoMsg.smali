.class Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceInfoMsg;
.super Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceInfoMsg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

.field public updateSf:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;Landroid/view/Surface;)V
    .locals 0

    .line 1026
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceInfoMsg;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    .line 1027
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;-><init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V

    .line 1028
    iput-object p2, p0, Lcom/huawei/videoengine/MediaCodecDecoder$SurfaceInfoMsg;->updateSf:Landroid/view/Surface;

    .line 1029
    return-void
.end method
