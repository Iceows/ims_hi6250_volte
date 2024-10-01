.class public final Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;
.super Ljava/lang/Object;
.source "RILImsServiceStatus.java"


# instance fields
.field public final acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

.field public callType:I

.field public isValid:I

.field public nAcctechstatus:I

.field public srvStatus:I

.field public final userData:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;>;"
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
    mul-int/lit8 v3, v2, 0x40

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
    new-instance v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    invoke-direct {v5}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;-><init>()V

    .line 94
    .local v5, "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;
    mul-int/lit8 v6, v4, 0x40

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;
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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 129
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 130
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 131
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 132
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x40

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 133
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 134
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    mul-int/lit8 v5, v2, 0x40

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 139
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 140
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

    const-class v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    if-eq v2, v3, :cond_2

    .line 21
    return v1

    .line 23
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;

    .line 24
    .local v2, "other":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->isValid:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->isValid:I

    if-eq v3, v4, :cond_3

    .line 25
    return v1

    .line 27
    :cond_3
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->callType:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->callType:I

    if-eq v3, v4, :cond_4

    .line 28
    return v1

    .line 30
    :cond_4
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->srvStatus:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->srvStatus:I

    if-eq v3, v4, :cond_5

    .line 31
    return v1

    .line 33
    :cond_5
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 34
    return v1

    .line 36
    :cond_6
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    if-eq v3, v4, :cond_7

    .line 37
    return v1

    .line 39
    :cond_7
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

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

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->isValid:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->callType:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->srvStatus:I

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;

    .line 51
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

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
    .locals 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 104
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->isValid:I

    .line 105
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->callType:I

    .line 106
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->srvStatus:I

    .line 107
    iget-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;

    const-wide/16 v1, 0x10

    add-long v3, p3, v1

    invoke-virtual {v0, p1, p2, v3, v4}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
    const-wide/16 v3, 0x28

    add-long/2addr v3, p3

    invoke-virtual {p2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    .line 110
    const-wide/16 v3, 0x2c

    add-long/2addr v3, p3

    .line 111
    .local v3, "_hidl_array_offset_0":J
    const/4 v0, 0x0

    .local v0, "_hidl_index_0_0":I
    :goto_0
    const/4 v5, 0x1

    if-ge v0, v5, :cond_0

    .line 112
    iget-object v5, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

    new-instance v6, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

    invoke-direct {v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;-><init>()V

    aput-object v6, v5, v0

    .line 113
    iget-object v5, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

    aget-object v5, v5, v0

    invoke-virtual {v5, p1, p2, v3, v4}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 114
    add-long/2addr v3, v1

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "_hidl_index_0_0":I
    .end local v3    # "_hidl_array_offset_0":J
    :cond_0
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 77
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 78
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
    const-string v1, ".isValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->isValid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", .callType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->callType:I

    invoke-static {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", .srvStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->srvStatus:I

    invoke-static {v1}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .userData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .nAcctechstatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ", .acctechstatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

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
    .locals 6
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 144
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->isValid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 145
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->callType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 146
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->srvStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 147
    iget-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->userData:Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;

    const-wide/16 v1, 0x10

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsUserData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 148
    const-wide/16 v3, 0x28

    add-long/2addr v3, p2

    iget v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->nAcctechstatus:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 150
    const-wide/16 v3, 0x2c

    add-long/2addr v3, p2

    .line 151
    .local v3, "_hidl_array_offset_0":J
    const/4 v0, 0x0

    .local v0, "_hidl_index_0_0":I
    :goto_0
    const/4 v5, 0x1

    if-ge v0, v5, :cond_0

    .line 152
    iget-object v5, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->acctechstatus:[Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;

    aget-object v5, v5, v0

    invoke-virtual {v5, p1, v3, v4}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsStatusForAccTech;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 153
    add-long/2addr v3, v1

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "_hidl_index_0_0":I
    .end local v3    # "_hidl_array_offset_0":J
    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 120
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 121
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsServiceStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 123
    return-void
.end method
