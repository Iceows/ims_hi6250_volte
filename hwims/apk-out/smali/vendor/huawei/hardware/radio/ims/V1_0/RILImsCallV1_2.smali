.class public final Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;
.super Ljava/lang/Object;
.source "RILImsCallV1_2.java"


# instance fields
.field public als:B

.field public final callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

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

.field public state:I

.field public toa:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->number:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->name:Ljava/lang/String;

    .line 17
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumber:Ljava/lang/String;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 177
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 178
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 179
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 178
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 182
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 184
    new-instance v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;

    invoke-direct {v5}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;-><init>()V

    .line 185
    .local v5, "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;
    mul-int/lit8 v6, v4, 0x70

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 186
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v5    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 244
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 245
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 246
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 247
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x70

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 248
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 249
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;

    mul-int/lit8 v5, v2, 0x70

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 254
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 255
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 28
    return v0

    .line 30
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 31
    return v1

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;

    if-eq v2, v3, :cond_2

    .line 34
    return v1

    .line 36
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;

    .line 37
    .local v2, "other":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->state:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->state:I

    if-eq v3, v4, :cond_3

    .line 38
    return v1

    .line 40
    :cond_3
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->index:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->index:I

    if-eq v3, v4, :cond_4

    .line 41
    return v1

    .line 43
    :cond_4
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->toa:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->toa:I

    if-eq v3, v4, :cond_5

    .line 44
    return v1

    .line 46
    :cond_5
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMpty:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMpty:B

    if-eq v3, v4, :cond_6

    .line 47
    return v1

    .line 49
    :cond_6
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMT:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMT:B

    if-eq v3, v4, :cond_7

    .line 50
    return v1

    .line 52
    :cond_7
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->als:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->als:B

    if-eq v3, v4, :cond_8

    .line 53
    return v1

    .line 55
    :cond_8
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoice:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoice:B

    if-eq v3, v4, :cond_9

    .line 56
    return v1

    .line 58
    :cond_9
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoicePrivacy:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoicePrivacy:B

    if-eq v3, v4, :cond_a

    .line 59
    return v1

    .line 61
    :cond_a
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->number:Ljava/lang/String;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 62
    return v1

    .line 64
    :cond_b
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->numberPresentation:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->numberPresentation:I

    if-eq v3, v4, :cond_c

    .line 65
    return v1

    .line 67
    :cond_c
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->name:Ljava/lang/String;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 68
    return v1

    .line 70
    :cond_d
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->namePresentation:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->namePresentation:I

    if-eq v3, v4, :cond_e

    .line 71
    return v1

    .line 73
    :cond_e
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 74
    return v1

    .line 76
    :cond_f
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isECOnference:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isECOnference:I

    if-eq v3, v4, :cond_10

    .line 77
    return v1

    .line 79
    :cond_10
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->peerVideoSupport:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->peerVideoSupport:I

    if-eq v3, v4, :cond_11

    .line 80
    return v1

    .line 82
    :cond_11
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->imsDomain:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->imsDomain:I

    if-eq v3, v4, :cond_12

    .line 83
    return v1

    .line 85
    :cond_12
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumber:Ljava/lang/String;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 86
    return v1

    .line 88
    :cond_13
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberToa:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberToa:I

    if-eq v3, v4, :cond_14

    .line 89
    return v1

    .line 91
    :cond_14
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberPresentation:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberPresentation:I

    if-eq v3, v4, :cond_15

    .line 92
    return v1

    .line 94
    :cond_15
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 99
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->state:I

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->index:I

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->toa:I

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMpty:B

    .line 103
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMT:B

    .line 104
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->als:B

    .line 105
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoice:B

    .line 106
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoicePrivacy:B

    .line 107
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->number:Ljava/lang/String;

    .line 108
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->numberPresentation:I

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->name:Ljava/lang/String;

    .line 110
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->namePresentation:I

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    .line 112
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isECOnference:I

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->peerVideoSupport:I

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->imsDomain:I

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumber:Ljava/lang/String;

    .line 116
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberToa:I

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberPresentation:I

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 99
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object v0, p0

    move-object/from16 v1, p2

    .line 195
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->state:I

    .line 196
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->index:I

    .line 197
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->toa:I

    .line 198
    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMpty:B

    .line 199
    const-wide/16 v4, 0xd

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMT:B

    .line 200
    const-wide/16 v4, 0xe

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->als:B

    .line 201
    const-wide/16 v4, 0xf

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoice:B

    .line 202
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoicePrivacy:B

    .line 203
    const-wide/16 v4, 0x18

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->number:Ljava/lang/String;

    .line 205
    iget-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->number:Ljava/lang/String;

    .line 206
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 205
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 210
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->numberPresentation:I

    .line 211
    const-wide/16 v4, 0x30

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->name:Ljava/lang/String;

    .line 213
    iget-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->name:Ljava/lang/String;

    .line 214
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 213
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 218
    const-wide/16 v4, 0x40

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->namePresentation:I

    .line 219
    iget-object v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    const-wide/16 v5, 0x44

    add-long v5, p3, v5

    move-object/from16 v12, p1

    invoke-virtual {v4, v12, v1, v5, v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 220
    const-wide/16 v4, 0x4c

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isECOnference:I

    .line 221
    const-wide/16 v4, 0x50

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->peerVideoSupport:I

    .line 222
    const-wide/16 v4, 0x54

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->imsDomain:I

    .line 223
    const-wide/16 v4, 0x58

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumber:Ljava/lang/String;

    .line 225
    iget-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumber:Ljava/lang/String;

    .line 226
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long/2addr v2, v4

    .line 225
    move-object v7, v12

    move-wide v12, v2

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 230
    const-wide/16 v2, 0x68

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberToa:I

    .line 231
    const-wide/16 v2, 0x6c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberPresentation:I

    .line 232
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 168
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 169
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 170
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ".state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->state:I

    invoke-static {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", .isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMpty:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMT:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->als:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ", .isVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoice:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoicePrivacy:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", .callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", .isECOnference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isECOnference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ", .peerVideoSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->peerVideoSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, ", .imsDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->imsDomain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", .redirectNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ", .redirectNumberToa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberToa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", .redirectNumberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 259
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->state:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 260
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 261
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->toa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 262
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMpty:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 263
    const-wide/16 v0, 0xd

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isMT:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 264
    const-wide/16 v0, 0xe

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->als:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 265
    const-wide/16 v0, 0xf

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoice:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 266
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isVoicePrivacy:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 267
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 268
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 269
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 270
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->namePresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 271
    iget-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    const-wide/16 v1, 0x44

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 272
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->isECOnference:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 273
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->peerVideoSupport:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 274
    const-wide/16 v0, 0x54

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->imsDomain:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 275
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 276
    const-wide/16 v0, 0x68

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberToa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 277
    const-wide/16 v0, 0x6c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->redirectNumberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 278
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 235
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 236
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 237
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 238
    return-void
.end method
