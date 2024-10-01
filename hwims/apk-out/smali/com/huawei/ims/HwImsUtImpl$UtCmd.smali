.class Lcom/huawei/ims/HwImsUtImpl$UtCmd;
.super Ljava/lang/Object;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/ims/HwImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UtCmd"
.end annotation


# instance fields
.field csAction:I

.field csFacility:Ljava/lang/String;

.field csPassword:Ljava/lang/String;

.field csReason:I

.field csServiceClass:I

.field dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

.field endTime:Ljava/util/Date;

.field mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

.field mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

.field startTime:Ljava/util/Date;

.field utEnable:Z

.field utExpectType:I

.field utId:I

.field utNumber:Ljava/lang/String;

.field utOpType:I

.field utReason:I

.field utRetryCounts:I

.field utTimer:I

.field utType:I


# direct methods
.method public constructor <init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V
    .locals 2
    .param p1, "token"    # Lcom/huawei/ims/HwImsUtImpl$CmdToken;
    .param p2, "type"    # I
    .param p3, "opType"    # I

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    .line 501
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_INIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 502
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 503
    iput p2, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    .line 504
    iput p2, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    .line 505
    iput p3, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 507
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utEnable:Z

    .line 508
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 509
    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    .line 510
    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    .line 511
    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 512
    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 513
    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csPassword:Ljava/lang/String;

    .line 515
    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 517
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 518
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->access$000()I

    move-result v1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    .line 519
    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    .line 520
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", utExpectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", utOpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", utRetryCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
