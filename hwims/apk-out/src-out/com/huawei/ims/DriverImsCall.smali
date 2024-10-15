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
.field private static final ACTIVE_STATE:I = 0x0

.field private static final ALERTING_STATE:I = 0x3

.field private static final DIALING_STATE:I = 0x2

.field private static final END_STATE:I = 0x6

.field private static final HOLDING_STATE:I = 0x1

.field private static final INCOMING_STATE:I = 0x4

.field private static final UNINIT_VALUE:I = -0x1

.field private static final WAITING_STATE:I = 0x5


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
    .registers 2

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 205
    new-instance v0, Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v0}, Lcom/huawei/ims/ImsCallProfiles;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/DriverImsCall;)V
    .registers 4
    .param p1, "dc"    # Lcom/huawei/ims/DriverImsCall;

    .line 173
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 174
    if-eqz p1, :cond_65

    .line 175
    new-instance v0, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-direct {v0, v1}, Lcom/huawei/ims/ImsCallProfiles;-><init>(Lcom/huawei/ims/ImsCallProfiles;)V

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 176
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 177
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 178
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    .line 179
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    .line 180
    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    .line 181
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->TOA:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->TOA:I

    .line 182
    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    .line 183
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->als:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->als:I

    .line 184
    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isVoice:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isVoice:Z

    .line 185
    iget-boolean v0, p1, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    .line 186
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    .line 187
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    .line 188
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 190
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    .line 193
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 195
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 196
    iget-object v0, p1, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 197
    iget v0, p1, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 199
    :cond_65
    return-void
.end method

