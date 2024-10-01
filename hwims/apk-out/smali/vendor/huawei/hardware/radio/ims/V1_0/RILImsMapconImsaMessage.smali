.class public final Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;
.super Ljava/lang/Object;
.source "RILImsMapconImsaMessage.java"


# instance fields
.field public final msgContext:[B

.field public msgId:I

.field public msgLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgContext:[B

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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 65
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 66
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0xc

    int-to-long v5, v3

    .line 67
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 66
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 70
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 72
    new-instance v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;

    invoke-direct {v5}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;-><init>()V

    .line 73
    .local v5, "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;
    mul-int/lit8 v6, v4, 0xc

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v5    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 102
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 103
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 104
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 105
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0xc

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 106
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 107
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;

    mul-int/lit8 v5, v2, 0xc

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 112
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 113
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 11
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 12
    return v0

    .line 14
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 15
    return v1

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;

    if-eq v2, v3, :cond_2

    .line 18
    return v1

    .line 20
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;

    .line 21
    .local v2, "other":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgId:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgId:I

    if-eq v3, v4, :cond_3

    .line 22
    return v1

    .line 24
    :cond_3
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgLen:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgLen:I

    if-eq v3, v4, :cond_4

    .line 25
    return v1

    .line 27
    :cond_4
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgContext:[B

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgContext:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 28
    return v1

    .line 30
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgId:I

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgLen:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgContext:[B

    .line 38
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 35
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 83
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgId:I

    .line 84
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgLen:I

    .line 86
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 87
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgContext:[B

    const/4 v3, 0x4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 88
    nop

    .line 90
    .end local v0    # "_hidl_array_offset_0":J
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 56
    const-wide/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 57
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ".msgId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", .msgLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", .msgContext = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgContext:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 117
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 118
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 120
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 121
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->msgContext:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 122
    nop

    .line 124
    .end local v0    # "_hidl_array_offset_0":J
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 93
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 94
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMapconImsaMessage;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 96
    return-void
.end method
