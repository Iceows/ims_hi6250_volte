.class public final Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;
.super Ljava/lang/Object;
.source "RspMsgPayload.java"


# instance fields
.field public nData:I

.field public final nDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public strData:Ljava/lang/String;

.field public final strDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strDatas:Ljava/util/ArrayList;

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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 72
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 73
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 74
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 73
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 77
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 79
    new-instance v5, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    invoke-direct {v5}, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;-><init>()V

    .line 80
    .local v5, "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;
    mul-int/lit8 v6, v4, 0x38

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 81
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v5    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 143
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 144
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 145
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x38

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 146
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 147
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    mul-int/lit8 v5, v2, 0x38

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 152
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 153
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 12
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 13
    return v0

    .line 15
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 16
    return v1

    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    if-eq v2, v3, :cond_2

    .line 19
    return v1

    .line 21
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    .line 22
    .local v2, "other":Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nData:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nData:I

    if-eq v3, v4, :cond_3

    .line 23
    return v1

    .line 25
    :cond_3
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 26
    return v1

    .line 28
    :cond_4
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 29
    return v1

    .line 31
    :cond_5
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strDatas:Ljava/util/ArrayList;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 32
    return v1

    .line 34
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nData:I

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    .line 41
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    .line 42
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strDatas:Ljava/util/ArrayList;

    .line 43
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 18
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 90
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nData:I

    .line 92
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 93
    .local v6, "_hidl_vec_size":I
    mul-int/lit8 v7, v6, 0x4

    int-to-long v9, v7

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v7, p3, v4

    add-long v13, v7, v2

    .line 93
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v7

    .line 97
    .local v7, "childBlob":Landroid/os/HwBlob;
    iget-object v8, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 98
    const/4 v8, 0x0

    move v9, v8

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 100
    mul-int/lit8 v10, v9, 0x4

    int-to-long v10, v10

    invoke-virtual {v7, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 101
    .local v10, "_hidl_vec_element":I
    iget-object v11, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v10    # "_hidl_vec_element":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 104
    .end local v6    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    .end local v9    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v6, 0x18

    add-long v9, p3, v6

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    .line 106
    iget-object v9, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    .line 107
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    int-to-long v11, v9

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v6, p3, v6

    add-long v15, v6, v2

    const/16 v17, 0x0

    .line 106
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 112
    const-wide/16 v6, 0x28

    add-long v9, p3, v6

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 113
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x10

    int-to-long v10, v5

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v5, p3, v6

    add-long v14, v5, v2

    const/16 v16, 0x1

    .line 113
    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 117
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 118
    move v3, v8

    .local v3, "_hidl_index_0":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 119
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 120
    .local v5, "_hidl_vec_element":Ljava/lang/String;
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    .line 122
    nop

    .line 123
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v10, v6

    .line 124
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    mul-int/lit8 v6, v3, 0x10

    add-int/2addr v6, v8

    int-to-long v6, v6

    const/16 v16, 0x0

    .line 122
    move-object/from16 v9, p1

    move-wide v14, v6

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 127
    iget-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v5    # "_hidl_vec_element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 130
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_index_0":I
    .end local v4    # "_hidl_vec_size":I
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 63
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 64
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 65
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ".nData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nData:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", .nDatas = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", .strData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", .strDatas = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    move-object v0, p0

    move-object/from16 v1, p1

    .line 157
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nData:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 159
    iget-object v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 160
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long/2addr v7, v5

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 161
    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 162
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x4

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 163
    .local v7, "childBlob":Landroid/os/HwBlob;
    move v8, v11

    .local v8, "_hidl_index_0":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 164
    mul-int/lit8 v12, v8, 0x4

    int-to-long v12, v12

    iget-object v11, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->nDatas:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v12, v13, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 163
    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    goto :goto_0

    .line 166
    .end local v8    # "_hidl_index_0":I
    :cond_0
    add-long v11, p2, v5

    add-long/2addr v11, v2

    invoke-virtual {v1, v11, v12, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 168
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "childBlob":Landroid/os/HwBlob;
    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    iget-object v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strData:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 170
    iget-object v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 171
    .restart local v4    # "_hidl_vec_size":I
    const-wide/16 v7, 0x28

    add-long v11, p2, v7

    add-long/2addr v11, v5

    invoke-virtual {v1, v11, v12, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 172
    add-long v5, p2, v7

    add-long/2addr v5, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v5, v6, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 173
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 174
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v9, "_hidl_index_0":I
    :goto_1
    move v6, v9

    .end local v9    # "_hidl_index_0":I
    .local v6, "_hidl_index_0":I
    if-ge v6, v4, :cond_1

    .line 175
    mul-int/lit8 v9, v6, 0x10

    int-to-long v9, v9

    iget-object v11, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->strDatas:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 174
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "_hidl_index_0":I
    .restart local v9    # "_hidl_index_0":I
    goto :goto_1

    .line 177
    .end local v9    # "_hidl_index_0":I
    :cond_1
    add-long v6, p2, v7

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 179
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 133
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 134
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 136
    return-void
.end method
