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
    .registers 5

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVsf:Landroid/view/Surface;

    .line 513
    iput-object p2, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mEncSf:Landroid/view/Surface;

    .line 514
    iput p3, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVW:I

    .line 515
    iput p4, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVH:I

    .line 516
    return-void
.end method


# virtual methods
.method public getEncSf()Landroid/view/Surface;
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mEncSf:Landroid/view/Surface;

    return-object v0
.end method

.method public getHeigth()I
    .registers 2

    .line 528
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVH:I

    return v0
.end method

.method public getViewSf()Landroid/view/Surface;
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVsf:Landroid/view/Surface;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 525
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$TranObj;->mVW:I

    return v0
.end method
