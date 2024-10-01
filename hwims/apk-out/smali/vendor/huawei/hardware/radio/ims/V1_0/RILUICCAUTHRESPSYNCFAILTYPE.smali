.class public final Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;
.super Ljava/lang/Object;
.source "RILUICCAUTHRESPSYNCFAILTYPE.java"


# instance fields
.field public final autsData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;

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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 51
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 52
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 53
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 52
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 56
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 58
    new-instance v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    invoke-direct {v5}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;-><init>()V

    .line 59
    .local v5, "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;
    mul-int/lit8 v6, v4, 0x18

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 60
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v5    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 82
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 83
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 84
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 85
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 86
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 87
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    mul-int/lit8 v5, v2, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 92
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 93
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 9
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 10
    return v0

    .line 12
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 13
    return v1

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    if-eq v2, v3, :cond_2

    .line 16
    return v1

    .line 18
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;

    .line 19
    .local v2, "other":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 20
    return v1

    .line 22
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;

    .line 28
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 27
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 69
    iget-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 70
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 42
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 43
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 44
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ".autsData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 97
    iget-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->autsData:Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHAUTSTYPE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 98
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 73
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 74
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPSYNCFAILTYPE;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 76
    return-void
.end method
