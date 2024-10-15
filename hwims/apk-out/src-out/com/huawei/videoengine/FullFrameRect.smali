.class public Lcom/huawei/videoengine/FullFrameRect;
.super Ljava/lang/Object;
.source "FullFrameRect.java"


# instance fields
.field private mProgram:Lcom/huawei/videoengine/Texture2dProgram;

.field private final mRectDrawable:Lcom/huawei/videoengine/Drawable2d;


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/Texture2dProgram;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/huawei/videoengine/Drawable2d;

    sget-object v1, Lcom/huawei/videoengine/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/huawei/videoengine/Drawable2d$Prefab;

    invoke-direct {v0, v1}, Lcom/huawei/videoengine/Drawable2d;-><init>(Lcom/huawei/videoengine/Drawable2d$Prefab;)V

    iput-object v0, p0, Lcom/huawei/videoengine/FullFrameRect;->mRectDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 19
    iput-object p1, p0, Lcom/huawei/videoengine/FullFrameRect;->mProgram:Lcom/huawei/videoengine/Texture2dProgram;

    .line 20
    return-void
.end method


# virtual methods
.method public changeProgram(Lcom/huawei/videoengine/Texture2dProgram;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/huawei/videoengine/FullFrameRect;->mProgram:Lcom/huawei/videoengine/Texture2dProgram;

    invoke-virtual {v0}, Lcom/huawei/videoengine/Texture2dProgram;->release()V

    .line 53
    iput-object p1, p0, Lcom/huawei/videoengine/FullFrameRect;->mProgram:Lcom/huawei/videoengine/Texture2dProgram;

    .line 54
    return-void
.end method

.method public createTextureObject()I
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/huawei/videoengine/FullFrameRect;->mProgram:Lcom/huawei/videoengine/Texture2dProgram;

    invoke-virtual {v0}, Lcom/huawei/videoengine/Texture2dProgram;->createTextureObject()I

    move-result v0

    return v0
.end method

.method public deleteTextureObject(I)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/huawei/videoengine/FullFrameRect;->mProgram:Lcom/huawei/videoengine/Texture2dProgram;

    invoke-virtual {v0, p1}, Lcom/huawei/videoengine/Texture2dProgram;->deleteTextureObject(I)V

    .line 65
    return-void
.end method

.method public drawFrame(I[F[F)V
    .registers 15

    .line 73
    iget-object v0, p0, Lcom/huawei/videoengine/FullFrameRect;->mProgram:Lcom/huawei/videoengine/Texture2dProgram;

    iget-object v1, p0, Lcom/huawei/videoengine/FullFrameRect;->mRectDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 74
    invoke-virtual {v1}, Lcom/huawei/videoengine/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v1, p0, Lcom/huawei/videoengine/FullFrameRect;->mRectDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 75
    invoke-virtual {v1}, Lcom/huawei/videoengine/Drawable2d;->getVertexCount()I

    move-result v4

    iget-object v1, p0, Lcom/huawei/videoengine/FullFrameRect;->mRectDrawable:Lcom/huawei/videoengine/Drawable2d;

    invoke-virtual {v1}, Lcom/huawei/videoengine/Drawable2d;->getCoordsPerVertex()I

    move-result v5

    iget-object v1, p0, Lcom/huawei/videoengine/FullFrameRect;->mRectDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 76
    invoke-virtual {v1}, Lcom/huawei/videoengine/Drawable2d;->getVertexStride()I

    move-result v6

    iget-object v1, p0, Lcom/huawei/videoengine/FullFrameRect;->mRectDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 77
    invoke-virtual {v1}, Lcom/huawei/videoengine/Drawable2d;->getTexCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    iget-object v1, p0, Lcom/huawei/videoengine/FullFrameRect;->mRectDrawable:Lcom/huawei/videoengine/Drawable2d;

    .line 78
    invoke-virtual {v1}, Lcom/huawei/videoengine/Drawable2d;->getTexCoordStride()I

    move-result v10

    .line 73
    const/4 v3, 0x0

    move-object v1, p2

    move-object v7, p3

    move v9, p1

    invoke-virtual/range {v0 .. v10}, Lcom/huawei/videoengine/Texture2dProgram;->draw([FLjava/nio/FloatBuffer;IIII[FLjava/nio/FloatBuffer;II)V

    .line 79
    return-void
.end method

.method public getProgram()Lcom/huawei/videoengine/Texture2dProgram;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/huawei/videoengine/FullFrameRect;->mProgram:Lcom/huawei/videoengine/Texture2dProgram;

    return-object v0
.end method

.method public release(Z)V
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/huawei/videoengine/FullFrameRect;->mProgram:Lcom/huawei/videoengine/Texture2dProgram;

    if-eqz v0, :cond_c

    .line 32
    if-eqz p1, :cond_9

    .line 33
    invoke-virtual {v0}, Lcom/huawei/videoengine/Texture2dProgram;->release()V

    .line 35
    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/videoengine/FullFrameRect;->mProgram:Lcom/huawei/videoengine/Texture2dProgram;

    .line 37
    :cond_c
    return-void
.end method
