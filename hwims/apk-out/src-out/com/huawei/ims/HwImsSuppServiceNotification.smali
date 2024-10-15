.class public Lcom/huawei/ims/HwImsSuppServiceNotification;
.super Ljava/lang/Object;
.source "HwImsSuppServiceNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwImsSuppServiceNotification"


# instance fields
.field private callId:I

.field protected code:I

.field private histories:[Ljava/lang/String;

.field protected index:I

.field protected notificationType:I

.field protected number:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    .line 31
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->code:I

    .line 36
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->index:I

    .line 41
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->type:I

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    .line 53
    iput-object v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->histories:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;)V
    .registers 4
    .param p1, "imsSsn"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    .line 31
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->code:I

    .line 36
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->index:I

    .line 41
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->type:I

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    .line 53
    iput-object v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->histories:[Ljava/lang/String;

    .line 67
    if-eqz p1, :cond_37

    .line 68
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;->notificationType:I

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->notificationType:I

    .line 69
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;->code:I

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->code:I

    .line 70
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;->callId:I

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    .line 71
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;->index:I

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->index:I

    .line 72
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;->type:I

    iput v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->type:I

    .line 73
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    iget v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->type:I

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->number:Ljava/lang/String;

    .line 76
    :cond_37
    return-void
.end method


# virtual methods
.method public getCallId()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->callId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 89
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

    iget-object v1, p0, Lcom/huawei/ims/HwImsSuppServiceNotification;->histories:[Ljava/lang/String;

    .line 90
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    return-object v0
.end method
