.class Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;
.super Ljava/lang/Object;
.source "VideoCapture2Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCapture2Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjExtend"
.end annotation


# instance fields
.field private mRes:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->mRes:I

    .line 1269
    return-void
.end method


# virtual methods
.method public getRes()I
    .registers 2

    .line 1276
    iget v0, p0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->mRes:I

    return v0
.end method

.method public setRes(I)V
    .registers 2

    .line 1272
    iput p1, p0, Lcom/huawei/videoengine/VideoCapture2Android$ObjExtend;->mRes:I

    .line 1273
    return-void
.end method
