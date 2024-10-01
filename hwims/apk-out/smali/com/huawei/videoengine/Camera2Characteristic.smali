.class public Lcom/huawei/videoengine/Camera2Characteristic;
.super Ljava/lang/Object;
.source "Camera2Characteristic.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "hme_engine_java"


# instance fields
.field deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mManager:Landroid/hardware/camera2/CameraManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    .line 24
    iput-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mContext:Landroid/content/Context;

    .line 28
    iget-object p1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mContext:Landroid/content/Context;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    .line 29
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 30
    return-void
.end method

.method private init()I
    .locals 9

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 104
    array-length v1, v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    nop

    .line 111
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 113
    new-instance v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    invoke-direct {v5}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>()V

    .line 115
    :try_start_1
    iget-object v6, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 116
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 117
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 118
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_0

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", Facing front, Orientation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", Facing back, Orientation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Facing external, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 126
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 128
    iget-object v6, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 131
    const-string v6, "hme_engine_java"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    goto :goto_2

    .line 133
    :catch_0
    move-exception v5

    .line 135
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 111
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 139
    :cond_2
    if-nez v4, :cond_3

    .line 141
    const-string v0, "hme_engine_java"

    const-string v1, "no valid Camera!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    .line 144
    return v2

    .line 147
    :cond_3
    return v2

    .line 105
    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 108
    const/4 v0, -0x1

    return v0
.end method

.method public static isFaceFront(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z
    .locals 1

    .line 157
    nop

    .line 160
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 161
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 162
    if-eqz p0, :cond_1

    .line 164
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    .line 165
    const/4 p0, 0x1

    .line 178
    move v0, p0

    goto :goto_0

    .line 167
    :cond_0
    goto :goto_0

    .line 172
    :cond_1
    const-string p0, "hme_engine_java"

    const-string p1, "i is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    goto :goto_1

    .line 175
    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 180
    :goto_1
    return v0
.end method


# virtual methods
.method public addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;I)I
    .locals 9

    .line 221
    nop

    .line 222
    nop

    .line 223
    nop

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    aget-object p2, v0, p2

    invoke-virtual {v1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_0

    .line 229
    :catch_0
    move-exception p2

    .line 231
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 233
    const/4 p2, 0x0

    :goto_0
    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 234
    const-string p1, "hme_engine_java"

    const-string p2, "not support this resolution"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v0

    .line 237
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 238
    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 239
    if-nez v1, :cond_1

    .line 240
    const-string p1, "hme_engine_java"

    const-string p2, "map is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v0

    .line 243
    :cond_1
    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    .line 245
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/util/Range;

    .line 248
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v6, p2, v4

    .line 250
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v5, :cond_2

    .line 252
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 248
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 256
    :cond_3
    array-length p2, v1

    new-array p2, p2, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput-object p2, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 258
    array-length p2, v1

    move v2, v3

    move v4, v2

    :goto_2
    if-ge v2, p2, :cond_4

    aget-object v6, v1, v2

    .line 260
    iget-object v7, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    new-instance v8, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v8}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    aput-object v8, v7, v4

    .line 261
    iget-object v7, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v7, v7, v4

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    iput v8, v7, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 262
    iget-object v7, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v7, v7, v4

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    iput v6, v7, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 263
    iget-object v6, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v6, v6, v4

    iput v5, v6, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 264
    iget-object v6, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v6, v6, v4

    iput v0, v6, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    .line 265
    add-int/lit8 v4, v4, 0x1

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 269
    :cond_4
    return v3
.end method

.method public getCapabilityArray(Ljava/lang/String;)[Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    .locals 4

    .line 187
    nop

    .line 188
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 190
    iget-object v1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 194
    iget-object v1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 196
    return-object v0

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 202
    iget-object v3, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    iget p1, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-virtual {p0, v2, p1}, Lcom/huawei/videoengine/Camera2Characteristic;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;I)I

    .line 206
    iget-object p1, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    check-cast p1, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    return-object p1

    .line 209
    :cond_1
    goto :goto_0

    .line 212
    :cond_2
    return-object v0
.end method

.method public getDeviceUniqueName(I)Ljava/lang/String;
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 289
    const-string v0, "hme_engine_java"

    const-string v2, "GetDeviceUniqueName  is not initinitDeviceList"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 292
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 294
    return-object v1

    .line 298
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object p1, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    return-object p1

    .line 299
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getDeviceUniqueName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    aget-object p2, v1, p2

    invoke-virtual {v2, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    .line 61
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 62
    if-nez v1, :cond_0

    .line 64
    const-string p1, "hme_engine_java"

    const-string p2, "i is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v0

    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Facing front, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Facing back, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Facing external, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 76
    if-nez p2, :cond_3

    .line 78
    const-string p1, "hme_engine_java"

    const-string p2, "ori is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v0

    .line 81
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Orientation "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_1

    .line 84
    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 87
    nop

    .line 90
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public getOrientation(Ljava/lang/String;)I
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 306
    const-string v0, "hme_engine_java"

    const-string v1, "getOrientation  is not initinitDeviceList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 310
    iget-object v2, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
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

    .line 314
    iget p1, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    return p1

    .line 316
    :cond_1
    goto :goto_0

    .line 317
    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public numberOfDevices()I
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 275
    const-string v0, "hme_engine_java"

    const-string v1, "NumberOfDevices  is not initDeviceList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 278
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x0

    return v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
