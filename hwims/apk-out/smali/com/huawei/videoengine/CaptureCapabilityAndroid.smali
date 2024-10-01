.class public Lcom/huawei/videoengine/CaptureCapabilityAndroid;
.super Ljava/lang/Object;
.source "CaptureCapabilityAndroid.java"


# instance fields
.field public VRawType:I

.field public height:I

.field public maxFPS:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 15
    iput v0, p0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 16
    iput v0, p0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 17
    iput v0, p0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    return-void
.end method
