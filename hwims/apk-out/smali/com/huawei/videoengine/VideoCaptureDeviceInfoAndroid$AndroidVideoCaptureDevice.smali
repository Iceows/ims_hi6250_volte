.class public Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidVideoCaptureDevice"
.end annotation


# instance fields
.field public captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

.field public deviceUniqueName:Ljava/lang/String;

.field public frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public index:I

.field public orientation:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 41
    return-void
.end method
