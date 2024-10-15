.class public Lcom/huawei/ims/vt/RtpController;
.super Ljava/lang/Object;
.source "RtpController.java"


# static fields
.field public static final RTP_DIRECTION_AUDIO:I = 0x0

.field public static final RTP_DIRECTION_BIDIRECTIONAL:I = 0x3

.field public static final RTP_DIRECTION_RECEIVE_ONLY:I = 0x2

.field public static final RTP_DIRECTION_SEND_ONLY:I = 0x1

.field public static final RTP_DIRECTION_UNDEFINED:I = -0x1

.field public static final RTP_OPERATOR_FAILED:I = -0x1

.field public static final RTP_OPERATOR_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RtpController"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static convertCallTypeToDirection(I)I
    .registers 4
    .param p0, "callType"    # I

    .line 127
    const/4 v0, -0x1

    .line 128
    .local v0, "direction":I
    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    if-eq p0, v1, :cond_18

    const/4 v1, 0x2

    if-eq p0, v1, :cond_16

    const/4 v1, 0x3

    if-eq p0, v1, :cond_14

    .line 142
    const-string v1, "RtpController"

    const-string v2, "callType is illegal when convertCallTypeToDirection!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 139
    :cond_14
    const/4 v0, 0x3

    .line 140
    goto :goto_1c

    .line 136
    :cond_16
    const/4 v0, 0x2

    .line 137
    goto :goto_1c

    .line 133
    :cond_18
    const/4 v0, 0x1

    .line 134
    goto :goto_1c

    .line 130
    :cond_1a
    const/4 v0, 0x0

    .line 131
    nop

    .line 144
    :goto_1c
    return v0
.end method

.method private static isInvalidDirection(I)Z
    .registers 3
    .param p0, "direction"    # I

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "isInvalidDirection":Z
    if-eqz p0, :cond_e

    const/4 v1, 0x1

    if-eq p0, v1, :cond_e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    .line 162
    const/4 v0, 0x1

    goto :goto_f

    .line 160
    :cond_e
    nop

    .line 164
    :goto_f
    return v0
.end method

.method public static modifyRtpStreamDirection(II)I
    .registers 6
    .param p0, "oldDirection"    # I
    .param p1, "newDirection"    # I

    .line 99
    invoke-static {p0}, Lcom/huawei/ims/vt/RtpController;->isInvalidDirection(I)Z

    move-result v0

    const-string v1, "RtpController"

    if-nez v0, :cond_2a

    invoke-static {p1}, Lcom/huawei/ims/vt/RtpController;->isInvalidDirection(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2a

    .line 104
    :cond_f
    sub-int v0, p1, p0

    .line 105
    .local v0, "change":I
    const/4 v2, -0x1

    .line 106
    .local v2, "result":I
    if-nez v0, :cond_1a

    .line 107
    const-string v3, "direction didn\'t change, just return"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v2

    .line 110
    :cond_1a
    if-gez v0, :cond_25

    .line 112
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v1}, Lcom/huawei/vtproxy/ImsThinClient;->pauseImsRTPStream(I)I

    move-result v1

    .end local v2    # "result":I
    .local v1, "result":I
    goto :goto_29

    .line 115
    .end local v1    # "result":I
    .restart local v2    # "result":I
    :cond_25
    invoke-static {v0}, Lcom/huawei/vtproxy/ImsThinClient;->resumeImsRTPStream(I)I

    move-result v1

    .line 117
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :goto_29
    return v1

    .line 100
    .end local v0    # "change":I
    .end local v1    # "result":I
    :cond_2a
    :goto_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseOrResumeRTPStream direction is invalid, oldDirection:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newDirection:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, -0x1

    return v0
.end method

.method public static pauseRtpStream(I)I
    .registers 3
    .param p0, "direction"    # I

    .line 69
    invoke-static {p0}, Lcom/huawei/ims/vt/RtpController;->isInvalidDirection(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseRtpStream direction is invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtpController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, -0x1

    return v0

    .line 73
    :cond_1e
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->pauseImsRTPStream(I)I

    move-result v0

    return v0
.end method

.method public static resumeRtpStream(I)I
    .registers 3
    .param p0, "direction"    # I

    .line 83
    invoke-static {p0}, Lcom/huawei/ims/vt/RtpController;->isInvalidDirection(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeRtpStream direction is invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtpController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, -0x1

    return v0

    .line 87
    :cond_1e
    invoke-static {p0}, Lcom/huawei/vtproxy/ImsThinClient;->resumeImsRTPStream(I)I

    move-result v0

    return v0
.end method
