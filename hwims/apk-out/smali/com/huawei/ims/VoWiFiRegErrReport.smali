.class public Lcom/huawei/ims/VoWiFiRegErrReport;
.super Ljava/lang/Object;
.source "VoWiFiRegErrReport.java"


# static fields
.field public static final VOWIFI_REG_ERR_DOMAIN_LTE:I = 0x0

.field public static final VOWIFI_REG_ERR_DOMAIN_WIFI:I = 0x1

.field public static final VOWIFI_REG_ERR_STAGE_IMS:I = 0x1

.field public static final VOWIFI_REG_ERR_STAGE_PDN:I


# instance fields
.field public errDomain:I

.field public errStage:I

.field public failCause:I

.field public failString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;)V
    .locals 1
    .param p1, "imsRegErrRpt"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;->failDomain:I

    iput v0, p0, Lcom/huawei/ims/VoWiFiRegErrReport;->errDomain:I

    .line 30
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;->failStage:I

    iput v0, p0, Lcom/huawei/ims/VoWiFiRegErrReport;->errStage:I

    .line 31
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;->failCause:I

    iput v0, p0, Lcom/huawei/ims/VoWiFiRegErrReport;->failCause:I

    .line 32
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;->failStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/VoWiFiRegErrReport;->failString:Ljava/lang/String;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errDomain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/VoWiFiRegErrReport;->errDomain:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "WIFI"

    goto :goto_0

    :cond_0
    const-string v1, "LTE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errStage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v1, p0, Lcom/huawei/ims/VoWiFiRegErrReport;->errStage:I

    if-nez v1, :cond_1

    const-string v1, "PDN"

    goto :goto_1

    :cond_1
    const-string v1, "IMS"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failcause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/VoWiFiRegErrReport;->failCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " failString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/VoWiFiRegErrReport;->failString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    return-object v0
.end method
