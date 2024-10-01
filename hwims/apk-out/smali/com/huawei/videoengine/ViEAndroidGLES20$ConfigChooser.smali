.class Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;
.super Ljava/lang/Object;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/ViEAndroidGLES20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# static fields
.field private static EGL_OPENGL_ES2_BIT:I

.field private static s_configAttribs2:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 335
    const/4 v0, 0x4

    sput v0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 336
    const/16 v1, 0x9

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x3024

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/16 v2, 0x3022

    aput v2, v1, v0

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v0, 0x6

    const/16 v2, 0x3040

    aput v2, v1, v0

    sget v0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    const/4 v2, 0x7

    aput v0, v1, v2

    const/16 v0, 0x8

    const/16 v2, 0x3038

    aput v2, v1, v0

    sput-object v1, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    .line 324
    iput p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mRedSize:I

    .line 325
    iput p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mGreenSize:I

    .line 326
    iput p3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mBlueSize:I

    .line 327
    iput p4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mAlphaSize:I

    .line 328
    iput p5, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mDepthSize:I

    .line 329
    iput p6, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mStencilSize:I

    .line 330
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    .line 404
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    .line 348
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 349
    sget-object v3, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 351
    const/4 v1, 0x0

    aget v5, v0, v1

    .line 353
    if-gtz v5, :cond_0

    .line 355
    const-string p1, "hme_engine_java_GLES20"

    const-string p2, "No configs match configSpec"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 p1, 0x0

    return-object p1

    .line 360
    :cond_0
    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 361
    sget-object v3, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 365
    invoke-virtual {p0, p1, p2, v7}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .line 370
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v8, p3, v1

    .line 371
    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 373
    const/16 v6, 0x3026

    invoke-direct/range {v2 .. v7}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 377
    iget v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mDepthSize:I

    if-lt v9, v3, :cond_1

    iget v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mStencilSize:I

    if-ge v2, v3, :cond_0

    .line 378
    goto :goto_1

    .line 381
    :cond_0
    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 383
    const/16 v6, 0x3023

    invoke-direct/range {v2 .. v7}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 385
    const/16 v6, 0x3022

    invoke-direct/range {v2 .. v7}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 387
    const/16 v6, 0x3021

    invoke-direct/range {v2 .. v7}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    .line 390
    iget v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mRedSize:I

    if-ne v9, v3, :cond_1

    iget v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mGreenSize:I

    if-ne v10, v3, :cond_1

    iget v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mBlueSize:I

    if-ne v11, v3, :cond_1

    iget v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mAlphaSize:I

    if-ne v2, v3, :cond_1

    .line 392
    return-object v8

    .line 370
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
