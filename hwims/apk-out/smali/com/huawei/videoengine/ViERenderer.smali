.class public Lcom/huawei/videoengine/ViERenderer;
.super Ljava/lang/Object;
.source "ViERenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/ViERenderer$ListenThread;
    }
.end annotation


# static fields
.field private static final MAXNUM:I = 0x10

.field private static final TAG:Ljava/lang/String; = "hme-video"

.field private static g_localRender:Landroid/view/SurfaceView;

.field private static g_localRenderer:Landroid/view/SurfaceHolder;

.field private static g_remoteRender:[Landroid/view/SurfaceView;

.field private static listenThread:Lcom/huawei/videoengine/ViERenderer$ListenThread;

.field private static renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static saveLogcat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 36
    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/view/SurfaceView;

    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLocalRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 3

    .line 185
    new-instance v0, Lcom/huawei/videoengine/ViERenderer$ListenThread;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/ViERenderer$ListenThread;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->listenThread:Lcom/huawei/videoengine/ViERenderer$ListenThread;

    .line 186
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->listenThread:Lcom/huawei/videoengine/ViERenderer$ListenThread;

    invoke-virtual {v0}, Lcom/huawei/videoengine/ViERenderer$ListenThread;->start()V

    .line 187
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v0, "hme-video"

    const-string v1, "ViERenderer.java! createLocalRenderer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    sput-object p0, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 192
    sget-object p0, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 194
    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    .line 196
    invoke-static {v0}, Lcom/huawei/videoengine/ViERenderer;->setLocalRenderInfo(Landroid/view/SurfaceView;)V

    .line 198
    return-object v0
.end method

.method public static createRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/videoengine/ViERenderer;->createRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object p0

    return-object p0
.end method

.method public static createRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;
    .locals 2

    .line 52
    const-string v0, "hme-video"

    const-string v1, "ViERenderer.java! createRenderer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    new-instance p1, Lcom/huawei/videoengine/ViEAndroidGLES20;

    invoke-direct {p1, p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Landroid/view/SurfaceView;

    invoke-direct {p1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 67
    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 68
    invoke-virtual {p1, p0}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/SurfaceView;->setDrawingCacheEnabled(Z)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 90
    return-object p1
.end method

.method public static freeLocalRenderResource()V
    .locals 2

    .line 234
    const-string v0, "hme-video"

    const-string v1, "enter ViERenderer.java! freeLocalRenderResource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 239
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    .line 240
    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 241
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_1

    .line 243
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 245
    :cond_1
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->listenThread:Lcom/huawei/videoengine/ViERenderer$ListenThread;

    invoke-virtual {v0}, Lcom/huawei/videoengine/ViERenderer$ListenThread;->stop1()V

    .line 246
    const-string v0, "hme-video"

    const-string v1, "leave ViERenderer.java! freeLocalRenderResource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    if-eqz v0, :cond_2

    .line 249
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->stopLogcatManager()V

    .line 251
    :cond_2
    return-void
.end method

.method public static getIndexOfSurface(Landroid/view/SurfaceView;)I
    .locals 3

    .line 97
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 99
    const-string p0, "hme-video"

    const-string v1, "The input render is null!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v0

    .line 106
    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 108
    sget-object v2, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 110
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aput-object p0, v0, v1

    .line 111
    return v1

    .line 113
    :cond_1
    sget-object v2, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v2, v2, v1

    if-ne v2, p0, :cond_2

    .line 115
    return v1

    .line 106
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_3
    const-string p0, "hme-video"

    const-string v1, "Can\'t find the equal render!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v0
.end method

.method public static getLocalRenderer()Landroid/view/SurfaceHolder;
    .locals 2

    .line 257
    const-string v0, "hme-video"

    const-string v1, "ViERenderer.java! getLocalRenderer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public static getSurfaceFromIndex(I)Ljava/lang/Object;
    .locals 4

    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt v1, p0, :cond_2

    const/16 v1, 0x10

    if-gt v1, p0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v1, v1, p0

    if-eqz v1, :cond_1

    .line 140
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object p0, v0, p0

    return-object p0

    .line 144
    :cond_1
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Render of index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is null!"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-object v0

    .line 136
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static isAppOnForeground2(Landroid/content/Context;)Z
    .locals 4

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 282
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 283
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 284
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 285
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    .line 287
    const/4 p0, 0x1

    return p0

    .line 289
    :cond_1
    goto :goto_0

    .line 290
    :cond_2
    return v1
.end method

.method public static reSetLocalRender()V
    .locals 2

    .line 220
    const-string v0, "hme-video"

    const-string v1, "enter ViERenderer.java! reSetLocalRender"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 223
    :try_start_0
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    invoke-static {v0}, Lcom/huawei/videoengine/ViERenderer;->setLocalRenderInfo(Landroid/view/SurfaceView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 226
    nop

    .line 227
    const-string v0, "hme-video"

    const-string v1, "leave ViERenderer.java! reSetLocalRender"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 225
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->renderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static setLocalRenderInfo(Landroid/view/SurfaceView;)V
    .locals 2

    .line 204
    const-string v0, "hme-video"

    const-string v1, "enter ViERenderer.java! setLocalRenderInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 208
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 209
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setDrawingCacheEnabled(Z)V

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 211
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 213
    const-string p0, "hme-video"

    const-string v0, "leave ViERenderer.java! setLocalRenderInfo"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public static setSurfaceNull(Landroid/view/SurfaceView;)V
    .locals 2

    .line 152
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 154
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 156
    sget-object p0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    const/4 v1, 0x0

    aput-object v1, p0, v0

    .line 157
    return-void

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method public static setSurfaceNullFromIndex(I)V
    .locals 2

    .line 164
    const/4 v0, 0x1

    if-gt v0, p0, :cond_0

    const/16 v0, 0x10

    if-le v0, p0, :cond_0

    .line 166
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    .line 168
    :cond_0
    return-void
.end method

.method private static startLogcatManager()V
    .locals 0

    .line 335
    return-void
.end method

.method public static startLogcattoFile()V
    .locals 1

    .line 263
    sget-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->startLogcatManager()V

    .line 266
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    .line 268
    :cond_0
    return-void
.end method

.method private static stopLogcatManager()V
    .locals 0

    .line 341
    return-void
.end method

.method public static stopLogcattoFile()V
    .locals 1

    .line 271
    sget-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->stopLogcatManager()V

    .line 274
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    .line 276
    :cond_0
    return-void
.end method
