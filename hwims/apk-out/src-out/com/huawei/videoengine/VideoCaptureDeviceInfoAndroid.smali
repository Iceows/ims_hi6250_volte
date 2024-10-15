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
    .registers 4

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

    if-le v1, v3, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    .line 34
    sget v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->LOGLEVEL:I

    if-le v1, v2, :cond_17

    move v0, v2

    :cond_17
    sput-boolean v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .registers 4

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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->id:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", context"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hme-video"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 92
    return-void
.end method

.method private addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    .registers 20

    .line 300
    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v2

    .line 302
    const-string v3, "hme-video"

    if-eqz v2, :cond_1d1

    if-nez v1, :cond_12

    goto/16 :goto_1d1

    .line 310
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v4

    .line 311
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 313
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDeviceInfo: suport format num:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  iMaxSizePerFormat:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    nop

    .line 319
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    move v8, v7

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 320
    sget-boolean v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    if-eqz v10, :cond_65

    .line 321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VideoCaptureDeviceInfoAndroid:frameRate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_65
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v8, :cond_6f

    .line 325
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 327
    :cond_6f
    goto :goto_41

    .line 340
    :cond_70
    if-lez v5, :cond_1d0

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addDeviceInfo!!model is "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    mul-int/2addr v5, v6

    .line 344
    nop

    .line 345
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string v9, "M310"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x1

    if-eqz v2, :cond_ac

    .line 349
    nop

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "M310(singlebox) addDeviceInfo capabilityNumber: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    goto :goto_c6

    .line 354
    :cond_ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " addDeviceInfo capabilityNumber: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 357
    :goto_c6
    new-array v10, v5, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput-object v10, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 359
    nop

    .line 365
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 367
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Add capture Device Info! suport format:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    mul-int v11, v6, v7

    .line 370
    add-int/2addr v7, v9

    mul-int v12, v6, v7

    .line 372
    move v13, v11

    :goto_f5
    if-ge v13, v12, :cond_158

    .line 374
    sub-int v14, v13, v11

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 376
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    const-string v1, "cur size("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    new-instance v9, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v9}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    aput-object v9, v1, v13

    .line 378
    iget-object v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v1, v1, v13

    iget v9, v15, Landroid/hardware/Camera$Size;->height:I

    iput v9, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 379
    iget-object v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v1, v1, v13

    iget v9, v15, Landroid/hardware/Camera$Size;->width:I

    iput v9, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 380
    iget-object v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v1, v1, v13

    iput v8, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 381
    iget-object v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v1, v1, v13

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    .line 372
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v16

    const/4 v9, 0x1

    goto :goto_f5

    .line 384
    :cond_158
    move-object/from16 v16, v1

    .line 385
    const/4 v9, 0x1

    goto/16 :goto_cf

    .line 387
    :cond_15d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " needToQueryDoubleStream: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-eqz v2, :cond_1d0

    .line 390
    nop

    .line 391
    const-string v1, "supported_stream"

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 392
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1a7

    .line 393
    iget-object v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    add-int/lit8 v4, v5, -0x1

    aget-object v2, v2, v4

    const/16 v6, 0x2d0

    iput v6, v2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 394
    iget-object v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v2, v2, v4

    const/16 v6, 0x500

    iput v6, v2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 395
    iget-object v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v2, v2, v4

    const/16 v6, 0x1e

    iput v6, v2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 396
    iget-object v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v2, v2, v4

    const/16 v4, 0x62

    iput v4, v2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    goto :goto_1ac

    .line 399
    :cond_1a7
    const-string v2, "M310 not support double stream, do nothing!!"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_1ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supportDoubelStream: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " VRawType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    const/4 v1, 0x1

    sub-int/2addr v5, v1

    aget-object v0, v0, v5

    iget v0, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1d0
    return-void

    .line 304
    :cond_1d1
    :goto_1d1
    const-string v0, "framerate or sizes is null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method private addDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V
    .registers 11

    .line 450
    nop

    .line 451
    iget-object v0, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1d

    aget-object v5, v0, v3

    .line 452
    iget v6, v5, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    iget v7, p2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    if-ne v6, v7, :cond_1a

    iget v5, v5, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    iget v6, p2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    if-ne v5, v6, :cond_1a

    .line 454
    nop

    .line 455
    move v0, v4

    goto :goto_1e

    .line 451
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1d
    move v0, v2

    .line 458
    :goto_1e
    if-nez v0, :cond_3a

    .line 459
    iget-object v0, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v0, v0

    add-int/2addr v0, v4

    new-array v0, v0, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 461
    move v1, v2

    :goto_27
    iget-object v3, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v3, v3

    if-ge v1, v3, :cond_36

    .line 462
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v1, v4, v1

    aput-object v1, v0, v3

    .line 461
    move v1, v3

    goto :goto_27

    .line 464
    :cond_36
    aput-object p2, v0, v2

    .line 465
    iput-object v0, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 468
    :cond_3a
    return-void
