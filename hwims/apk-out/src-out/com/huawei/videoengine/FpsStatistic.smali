.class public Lcom/huawei/videoengine/FpsStatistic;
.super Ljava/lang/Object;
.source "FpsStatistic.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "hme_engine_java"


# instance fields
.field private mCount:I

.field private mFps:F

.field private mFrameInterval:I

.field private mLastTime:J

.field private mNowTime:J

.field private mPos:Ljava/lang/String;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    .line 8
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mLastTime:J

    .line 9
    iput-wide v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mNowTime:J

    .line 10
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mFps:F

    .line 13
    iput v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mThreshold:I

    .line 27
    iput-object p1, p0, Lcom/huawei/videoengine/FpsStatistic;->mPos:Ljava/lang/String;

    .line 28
    const/4 p1, 0x1

    if-ge p2, p1, :cond_1e

    .line 30
    const-string p1, "hme_engine_java"

    const-string p2, "frameInterval < 1"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 33
    :cond_1e
    iput p2, p0, Lcom/huawei/videoengine/FpsStatistic;->mFrameInterval:I

    .line 34
    const/16 p1, 0x64

    iput p1, p0, Lcom/huawei/videoengine/FpsStatistic;->mThreshold:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    .line 8
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mLastTime:J

    .line 9
    iput-wide v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mNowTime:J

    .line 10
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mFps:F

    .line 13
    iput v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mThreshold:I

    .line 16
    iput-object p1, p0, Lcom/huawei/videoengine/FpsStatistic;->mPos:Ljava/lang/String;

    .line 17
    const/4 p1, 0x1

    if-ge p2, p1, :cond_1e

    .line 18
    const-string p1, "hme_engine_java"

    const-string p2, "frameInterval < 1"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 22
    :cond_1e
    iput p2, p0, Lcom/huawei/videoengine/FpsStatistic;->mFrameInterval:I

    .line 23
    iput p3, p0, Lcom/huawei/videoengine/FpsStatistic;->mThreshold:I

    .line 24
    return-void
.end method


# virtual methods
.method public add()V
    .registers 8

    .line 48
    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    .line 49
    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    const-string v1, "#FPS# "

    const-string v2, "hme_engine_java"

    if-lez v0, :cond_3a

    const/4 v3, 0x7

    if-ge v0, v3, :cond_3a

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/videoengine/FpsStatistic;->mPos:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Frame("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") come"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/huawei/videoengine/FpsStatistic;->mLastTime:J

    .line 54
    :cond_3a
    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    iget v3, p0, Lcom/huawei/videoengine/FpsStatistic;->mFrameInterval:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_80

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/huawei/videoengine/FpsStatistic;->mNowTime:J

    .line 56
    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mFrameInterval:I

    int-to-float v0, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    iget-wide v3, p0, Lcom/huawei/videoengine/FpsStatistic;->mNowTime:J

    iget-wide v5, p0, Lcom/huawei/videoengine/FpsStatistic;->mLastTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    div-float/2addr v0, v5

    iput v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mFps:F

    .line 57
    iput-wide v3, p0, Lcom/huawei/videoengine/FpsStatistic;->mLastTime:J

    .line 58
    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mFps:F

    iget v3, p0, Lcom/huawei/videoengine/FpsStatistic;->mThreshold:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_80

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mPos:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mFps:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_80
    return-void
.end method

.method public setThreshold(I)V
    .registers 2

    .line 43
    iput p1, p0, Lcom/huawei/videoengine/FpsStatistic;->mThreshold:I

    .line 44
    return-void
.end method
