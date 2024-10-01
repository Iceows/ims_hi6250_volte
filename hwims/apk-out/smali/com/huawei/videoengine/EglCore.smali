.class public final Lcom/huawei/videoengine/EglCore;
.super Ljava/lang/Object;
.source "EglCore.java"


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final FLAG_RECORDABLE:I = 0x1

.field public static final FLAG_TRY_GLES3:I = 0x2

.field private static final TAG:Ljava/lang/String; = "hme_engine_java_eglcore"


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mGlVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/videoengine/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 38
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/huawei/videoengine/EglCore;->mGlVersion:I

    .line 59
    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v1, v2, :cond_6

    .line 63
    if-nez p1, :cond_0

    .line 64
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 67
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 68
    iget-object v2, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_5

    .line 71
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 72
    iget-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x1

    invoke-static {v4, v3, v1, v3, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 78
    and-int/lit8 v0, p2, 0x2

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    .line 80
    invoke-direct {p0, p2, v3}, Lcom/huawei/videoengine/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    new-array v4, v3, [I

    fill-array-data v4, :array_0

    .line 86
    iget-object v6, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v6, v0, p1, v4, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v4

    .line 89
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v6

    const/16 v7, 0x3000

    if-ne v6, v7, :cond_1

    .line 91
    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 92
    iput-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 93
    iput v3, p0, Lcom/huawei/videoengine/EglCore;->mGlVersion:I

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v0, v4, :cond_3

    .line 99
    invoke-direct {p0, p2, v2}, Lcom/huawei/videoengine/EglCore;->getConfig(II)Landroid/opengl/EGLConfig;

    move-result-object p2

    .line 100
    if-eqz p2, :cond_2

    .line 103
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    .line 107
    iget-object v3, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v3, p2, p1, v0, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    .line 109
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/huawei/videoengine/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 110
    iput-object p2, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 111
    iput-object p1, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 112
    iput v2, p0, Lcom/huawei/videoengine/EglCore;->mGlVersion:I

    goto :goto_0

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find a suitable EGLConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_3
    :goto_0
    new-array p1, v5, [I

    .line 117
    iget-object p2, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/16 v2, 0x3098

    invoke-static {p2, v0, v2, p1, v1}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 119
    const-string p2, "hme_engine_java_eglcore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EGLContext created, client version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 73
    :cond_4
    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 74
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EGL already set up"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 3

    .line 361
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_0

    .line 363
    const-string v0, "hme_engine_java_eglcore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkEglError error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    return-void
.end method

.method private getConfig(II)Landroid/opengl/EGLConfig;
    .locals 13

    .line 129
    nop

    .line 130
    const/4 v0, 0x4

    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    .line 131
    const/16 v2, 0x44

    goto :goto_0

    .line 137
    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, 0xd

    new-array v5, v3, [I

    const/16 v3, 0x3024

    const/4 v12, 0x0

    aput v3, v5, v12

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput v3, v5, v4

    const/16 v6, 0x3023

    const/4 v7, 0x2

    aput v6, v5, v7

    aput v3, v5, v1

    const/16 v6, 0x3022

    aput v6, v5, v0

    const/4 v0, 0x5

    aput v3, v5, v0

    const/4 v0, 0x6

    const/16 v6, 0x3021

    aput v6, v5, v0

    const/4 v0, 0x7

    aput v3, v5, v0

    const/16 v0, 0x3040

    aput v0, v5, v3

    const/16 v0, 0x9

    aput v2, v5, v0

    const/16 v0, 0xa

    const/16 v2, 0x3038

    aput v2, v5, v0

    const/16 v0, 0xb

    aput v12, v5, v0

    const/16 v0, 0xc

    aput v2, v5, v0

    .line 148
    and-int/2addr p1, v4

    if-eqz p1, :cond_1

    .line 149
    array-length p1, v5

    sub-int/2addr p1, v1

    const/16 v0, 0x3142

    aput v0, v5, p1

    .line 150
    array-length p1, v5

    sub-int/2addr p1, v7

    aput v4, v5, p1

    .line 152
    :cond_1
    new-array p1, v4, [Landroid/opengl/EGLConfig;

    .line 153
    new-array v10, v4, [I

    .line 154
    iget-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, p1

    const/4 v11, 0x0

    move-object v7, p1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    const-string p1, "hme_engine_java_eglcore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to find RGB8888 / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " EGLConfig"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 p1, 0x0

    return-object p1

    .line 159
    :cond_2
    aget-object p1, p1, v12

    return-object p1
.end method

.method public static logCurrent(Ljava/lang/String;)V
    .locals 6

    .line 349
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 350
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    .line 351
    const/16 v2, 0x3059

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    .line 352
    const-string v3, "hme_engine_java_eglcore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current EGL ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): display="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", context="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", surface="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)Landroid/opengl/EGLSurface;
    .locals 3

    .line 239
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3057

    aput v2, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 p1, 0x2

    const/16 v2, 0x3056

    aput v2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v0, p1

    .line 244
    iget-object p1, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {p1, p2, v0, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    .line 246
    const-string p2, "eglCreatePbufferSurface"

    invoke-direct {p0, p2}, Lcom/huawei/videoengine/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 247
    if-nez p1, :cond_0

    .line 249
    const-string p1, "hme_engine_java_eglcore"

    const-string p2, "surface was null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 p1, 0x0

    return-object p1

    .line 252
    :cond_0
    return-object p1
.end method

.method public createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 5

    .line 214
    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 216
    const-string v0, "hme_engine_java_eglcore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v1

    .line 221
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0x3038

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 224
    iget-object v2, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v2, v4, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    .line 226
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/huawei/videoengine/EglCore;->checkEglError(Ljava/lang/String;)V

    .line 227
    if-nez p1, :cond_1

    .line 229
    const-string p1, "hme_engine_java_eglcore"

    const-string v0, "surface was null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-object v1

    .line 232
    :cond_1
    return-object p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 192
    const-string v0, "hme_engine_java_eglcore"

    const-string v1, "WARNING: EglCore was not explicitly released -- state may be leaked"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/huawei/videoengine/EglCore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 197
    nop

    .line 198
    return-void

    .line 196
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGlVersion()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/huawei/videoengine/EglCore;->mGlVersion:I

    return v0
.end method

.method public isCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3059

    .line 315
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 314
    :goto_0
    return p1
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 261
    const-string v0, "hme_engine_java_eglcore"

    const-string v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 265
    const-string p1, "hme_engine_java_eglcore"

    const-string v0, "eglMakeCurrent failed L259"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    return-void
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 275
    const-string v0, "hme_engine_java_eglcore"

    const-string v1, "NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p2, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 279
    const-string p1, "hme_engine_java_eglcore"

    const-string p2, "eglMakeCurrent failed L273"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    return-void
.end method

.method public makeNothingCurrent()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    const-string v0, "hme_engine_java_eglcore"

    const-string v1, "eglMakeCurrent failed L284"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    return-void
.end method

.method public queryString(I)Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public querySurface(Landroid/opengl/EGLSurface;I)I
    .locals 3

    .line 322
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 323
    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    .line 324
    aget p1, v0, v2

    return p1
.end method

.method public release()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 174
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 175
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 176
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 179
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 180
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    .line 182
    return-void
.end method

.method public releaseSurface(Landroid/opengl/EGLSurface;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 206
    return-void
.end method

.method public setPresentationTime(Landroid/opengl/EGLSurface;J)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 308
    return-void
.end method

.method public swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/huawei/videoengine/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method
