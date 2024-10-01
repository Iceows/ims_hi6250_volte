.class public final Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;
.super Ljava/lang/Object;
.source "RilIpv4AddrInfo.java"


# instance fields
.field public final clipV4:[B

.field public final dhcpV4:[B

.field public final gateV4:[B

.field public final netmaskV4:[B

.field public final pDnsV4:[B

.field public final sDnsV4:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x4

    new-array v1, v0, [B

    iput-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->clipV4:[B

    .line 6
    new-array v1, v0, [B

    iput-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    .line 7
    new-array v1, v0, [B

    iput-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->gateV4:[B

    .line 8
    new-array v1, v0, [B

    iput-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    .line 9
    new-array v1, v0, [B

    iput-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    .line 10
    new-array v0, v0, [B

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 86
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 87
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 88
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 87
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 91
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 93
    new-instance v5, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;

    invoke-direct {v5}, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;-><init>()V

    .line 94
    .local v5, "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;
    mul-int/lit8 v6, v4, 0x18

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 146
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 147
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 148
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 149
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 150
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 151
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;

    mul-int/lit8 v5, v2, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 156
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 157
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 14
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 15
    return v0

    .line 17
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 18
    return v1

    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;

    if-eq v2, v3, :cond_2

    .line 21
    return v1

    .line 23
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;

    .line 24
    .local v2, "other":Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->clipV4:[B

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->clipV4:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 25
    return v1

    .line 27
    :cond_3
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 28
    return v1

    .line 30
    :cond_4
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->gateV4:[B

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->gateV4:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 31
    return v1

    .line 33
    :cond_5
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 34
    return v1

    .line 36
    :cond_6
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 37
    return v1

    .line 39
    :cond_7
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 40
    return v1

    .line 42
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->clipV4:[B

    .line 48
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    .line 49
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->gateV4:[B

    .line 50
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    .line 51
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    .line 52
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    .line 53
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 105
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 106
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->clipV4:[B

    const/4 v3, 0x4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 107
    nop

    .line 110
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 111
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 112
    nop

    .line 115
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 116
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->gateV4:[B

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 117
    nop

    .line 120
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 121
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 122
    nop

    .line 125
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 126
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 127
    nop

    .line 130
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 131
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 132
    nop

    .line 134
    .end local v0    # "_hidl_array_offset_0":J
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 77
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ".clipV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->clipV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", .netmaskV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", .gateV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->gateV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .dhcpV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .pDnsV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .sDnsV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 162
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 163
    .local v0, "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->clipV4:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 164
    nop

    .line 167
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 168
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->netmaskV4:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 169
    nop

    .line 172
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 173
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->gateV4:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 174
    nop

    .line 177
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 178
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->dhcpV4:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 179
    nop

    .line 182
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 183
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->pDnsV4:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 184
    nop

    .line 187
    .end local v0    # "_hidl_array_offset_0":J
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 188
    .restart local v0    # "_hidl_array_offset_0":J
    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->sDnsV4:[B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 189
    nop

    .line 191
    .end local v0    # "_hidl_array_offset_0":J
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 137
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RilIpv4AddrInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 140
    return-void
.end method
