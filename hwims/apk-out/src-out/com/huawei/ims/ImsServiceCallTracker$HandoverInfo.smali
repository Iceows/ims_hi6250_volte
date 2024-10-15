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
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    .line 144
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    .line 149
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    .line 154
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraType:I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraInfo:[B

    .line 164
    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 182
    return-void
.end method

.method constructor <init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;)V
    .registers 3
    .param p1, "handoverInfo"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    .line 144
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    .line 149
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    .line 154
    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraType:I

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraInfo:[B

    .line 164
    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorMessage:Ljava/lang/String;

    .line 172
    if-eqz p1, :cond_2f

    .line 173
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;->hoType:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mType:I

    .line 174
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;->srcTech:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mSrcTech:I

    .line 175
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;->dstTech:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mTargetTech:I

    .line 176
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;->hoExtra:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsExtra;

    iget v0, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsExtra;->extraType:I

    iput v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mExtraType:I

    .line 177
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;->errorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/ImsServiceCallTracker$HandoverInfo;->mErrorCode:Ljava/lang/String;

    .line 179
    :cond_2f
    return-void
.end method
