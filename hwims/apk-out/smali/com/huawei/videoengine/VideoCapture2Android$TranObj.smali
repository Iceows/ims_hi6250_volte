.class Lcom/huawei/videoengine/VideoCapture2Android$TranObj;
.super Ljava/lang/Object;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCapture2Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranObj"
.end annotation


# instance fields
.field private mEncSf:Landroid/view/Surface;

.field private mVH:I

.field private mVW:I

.field private mVsf:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;Landroid/view/Surface;II)V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVsf:Landroid/view/Surface;

    .line 507
    iput-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mEncSf:Landroid/view/Surface;

    .line 508
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVW:I

    .line 509
    iput p4, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVH:I

    .line 510
    return-void
.end method


# virtual methods
.method public getEncSf()Landroid/view/Surface;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mEncSf:Landroid/view/Surface;

    return-object v0
.end method

.method public getHeigth()I
    .locals 1

    .line 522
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVH:I

    return v0
.end method

.method public getViewSf()Landroid/view/Surface;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVsf:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVW:I

    return v0
.end method
