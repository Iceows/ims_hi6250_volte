.class public Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;,
        Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;,
        Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static LOGLEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "hme-video"

.field private static VERBOSE:Z

.field private static final model:Ljava/lang/String;


# instance fields
.field private cameraOpen:Z

.field context:Landroid/content/Context;

.field deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;"
        }
    .end annotation
.end field

.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->LOGLEVEL:I

    .line 33
    sget v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->LOGLEVEL:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    .line 34
    sget v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->LOGLEVEL:I

    if-le v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    sput-boolean v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    .line 88
    iput p1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->id:I

    .line 89
    iput-object p2, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    .line 90
    const-string p1, "hme-video"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", context"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 92
    return-void
.end method

.method private addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    .locals 17

    move-object/from16 v0, p1

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v2

    .line 302
    if-eqz v2, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 310
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v3

    .line 311
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 313
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 315
    const-string v6, "hme-video"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDeviceInfo: suport format num:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  iMaxSizePerFormat:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    nop

    .line 319
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 320
    sget-boolean v9, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    if-eqz v9, :cond_1

    .line 321
    const-string v9, "hme-video"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VideoCaptureDeviceInfoAndroid:frameRate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v7, :cond_2

    .line 325
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 327
    :cond_2
    goto :goto_0

    .line 340
    :cond_3
    if-lez v4, :cond_8

    .line 342
    const-string v2, "hme-video"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addDeviceInfo!!model is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    mul-int/2addr v4, v5

    .line 344
    nop

    .line 345
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string v8, "M310"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v2, :cond_4

    .line 349
    nop

    .line 350
    const-string v2, "hme-video"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "M310(singlebox) addDeviceInfo capabilityNumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move v2, v8

    goto :goto_1

    .line 354
    :cond_4
    const-string v2, "hme-video"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " addDeviceInfo capabilityNumber: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move v2, v6

    :goto_1
    new-array v9, v4, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput-object v9, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 359
    nop

    .line 365
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 367
    const-string v10, "hme-video"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Add capture Device Info! suport format:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    mul-int v10, v5, v6

    .line 370
    add-int/2addr v6, v8

    mul-int v11, v5, v6

    .line 372
    move v12, v10

    :goto_3
    if-ge v12, v11, :cond_5

    .line 374
    sub-int v13, v12, v10

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/Camera$Size;

    .line 376
    const-string v15, "hme-video"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    const-string v1, "cur size("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    new-instance v8, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v8}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    aput-object v8, v1, v12

    .line 378
    iget-object v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v1, v1, v12

    iget v8, v14, Landroid/hardware/Camera$Size;->height:I

    iput v8, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 379
    iget-object v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v1, v1, v12

    iget v8, v14, Landroid/hardware/Camera$Size;->width:I

    iput v8, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 380
    iget-object v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v1, v1, v12

    iput v7, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 381
    iget-object v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v1, v1, v12

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    .line 372
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v16

    const/4 v8, 0x1

    goto :goto_3

    .line 384
    :cond_5
    move-object/from16 v16, v1

    .line 385
    nop

    .line 365
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 387
    :cond_6
    const-string v1, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " needToQueryDoubleStream: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-eqz v2, :cond_8

    .line 390
    nop

    .line 391
    const-string v1, "supported_stream"

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 392
    const/4 v2, 0x1

    if-ne v2, v1, :cond_7

    .line 393
    iget-object v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    add-int/lit8 v3, v4, -0x1

    aget-object v2, v2, v3

    const/16 v5, 0x2d0

    iput v5, v2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 394
    iget-object v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v2, v2, v3

    const/16 v5, 0x500

    iput v5, v2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 395
    iget-object v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v2, v2, v3

    const/16 v5, 0x1e

    iput v5, v2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 396
    iget-object v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v2, v2, v3

    const/16 v3, 0x62

    iput v3, v2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    goto :goto_4

    .line 399
    :cond_7
    const-string v2, "hme-video"

    const-string v3, "M310 not support double stream, do nothing!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_4
    const-string v2, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "supportDoubelStream: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " VRawType: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    const/4 v1, 0x1

    sub-int/2addr v4, v1

    aget-object v0, v0, v4

    iget v0, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_8
    return-void

    .line 304
    :cond_9
    :goto_5
    const-string v0, "hme-video"

    const-string v1, "framerate or sizes is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method private addDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V
    .locals 8

    .line 450
    nop

    .line 451
    iget-object v0, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 452
    iget v6, v5, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    iget v7, p2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    if-ne v6, v7, :cond_0

    iget v5, v5, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    iget v6, p2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    if-ne v5, v6, :cond_0

    .line 454
    nop

    .line 455
    nop

    .line 458
    move v0, v4

    goto :goto_1

    .line 451
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 458
    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    .line 459
    iget-object v0, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v0, v0

    add-int/2addr v0, v4

    new-array v0, v0, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 461
    move v1, v2

    :goto_2
    iget-object v3, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 462
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v1, v4, v1

    aput-object v1, v0, v3

    .line 461
    move v1, v3

    goto :goto_2

    .line 464
    :cond_2
    aput-object p2, v0, v2

    .line 465
    iput-object v0, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 468
    :cond_3
    return-void
