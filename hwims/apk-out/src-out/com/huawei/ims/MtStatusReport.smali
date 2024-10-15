.class public Lcom/huawei/ims/MtStatusReport;
.super Ljava/lang/Object;
.source "MtStatusReport.java"


# static fields
.field public static final IMS_MT_STATUS_HUNG_UP_RECEIVED:I = 0x1

.field public static final IMS_MT_STATUS_INVITE_RECEIVED:I


# instance fields
.field private mCallNumber:Ljava/lang/String;

.field private mCallStatus:I

.field private mFailCause:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;)V
    .registers 3
    .param p1, "imsMtStatusReport"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_11

    .line 45
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;->pNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/MtStatusReport;->mCallNumber:Ljava/lang/String;

    .line 46
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;->callStatus:I

    iput v0, p0, Lcom/huawei/ims/MtStatusReport;->mCallStatus:I

    .line 47
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;->failCause:I

    iput v0, p0, Lcom/huawei/ims/MtStatusReport;->mFailCause:I

    .line 49
    :cond_11
    return-void
.end method


# virtual methods
.method public getCallNumber()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/huawei/ims/MtStatusReport;->mCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCallStatus()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/huawei/ims/MtStatusReport;->mCallStatus:I

    return v0
.end method

.method public getFailCause()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/huawei/ims/MtStatusReport;->mFailCause:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/ims/MtStatusReport;->mCallNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/MtStatusReport;->mCallStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/MtStatusReport;->mFailCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
