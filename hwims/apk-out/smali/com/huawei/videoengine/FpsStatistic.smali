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
    .locals 3

    .line 32
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

    .line 33
    iput-object p1, p0, Lcom/huawei/videoengine/FpsStatistic;->mPos:Ljava/lang/String;

    .line 34
    const/4 p1, 0x1

    if-ge p2, p1, :cond_0

    .line 36
    const-string p1, "hme_engine_java"

    const-string p2, "frameInterval < 1"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 39
    :cond_0
    iput p2, p0, Lcom/huawei/videoengine/FpsStatistic;->mFrameInterval:I

    .line 40
    const/16 p1, 0x64

    iput p1, p0, Lcom/huawei/videoengine/FpsStatistic;->mThreshold:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    .line 21
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

    .line 22
    iput-object p1, p0, Lcom/huawei/videoengine/FpsStatistic;->mPos:Ljava/lang/String;

    .line 23
    const/4 p1, 0x1

    if-ge p2, p1, :cond_0

    .line 24
    const-string p1, "hme_engine_java"

    const-string p2, "frameInterval < 1"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void

    .line 28
    :cond_0
    iput p2, p0, Lcom/huawei/videoengine/FpsStatistic;->mFrameInterval:I

    .line 29
    iput p3, p0, Lcom/huawei/videoengine/FpsStatistic;->mThreshold:I

    .line 30
    return-void
.end method


# virtual methods
.method public add()V
    .locals 5

    .line 54
    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    .line 55
    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 56
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#FPS# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/FpsStatistic;->mPos:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Frame("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") come"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mLastTime:J

    .line 60
    :cond_0
    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mCount:I

    iget v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mFrameInterval:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mNowTime:J

    .line 62
    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mFrameInterval:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mNowTime:J

    iget-wide v3, p0, Lcom/huawei/videoengine/FpsStatistic;->mLastTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mFps:F

    .line 63
    iget-wide v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mNowTime:J

    iput-wide v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mLastTime:J

    .line 64
    iget v0, p0, Lcom/huawei/videoengine/FpsStatistic;->mFps:F

    iget v1, p0, Lcom/huawei/videoengine/FpsStatistic;->mThreshold:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 65
    const-string v0, "hme_engine_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#FPS# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/videoengine/FpsStatistic;->mPos:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/videoengine/FpsStatistic;->mFps:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/huawei/videoengine/FpsStatistic;->mThreshold:I

    .line 50
    return-void
.end method
