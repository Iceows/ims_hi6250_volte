.class public Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;
.super Ljava/lang/Object;
.source "MediaCodecDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/MediaCodecDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjExtend"
.end annotation


# instance fields
.field private mRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;->mRes:I

    .line 682
    return-void
.end method


# virtual methods
.method public getRes()I
    .locals 1

    .line 689
    iget v0, p0, Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;->mRes:I

    return v0
.end method

.method public setRes(I)V
    .locals 0

    .line 685
    iput p1, p0, Lcom/huawei/videoengine/MediaCodecDecoder$ObjExtend;->mRes:I

    .line 686
    return-void
.end method
