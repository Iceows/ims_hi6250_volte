.class public final Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;
.super Ljava/lang/Object;
.source "RILImsSuppSvcNotification.java"


# instance fields
.field public callForwardReason:I

.field public callId:I

.field public code:I

.field public index:I

.field public notificationType:I

.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->number:Ljava/lang/String;

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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 93
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 94
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 95
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 94
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 98
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 100
    new-instance v5, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;

    invoke-direct {v5}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;-><init>()V

    .line 101
    .local v5, "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;
    mul-int/lit8 v6, v4, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 102
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v5    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
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
            "Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 136
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 137
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 138
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 139
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x30

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 140
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 141
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;

    mul-int/lit8 v5, v2, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 146
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 147
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 15
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 16
    return v0

    .line 18
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 19
    return v1

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;

    if-eq v2, v3, :cond_2

    .line 22
    return v1

    .line 24
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;

    .line 25
    .local v2, "other":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->notificationType:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->notificationType:I

    if-eq v3, v4, :cond_3

    .line 26
    return v1

    .line 28
    :cond_3
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->code:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->code:I

    if-eq v3, v4, :cond_4

    .line 29
    return v1

    .line 31
    :cond_4
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callId:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callId:I

    if-eq v3, v4, :cond_5

    .line 32
    return v1

    .line 34
    :cond_5
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->index:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->index:I

    if-eq v3, v4, :cond_6

    .line 35
    return v1

    .line 37
    :cond_6
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->type:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->type:I

    if-eq v3, v4, :cond_7

    .line 38
    return v1

    .line 40
    :cond_7
    iget-object v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->number:Ljava/lang/String;

    iget-object v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 41
    return v1

    .line 43
    :cond_8
    iget v3, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callForwardReason:I

    iget v4, v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callForwardReason:I

    if-eq v3, v4, :cond_9

    .line 44
    return v1

    .line 46
    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->notificationType:I

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->code:I

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callId:I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->index:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->type:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->number:Ljava/lang/String;

    .line 57
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callForwardReason:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 51
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

    .line 111
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->notificationType:I

    .line 112
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->code:I

    .line 113
    const-wide/16 v4, 0x8

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callId:I

    .line 114
    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->index:I

    .line 115
    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->type:I

    .line 116
    const-wide/16 v4, 0x18

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->number:Ljava/lang/String;

    .line 118
    iget-object v6, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->number:Ljava/lang/String;

    .line 119
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v4, p3, v4

    add-long v12, v4, v2

    .line 118
    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 123
    const-wide/16 v2, 0x28

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callForwardReason:I

    .line 124
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 84
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 85
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 86
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ".notificationType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->notificationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .callId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .callForwardReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callForwardReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 151
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->notificationType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 152
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->code:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 153
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 154
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 155
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 156
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 157
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->callForwardReason:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 158
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 127
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 128
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 130
    return-void
.end method
