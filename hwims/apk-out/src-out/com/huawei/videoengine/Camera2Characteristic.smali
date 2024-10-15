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
    .registers 3

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
    .registers 12

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
    :try_start_a
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 104
    array-length v1, v0
    :try_end_11
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_a .. :try_end_11} :catch_c6

    .line 109
    nop

    .line 111
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_15
    const-string v5, "hme_engine_java"

    if-ge v3, v1, :cond_ba

    .line 113
    new-instance v6, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    invoke-direct {v6}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>()V

    .line 115
    :try_start_1e
    iget-object v7, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 116
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 117
    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 118
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_3a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1e .. :try_end_3a} :catch_b2

    const-string v10, "Camera "

    if-nez v9, :cond_58

    .line 119
    :try_start_3e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", Facing front, Orientation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    goto :goto_8e

    .line 120
    :cond_58
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_79

    .line 121
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", Facing back, Orientation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    goto :goto_8e

    .line 123
    :cond_79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Facing external, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 126
    :goto_8e
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 128
    iget-object v7, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3e .. :try_end_b1} :catch_b2

    .line 136
    goto :goto_b6

    .line 133
    :catch_b2
    move-exception v5

    .line 135
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 111
    :goto_b6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    .line 139
    :cond_ba
    if-nez v4, :cond_c5

    .line 141
    const-string v0, "no valid Camera!"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    .line 144
    return v2

    .line 147
    :cond_c5
    return v2

    .line 105
    :catch_c6
    move-exception v0

    .line 107
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 108
    const/4 v0, -0x1

    return v0
.end method

.method public static isFaceFront(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)Z
    .registers 3

    .line 157
    nop

    .line 160
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 161
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 162
    if-eqz p0, :cond_19

    .line 164
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_18

    .line 165
    const/4 v0, 0x1

    goto :goto_20

    .line 167
    :cond_18
    goto :goto_20

    .line 172
    :cond_19
    const-string p0, "hme_engine_java"

    const-string p1, "i is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_20} :catch_21

    .line 178
    :goto_20
    goto :goto_25

    .line 175
    :catch_21
    move-exception p0

    .line 177
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 180
    :goto_25
    return v0
.end method


# virtual methods
.method public addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;I)I
    .registers 12

    .line 220
    nop

    .line 221
    nop

    .line 222
    nop

    .line 224
    :try_start_3
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->mManager:Landroid/hardware/camera2/CameraManager;

    aget-object p2, v0, p2

    invoke-virtual {v1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2
    :try_end_11
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_11} :catch_12

    .line 231
    goto :goto_17

    .line 228
    :catch_12
    move-exception p2

    .line 230
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p2, 0x0

    .line 232
    :goto_17
    const-string v0, "hme_engine_java"

    const/4 v1, -0x1

    if-nez p2, :cond_22

    .line 233
    const-string p1, "not support this resolution"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v1

    .line 236
    :cond_22
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 237
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 238
    if-nez v2, :cond_32

    .line 239
    const-string p1, "map is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v1

    .line 242
    :cond_32
    const-class v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    .line 244
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/util/Range;

    .line 247
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_44
    if-ge v4, v2, :cond_61

    aget-object v6, p2, v4

    .line 249
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v5, :cond_5e

    .line 251
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 247
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 255
    :cond_61
    array-length p2, v0

    new-array p2, p2, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iput-object p2, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 257
    array-length p2, v0

    move v2, v3

    move v4, v2

    :goto_69
    if-ge v2, p2, :cond_9b

    aget-object v6, v0, v2

    .line 259
    iget-object v7, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    new-instance v8, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v8}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    aput-object v8, v7, v4

    .line 260
    iget-object v7, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v7, v7, v4

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    iput v8, v7, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 261
    iget-object v7, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v7, v7, v4

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    iput v6, v7, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 262
    iget-object v6, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v6, v6, v4

    iput v5, v6, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 263
    iget-object v6, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v6, v6, v4

    iput v1, v6, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    .line 264
    add-int/lit8 v4, v4, 0x1

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 268
    :cond_9b
    return v3
.end method

.method public getCapabilityArray(Ljava/lang/String;)[Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    .registers 6

    .line 186
    nop

    .line 187
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 189
    iget-object v1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v1, :cond_10

    .line 191
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 193
    iget-object v1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v1, :cond_10

    .line 195
    return-object v0

    .line 199
    :cond_10
    iget-object v1, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 201
    iget-object v3, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 203
    iget p1, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-virtual {p0, v2, p1}, Lcom/huawei/videoengine/Camera2Characteristic;->addDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;I)I

    .line 205
    iget-object p1, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    check-cast p1, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    return-object p1

    .line 208
    :cond_34
    goto :goto_16

    .line 211
    :cond_35
    return-object v0
.end method

.method public getDeviceUniqueName(I)Ljava/lang/String;
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 288
    const-string v0, "hme_engine_java"

    const-string v2, "GetDeviceUniqueName  is not initinitDeviceList"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 291
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v0, :cond_14

    .line 293
    return-object v1

    .line 297
    :cond_14
    if-ltz p1, :cond_2a

    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1f

    goto :goto_2a

    .line 300
    :cond_1f
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object p1, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    return-object p1

    .line 298
    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public getDeviceUniqueName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7

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

    :try_start_17
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
    :try_end_2d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_17 .. :try_end_2d} :catch_a2

    .line 62
    const-string v2, "hme_engine_java"

    if-nez v1, :cond_37

    .line 64
    :try_start_31
    const-string p1, "i is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v0

    .line 67
    :cond_37
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_4f

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Facing front, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_79

    .line 69
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_68

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Facing back, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_79

    .line 72
    :cond_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Facing external, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 75
    :goto_79
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 76
    if-nez p2, :cond_89

    .line 78
    const-string p1, "ori is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v0

    .line 81
    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Orientation "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_31 .. :try_end_a1} :catch_a2

    .line 88
    goto :goto_a7

    .line 84
    :catch_a2
    move-exception p1

    .line 86
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 87
    nop

    .line 90
    :goto_a7
    return-object v0
.end method

.method public getOrientation(Ljava/lang/String;)I
    .registers 5

    .line 304
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v0, :cond_e

    .line 305
    const-string v0, "hme_engine_java"

    const-string v1, "getOrientation  is not initinitDeviceList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 308
    :cond_e
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 309
    iget-object v2, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 310
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

    .line 313
    iget p1, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    return p1

    .line 315
    :cond_43
    goto :goto_14

    .line 316
    :cond_44
    const/4 p1, -0x1

    return p1
.end method

.method public numberOfDevices()I
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v0, :cond_14

    .line 274
    const-string v0, "hme_engine_java"

    const-string v1, "NumberOfDevices  is not initDeviceList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/huawei/videoengine/Camera2Characteristic;->init()I

    .line 277
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    if-nez v0, :cond_14

    .line 279
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_14
    iget-object v0, p0, Lcom/huawei/videoengine/Camera2Characteristic;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
