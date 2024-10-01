.class public Lcom/huawei/videoengine/EglSurfaceBase;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "hme_engine_java_EglSurfaceBase"


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mEglCore:Lcom/huawei/videoengine/EglCore;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lcom/huawei/videoengine/EglCore;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mWidth:I

    .line 25
    iput v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mHeight:I

    .line 28
    iput-object p1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    .line 29
    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 56
    const-string p1, "hme_engine_java_EglSurfaceBase"

    const-string p2, "surface already created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/videoengine/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 60
    iput p1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mWidth:I

    .line 61
    iput p2, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mHeight:I

    .line 62
    return-void
.end method

.method public createWindowSurface(Ljava/lang/Object;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 39
    const-string p1, "hme_engine_java_EglSurfaceBase"

    const-string v0, "surface already created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    invoke-virtual {v0, p1}, Lcom/huawei/videoengine/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 48
    return-void
.end method

.method public getHeight()I
    .locals 3

    .line 83
    iget v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mHeight:I

    if-gez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    return v0

    .line 86
    :cond_0
    iget v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 3

    .line 72
    iget v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mWidth:I

    if-gez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Lcom/huawei/videoengine/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    return v0

    .line 75
    :cond_0
    iget v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mWidth:I

    return v0
.end method

.method public isCurrent()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method

.method public makeCurrent()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    .line 104
    return-void
.end method

.method public makeCurrentReadFrom(Lcom/huawei/videoengine/EglSurfaceBase;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object p1, p1, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/videoengine/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V

    .line 112
    return-void
.end method

.method public releaseEglSurface()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 95
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mHeight:I

    iput v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mWidth:I

    .line 97
    return-void
.end method

.method public saveFrame(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string p1, "hme_engine_java_EglSurfaceBase"

    const-string v0, "Expected EGL context/surface is not current"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p0}, Lcom/huawei/videoengine/EglSurfaceBase;->getWidth()I

    move-result v7

    .line 163
    invoke-virtual {p0}, Lcom/huawei/videoengine/EglSurfaceBase;->getHeight()I

    move-result v8

    .line 164
    mul-int v0, v7, v8

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 165
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 166
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v2, v7

    move v3, v8

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 168
    const-string v0, "glReadPixels"

    invoke-static {v0}, Lcom/huawei/videoengine/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 171
    const/4 v0, 0x0

    .line 173
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 176
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 177
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 181
    const-string v0, "hme_engine_java_EglSurfaceBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frame as \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 179
    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    throw p1
.end method

.method public setPresentationTime(J)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/huawei/videoengine/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    .line 134
    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEglCore:Lcom/huawei/videoengine/EglCore;

    iget-object v1, p0, Lcom/huawei/videoengine/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/huawei/videoengine/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    const-string v1, "hme_engine_java_EglSurfaceBase"

    const-string v2, "WARNING: swapBuffers() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    return v0
.end method
