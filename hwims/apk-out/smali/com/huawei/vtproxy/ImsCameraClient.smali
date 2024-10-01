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

.field private static chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

.field private static hmeLogPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 62
    const-string v0, "/storage/emulated/0/Android/data/com.huawei.ims/files"

    sput-object v0, Lcom/huawei/vtproxy/ImsCameraClient;->hmeLogPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static cameraOpen(II)I
    .locals 5
    .param p0, "cameraid"    # I
    .param p1, "callType"    # I

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "isWriteLog":Z
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/huawei/vtproxy/ImsCameraClient;->hmeLogPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "path":Ljava/io/File;
    const-string v2, "persist.sys.huawei.debug.on"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 101
    const-string v2, "VTPROXY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initImsThinClient isWriteLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setHmeLog(Z)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->setHmeLog(Z)V

    .line 110
    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->deleteHmeLogPath(Ljava/io/File;)Z

    .line 112
    :goto_0
    invoke-static {p0, p1}, Lcom/huawei/vtproxy/ImsCameraClient;->open(II)I

    move-result v2

    return v2
.end method

.method public static cameraRelease(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 116
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsCameraClient;->release(I)I

    move-result v0

    return v0
.end method

.method public static getCameraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "paramKey"    # Ljava/lang/String;

    .line 170
    const/4 v0, 0x0

    return-object v0
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
    .locals 5
    .param p0, "paramKey"    # I
    .param p1, "paramValue"    # Ljava/lang/Object;

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "sValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 147
    .local v1, "iValue":Ljava/lang/Integer;
    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    .line 162
    const-string v3, "VTPROXY"

    const-string v4, "###############setCameraParameter invalid key. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v2

    .line 151
    :pswitch_0
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 154
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p0, v0}, Lcom/huawei/vtproxy/ImsCameraClient;->setParameter(ILjava/lang/String;)I

    move-result v2

    return v2

    .line 157
    :cond_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setChrVtCallBack(Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;)V
    .locals 2
    .param p0, "callBack"    # Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 65
    const-string v0, "VTPROXY"

    const-string v1, "setChrVtCallBack in func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sput-object p0, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    .line 67
    return-void
.end method

.method private static native setLocalView(Ljava/lang/Object;)I
.end method

.method public static setNearEndSurface(Landroid/view/Surface;)I
    .locals 1
    .param p0, "localSurface"    # Landroid/view/Surface;

    .line 124
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsCameraClient;->setLocalView(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static setNearEndSurface(Landroid/view/SurfaceView;)I
    .locals 1
    .param p0, "localView"    # Landroid/view/SurfaceView;

    .line 120
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

.method public static setPreviewDisplayOrientation(I)I
    .locals 1
    .param p0, "orientation"    # I

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public static startCameraPreview()I
    .locals 1

    .line 132
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->startPreview()I

    move-result v0

    return v0
.end method

.method public static startChrVtErrReport(I)V
    .locals 7
    .param p0, "ConditionId"    # I

    .line 70
    const-string v0, "VTPROXY"

    const-string v1, "startChrVtErrReport in func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->getChrVtSocketErr()I

    move-result v0

    .line 73
    .local v0, "socketErrReason":I
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->getChrVtIpAddrErr()I

    move-result v1

    .line 74
    .local v1, "ipAddrErrReason":I
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->getChrVtCameraErr()I

    move-result v2

    .line 75
    .local v2, "cameraErrReason":I
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 77
    .local v3, "intData":[I
    const-string v4, "VTPROXY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startChrVtErrReport ConditionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", socketErrReason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ipAddrErrReason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cameraErrReason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v4, 0x0

    aput p0, v3, v4

    .line 80
    div-int/lit16 v4, v0, 0x3e8

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 81
    rem-int/lit16 v4, v0, 0x3e8

    const/4 v5, 0x2

    aput v4, v3, v5

    .line 82
    const/4 v4, 0x3

    aput v1, v3, v4

    .line 83
    const/4 v4, 0x4

    aput v2, v3, v4

    .line 85
    sget-object v4, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    if-eqz v4, :cond_0

    .line 87
    const-string v4, "VTPROXY"

    const-string v5, "startChrVtErrReport run call back func"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v4, Lcom/huawei/vtproxy/ImsCameraClient;->chrVtCallBack:Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/huawei/vtproxy/ImsCameraClient$ChrVtCallBack;->chrVtCbGetErrReport([I[Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void

    :array_0
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
    .locals 1

    .line 136
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->stopPreview()I

    move-result v0

    return v0
.end method

.method private static native stopPreview()I
.end method

.method private static native switchCamera()I
.end method

.method public static switchCameras()I
    .locals 1

    .line 140
    invoke-static {}, Lcom/huawei/vtproxy/ImsCameraClient;->switchCamera()I

    move-result v0

    return v0
.end method
