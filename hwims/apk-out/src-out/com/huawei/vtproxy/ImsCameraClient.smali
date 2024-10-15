.class public Lcom/huawei/vtproxy/ImsCameraClient;
.super Ljava/lang/Object;
.source "ImsCameraClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;
    }
.end annotation


# static fields
.field public static final CAAS_CAMERA_ID_BACK:I = 0x0

.field public static final CAAS_CAMERA_ID_FRONT:I = 0x1

.field public static final CAMERA_CLIENT_FAILED:I = 0x1

.field public static final CAMERA_CLIENT_OK:I = 0x0

.field public static final CHR_VT_ERROR_CAMERA_INIT:I = 0x1

.field public static final CHR_VT_ERROR_CAMERA_NORMAL:I = 0x0

.field public static final CHR_VT_ERROR_CAMERA_OCCUPIED:I = 0x4

.field public static final CHR_VT_ERROR_CAMERA_OPEN:I = 0x3

.field public static final CHR_VT_ERROR_CAMERA_PARA:I = 0x2

.field public static final CHR_VT_ERROR_IPADDR_NORMAL:I = 0x0

.field public static final CHR_VT_ERROR_IPADDR_NULL:I = 0x1

.field public static final CHR_VT_ERROR_MOUDLE_NULL:I = 0x0

.field public static final CHR_VT_ERROR_MOUDLE_VT:I = 0x1

.field public static final CHR_VT_ERROR_SOCKET_ACCEPT:I = 0x5

.field public static final CHR_VT_ERROR_SOCKET_BIND:I = 0x3

.field public static final CHR_VT_ERROR_SOCKET_CONNECT:I = 0x6

.field public static final CHR_VT_ERROR_SOCKET_LISTEN:I = 0x4

.field public static final CHR_VT_ERROR_SOCKET_NORMAL:I = 0x0

.field public static final CHR_VT_ERROR_SOCKET_OPEN:I = 0x1

.field public static final CHR_VT_ERROR_SOCKET_SELECT:I = 0x2

.field private static final HME_V_CAMERA_TYPE:I = 0x0

.field private static final HME_V_ENCODER_USE_TYPE:I = 0x1

.field private static final SOCKET_ERR_CODE_SEGMENT:I = 0x3e8

.field private static chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

.field private static hmeLogPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 91
    const-string v0, "/storage/emulated/0/Android/data/com.huawei.ims/files"

    sput-object v0, Lcom/huawei/vtproxy/ImsCameraClient;->hmeLogPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cameraOpen(II)I
    .registers 6
    .param p0, "cameraid"    # I
    .param p1, "callType"    # I

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "isWriteLog":Z
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/huawei/vtproxy/ImsCameraClient;->hmeLogPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "path":Ljava/io/File;
    const-string v2, "persist.sys.huawei.debug.on"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsThinClient isWriteLog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VTPROXY"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v0, :cond_2b

    .line 167
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setHmeLog(Z)V

    goto :goto_31

    .line 169
    :cond_2b
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setHmeLog(Z)V

    .line 170
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->deleteHmeLogPath(Ljava/io/File;)Z

    .line 172
    :goto_31
    invoke-static {p0, p1}, Lcom/huawei/vtproxy/ImsCameraClient;->open(II)I

    move-result v2

    return v2
.end method

.method public static cameraRelease(I)I
    .registers 2
    .param p0, "callType"    # I

    .line 182
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsCameraClient;->release(I)I

    move-result v0

    return v0
.end method

.method private static native getChrVtCameraErr()I
.end method

.method private static native getChrVtIpAddrErr()I
.end method

.method private static native getChrVtSocketErr()I
.end method

.method private static native open(II)I
.end method

.method private static native release(I)I
.end method