.method public constructor <init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;)V
    .registers 6
    .param p1, "driverImsCall"    # Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;

    .line 139
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 127
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 140
    if-eqz p1, :cond_99

    .line 141
    new-instance v2, Lcom/huawei/ims/ImsCallProfiles;

    iget-object v3, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-direct {v2, v3}, Lcom/huawei/ims/ImsCallProfiles;-><init>(Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;)V

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    .line 142
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 143
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->state:I

    invoke-static {v2}, Lcom/huawei/ims/DriverImsCall;->stateFromCall(I)Lcom/huawei/ims/DriverImsCall$State;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 144
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->index:I

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    .line 145
    iget v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->toa:I

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->TOA:I

    .line 146
    iget-object v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->number:Ljava/lang/String;

    iget v3, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->toa:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    .line 147
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMT:B

    if-eqz v2, :cond_41

    move v2, v1

    goto :goto_42

    :cond_41
    move v2, v0

    :goto_42
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    .line 148
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMpty:B

    if-eqz v2, :cond_4a

    move v2, v1

    goto :goto_4b

    :cond_4a
    move v2, v0

    :goto_4b
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    .line 149
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->als:B

    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->als:I

    .line 150
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoice:B

    if-eqz v2, :cond_57

    move v2, v1

    goto :goto_58

    :cond_57
    move v2, v0

    :goto_58
    iput-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isVoice:Z

    .line 151
    iget-byte v2, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoicePrivacy:B

    if-eqz v2, :cond_5f

    move v0, v1

    :cond_5f
    iput-boolean v0, p0, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    .line 152
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->numberPresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverImsCall;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->numberPresentation:I

    .line 153
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->name:Ljava/lang/String;

    .line 154
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->namePresentation:I

    invoke-static {v0}, Lcom/huawei/ims/DriverImsCall;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->namePresentation:I

    .line 155
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->peerVideoSupport:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->peerVideoSupport:I

    .line 156
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->imsDomain:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 157
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberToa:I

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberToa:I

    .line 158
    iget-object v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumber:Ljava/lang/String;

    iget v1, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberToa:I

    .line 159
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumber:Ljava/lang/String;

    .line 160
    iget v0, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberPresentation:I

    .line 161
    invoke-static {v0}, Lcom/huawei/ims/DriverImsCall;->presentationFromCLIP(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/ims/DriverImsCall;->redirectNumberPresentation:I

    .line 162
    iget-object v0, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget v1, p1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->encryptState:I

    iput v1, v0, Lcom/huawei/ims/ImsCallProfiles;->isEncrypt:I

    .line 164
    :cond_99
    return-void
.end method

.method private isChanged(Lcom/huawei/ims/DriverImsCall;)Z
    .registers 5
    .param p1, "update"    # Lcom/huawei/ims/DriverImsCall;

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    if-eq v1, v2, :cond_a

    .line 273
    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    .line 274
    const/4 v0, 0x1

    .line 276
    :cond_a
    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    iget v2, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    if-eq v1, v2, :cond_15

    .line 277
    iget v1, p1, Lcom/huawei/ims/DriverImsCall;->index:I

    iput v1, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    .line 278
    const/4 v0, 0x1

    .line 280
    :cond_15
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    if-nez v1, :cond_1d

    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    if-nez v1, :cond_2b

    :cond_1d
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 281
    :cond_2b
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/ims/DriverImsCall;->number:Ljava/lang/String;

    .line 282
    const/4 v0, 0x1

    .line 284
    :cond_30
    iget-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    iget-boolean v2, p1, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    if-eq v1, v2, :cond_3b

    .line 285
    iget-boolean v1, p1, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    iput-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    .line 286
    const/4 v0, 0x1

    .line 288
    :cond_3b
    iget-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    iget-boolean v2, p1, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    if-eq v1, v2, :cond_46

    .line 289
    iget-boolean v1, p1, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    iput-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    .line 290
    const/4 v0, 0x1

    .line 292
    :cond_46
    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    iget v2, p1, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    if-eq v1, v2, :cond_4f

    .line 293
    iput v2, p0, Lcom/huawei/ims/DriverImsCall;->radioTechFromRilImsCall:I

    .line 294
    const/4 v0, 0x1

    .line 296
    :cond_4f
    return v0
.end method

.method public static stateFromCall(I)Lcom/huawei/ims/DriverImsCall$State;
    .registers 4
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .line 217
    packed-switch p0, :pswitch_data_30

    .line 233
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

    .line 231
    :pswitch_1a
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->END:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 229
    :pswitch_1d
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->WAITING:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 227
    :pswitch_20
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->INCOMING:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 225
    :pswitch_23
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->ALERTING:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 223
    :pswitch_26
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->DIALING:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 221
    :pswitch_29
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->HOLDING:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    .line 219
    :pswitch_2c
    sget-object v0, Lcom/huawei/ims/DriverImsCall$State;->ACTIVE:Lcom/huawei/ims/DriverImsCall$State;

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/DriverImsCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/DriverImsCall;->state:Lcom/huawei/ims/DriverImsCall$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",toa="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/DriverImsCall;->TOA:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isMpty:Z

    if-eqz v2, :cond_2d

    const-string v2, "conf"

    goto :goto_2f

    :cond_2d
    const-string v2, "norm"

    :goto_2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    iget-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isMT:Z

    if-eqz v2, :cond_3c

    const-string v2, "mt"

    goto :goto_3e

    :cond_3c
    const-string v2, "mo"

    :goto_3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/DriverImsCall;->als:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/huawei/ims/DriverImsCall;->isVoice:Z

    if-eqz v2, :cond_53

    const-string v2, "voc"

    goto :goto_55

    :cond_53
    const-string v2, "nonvoc"

    :goto_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-boolean v1, p0, Lcom/huawei/ims/DriverImsCall;->isVoicePrivacy:Z

    if-eqz v1, :cond_62

    const-string v1, "evp"

    goto :goto_64

    :cond_62
    const-string v1, "noevp"

    :goto_64
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

    .line 311
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

    .line 305
    return-object v0
.end method

.method public update(Lcom/huawei/ims/DriverImsCall;)Z
    .registers 7
    .param p1, "update"    # Lcom/huawei/ims/DriverImsCall;

    .line 244
    if-nez p1, :cond_4

    .line 245
    const/4 v0, 0x0

    return v0

    .line 247
    :cond_4
    invoke-direct {p0, p1}, Lcom/huawei/ims/DriverImsCall;->isChanged(Lcom/huawei/ims/DriverImsCall;)Z

    move-result v0

    .line 248
    .local v0, "hasChanged":Z
    iget-object v1, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v1, :cond_4c

    .line 249
    iget-object v2, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-nez v2, :cond_22

    .line 250
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget v1, v1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iget-object v3, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v3, v3, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v4, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v4, v4, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_4c

    .line 253
    :cond_22
    iget v1, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    if-eq v1, v2, :cond_32

    .line 254
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 256
    :cond_32
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v1, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    if-eq v1, v2, :cond_44

    .line 257
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 260
    :cond_44
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, v2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    iput-object v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 264
    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    iget-object v2, p1, Lcom/huawei/ims/DriverImsCall;->imsCallProfile:Lcom/huawei/ims/ImsCallProfiles;

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsCallProfiles;->update(Lcom/huawei/ims/ImsCallProfiles;)Z

    move-result v1

    if-eqz v1, :cond_59

    if-nez v0, :cond_59

    .line 265
    const/4 v0, 0x1

    .line 267
    :cond_59
    return v0
.end method