.end method

.method private allocateHTCFrontCamera()Landroid/hardware/Camera;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 857
    const-string v0, "hme-video"

    const-string v1, "AllocateHTCFrontCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createVideoCaptureDeviceInfoAndroid(ILandroid/content/Context;)Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
    .locals 4

    .line 67
    sget-boolean v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "hme-video"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "VideoCaptureDeviceInfoAndroid"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 69
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    new-instance v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-direct {v0, p0, p1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;-><init>(ILandroid/content/Context;)V

    .line 73
    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    move-result p0

    if-nez p0, :cond_1

    .line 75
    const-string p0, "hme-video"

    const-string p1, "Success to create VideoCaptureDeviceInfoAndroid."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v0

    .line 80
    :cond_1
    const-string p0, "hme-video"

    const-string p1, "Failed to create VideoCaptureDeviceInfoAndroid."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()I
    .locals 8

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    .line 130
    move v0, v1

    move v2, v0

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 134
    :try_start_0
    new-instance v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    invoke-direct {v3}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>()V

    .line 136
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 137
    invoke-static {v0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 138
    iput v0, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 140
    iget v5, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_0

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Facing back, Orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 144
    const-string v5, "hme-video"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "back Camera, orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Facing front, Orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 149
    sget-object v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v5, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 151
    const-string v5, "hme-video"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "front Camera, orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_1
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v4, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 156
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v2, v2, 0x1

    .line 158
    sget-object v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string v4, "LG-P920"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v3, v2, :cond_1

    .line 160
    const-string v3, "hme-video"

    const-string v4, "Not use the camera 2 of LG-P920"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_3

    .line 169
    :cond_1
    goto :goto_2

    .line 164
    :catch_0
    move-exception v3

    .line 166
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to init VideoCaptureDeviceInfo ex::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    nop

    .line 130
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 276
    :cond_2
    move v2, v1

    :cond_3
    :goto_3
    if-nez v2, :cond_4

    .line 278
    const-string v0, "hme-video"

    const-string v2, "no valid Camera!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v1

    .line 293
    :cond_4
    return v1
.end method

.method private verifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .locals 4

    .line 414
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "GT-I9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xf

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "crespo"

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    :cond_1
    new-instance v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v0}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 418
    const/16 v2, 0x160

    iput v2, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 419
    const/16 v2, 0x120

    iput v2, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 420
    iput v1, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 421
    invoke-direct {p0, p1, v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V

    .line 423
    new-instance v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v0}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 424
    const/16 v2, 0xb0

    iput v2, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 425
    const/16 v2, 0x90

    iput v2, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 426
    iput v1, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 427
    invoke-direct {p0, p1, v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V

    .line 429
    new-instance v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v0}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 430
    const/16 v2, 0x140

    iput v2, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 431
    const/16 v2, 0xf0

    iput v2, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 432
    iput v1, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 433
    invoke-direct {p0, p1, v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V

    .line 437
    :cond_2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "motorola"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "umts_sholes"

    .line 438
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    iget-object p1, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 441
    iput v1, v3, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_3
    return-void
.end method


# virtual methods
.method public allocateCamera(IJLjava/lang/String;)Lcom/huawei/videoengine/VideoCaptureAndroid;
    .locals 9

    .line 576
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllocateCamera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    nop

    .line 579
    nop

    .line 580
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v6, v0

    move-object v7, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 581
    iget-object v4, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 583
    nop

    .line 584
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    iget-object v5, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v5}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0x8

    packed-switch v4, :pswitch_data_0

    .line 636
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_2

    .line 622
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->allocateHTCFrontCamera()Landroid/hardware/Camera;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 632
    nop

    .line 703
    :goto_1
    move-object v7, v2

    move-object v6, v3

    goto/16 :goto_3

    .line 623
    :catch_0
    move-exception p1

    .line 625
    :try_start_2
    const-string p2, "hme-video"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to verifyCapabilities ex::"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 629
    nop

    .line 631
    return-object v0

    .line 587
    :pswitch_1
    if-eqz v6, :cond_0

    .line 589
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 590
    nop

    .line 592
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    .line 593
    if-nez v3, :cond_1

    .line 595
    goto :goto_1

    .line 597
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 598
    const-string v6, "camera-id"

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 599
    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 600
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v6, v5, :cond_2

    .line 602
    invoke-direct {p0, v2, v4}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    .line 606
    :cond_2
    :try_start_3
    invoke-direct {p0, v2}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->verifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 616
    goto :goto_1

    .line 607
    :catch_1
    move-exception p1

    .line 609
    :try_start_4
    const-string p2, "hme-video"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to verifyCapabilities ex::"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 613
    nop

    .line 615
    return-object v0

    .line 636
    :goto_2
    if-le v4, v5, :cond_7

    .line 638
    new-instance v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;

    iget v5, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-direct {v4, v5}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;-><init>(I)V

    .line 639
    invoke-virtual {v4}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->start()V

    .line 640
    const/4 v5, 0x0

    .line 641
    :cond_3
    iget-object v7, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v7, :cond_6

    .line 644
    const-wide/16 v7, 0x14

    :try_start_5
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 654
    nop

    .line 655
    add-int/2addr v5, v3

    .line 660
    const/16 v7, 0xc8

    if-le v5, v7, :cond_3

    .line 662
    :try_start_6
    const-string p1, "hme-video"

    const-string p2, "AllocateCamera Failed for open camera overtime!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v4}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->stop()V

    .line 664
    if-eqz v6, :cond_4

    .line 666
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 667
    nop

    .line 669
    :cond_4
    return-object v0

    .line 645
    :catch_2
    move-exception p1

    .line 647
    const-string p2, "hme-video"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to verifyCapabilities ex::"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-eqz v6, :cond_5

    .line 650
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 651
    nop

    .line 653
    :cond_5
    return-object v0

    .line 674
    :cond_6
    iget-object v3, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    .line 683
    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 684
    invoke-direct {p0, v2, v4}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 687
    :try_start_7
    invoke-direct {p0, v2}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->verifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 695
    nop

    .line 696
    goto/16 :goto_1

    .line 689
    :catch_3
    move-exception p1

    .line 691
    :try_start_8
    const-string p2, "hme-video"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to VerifyCapabilities ex::"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 693
    nop

    .line 694
    return-object v0

    .line 699
    :cond_7
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    goto/16 :goto_1

    .line 703
    :cond_8
    :goto_3
    goto/16 :goto_0

    .line 705
    :cond_9
    if-nez v6, :cond_a

    .line 706
    return-object v0

    .line 708
    :cond_a
    sget-boolean p4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    if-eqz p4, :cond_b

    .line 709
    const-string p4, "hme-video"

    const-string v1, "AllocateCamera - creating VideoCaptureAndroid"

    invoke-static {p4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_b
    iput-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    .line 713
    new-instance p4, Lcom/huawei/videoengine/VideoCaptureAndroid;

    move-object v2, p4

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/huawei/videoengine/VideoCaptureAndroid;-><init>(IJLandroid/hardware/Camera;Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    return-object p4

    .line 715
    :catch_4
    move-exception p1

    .line 716
    const-string p2, "hme-video"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "AllocateCamera Failed to open camera- ex "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 716
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCapabilityArray(Ljava/lang/String;)[Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    .locals 6

    .line 493
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 496
    :try_start_0
    const-string v2, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCapabilityArray "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-boolean v2, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    if-nez v2, :cond_0

    .line 498
    const-string v2, "hme-video"

    const-string v3, "GetCapabilityArray camera is not Open"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 503
    iget-object v4, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 505
    iget-object v2, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    if-nez v2, :cond_4

    .line 507
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v2, v4, :cond_3

    .line 509
    new-instance p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;

    iget v2, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-direct {p1, v2}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;-><init>(I)V

    .line 510
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->start()V

    .line 511
    nop

    .line 512
    :cond_1
    iget-object v2, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 514
    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    .line 518
    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 520
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->stop()V

    .line 521
    const-string p1, "hme-video"

    const-string v0, "GetCapabilityArray Failed for open camera overtime!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-object v1

    .line 526
    :cond_2
    iget-object p1, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    .line 535
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 536
    invoke-direct {p0, v3, v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 537
    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 539
    goto :goto_1

    .line 542
    :cond_3
    const-string v0, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCapabilityArray Failed. SDK<=8,device.captureCapabilies == null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_4
    :goto_1
    iget-object p1, v3, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    check-cast p1, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 548
    :cond_5
    goto :goto_0

    .line 554
    :cond_6
    nop

    .line 555
    return-object v1

    .line 549
    :catch_0
    move-exception p1

    .line 551
    const-string v0, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCapabilityArray Failed to open camera- ex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 551
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-object v1
.end method

.method public getDeviceUniqueName(I)Ljava/lang/String;
    .locals 2

    .line 480
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    if-nez v0, :cond_0

    .line 481
    const-string v0, "hme-video"

    const-string v1, "GetDeviceUniqueName camera is not Open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    .line 485
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object p1, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    return-object p1

    .line 486
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOrientation(Ljava/lang/String;)I
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 562
    iget-object v2, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    const-string p1, "rotation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java_GetOrientation device.orientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget p1, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    return p1

    .line 568
    :cond_0
    goto :goto_0

    .line 569
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public numberOfDevices()I
    .locals 2

    .line 472
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    if-nez v0, :cond_0

    .line 473
    const-string v0, "hme-video"

    const-string v1, "NumberOfDevices camera is not Open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public reInit()I
    .locals 3

    .line 97
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reInit!!model is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string v1, "M310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "hme-video"

    const-string v1, "M310(singlebox) reInit!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "hme-video"

    const-string v1, "M310(singlebox) support hot plug!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 109
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    move-result v0

    return v0

    .line 114
    :cond_0
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " no need to refresh camera number!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    return v0
.end method
