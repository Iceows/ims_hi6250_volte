.class public Lcom/huawei/ims/UtChrData;
.super Ljava/lang/Object;
.source "UtChrData.java"


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
.field private mAddressType:B

.field private mCmdDcState:Ljava/lang/String;

.field private mCurrentSubId:B

.field private mDataApnType:B

.field private mFailReason:I

.field private mIsMobileDataConnected:B

.field private mIsSupportWifi:B

.field private mIsVowifiEnable:B

.field private mIsWifiConnected:B

.field private mOperationType:B

.field private mSubId:B

.field private mVowifiDomain:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public getAddressType()B
    .registers 2

    .line 161
    iget-byte v0, p0, Lcom/huawei/ims/UtChrData;->mAddressType:B

    return v0
.end method

.method public getCmdDcState()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/huawei/ims/UtChrData;->mCmdDcState:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSubId()B
    .registers 2

    .line 177
    iget-byte v0, p0, Lcom/huawei/ims/UtChrData;->mCurrentSubId:B

    return v0
.end method

.method public getDataApnType()B
    .registers 2

    .line 121
    iget-byte v0, p0, Lcom/huawei/ims/UtChrData;->mDataApnType:B

    return v0
.end method

.method public getFailReason()I
    .registers 2

    .line 193
    iget v0, p0, Lcom/huawei/ims/UtChrData;->mFailReason:I

    return v0
.end method

.method public getIsMobileDataConnected()B
    .registers 2

    .line 137
    iget-byte v0, p0, Lcom/huawei/ims/UtChrData;->mIsMobileDataConnected:B

    return v0
.end method

.method public getIsSupportWifi()B
    .registers 2

    .line 129
    iget-byte v0, p0, Lcom/huawei/ims/UtChrData;->mIsSupportWifi:B

    return v0
.end method

.method public getIsVowifiEnable()B
    .registers 2

    .line 153
    iget-byte v0, p0, Lcom/huawei/ims/UtChrData;->mIsVowifiEnable:B

    return v0
.end method

.method public getIsWifiConnected()B
    .registers 2

    .line 145
    iget-byte v0, p0, Lcom/huawei/ims/UtChrData;->mIsWifiConnected:B

    return v0
.end method

.method public getOperationType()B
    .registers 2

    .line 113
    iget-byte v0, p0, Lcom/huawei/ims/UtChrData;->mOperationType:B

    return v0
.end method

.method public getSubId()B
    .registers 2

    .line 169
    iget-byte v0, p0, Lcom/huawei/ims/UtChrData;->mSubId:B

    return v0
.end method

.method public getVowifiDomain()B
    .registers 2

    .line 185
    iget-byte v0, p0, Lcom/huawei/ims/UtChrData;->mVowifiDomain:B

    return v0
.end method

.method public setAddressType(B)V
    .registers 2
    .param p1, "addrType"    # B

    .line 165
    iput-byte p1, p0, Lcom/huawei/ims/UtChrData;->mAddressType:B

    .line 166
    return-void
.end method

.method public setCmdDcState(Ljava/lang/String;)V
    .registers 2
    .param p1, "cmdDcState"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/huawei/ims/UtChrData;->mCmdDcState:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setCurrentSubId(B)V
    .registers 2
    .param p1, "currentSubId"    # B

    .line 181
    iput-byte p1, p0, Lcom/huawei/ims/UtChrData;->mCurrentSubId:B

    .line 182
    return-void
.end method

.method public setDataApnType(B)V
    .registers 2
    .param p1, "dataApnType"    # B

    .line 125
    iput-byte p1, p0, Lcom/huawei/ims/UtChrData;->mDataApnType:B

    .line 126
    return-void
.end method

.method public setFailReason(I)V
    .registers 2
    .param p1, "failReason"    # I

    .line 197
    iput p1, p0, Lcom/huawei/ims/UtChrData;->mFailReason:I

    .line 198
    return-void
.end method

.method public setIsMobileDataConnected(B)V
    .registers 2
    .param p1, "mobileDataConnected"    # B

    .line 141
    iput-byte p1, p0, Lcom/huawei/ims/UtChrData;->mIsMobileDataConnected:B

    .line 142
    return-void
.end method

.method public setIsSupportWifi(B)V
    .registers 2
    .param p1, "supportWifi"    # B

    .line 133
    iput-byte p1, p0, Lcom/huawei/ims/UtChrData;->mIsSupportWifi:B

    .line 134
    return-void
.end method

.method public setIsVowifiEnable(B)V
    .registers 2
    .param p1, "vowifiEnable"    # B

    .line 157
    iput-byte p1, p0, Lcom/huawei/ims/UtChrData;->mIsVowifiEnable:B

    .line 158
    return-void
.end method

.method public setIsWifiConnected(B)V
    .registers 2
    .param p1, "wifiConnected"    # B

    .line 149
    iput-byte p1, p0, Lcom/huawei/ims/UtChrData;->mIsWifiConnected:B

    .line 150
    return-void
.end method

.method public setOperationType(B)V
    .registers 2
    .param p1, "operationType"    # B

    .line 117
    iput-byte p1, p0, Lcom/huawei/ims/UtChrData;->mOperationType:B

    .line 118
    return-void
.end method

.method public setSubId(B)V
    .registers 2
    .param p1, "subId"    # B

    .line 173
    iput-byte p1, p0, Lcom/huawei/ims/UtChrData;->mSubId:B

    .line 174
    return-void
.end method

.method public setVowifiDomain(B)V
    .registers 2
    .param p1, "vowifiDomain"    # B

    .line 189
    iput-byte p1, p0, Lcom/huawei/ims/UtChrData;->mVowifiDomain:B

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtChrData;->mOperationType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDataApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtChrData;->mDataApnType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSupportWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtChrData;->mIsSupportWifi:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMobileDataConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtChrData;->mIsMobileDataConnected:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsWifiConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtChrData;->mIsWifiConnected:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVowifiEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtChrData;->mIsVowifiEnable:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAddressType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtChrData;->mAddressType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtChrData;->mSubId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtChrData;->mCurrentSubId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVowifiDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/huawei/ims/UtChrData;->mVowifiDomain:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFailReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/UtChrData;->mFailReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCmdDcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/UtChrData;->mCmdDcState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
