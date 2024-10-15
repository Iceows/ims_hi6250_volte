.class public abstract Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioImsResponse.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 826
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 829
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 842
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 879
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 880
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 881
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 882
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 883
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 854
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_20

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        0x2ct
        0x1ct
        0xat
        -0x43t
        -0x11t
        0x5et
        -0x67t
        -0x3t
        0xat
        0x56t
        -0x66t
        0x35t
        -0x32t
        0x69t
        0x59t
        0x6at
        0x34t
        -0x5ft
        0x3et
        -0x6bt
        -0x25t
        -0x45t
        -0x37t
        0x52t
        0x47t
        -0x27t
        -0x7bt
        -0x46t
        0x27t
        0x70t
        0x4at
        0x32t
    .end array-data

    :array_34
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsResponse"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 848
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 867
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 889
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 891
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 919
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsResponse"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_3fc

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_428

    goto/16 :goto_3fa

    .line 1387
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 1388
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_3fa

    .line 1389
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1390
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1391
    goto/16 :goto_3fa

    .line 1374
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 1375
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 1376
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1377
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1378
    goto/16 :goto_3fa

    .line 1379
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->notifySyspropsChanged()V

    .line 1382
    goto/16 :goto_3fa

    .line 1358
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 1359
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 1360
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1361
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1362
    goto/16 :goto_3fa

    .line 1363
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1366
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1367
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1368
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1369
    goto/16 :goto_3fa

    .line 1343
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 1344
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 1345
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1346
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1347
    goto/16 :goto_3fa

    .line 1348
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->ping()V

    .line 1351
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1352
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1353
    goto/16 :goto_3fa

    .line 1333
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 1334
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_3fa

    .line 1335
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1336
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1337
    goto/16 :goto_3fa

    .line 1320
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 1321
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 1322
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1324
    goto/16 :goto_3fa

    .line 1325
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->setHALInstrumentation()V

    .line 1328
    goto/16 :goto_3fa

    .line 1281
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 1282
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 1283
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1284
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1285
    goto/16 :goto_3fa

    .line 1286
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1289
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1291
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1293
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1294
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1295
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1296
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1297
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 1299
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1300
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1302
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 1306
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1307
    nop

    .line 1297
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 1303
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1310
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1312
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1314
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1315
    goto/16 :goto_3fa

    .line 1265
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 1266
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 1267
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1268
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1269
    goto/16 :goto_3fa

    .line 1270
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1273
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1274
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1276
    goto/16 :goto_3fa

    .line 1248
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 1249
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 1250
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1251
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1252
    goto/16 :goto_3fa

    .line 1253
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1256
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1257
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1258
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1259
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1260
    goto/16 :goto_3fa

    .line 1232
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 1233
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 1234
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1235
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1236
    goto/16 :goto_3fa

    .line 1237
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1240
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1241
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1242
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1243
    goto/16 :goto_3fa

    .line 1217
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_16d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    move v2, v3

    .line 1218
    .local v2, "_hidl_is_oneway":Z
    :cond_172
    if-eq v2, v3, :cond_17c

    .line 1219
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1220
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1221
    goto/16 :goto_3fa

    .line 1222
    :cond_17c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1225
    .local v0, "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1226
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->setEncryptVolteCallSwitchResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1227
    goto/16 :goto_3fa

    .line 1201
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_18c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_191

    move v2, v3

    .line 1202
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_191
    if-eq v2, v3, :cond_19b

    .line 1203
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1204
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1205
    goto/16 :goto_3fa

    .line 1206
    :cond_19b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1209
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1210
    invoke-static {p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1211
    .local v1, "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->getCurrentImsCallsResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1212
    goto/16 :goto_3fa

    .line 1186
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v1    # "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCall;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1af
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1b4

    move v2, v3

    .line 1187
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1b4
    if-eq v2, v3, :cond_1be

    .line 1188
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1190
    goto/16 :goto_3fa

    .line 1191
    :cond_1be
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1194
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1195
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->imsDialResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1196
    goto/16 :goto_3fa

    .line 1171
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1ce
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1d3

    move v2, v3

    .line 1172
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1d3
    if-eq v2, v3, :cond_1dd

    .line 1173
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1174
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1175
    goto/16 :goto_3fa

    .line 1176
    :cond_1dd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1179
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1180
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->setImsRegErrReportResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1181
    goto/16 :goto_3fa

    .line 1154
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1ed
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1f2

    move v2, v3

    .line 1155
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1f2
    if-eq v2, v3, :cond_1fc

    .line 1156
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1157
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1158
    goto/16 :goto_3fa

    .line 1159
    :cond_1fc
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1162
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1163
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;-><init>()V

    .line 1164
    .local v1, "uiccAuthRst":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1165
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->uiccAuthResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;)V

    .line 1166
    goto/16 :goto_3fa

    .line 1136
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v1    # "uiccAuthRst":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPONSE;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_214
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_219

    move v2, v3

    .line 1137
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_219
    if-eq v2, v3, :cond_223

    .line 1138
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1139
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1140
    goto/16 :goto_3fa

    .line 1141
    :cond_223
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1144
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1146
    .local v1, "msgId":I
    new-instance v3, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;

    invoke-direct {v3}, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;-><init>()V

    .line 1147
    .local v3, "payload":Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;
    invoke-virtual {v3, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1148
    invoke-virtual {p0, v0, v1, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->RspMsg(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;ILvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;)V

    .line 1149
    goto/16 :goto_3fa

    .line 1119
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v1    # "msgId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "payload":Lvendor/huawei/hardware/radio/ims/V2_0/RspMsgPayload;
    :pswitch_23f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_244

    move v2, v3

    .line 1120
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_244
    if-eq v2, v3, :cond_24e

    .line 1121
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1123
    goto/16 :goto_3fa

    .line 1124
    :cond_24e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1127
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1128
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;-><init>()V

    .line 1129
    .local v1, "failCause":Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1130
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->getLastCallFailCauseResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;)V

    .line 1131
    goto/16 :goto_3fa

    .line 1104
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v1    # "failCause":Lvendor/huawei/hardware/radio/ims/V2_0/LastCallFailCauseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_266
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26b

    move v2, v3

    .line 1105
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_26b
    if-eq v2, v3, :cond_275

    .line 1106
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1107
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1108
    goto/16 :goto_3fa

    .line 1109
    :cond_275
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1112
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1113
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->setClirResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1114
    goto/16 :goto_3fa

    .line 1089
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_285
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_28a

    move v2, v3

    .line 1090
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_28a
    if-eq v2, v3, :cond_294

    .line 1091
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1092
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1093
    goto/16 :goto_3fa

    .line 1094
    :cond_294
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1097
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1098
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->setMuteResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1099
    goto/16 :goto_3fa

    .line 1074
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2a4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a9

    move v2, v3

    .line 1075
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2a9
    if-eq v2, v3, :cond_2b3

    .line 1076
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1077
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1078
    goto/16 :goto_3fa

    .line 1079
    :cond_2b3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1082
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1083
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->stopDtmfResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1084
    goto/16 :goto_3fa

    .line 1059
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2c3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2c8

    move v2, v3

    .line 1060
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2c8
    if-eq v2, v3, :cond_2d2

    .line 1061
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1062
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1063
    goto/16 :goto_3fa

    .line 1064
    :cond_2d2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1067
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1068
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->startDtmfResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1069
    goto/16 :goto_3fa

    .line 1044
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2e2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2e7

    move v2, v3

    .line 1045
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2e7
    if-eq v2, v3, :cond_2f1

    .line 1046
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1047
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1048
    goto/16 :goto_3fa

    .line 1049
    :cond_2f1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1052
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1053
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->sendDtmfResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1054
    goto/16 :goto_3fa

    .line 1029
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_301
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_306

    move v2, v3

    .line 1030
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_306
    if-eq v2, v3, :cond_310

    .line 1031
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1033
    goto/16 :goto_3fa

    .line 1034
    :cond_310
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1037
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1038
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->rejectCallResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1039
    goto/16 :goto_3fa

    .line 1014
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_320
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_325

    move v2, v3

    .line 1015
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_325
    if-eq v2, v3, :cond_32f

    .line 1016
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1017
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1018
    goto/16 :goto_3fa

    .line 1019
    :cond_32f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1022
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1023
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->explicitCallTransferResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1024
    goto/16 :goto_3fa

    .line 999
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_33f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_344

    move v2, v3

    .line 1000
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_344
    if-eq v2, v3, :cond_34e

    .line 1001
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1002
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1003
    goto/16 :goto_3fa

    .line 1004
    :cond_34e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 1007
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1008
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->conferenceResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 1009
    goto/16 :goto_3fa

    .line 984
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_35e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_363

    move v2, v3

    .line 985
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_363
    if-eq v2, v3, :cond_36d

    .line 986
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 987
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 988
    goto/16 :goto_3fa

    .line 989
    :cond_36d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 992
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 993
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->hangupWaitingOrBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 994
    goto/16 :goto_3fa

    .line 969
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_37d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_382

    move v2, v3

    .line 970
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_382
    if-eq v2, v3, :cond_38c

    .line 971
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 972
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 973
    goto/16 :goto_3fa

    .line 974
    :cond_38c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 977
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 978
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->hangupForegroundResumeBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 979
    goto :goto_3fa

    .line 954
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_39b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3a0

    move v2, v3

    .line 955
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3a0
    if-eq v2, v3, :cond_3a9

    .line 956
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 957
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 958
    goto :goto_3fa

    .line 959
    :cond_3a9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 962
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 963
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 964
    goto :goto_3fa

    .line 937
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3b8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3bd

    move v2, v3

    .line 938
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3bd
    if-eq v2, v3, :cond_3c6

    .line 939
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 940
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 941
    goto :goto_3fa

    .line 942
    :cond_3c6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 945
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 946
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 947
    .local v1, "isRegistered":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 948
    .local v3, "ratFamily":I
    invoke-virtual {p0, v0, v1, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->getImsRegistrationStateResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;ZI)V

    .line 949
    goto :goto_3fa

    .line 922
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v1    # "isRegistered":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "ratFamily":I
    :pswitch_3dd
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3e2

    move v2, v3

    .line 923
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3e2
    if-eq v2, v3, :cond_3eb

    .line 924
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 926
    goto :goto_3fa

    .line 927
    :cond_3eb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;-><init>()V

    .line 930
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 931
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->hangupConnectionResponse(Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;)V

    .line 932
    nop

    .line 1396
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V2_0/RadioResponseInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :cond_3fa
    :goto_3fa
    return-void

    nop

    :pswitch_data_3fc
    .packed-switch 0x1
        :pswitch_3dd
        :pswitch_3b8
        :pswitch_39b
        :pswitch_37d
        :pswitch_35e
        :pswitch_33f
        :pswitch_320
        :pswitch_301
        :pswitch_2e2
        :pswitch_2c3
        :pswitch_2a4
        :pswitch_285
        :pswitch_266
        :pswitch_23f
        :pswitch_214
        :pswitch_1ed
        :pswitch_1ce
        :pswitch_1af
        :pswitch_18c
        :pswitch_16d
    .end packed-switch

    :sswitch_data_428
    .sparse-switch
        0xf43484e -> :sswitch_14b
        0xf444247 -> :sswitch_125
        0xf445343 -> :sswitch_103
        0xf485348 -> :sswitch_9e
        0xf494e54 -> :sswitch_87
        0xf4c5444 -> :sswitch_77
        0xf504e47 -> :sswitch_59
        0xf524546 -> :sswitch_37
        0xf535953 -> :sswitch_20
        0xf555444 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 873
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 901
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 902
    return-object p0

    .line 904
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 863
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 895
    const/4 v0, 0x1

    return v0
.end method
