.class public final enum Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
.super Ljava/lang/Enum;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrontFacingCameraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum GalaxyS:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum HTCEvo:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum None:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 56
    new-instance v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string v1, "GalaxyS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 57
    new-instance v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string v1, "HTCEvo"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 58
    new-instance v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string v1, "Android23"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->$VALUES:[Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    .locals 1

    .line 54
    const-class v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    return-object p0
.end method

.method public static values()[Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    .locals 1

    .line 54
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->$VALUES:[Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v0}, [Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    return-object v0
.end method