.method public static setCameraParameter(ILjava/lang/Object;)I
    .registers 7
    .param p0, "paramKey"    # I
    .param p1, "paramValue"    # Ljava/lang/Object;

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "strValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 253
    .local v1, "value":Ljava/lang/Integer;
    const-string v2, "VTPROXY"

    const/4 v3, 0x1

    if-nez p1, :cond_d

    .line 254
    const-string v4, "setCameraParameter paramValue is null. "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return v3

    .line 258
    :cond_d
    if-eqz p0, :cond_17

    if-eq p0, v3, :cond_17

    .line 270
    const-string v4, "setCameraParameter invalid key. "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v3

    .line 261
    :cond_17
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 262
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 263
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {p0, v0}, Lcom/huawei/vtproxy/ImsCameraClient;->setParameter(ILjava/lang/String;)I

    move-result v2

    return v2

    .line 266
    :cond_2b
    return v3
.end method

.method public static setChrVtCallBack(Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;)V
    .registers 3
    .param p0, "callBack"    # Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 114
    const-string v0, "VTPROXY"

    const-string v1, "setChrVtCallBack in func"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sput-object p0, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 116
    return-void
.end method

.method private static native setLocalView(Ljava/lang/Object;)I
.end method

.method public static setNearEndSurface(Landroid/view/Surface;)I
    .registers 2
    .param p0, "localSurface"    # Landroid/view/Surface;

    .line 212
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsCameraClient;->setLocalView(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static setNearEndSurface(Landroid/view/SurfaceView;)I
    .registers 4
    .param p0, "localView"    # Landroid/view/SurfaceView;

    .line 192
    const/4 v0, 0x1

    const-string v1, "VTPROXY"

    if-nez p0, :cond_b

    .line 193
    const-string v2, "setNearEndSurface localView is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v0

    .line 197
    :cond_b
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    if-nez v2, :cond_17

    .line 198
    const-string v2, "setNearEndSurface the surfaceHolder of localView is null "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return v0

    .line 202
    :cond_17
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/vtproxy/ImsCameraClient;->setLocalView(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static native setParameter(ILjava/lang/String;)I
.end method

.method public static startCameraPreview()I
    .registers 1

    .line 221
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->startPreview()I

    move-result v0

    return v0
.end method

.method public static startChrVtErrReport(I)V
    .registers 8
    .param p0, "conditionId"    # I

    .line 124
    const-string v0, "VTPROXY"

    const-string v1, "startChrVtErrReport in func"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->getChrVtSocketErr()I

    move-result v1

    .line 127
    .local v1, "socketErrReason":I
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->getChrVtIpAddrErr()I

    move-result v2

    .line 128
    .local v2, "ipAddrErrReason":I
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->getChrVtCameraErr()I

    move-result v3

    .line 129
    .local v3, "cameraErrReason":I
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_68

    .line 131
    .local v4, "intData":[I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startChrVtErrReport conditionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", socketErrReason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ipAddrErrReason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cameraErrReason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v5, 0x0

    aput p0, v4, v5

    .line 135
    div-int/lit16 v5, v1, 0x3e8

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 136
    rem-int/lit16 v5, v1, 0x3e8

    const/4 v6, 0x2

    aput v5, v4, v6

    .line 137
    const/4 v5, 0x3

    aput v2, v4, v5

    .line 138
    const/4 v5, 0x4

    aput v3, v4, v5

    .line 140
    sget-object v5, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    if-eqz v5, :cond_67

    .line 141
    const-string v5, "startChrVtErrReport run call back func"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;->chrVtCbGetErrReport([I[Ljava/lang/String;)V

    .line 144
    :cond_67
    return-void

    :array_68
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static native startPreview()I
.end method

.method public static stopCameraPreview()I
    .registers 1

    .line 230
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->stopPreview()I

    move-result v0

    return v0
.end method

.method private static native stopPreview()I
.end method

.method private static native switchCamera()I
.end method

.method public static switchCameras()I
    .registers 1

    .line 239
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->switchCamera()I

    move-result v0

    return v0
.end method
