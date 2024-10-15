.class public Lcom/huawei/ims/ImsRegErrReport;
.super Ljava/lang/Object;
.source "ImsRegErrReport.java"


# static fields
.field public static final IMS_REG_ERR_DOMAIN_EE:I = 0x64

.field public static final IMS_REG_ERR_DOMAIN_LTE:I = 0x0

.field public static final IMS_REG_ERR_DOMAIN_NR:I = 0x4

.field public static final IMS_REG_ERR_DOMAIN_WIFI:I = 0x1

.field public static final IMS_REG_ERR_FAILCAUSE_ILLEGALME:I = 0x6

.field public static final IMS_REG_ERR_FAILCAUSE_NONE:I = 0x0

.field public static final IMS_REG_ERR_STAGE_EE:I = 0x64

.field public static final IMS_REG_ERR_STAGE_IMS:I = 0x1

.field public static final IMS_REG_ERR_STAGE_PDN:I


# instance fields
.field private errDomain:I

.field private errStage:I

.field private failCause:I

.field private failString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;)V
    .registers 3
    .param p1, "imsRegErrRpt"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-eqz p1, :cond_15

    .line 82
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;->failDomain:I

    iput v0, p0, Lcom/huawei/ims/ImsRegErrReport;->errDomain:I

    .line 83
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;->failStage:I

    iput v0, p0, Lcom/huawei/ims/ImsRegErrReport;->errStage:I

    .line 84
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;->failCause:I

    iput v0, p0, Lcom/huawei/ims/ImsRegErrReport;->failCause:I

    .line 85
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;->failStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/ImsRegErrReport;->failString:Ljava/lang/String;

    .line 87
    :cond_15
    return-void
.end method


# virtual methods
.method public getErrDomain()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/huawei/ims/ImsRegErrReport;->errDomain:I

    return v0
.end method

.method public getErrStage()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/huawei/ims/ImsRegErrReport;->errStage:I

    return v0
.end method

.method public getFailCause()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/huawei/ims/ImsRegErrReport;->failCause:I

    return v0
.end method

.method public getFailString()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/huawei/ims/ImsRegErrReport;->failString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errDomain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsRegErrReport;->errDomain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errStage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Lcom/huawei/ims/ImsRegErrReport;->errStage:I

    if-nez v1, :cond_1b

    const-string v1, "PDN"

    goto :goto_1d

    :cond_1b
    const-string v1, "IMS"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failcause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/ImsRegErrReport;->failCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/ImsRegErrReport;->failString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    return-object v0
.end method
