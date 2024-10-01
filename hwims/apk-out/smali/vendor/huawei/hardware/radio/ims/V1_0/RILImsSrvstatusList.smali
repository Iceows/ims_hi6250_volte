.class public final Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;
.super Ljava/lang/Object;
.source "RILImsSrvstatusList.java"


# instance fields
.field public nSrvstatusinfo:I

.field public final srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 58
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 59
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x108

    int-to-long v5, v3

    .line 60
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 59
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 63
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 65
    new-instance v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;

    invoke-direct {v5}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;-><init>()V

    .line 66
    .local v5, "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;
    mul-int/lit16 v6, v4, 0x108

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 67
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v5    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 97
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 98
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 99
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 100
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit16 v4, v1, 0x108

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 101
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 102
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;

    mul-int/lit16 v5, v2, 0x108

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 107
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 108
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 10
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 11
    return v0

    .line 13
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 14
    return v1

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;

    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 19
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;

    .line 20
    .local v2, "other":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->nSrvstatusinfo:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->nSrvstatusinfo:I

    if-eq v3, v4, :cond_3

    .line 21
    return v1

    .line 23
    :cond_3
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 24
    return v1

    .line 26
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->nSrvstatusinfo:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    .line 33
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 76
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->nSrvstatusinfo:I

    .line 78
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 79
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 80
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    new-instance v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    invoke-direct {v4}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;-><init>()V

    aput-object v4, v3, v2

    .line 81
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v0, v1}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 82
    const-wide/16 v3, 0x40

    add-long/2addr v0, v3

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_index_0_0":I
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 49
    const-wide/16 v0, 0x108

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 50
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 51
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ".nSrvstatusinfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->nSrvstatusinfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", .srvstatusinfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 5
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 112
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->nSrvstatusinfo:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 114
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 115
    .local v0, "_hidl_array_offset_0":J
    const/4 v2, 0x0

    .local v2, "_hidl_index_0_0":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 116
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->srvstatusinfo:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, v0, v1}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 117
    const-wide/16 v3, 0x40

    add-long/2addr v0, v3

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "_hidl_array_offset_0":J
    .end local v2    # "_hidl_index_0_0":I
    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 88
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x108

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 89
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 91
    return-void
.end method
