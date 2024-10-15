.class public final Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;
.super Ljava/lang/Object;
.source "RILImsCall.java"


# instance fields
.field public als:B

.field public callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

.field public cps:I

.field public encryptState:I

.field public imsDomain:I

.field public index:I

.field public isECOnference:I

.field public isMT:B

.field public isMpty:B

.field public isVoice:B

.field public isVoicePrivacy:B

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public peerVideoSupport:I

.field public redirectNumber:Ljava/lang/String;

.field public redirectNumberPresentation:I

.field public redirectNumberToa:I

.field public rttChannelId:I

.field public rttState:I

.field public state:I

.field public toa:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->number:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->name:Ljava/lang/String;

    .line 17
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumber:Ljava/lang/String;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 205
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 206
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x88

    int-to-long v5, v3

    .line 207
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 206
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 210
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_24
    if-ge v4, v2, :cond_37

    .line 212
    new-instance v5, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;

    invoke-direct {v5}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;-><init>()V

    .line 213
    .local v5, "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;
    mul-int/lit16 v6, v4, 0x88

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 214
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v5    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 218
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;",
            ">;)V"
        }
    .end annotation

    .line 274
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 276
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 277
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 278
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 279
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x88

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 280
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 281
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;

    mul-int/lit16 v5, v3, 0x88

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 283
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 286
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 287
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 31
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 32
    return v0

    .line 34
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 35
    return v1

    .line 37
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;

    if-eq v2, v3, :cond_11

    .line 38
    return v1

    .line 40
    :cond_11
    move-object v2, p1

    check-cast v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;

    .line 41
    .local v2, "other":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->state:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->state:I

    if-eq v3, v4, :cond_1b

    .line 42
    return v1

    .line 44
    :cond_1b
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->index:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->index:I

    if-eq v3, v4, :cond_22

    .line 45
    return v1

    .line 47
    :cond_22
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->toa:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->toa:I

    if-eq v3, v4, :cond_29

    .line 48
    return v1

    .line 50
    :cond_29
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMpty:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMpty:B

    if-eq v3, v4, :cond_30

    .line 51
    return v1

    .line 53
    :cond_30
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMT:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMT:B

    if-eq v3, v4, :cond_37

    .line 54
    return v1

    .line 56
    :cond_37
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->als:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->als:B

    if-eq v3, v4, :cond_3e

    .line 57
    return v1

    .line 59
    :cond_3e
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoice:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoice:B

    if-eq v3, v4, :cond_45

    .line 60
    return v1

    .line 62
    :cond_45
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoicePrivacy:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoicePrivacy:B

    if-eq v3, v4, :cond_4c

    .line 63
    return v1

    .line 65
    :cond_4c
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->number:Ljava/lang/String;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 66
    return v1

    .line 68
    :cond_57
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->numberPresentation:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->numberPresentation:I

    if-eq v3, v4, :cond_5e

    .line 69
    return v1

    .line 71
    :cond_5e
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->name:Ljava/lang/String;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 72
    return v1

    .line 74
    :cond_69
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->namePresentation:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->namePresentation:I

    if-eq v3, v4, :cond_70

    .line 75
    return v1

    .line 77
    :cond_70
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 78
    return v1

    .line 80
    :cond_7b
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isECOnference:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isECOnference:I

    if-eq v3, v4, :cond_82

    .line 81
    return v1

    .line 83
    :cond_82
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->peerVideoSupport:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->peerVideoSupport:I

    if-eq v3, v4, :cond_89

    .line 84
    return v1

    .line 86
    :cond_89
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->imsDomain:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->imsDomain:I

    if-eq v3, v4, :cond_90

    .line 87
    return v1

    .line 89
    :cond_90
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttState:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttState:I

    if-eq v3, v4, :cond_97

    .line 90
    return v1

    .line 92
    :cond_97
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttChannelId:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttChannelId:I

    if-eq v3, v4, :cond_9e

    .line 93
    return v1

    .line 95
    :cond_9e
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->cps:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->cps:I

    if-eq v3, v4, :cond_a5

    .line 96
    return v1

    .line 98
    :cond_a5
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumber:Ljava/lang/String;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 99
    return v1

    .line 101
    :cond_b0
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberToa:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberToa:I

    if-eq v3, v4, :cond_b7

    .line 102
    return v1

    .line 104
    :cond_b7
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberPresentation:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberPresentation:I

    if-eq v3, v4, :cond_be

    .line 105
    return v1

    .line 107
    :cond_be
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->encryptState:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->encryptState:I

    if-eq v3, v4, :cond_c5

    .line 108
    return v1

    .line 110
    :cond_c5
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 115
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->state:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->index:I

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->toa:I

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMpty:B

    .line 119
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMT:B

    .line 120
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->als:B

    .line 121
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoice:B

    .line 122
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoicePrivacy:B

    .line 123
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->number:Ljava/lang/String;

    .line 124
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->numberPresentation:I

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->name:Ljava/lang/String;

    .line 126
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->namePresentation:I

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    .line 128
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isECOnference:I

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->peerVideoSupport:I

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->imsDomain:I

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttState:I

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttChannelId:I

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->cps:I

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumber:Ljava/lang/String;

    .line 135
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberToa:I

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberPresentation:I

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->encryptState:I

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 115
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->state:I

    .line 224
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->index:I

    .line 225
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->toa:I

    .line 226
    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMpty:B

    .line 227
    const-wide/16 v4, 0xd

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMT:B

    .line 228
    const-wide/16 v4, 0xe

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->als:B

    .line 229
    const-wide/16 v4, 0xf

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoice:B

    .line 230
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoicePrivacy:B

    .line 231
    const-wide/16 v4, 0x18

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->number:Ljava/lang/String;

    .line 233
    iget-object v6, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->number:Ljava/lang/String;

    .line 234
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 233
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 238
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->numberPresentation:I

    .line 239
    const-wide/16 v4, 0x30

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->name:Ljava/lang/String;

    .line 241
    iget-object v6, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->name:Ljava/lang/String;

    .line 242
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 241
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 246
    const-wide/16 v4, 0x40

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->namePresentation:I

    .line 247
    iget-object v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    const-wide/16 v5, 0x44

    add-long v5, p3, v5

    move-object/from16 v15, p1

    invoke-virtual {v4, v15, v1, v5, v6}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 248
    const-wide/16 v4, 0x4c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isECOnference:I

    .line 249
    const-wide/16 v4, 0x50

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->peerVideoSupport:I

    .line 250
    const-wide/16 v4, 0x54

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->imsDomain:I

    .line 251
    const-wide/16 v4, 0x58

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttState:I

    .line 252
    const-wide/16 v4, 0x5c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttChannelId:I

    .line 253
    const-wide/16 v4, 0x60

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->cps:I

    .line 254
    const-wide/16 v4, 0x68

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumber:Ljava/lang/String;

    .line 256
    iget-object v6, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumber:Ljava/lang/String;

    .line 257
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 256
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 261
    const-wide/16 v2, 0x78

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberToa:I

    .line 262
    const-wide/16 v2, 0x7c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberPresentation:I

    .line 263
    const-wide/16 v2, 0x80

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->encryptState:I

    .line 264
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 196
    const-wide/16 v0, 0x88

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 197
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 198
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ".state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->state:I

    invoke-static {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", .isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMpty:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMT:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->als:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", .isVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoice:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoicePrivacy:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ", .callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", .isECOnference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isECOnference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", .peerVideoSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->peerVideoSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, ", .imsDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->imsDomain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ", .rttState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ", .rttChannelId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttChannelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", .cps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->cps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", .redirectNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", .redirectNumberToa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberToa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", .redirectNumberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", .encryptState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->encryptState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 291
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->state:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 292
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 293
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->toa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 294
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMpty:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 295
    const-wide/16 v0, 0xd

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isMT:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 296
    const-wide/16 v0, 0xe

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->als:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 297
    const-wide/16 v0, 0xf

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoice:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 298
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isVoicePrivacy:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 299
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 300
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 301
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 302
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->namePresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 303
    iget-object v0, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->callDetails:Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;

    const-wide/16 v1, 0x44

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 304
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->isECOnference:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 305
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->peerVideoSupport:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 306
    const-wide/16 v0, 0x54

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->imsDomain:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 307
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 308
    const-wide/16 v0, 0x5c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->rttChannelId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 309
    const-wide/16 v0, 0x60

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->cps:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 310
    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 311
    const-wide/16 v0, 0x78

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberToa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 312
    const-wide/16 v0, 0x7c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->redirectNumberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 313
    const-wide/16 v0, 0x80

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->encryptState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 314
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 267
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x88

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 268
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 270
    return-void
.end method
