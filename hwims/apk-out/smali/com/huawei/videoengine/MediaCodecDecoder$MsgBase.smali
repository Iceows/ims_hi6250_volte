.class Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgBase"
.end annotation


# instance fields
.field private mSemaphore:Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;

.field final synthetic this$0:Lcom/huawei/videoengine/MediaCodecDecoder;


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/MediaCodecDecoder;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;->this$0:Lcom/huawei/videoengine/MediaCodecDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;->mSemaphore:Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;

    .line 699
    return-void
.end method


# virtual methods
.method public getSemaphore()Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;->mSemaphore:Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;

    return-object v0
.end method

.method public setSemaphore(Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$MsgBase;->mSemaphore:Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;

    .line 706
    return-void
.end method
