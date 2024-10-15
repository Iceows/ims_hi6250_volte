.class public Lcom/huawei/videoengine/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;,
        Lcom/huawei/videoengine/ViEAndroidGLES20$ContextFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "hme_engine_java_GLES20"

.field private static final manufaturer:Ljava/lang/String;


# instance fields
.field private lnativeObject:J

.field private nativeFreeResFlag:Z

.field private nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private openGLCreated:Z

.field private remoteSurface:Landroid/view/Surface;

.field private surfaceCreated:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/ViEAndroidGLES20;->manufaturer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    .line 53
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    .line 35
    iput-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 37
    iput-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 38
    iput-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    .line 43
    iput p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    .line 44
    iput p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    .line 55
    const-string v1, "hme_engine_java_GLES20"

    const-string v2, "enter ViEAndroidGLES20 creat!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v2, Lcom/huawei/videoengine/ViEAndroidGLES20$ContextFactory;

    invoke-direct {v2, v0}, Lcom/huawei/videoengine/ViEAndroidGLES20$ContextFactory;-><init>(Lcom/huawei/videoengine/ViEAndroidGLES20$1;)V

    invoke-virtual {p0, v2}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 64
    new-instance v0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 66
    invoke-virtual {p0, p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setRenderMode(I)V

    .line 68
    const-string p1, "end creatting ViEAndroidGLES20!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 2

    .line 30
    invoke-static {p0, p1}, Lcom/huawei/videoengine/ViEAndroidGLES20;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 5

    .line 314
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_21

    .line 315
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%s: EGL error: 0x%x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme_engine_java_GLES20"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_21
    return-void
.end method

.method private native createOpenGLNative(JII)I
.end method

.method private native drawNative(J)V
.end method

.method private native freeGlNative(J)V
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .registers 3

    .line 74
    nop

    .line 75
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 76
    const/4 v0, 0x0

    if-nez p0, :cond_d

    .line 78
    return v0

    .line 80
    :cond_d
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    .line 81
    if-nez p0, :cond_14

    .line 83
    return v0

    .line 85
    :cond_14
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x20000

    if-lt p0, v1, :cond_1c

    .line 87
    const/4 p0, 0x1

    return p0

    .line 89
    :cond_1c
    return v0
.end method

.method private native setSurface(JLjava/lang/Object;)V
.end method

.method public static useOpenGL2(Ljava/lang/Object;)Z
    .registers 2

    .line 49
    const-class v0, Lcom/huawei/videoengine/ViEAndroidGLES20;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public deRegisterNativeObject()V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 250
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 251
    iput-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_15

    .line 258
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 259
    nop

    .line 260
    return-void

    .line 258
    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 259
    throw v0
.end method

.method public getRemoteSurface()V
    .registers 6

    .line 208
    const-string v0, "hme_engine_java_GLES20"

    const-string v1, "ViEAndroidGLES20.java! getRemoteSurface!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_50

    sget-object v1, Lcom/huawei/videoengine/ViEAndroidGLES20;->manufaturer:Ljava/lang/String;

    const-string v2, "HUAWEI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 211
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 213
    const-wide/16 v1, 0x0

    :try_start_1e
    iget-wide v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3e

    .line 215
    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    if-eqz v1, :cond_38

    .line 216
    const-string v1, "ViEAndroidGLES20.java! set remote surface to native channel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget-object v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setSurface(JLjava/lang/Object;)V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    goto :goto_43

    .line 221
    :cond_38
    const-string v1, "ViEAndroidGLES20.java! remoteSurface is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 226
    :cond_3e
    const-string v1, "ViEAndroidGLES20.java! getRemoteSurface but not registered!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_49

    .line 230
    :goto_43
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 231
    goto :goto_50

    .line 230
    :catchall_49
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 231
    throw v0

    .line 233
    :cond_50
    :goto_50
    return-void
.end method

.method public javaUpdateResFreeFlag()V
    .registers 3

    .line 272
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-eqz v0, :cond_19

    .line 274
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 276
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_12

    .line 279
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 280
    goto :goto_19

    .line 279
    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 280
    throw v0

    .line 282
    :cond_19
    :goto_19
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 9

    .line 93
    iget-object p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 95
    :try_start_5
    iget-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_86

    const-string v0, "onDrawFrame after freeGlNative!"

    const/4 v1, 0x0

    const-string v2, "hme_engine_java_GLES20"

    if-eqz p1, :cond_5d

    :try_start_e
    iget-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-nez p1, :cond_13

    goto :goto_5d

    .line 120
    :cond_13
    iget-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    if-nez p1, :cond_36

    .line 122
    iget-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    if-nez p1, :cond_30

    .line 123
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    iget v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/huawei/videoengine/ViEAndroidGLES20;->createOpenGLNative(JII)I

    move-result p1
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_86

    if-eqz p1, :cond_2d

    .line 145
    iget-object p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 128
    return-void

    .line 130
    :cond_2d
    const/4 p1, 0x1

    :try_start_2e
    iput-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 133
    :cond_30
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/videoengine/ViEAndroidGLES20;->drawNative(J)V

    goto :goto_56

    .line 138
    :cond_36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "second! onDrawFrame before freeGlNative! openGLCreated:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-wide v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v3, v4}, Lcom/huawei/videoengine/ViEAndroidGLES20;->freeGlNative(J)V

    .line 140
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z
    :try_end_56
    .catchall {:try_start_2e .. :try_end_56} :catchall_86

    .line 145
    :goto_56
    iget-object p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    nop

    .line 147
    return-void

    .line 98
    :cond_5d
    :goto_5d
    :try_start_5d
    iget-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    if-eqz p1, :cond_80

    .line 100
    iget-wide v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    const-wide/16 v5, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_77

    .line 102
    const-string p1, "first! onDrawFrame before freeGlNative!"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-wide v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v3, v4}, Lcom/huawei/videoengine/ViEAndroidGLES20;->freeGlNative(J)V

    .line 104
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 108
    :cond_77
    const-string p1, "onDrawFrame 0 == lnativeObject!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_7c
    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 112
    iput-wide v5, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J
    :try_end_80
    .catchall {:try_start_5d .. :try_end_80} :catchall_86

    .line 145
    :cond_80
    iget-object p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    return-void

    .line 145
    :catchall_86
    move-exception p1

    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 8

    .line 151
    const-string p1, "hme_engine_java_GLES20"

    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 153
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViEAndroidGLES20.java! enter onSurfaceChanged + width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeFunctionsRegisted flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    .line 157
    iput p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    .line 158
    iput p3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    .line 162
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_51

    .line 163
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    iget v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/videoengine/ViEAndroidGLES20;->resetRender(JII)V

    .line 165
    :cond_51
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_5f

    .line 166
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/huawei/videoengine/ViEAndroidGLES20;->createOpenGLNative(JII)I

    move-result p2

    if-nez p2, :cond_5f

    .line 167
    iput-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_66

    .line 170
    :cond_5f
    iget-object p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 171
    nop

    .line 174
    return-void

    .line 170
    :catchall_66
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 171
    throw p1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 7

    .line 178
    const-string p1, "hme_engine_java_GLES20"

    const-string p2, "ViEAndroidGLES20.java! onSurfaceCreated!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 181
    const/4 p2, 0x0

    :try_start_d
    iput-boolean p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 182
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_46

    sget-object v0, Lcom/huawei/videoengine/ViEAndroidGLES20;->manufaturer:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 185
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    .line 187
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    cmp-long p2, v0, v2

    if-eqz p2, :cond_41

    .line 188
    const-string p2, "ViEAndroidGLES20.java! lnativeObject is registerd!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-wide p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setSurface(JLjava/lang/Object;)V

    .line 190
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    goto :goto_46

    .line 193
    :cond_41
    const-string p2, "ViEAndroidGLES20.java! not registered,save remote surface!!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_4d

    .line 198
    :cond_46
    :goto_46
    iget-object p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 199
    nop

    .line 200
    return-void

    .line 198
    :catchall_4d
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 199
    throw p1
.end method

.method public onSurfaceDestory(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    .line 204
    const-string p1, "hme_engine_java_GLES20"

    const-string p2, "ViEAndroidGLES20.java! onSurfaceDestory!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public reDraw()V
    .registers 2

    .line 263
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-eqz v0, :cond_7

    .line 265
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->requestRender()V

    .line 267
    :cond_7
    return-void
.end method

.method public registerNativeObject(J)V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 238
    :try_start_5
    iput-wide p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    .line 239
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 240
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_14

    .line 243
    iget-object p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 244
    nop

    .line 245
    return-void

    .line 243
    :catchall_14
    move-exception p1

    iget-object p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 244
    throw p1
.end method

.method public resetRender(JII)V
    .registers 5

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/huawei/videoengine/ViEAndroidGLES20;->freeGlNative(J)V

    .line 420
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/videoengine/ViEAndroidGLES20;->createOpenGLNative(JII)I

    .line 421
    return-void
.end method
