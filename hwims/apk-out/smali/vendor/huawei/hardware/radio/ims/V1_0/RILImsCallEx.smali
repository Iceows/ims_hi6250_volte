.class public final Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;
.super Ljava/lang/Object;
.source "RILImsCallEx.java"


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

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->number:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->name:Ljava/lang/String;

    .line 17
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 156
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 157
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 158
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 157
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 161
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 163
    new-instance v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;

    invoke-direct {v5}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;-><init>()V

    .line 164
    .local v5, "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;
    mul-int/lit8 v6, v4, 0x58

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 165
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v5    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 214
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 215
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 216
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 217
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x58

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 218
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 219
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;

    mul-int/lit8 v5, v2, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 224
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 225
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 25
    return v0

    .line 27
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 28
    return v1

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;

    if-eq v2, v3, :cond_2

    .line 31
    return v1

    .line 33
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;

    .line 34
    .local v2, "other":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->state:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->state:I

    if-eq v3, v4, :cond_3

    .line 35
    return v1

    .line 37
    :cond_3
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->index:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->index:I

    if-eq v3, v4, :cond_4

    .line 38
    return v1

    .line 40
    :cond_4
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->toa:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->toa:I

    if-eq v3, v4, :cond_5

    .line 41
    return v1

    .line 43
    :cond_5
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMpty:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMpty:B

    if-eq v3, v4, :cond_6

    .line 44
    return v1

    .line 46
    :cond_6
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMT:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMT:B

    if-eq v3, v4, :cond_7

    .line 47
    return v1

    .line 49
    :cond_7
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->als:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->als:B

    if-eq v3, v4, :cond_8

    .line 50
    return v1

    .line 52
    :cond_8
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoice:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoice:B

    if-eq v3, v4, :cond_9

    .line 53
    return v1

    .line 55
    :cond_9
    iget-byte v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoicePrivacy:B

    iget-byte v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoicePrivacy:B

    if-eq v3, v4, :cond_a

    .line 56
    return v1

    .line 58
    :cond_a
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->number:Ljava/lang/String;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 59
    return v1

    .line 61
    :cond_b
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->numberPresentation:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->numberPresentation:I

    if-eq v3, v4, :cond_c

    .line 62
    return v1

    .line 64
    :cond_c
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->name:Ljava/lang/String;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 65
    return v1

    .line 67
    :cond_d
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->namePresentation:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->namePresentation:I

    if-eq v3, v4, :cond_e

    .line 68
    return v1

    .line 70
    :cond_e
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 71
    return v1

    .line 73
    :cond_f
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isECOnference:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isECOnference:I

    if-eq v3, v4, :cond_10

    .line 74
    return v1

    .line 76
    :cond_10
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->peerVideoSupport:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->peerVideoSupport:I

    if-eq v3, v4, :cond_11

    .line 77
    return v1

    .line 79
    :cond_11
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->imsDomain:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->imsDomain:I

    if-eq v3, v4, :cond_12

    .line 80
    return v1

    .line 82
    :cond_12
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 87
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->state:I

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->index:I

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->toa:I

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMpty:B

    .line 91
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMT:B

    .line 92
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->als:B

    .line 93
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoice:B

    .line 94
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoicePrivacy:B

    .line 95
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->number:Ljava/lang/String;

    .line 96
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->numberPresentation:I

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->name:Ljava/lang/String;

    .line 98
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->namePresentation:I

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    .line 100
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isECOnference:I

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->peerVideoSupport:I

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->imsDomain:I

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 87
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

    .line 174
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->state:I

    .line 175
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->index:I

    .line 176
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->toa:I

    .line 177
    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMpty:B

    .line 178
    const-wide/16 v4, 0xd

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMT:B

    .line 179
    const-wide/16 v4, 0xe

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->als:B

    .line 180
    const-wide/16 v4, 0xf

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoice:B

    .line 181
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoicePrivacy:B

    .line 182
    const-wide/16 v4, 0x18

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->number:Ljava/lang/String;

    .line 184
    iget-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->number:Ljava/lang/String;

    .line 185
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 184
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 189
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->numberPresentation:I

    .line 190
    const-wide/16 v4, 0x30

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->name:Ljava/lang/String;

    .line 192
    iget-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->name:Ljava/lang/String;

    .line 193
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 192
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 197
    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->namePresentation:I

    .line 198
    iget-object v2, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    const-wide/16 v3, 0x44

    add-long v3, p3, v3

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v1, v3, v4}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 199
    const-wide/16 v2, 0x4c

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isECOnference:I

    .line 200
    const-wide/16 v2, 0x50

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->peerVideoSupport:I

    .line 201
    const-wide/16 v2, 0x54

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->imsDomain:I

    .line 202
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 147
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 148
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 149
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ".state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->state:I

    invoke-static {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", .isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMpty:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMT:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->als:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", .isVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoice:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-byte v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoicePrivacy:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", .callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", .isECOnference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isECOnference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", .peerVideoSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->peerVideoSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", .imsDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->imsDomain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 229
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->state:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 230
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 231
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->toa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 232
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMpty:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 233
    const-wide/16 v0, 0xd

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isMT:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 234
    const-wide/16 v0, 0xe

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->als:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 235
    const-wide/16 v0, 0xf

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoice:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 236
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-byte v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isVoicePrivacy:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 237
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 238
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 239
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 240
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->namePresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 241
    iget-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->callDetails:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;

    const-wide/16 v1, 0x44

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 242
    const-wide/16 v0, 0x4c

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->isECOnference:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 243
    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->peerVideoSupport:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 244
    const-wide/16 v0, 0x54

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->imsDomain:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 245
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 205
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 206
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 207
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 208
    return-void
.end method
