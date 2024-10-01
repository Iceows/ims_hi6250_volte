.class public Lcom/huawei/ims/DriverImsCall;
.super Lcom/android/internal/telephony/DriverCall;
.source "DriverImsCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/DriverImsCall$State;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DRIVERCALL-IMS"


# instance fields
.field public callFailCause:Landroid/telephony/ims/ImsReasonInfo;

.field public imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

.field public peerVideoSupport:I

.field public radioTechFromRilImsCall:I

.field public redirectNumber:Ljava/lang/String;

.field public redirectNumberPresentation:I

.field public redirectNumberToa:I

.field public state:Lcom/huawei/ims/DriverImsCall$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 160
    new-instance v0, Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v0}, Lcom/huawei/ims/ImsCallProfiles;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/DriverImsCall;)V
    .locals 2
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 133
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 134
    new-instance v0, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v0, v1}, Lcom/huawei/ims/ImsCallProfiles;-><init>(Lcom/huawei/ims/ImsCallProfiles;)V

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 135
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 136
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 137
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    .line 138
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    .line 139
    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    .line 140
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->TOA:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->TOA:I

    .line 141
    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    .line 142
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->als:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->als:I

    .line 143
    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isVoice:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isVoice:Z

    .line 144
    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    .line 145
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    .line 146
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    .line 147
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 149
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    .line 152
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 154
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 155
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 156
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 157
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;)V
    .locals 4
    .param p1, "dc"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;

    .line 55
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 49
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 56
    if-eqz p1, :cond_4

    .line 57
    new-instance v2, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-direct {v2, v3}, Lcom/huawei/ims/ImsCallProfiles;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;)V

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 58
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 59
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->state:I

    invoke-static {v2}, Lcom/huawei/ims/DriverImsCall;->stateFromCall(I)Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 60
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->index:I

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    .line 61
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->toa:I

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->TOA:I

    .line 62
    iget-object v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->number:Ljava/lang/String;

    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->toa:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    .line 63
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->isMT:B

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    .line 64
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->isMpty:B

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    .line 65
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->als:B

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->als:I

    .line 66
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->isVoice:B

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isVoice:Z

    .line 67
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->isVoicePrivacy:B

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    .line 68
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->numberPresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverImsCall;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    .line 70
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    .line 71
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->namePresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverImsCall;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 73
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    .line 76
    :cond_4
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;)V
    .locals 4
    .param p1, "dc"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;

    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 49
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 79
    if-eqz p1, :cond_4

    .line 80
    new-instance v2, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-direct {v2, v3}, Lcom/huawei/ims/ImsCallProfiles;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;)V

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 81
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 82
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->state:I

    invoke-static {v2}, Lcom/huawei/ims/DriverImsCall;->stateFromCall(I)Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 83
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->index:I

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    .line 84
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->toa:I

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->TOA:I

    .line 85
    iget-object v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->number:Ljava/lang/String;

    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->toa:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    .line 86
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMT:B

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    .line 87
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMpty:B

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    .line 88
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->als:B

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->als:I

    .line 89
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoice:B

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isVoice:Z

    .line 90
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoicePrivacy:B

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    .line 91
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->numberPresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverImsCall;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    .line 93
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    .line 94
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->namePresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverImsCall;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 96
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    .line 98
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->imsDomain:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 100
    :cond_4
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;)V
    .locals 4
    .param p1, "dc"    # Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;

    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 49
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 105
    if-eqz p1, :cond_4

    .line 106
    new-instance v2, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-direct {v2, v3}, Lcom/huawei/ims/ImsCallProfiles;-><init>(Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;)V

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 107
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 108
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->state:I

    invoke-static {v2}, Lcom/huawei/ims/DriverImsCall;->stateFromCall(I)Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 109
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->index:I

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    .line 110
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->toa:I

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->TOA:I

    .line 111
    iget-object v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->number:Ljava/lang/String;

    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->toa:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    .line 112
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMT:B

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    .line 113
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMpty:B

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    .line 114
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->als:B

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->als:I

    .line 115
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoice:B

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isVoice:Z

    .line 116
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoicePrivacy:B

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    .line 117
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->numberPresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverImsCall;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    .line 119
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    .line 120
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->namePresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverImsCall;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 122
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    .line 124
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->imsDomain:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 125
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberToa:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 126
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumber:Ljava/lang/String;

    iget v1, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberToa:I

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 127
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberPresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverImsCall;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 130
    :cond_4
    return-void
.end method

.method private isChanged(Lcom/huawei/ims/DriverImsCall;)Z
    .locals 3
    .param p1, "update"    # Lcom/huawei/ims/DriverImsCall;

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v1, v2, :cond_0

    .line 216
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iput-object v1, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 217
    const/4 v0, 0x1

    .line 219
    :cond_0
    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    iget v2, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    if-eq v1, v2, :cond_1

    .line 220
    iget v1, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v1, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    .line 221
    const/4 v0, 0x1

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 226
    :cond_3
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    .line 229
    :cond_4
    iget-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    iget-boolean v2, p1, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    if-eq v1, v2, :cond_5

    .line 230
    iget-boolean v1, p1, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    iput-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    .line 231
    const/4 v0, 0x1

    .line 233
    :cond_5
    iget-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    iget-boolean v2, p1, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    if-eq v1, v2, :cond_6

    .line 234
    iget-boolean v1, p1, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    iput-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    .line 235
    const/4 v0, 0x1

    .line 237
    :cond_6
    return v0
.end method

.method public static stateFromCall(I)Lcom/huawei/ims/DriverImsCall$State;
    .locals 3
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .line 164
    packed-switch p0, :pswitch_data_0

    .line 180
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :pswitch_0
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 176
    :pswitch_1
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 174
    :pswitch_2
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 172
    :pswitch_3
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 170
    :pswitch_4
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 168
    :pswitch_5
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 166
    :pswitch_6
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",toa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->TOA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    if-eqz v1, :cond_0

    const-string v1, "conf"

    goto :goto_0

    :cond_0
    const-string v1, "norm"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    if-eqz v1, :cond_1

    const-string v1, "mt"

    goto :goto_1

    :cond_1
    const-string v1, "mo"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isVoice:Z

    if-eqz v1, :cond_2

    const-string v1, "voc"

    goto :goto_2

    :cond_2
    const-string v1, "nonvoc"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    if-eqz v1, :cond_3

    const-string v1, "evp"

    goto :goto_3

    :cond_3
    const-string v1, "noevp"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",peerVideoSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",radioTechFromRilImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Ims Call Profile ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",redirectNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    const/4 v2, 0x0

    .line 253
    invoke-static {v1, v2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",redirectNumberToa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",redirectNumberPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    return-object v0
.end method

.method public update(Lcom/huawei/ims/DriverImsCall;)Z
    .locals 5
    .param p1, "update"    # Lcom/huawei/ims/DriverImsCall;

    .line 186
    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/ims/DriverImsCall;->isChanged(Lcom/huawei/ims/DriverImsCall;)Z

    move-result v0

    .line 190
    .local v0, "hasChanged":Z
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-nez v1, :cond_1

    .line 192
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v3, v3, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, v4, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v1, v1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    if-eq v1, v2, :cond_2

    .line 197
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v1, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    if-eq v1, v2, :cond_3

    .line 200
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 203
    :cond_3
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    iput-object v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 207
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsCallProfiles;->update(Lcom/huawei/ims/ImsCallProfiles;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 208
    const/4 v0, 0x1

    .line 210
    :cond_5
    return v0
.end method
