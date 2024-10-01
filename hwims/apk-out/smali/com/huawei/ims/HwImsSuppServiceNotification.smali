.class public Lcom/huawei/ims/HwImsSuppServiceNotification;
.super Ljava/lang/Object;
.source "HwImsSuppServiceNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwImsSuppServiceNotification"


# instance fields
.field public callId:I

.field protected code:I

.field private history:[Ljava/lang/String;

.field protected index:I

.field protected notificationType:I

.field protected number:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    .line 39
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->code:I

    .line 41
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    .line 43
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->index:I

    .line 45
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->type:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->history:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;)V
    .locals 2
    .param p1, "imsSSN"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    .line 39
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->code:I

    .line 41
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    .line 43
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->index:I

    .line 45
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->type:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->history:[Ljava/lang/String;

    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->notificationType:I

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    .line 58
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->code:I

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->code:I

    .line 59
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callId:I

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    .line 60
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->index:I

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->index:I

    .line 61
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->type:I

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->type:I

    .line 62
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    iget v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->type:I

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ notificationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number= xxx, history="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->history:[Ljava/lang/String;

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method
