.class public Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;
.super Ljava/lang/Object;
.source "ImsServiceCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/ImsServiceCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HandoverInfo"
.end annotation


# instance fields
.field protected mErrorCode:Ljava/lang/String;

.field protected mErrorMessage:Ljava/lang/String;

.field protected mExtraInfo:[B

.field protected mExtraType:I

.field protected mSrcTech:I

.field protected mTargetTech:I

.field protected mType:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    .line 124
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    .line 125
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    .line 126
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraType:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraInfo:[B

    .line 128
    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 139
    return-void
.end method

.method constructor <init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;)V
    .locals 1
    .param p1, "handoverInfo"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    .line 124
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    .line 125
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    .line 126
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraType:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraInfo:[B

    .line 128
    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;->hoType:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    .line 133
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;->srcTech:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    .line 134
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;->dstTech:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    .line 135
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;->hoExtra:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsExtra;

    iget v0, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsExtra;->extraType:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraType:I

    .line 136
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;->errorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 138
    :cond_0
    return-void
.end method
