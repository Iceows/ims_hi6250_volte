.class public Lcom/huawei/videoengine/OffscreenSurface;
.super Lcom/huawei/videoengine/EglSurfaceBase;
.source "OffscreenSurface.java"


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/EglCore;II)V
    .registers 4

    .line 13
    invoke-direct {p0, p1}, Lcom/huawei/videoengine/EglSurfaceBase;-><init>(Lcom/huawei/videoengine/EglCore;)V

    .line 14
    invoke-virtual {p0, p2, p3}, Lcom/huawei/videoengine/OffscreenSurface;->createOffscreenSurface(II)V

    .line 15
    return-void
.end method


# virtual methods
.method public release()V
    .registers 1

    .line 21
    invoke-virtual {p0}, Lcom/huawei/videoengine/OffscreenSurface;->releaseEglSurface()V

    .line 22
    return-void
.end method
