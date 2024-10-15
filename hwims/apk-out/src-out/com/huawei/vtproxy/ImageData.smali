.class public Lcom/huawei/vtproxy/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field private data:[B

.field private height:I

.field private imageType:I

.field private width:I


# direct methods
.method public constructor <init>(III[B)V
    .registers 6
    .param p1, "imageType"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "imgData"    # [B

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/vtproxy/ImageData;->imageType:I

    .line 15
    iput v0, p0, Lcom/huawei/vtproxy/ImageData;->width:I

    .line 16
    iput v0, p0, Lcom/huawei/vtproxy/ImageData;->height:I

    .line 20
    iput p1, p0, Lcom/huawei/vtproxy/ImageData;->imageType:I

    .line 21
    iput p2, p0, Lcom/huawei/vtproxy/ImageData;->width:I

    .line 22
    iput p3, p0, Lcom/huawei/vtproxy/ImageData;->height:I

    .line 23
    if-eqz p4, :cond_1a

    .line 24
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/huawei/vtproxy/ImageData;->data:[B

    .line 26
    :cond_1a
    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/huawei/vtproxy/ImageData;->data:[B

    if-nez v0, :cond_8

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 53
    :cond_8
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/huawei/vtproxy/ImageData;->height:I

    return v0
.end method

.method public getImageType()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/huawei/vtproxy/ImageData;->imageType:I

    return v0
.end method

.method public getLength()I
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/huawei/vtproxy/ImageData;->data:[B

    if-nez v0, :cond_6

    .line 30
    const/4 v0, 0x0

    return v0

    .line 33
    :cond_6
    array-length v0, v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 41
    iget v0, p0, Lcom/huawei/vtproxy/ImageData;->width:I

    return v0
.end method