.end method

.method private allocateHTCFrontCamera()Landroid/hardware/Camera;
    .registers 3
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
    .registers 6

    .line 67
    sget-boolean v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->DEBUG:Z

    const-string v1, "hme-video"

    if-eqz v0, :cond_14

    .line 68
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 69
    const-string v3, "VideoCaptureDeviceInfoAndroid"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_14
    new-instance v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-direct {v0, p0, p1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;-><init>(ILandroid/content/Context;)V

    .line 73
    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    move-result p0

    if-nez p0, :cond_25

    .line 75
    const-string p0, "Success to create VideoCaptureDeviceInfoAndroid."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v0

    .line 80
    :cond_25
    const-string p0, "Failed to create VideoCaptureDeviceInfoAndroid."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()I
    .registers 9

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

    const-string v2, "hme-video"

    const/16 v3, 0x8

    if-le v0, v3, :cond_d4

    .line 130
    move v0, v1

    move v3, v0

    :goto_15
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    if-ge v0, v4, :cond_d5

    .line 134
    :try_start_1b
    new-instance v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    invoke-direct {v4}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>()V

    .line 136
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 137
    invoke-static {v0, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 138
    iput v0, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 140
    iget v6, v5, Landroid/hardware/Camera$CameraInfo;->facing:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_b6

    const-string v7, "Camera "

    if-nez v6, :cond_62

    .line 142
    :try_start_30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Facing back, Orientation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "back Camera, orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 148
    :cond_62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Facing front, Orientation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 149
    sget-object v6, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v6, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "front Camera, orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_97
    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v5, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 156
    iget-object v5, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 158
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string v5, "LG-P920"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    const/4 v4, 0x2

    if-ne v4, v3, :cond_b5

    .line 160
    const-string v4, "Not use the camera 2 of LG-P920"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_b4} :catch_b6

    .line 161
    goto :goto_d5

    .line 169
    :cond_b5
    goto :goto_d0

    .line 164
    :catch_b6
    move-exception v4

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to init VideoCaptureDeviceInfo ex::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    nop

    .line 130
    :goto_d0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15

    .line 127
    :cond_d4
    move v3, v1

    .line 276
    :cond_d5
    :goto_d5
    if-nez v3, :cond_dd

    .line 278
    const-string v0, "no valid Camera!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v1

    .line 293
    :cond_dd
    return v1
.end method

.method private verifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .registers 6

    .line 414
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "GT-I9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xf

    if-eqz v0, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1c

    :cond_12
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 415
    const-string v2, "crespo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 416
    :cond_1c
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
    :cond_52
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "motorola"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 438
    const-string v2, "umts_sholes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 440
    iget-object p1, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_6a
    if-ge v2, v0, :cond_73

    aget-object v3, p1, v2

    .line 441
    iput v1, v3, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 445
    :cond_73
    return-void
.end method


# virtual methods
.method public allocateCamera(IJLjava/lang/String;)Lcom/huawei/videoengine/VideoCaptureAndroid;
    .registers 19

    .line 576
    move-object v0, p0

    move-object/from16 v1, p4

    const-string v2, "hme-video"

    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllocateCamera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    nop

    .line 579
    nop

    .line 580
    iget-object v4, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v9, v3

    move-object v10, v9

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_137

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 581
    iget-object v7, v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_135

    .line 583
    nop

    .line 584
    sget-object v7, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    iget-object v8, v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v8}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_44} :catch_14f

    const/16 v8, 0x8

    const/4 v10, 0x2

    const-string v11, "Failed to verifyCapabilities ex::"

    if-eq v7, v6, :cond_f2

    if-eq v7, v10, :cond_ce

    .line 636
    :try_start_4d
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v8, :cond_c7

    .line 638
    new-instance v7, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;

    iget v8, v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-direct {v7, v8}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;-><init>(I)V

    .line 639
    invoke-virtual {v7}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->start()V

    .line 640
    const/4 v8, 0x0

    .line 641
    :cond_5c
    iget-object v10, v7, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_5e} :catch_14f

    if-nez v10, :cond_97

    .line 644
    const-wide/16 v12, 0x14

    :try_start_62
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_79
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_65} :catch_14f

    .line 654
    nop

    .line 655
    add-int/2addr v8, v6

    .line 660
    const/16 v10, 0xc8

    if-le v8, v10, :cond_5c

    .line 662
    :try_start_6b
    const-string v0, "AllocateCamera Failed for open camera overtime!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v7}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->stop()V

    .line 664
    if-eqz v9, :cond_78

    .line 666
    invoke-virtual {v9}, Landroid/hardware/Camera;->release()V

    .line 669
    :cond_78
    return-object v3

    .line 645
    :catch_79
    move-exception v0

    move-object v1, v0

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    if-eqz v9, :cond_96

    .line 650
    invoke-virtual {v9}, Landroid/hardware/Camera;->release()V

    .line 653
    :cond_96
    return-object v3

    .line 674
    :cond_97
    iget-object v6, v7, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    .line 683
    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 684
    invoke-direct {p0, v5, v7}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    :try_end_a0
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_a0} :catch_14f

    .line 687
    :try_start_a0
    invoke-direct {p0, v5}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->verifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_a3} :catch_14f

    .line 695
    nop

    .line 696
    move-object v10, v5

    move-object v9, v6

    goto/16 :goto_135

    .line 689
    :catch_a8
    move-exception v0

    move-object v1, v0

    .line 691
    :try_start_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to VerifyCapabilities ex::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 693
    nop

    .line 694
    return-object v3

    .line 699
    :cond_c7
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6
    :try_end_cb
    .catch Ljava/lang/RuntimeException; {:try_start_aa .. :try_end_cb} :catch_14f

    move-object v10, v5

    move-object v9, v6

    goto :goto_135

    .line 622
    :cond_ce
    :try_start_ce
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->allocateHTCFrontCamera()Landroid/hardware/Camera;

    move-result-object v6
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d2} :catch_d5
    .catch Ljava/lang/RuntimeException; {:try_start_ce .. :try_end_d2} :catch_14f

    .line 632
    move-object v10, v5

    move-object v9, v6

    goto :goto_135

    .line 623
    :catch_d5
    move-exception v0

    move-object v1, v0

    .line 625
    :try_start_d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {v9}, Landroid/hardware/Camera;->release()V

    .line 629
    nop

    .line 631
    return-object v3

    .line 587
    :cond_f2
    if-eqz v9, :cond_f7

    .line 589
    invoke-virtual {v9}, Landroid/hardware/Camera;->release()V

    .line 592
    :cond_f7
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    .line 593
    if-nez v6, :cond_fe

    .line 595
    goto :goto_115

    .line 597
    :cond_fe
    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 598
    const-string v9, "camera-id"

    invoke-virtual {v7, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 599
    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 600
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v9, v8, :cond_111

    .line 602
    invoke-direct {p0, v5, v7}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    :try_end_111
    .catch Ljava/lang/RuntimeException; {:try_start_d7 .. :try_end_111} :catch_14f

    .line 606
    :cond_111
    :try_start_111
    invoke-direct {p0, v5}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->verifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_114} :catch_118
    .catch Ljava/lang/RuntimeException; {:try_start_111 .. :try_end_114} :catch_14f

    .line 616
    nop

    .line 703
    :goto_115
    move-object v10, v5

    move-object v9, v6

    goto :goto_135

    .line 607
    :catch_118
    move-exception v0

    move-object v1, v0

    .line 609
    :try_start_11a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 613
    nop

    .line 615
    return-object v3

    .line 703
    :cond_135
    :goto_135
    goto/16 :goto_24

    .line 705
    :cond_137
    if-nez v9, :cond_13a

    .line 706
    return-object v3

    .line 708
    :cond_13a
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    if-eqz v1, :cond_143

    .line 709
    const-string v1, "AllocateCamera - creating VideoCaptureAndroid"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_143
    iput-boolean v6, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    .line 713
    new-instance v0, Lcom/huawei/videoengine/VideoCaptureAndroid;

    move-object v5, v0

    move v6, p1

    move-wide/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/huawei/videoengine/VideoCaptureAndroid;-><init>(IJLandroid/hardware/Camera;Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_14e
    .catch Ljava/lang/RuntimeException; {:try_start_11a .. :try_end_14e} :catch_14f

    return-object v0

    .line 715
    :catch_14f
    move-exception v0

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllocateCamera Failed to open camera- ex "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-object v3
.end method

.method public getCapabilityArray(Ljava/lang/String;)[Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    .registers 9

    .line 493
    const-string v0, "hme-video"

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 496
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCapabilityArray "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-boolean v3, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    if-nez v3, :cond_25

    .line 498
    const-string v3, "GetCapabilityArray camera is not Open"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    .line 501
    :cond_25
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 503
    iget-object v5, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 505
    iget-object v3, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    if-nez v3, :cond_8d

    .line 507
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-le v3, v5, :cond_79

    .line 509
    new-instance p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;

    iget v3, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-direct {p1, v3}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;-><init>(I)V

    .line 510
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->start()V

    .line 511
    nop

    .line 512
    :cond_54
    iget-object v3, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    if-nez v3, :cond_6c

    .line 514
    const-wide/16 v5, 0x14

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 515
    add-int/lit8 v1, v1, 0x1

    .line 518
    const/16 v3, 0x64

    if-le v1, v3, :cond_54

    .line 520
    invoke-virtual {p1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->stop()V

    .line 521
    const-string p1, "GetCapabilityArray Failed for open camera overtime!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-object v2

    .line 526
    :cond_6c
    iget-object p1, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    .line 535
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 536
    invoke-direct {p0, v4, v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 537
    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 539
    goto :goto_8d

    .line 542
    :cond_79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCapabilityArray Failed. SDK<=8,device.captureCapabilies == null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_8d
    :goto_8d
    iget-object p1, v4, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    check-cast p1, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_91} :catch_95

    return-object p1

    .line 548
    :cond_92
    goto :goto_2b

    .line 554
    :cond_93
    nop

    .line 555
    return-object v2

    .line 549
    :catch_95
    move-exception p1

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCapabilityArray Failed to open camera- ex "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 551
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-object v2
.end method

.method public getDeviceUniqueName(I)Ljava/lang/String;
    .registers 4

    .line 480
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    if-nez v0, :cond_e

    .line 481
    const-string v0, "hme-video"

    const-string v1, "GetDeviceUniqueName camera is not Open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    .line 485
    :cond_e
    if-ltz p1, :cond_24

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_19

    goto :goto_24

    .line 488
    :cond_19
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object p1, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    return-object p1

    .line 486
    :cond_24
    :goto_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOrientation(Ljava/lang/String;)I
    .registers 5

    .line 561
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 562
    iget-object v2, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 563
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "java_GetOrientation device.orientation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rotation"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget p1, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    return p1

    .line 568
    :cond_35
    goto :goto_6

    .line 569
    :cond_36
    const/4 p1, -0x1

    return p1
.end method

.method public numberOfDevices()I
    .registers 3

    .line 472
    iget-boolean v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->cameraOpen:Z

    if-nez v0, :cond_e

    .line 473
    const-string v0, "hme-video"

    const-string v1, "NumberOfDevices camera is not Open"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    .line 476
    :cond_e
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public reInit()I
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reInit!!model is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hme-video"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string v2, "M310"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 101
    const-string v0, "M310(singlebox) reInit!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "M310(singlebox) support hot plug!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 109
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->init()I

    move-result v0

    return v0

    .line 114
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " no need to refresh camera number!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    return v0
.end method
