.class public Lcom/huawei/ims/UtCHRData;
.super Ljava/lang/Object;
.source "UtCHRData.java"


# static fields
.field public static final CHR_DEFAULT_VALUE:B = -0x1t

.field public static final CHR_EVENT_FAIL_CAUSE_UT:I = 0x1

.field public static final CHR_FAIL_REASON_ADD_ROUTE_FAILED:I = 0x3ec

.field public static final CHR_FAIL_REASON_CONNECTION_TIMEOUT:I = 0x3ea

.field public static final CHR_FAIL_REASON_QUERY_DNS_FAILED:I = 0x3eb

.field public static final CHR_FAIL_REASON_SDK_RETURN_TIMEOUT:I = 0x3e9

.field public static final CHR_IS_NOT_VOWIFI_UT:B = 0x0t

.field public static final CHR_IS_VOWIFI_UT:B = 0x1t


# instance fields
.field mAddressType:B

.field mCmdDcState:Ljava/lang/String;

.field mCurrentSubId:B

.field mDataApntype:B

.field mFailReason:I

.field mIsMobileDateConnected:B

.field mIsSupportWifi:B

.field mIsVowifiEnable:B

.field mIsWifiConnected:B

.field mOperationType:B

.field mSubId:B

.field mVowifiDomain:B


# direct methods
.method public constructor <init>(BBBBBBBBBBILjava/lang/String;)V
    .locals 0
    .param p1, "operationType"    # B
    .param p2, "apnType"    # B
    .param p3, "supportWifi"    # B
    .param p4, "mobileDataConnected"    # B
    .param p5, "wifiConnected"    # B
    .param p6, "vowifiEnable"    # B
    .param p7, "addrType"    # B
    .param p8, "subId"    # B
    .param p9, "currentSubId"    # B
    .param p10, "vowifiDomain"    # B
    .param p11, "failReason"    # I
    .param p12, "cmdDcState"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-byte p1, p0, Lcom/huawei/ims/UtCHRData;->mOperationType:B

    .line 30
    iput-byte p2, p0, Lcom/huawei/ims/UtCHRData;->mDataApntype:B

    .line 31
    iput-byte p3, p0, Lcom/huawei/ims/UtCHRData;->mIsSupportWifi:B

    .line 32
    iput-byte p4, p0, Lcom/huawei/ims/UtCHRData;->mIsMobileDateConnected:B

    .line 33
    iput-byte p5, p0, Lcom/huawei/ims/UtCHRData;->mIsWifiConnected:B

    .line 34
    iput-byte p6, p0, Lcom/huawei/ims/UtCHRData;->mIsVowifiEnable:B

    .line 35
    iput-byte p7, p0, Lcom/huawei/ims/UtCHRData;->mAddressType:B

    .line 36
    iput-byte p8, p0, Lcom/huawei/ims/UtCHRData;->mSubId:B

    .line 37
    iput-byte p9, p0, Lcom/huawei/ims/UtCHRData;->mCurrentSubId:B

    .line 38
    iput-byte p10, p0, Lcom/huawei/ims/UtCHRData;->mVowifiDomain:B

    .line 39
    iput p11, p0, Lcom/huawei/ims/UtCHRData;->mFailReason:I

    .line 40
    iput-object p12, p0, Lcom/huawei/ims/UtCHRData;->mCmdDcState:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtCHRData;->mOperationType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDataApntype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtCHRData;->mDataApntype:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSupportWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtCHRData;->mIsSupportWifi:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMobileDateConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtCHRData;->mIsMobileDateConnected:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsWifiConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtCHRData;->mIsWifiConnected:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVowifiEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtCHRData;->mIsVowifiEnable:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAddressType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtCHRData;->mAddressType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtCHRData;->mSubId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtCHRData;->mCurrentSubId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVowifiDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtCHRData;->mVowifiDomain:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFailReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/UtCHRData;->mFailReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCmdDcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/UtCHRData;->mCmdDcState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
