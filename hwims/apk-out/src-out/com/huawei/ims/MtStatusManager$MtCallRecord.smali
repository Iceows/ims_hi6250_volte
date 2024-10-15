.class Lcom/huawei/ims/MtStatusManager$MtCallRecord;
.super Ljava/lang/Object;
.source "MtStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/MtStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtCallRecord"
.end annotation


# static fields
.field public static final STATE_CANCELLED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_INVITED:I = 0x2

.field public static final STATE_RANG:I = 0x3


# instance fields
.field private mInviteTime:J

.field private mRingOrHangTime:J

.field private mState:I


# direct methods
.method constructor <init>()V
    .registers 4

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 443
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    .line 444
    iput-wide v1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 445
    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 446
    return-void
.end method

.method constructor <init>(I)V
    .registers 8
    .param p1, "st"    # I

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 449
    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_14

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    .line 451
    iput v3, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    goto :goto_18

    .line 453
    :cond_14
    iput-wide v1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    .line 454
    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 456
    :goto_18
    iput-wide v1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 457
    return-void
.end method

.method static synthetic access$400(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 415
    iget-wide v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    .param p1, "x1"    # J

    .line 415
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)J
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 415
    iget-wide v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/huawei/ims/MtStatusManager$MtCallRecord;J)J
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;
    .param p1, "x1"    # J

    .line 415
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mInviteTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/huawei/ims/MtStatusManager$MtCallRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/MtStatusManager$MtCallRecord;

    .line 415
    iget v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    return v0
.end method


# virtual methods
.method public setHang(J)V
    .registers 4
    .param p1, "time"    # J

    .line 465
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 466
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 467
    return-void
.end method

.method public setRing(J)V
    .registers 4
    .param p1, "time"    # J

    .line 460
    iput-wide p1, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mRingOrHangTime:J

    .line 461
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/ims/MtStatusManager$MtCallRecord;->mState:I

    .line 462
    return-void
.end method
