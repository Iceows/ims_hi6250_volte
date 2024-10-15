.class public abstract Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;
.super Landroid/os/HwBinder;
.source "IP2pTransport.java"

# interfaces
.implements Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 361
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

    .line 374
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 411
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 412
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 413
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 414
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 415
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

    .line 386
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
        -0x52t
        0x4ft
        -0x67t
        0x64t
        -0x3ft
        -0xct
        -0x5t
        0x76t
        -0x66t
        -0x71t
        0x39t
        -0x79t
        0x71t
        0x35t
        0x64t
        -0x7at
        -0x4ft
        0x58t
        0x27t
        -0x18t
        -0x2ct
        -0x6ft
        0x5dt
        0x1ft
        -0x4et
        0x31t
        0x7ft
        0x10t
        -0xbt
        0x64t
        -0x23t
        0x12t
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

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.huawei.hardware.vpeer.p2ptransport@1.0::IP2pTransport"

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

    .line 380
    const-string v0, "vendor.huawei.hardware.vpeer.p2ptransport@1.0::IP2pTransport"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 421
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 423
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

    .line 451
    const-string v0, "vendor.huawei.hardware.vpeer.p2ptransport@1.0::IP2pTransport"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_191

    const/4 v4, 0x2

    if-eq p1, v4, :cond_16d

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1b6

    goto/16 :goto_1b5

    .line 642
    :sswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v2, v3

    :cond_17
    move v0, v2

    .line 643
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_1b5

    .line 644
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 646
    goto/16 :goto_1b5

    .line 629
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_22
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_27

    move v2, v3

    .line 630
    .local v2, "_hidl_is_oneway":Z
    :cond_27
    if-eq v2, v3, :cond_31

    .line 631
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 632
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 633
    goto/16 :goto_1b5

    .line 634
    :cond_31
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->notifySyspropsChanged()V

    .line 637
    goto/16 :goto_1b5

    .line 613
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_39
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v2

    .line 614
    .local v3, "_hidl_is_oneway":Z
    :goto_3f
    if-eqz v3, :cond_49

    .line 615
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 616
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 617
    goto/16 :goto_1b5

    .line 618
    :cond_49
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 621
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 622
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 624
    goto/16 :goto_1b5

    .line 598
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_5b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_60

    goto :goto_61

    :cond_60
    move v3, v2

    .line 599
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_61
    if-eqz v3, :cond_6b

    .line 600
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 601
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 602
    goto/16 :goto_1b5

    .line 603
    :cond_6b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->ping()V

    .line 606
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 607
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 608
    goto/16 :goto_1b5

    .line 588
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v2, v3

    :cond_7e
    move v0, v2

    .line 589
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_1b5

    .line 590
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 591
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 592
    goto/16 :goto_1b5

    .line 575
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_89
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8e

    move v2, v3

    .line 576
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v2, v3, :cond_98

    .line 577
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 579
    goto/16 :goto_1b5

    .line 580
    :cond_98
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->setHALInstrumentation()V

    .line 583
    goto/16 :goto_1b5

    .line 536
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_a0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a5

    goto :goto_a6

    :cond_a5
    move v3, v2

    .line 537
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_a6
    if-eqz v3, :cond_b0

    .line 538
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 539
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 540
    goto/16 :goto_1b5

    .line 541
    :cond_b0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 544
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 546
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 548
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 549
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 550
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 551
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 552
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d7
    if-ge v5, v4, :cond_f8

    .line 554
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 555
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 557
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_f0

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_f0

    .line 561
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 562
    nop

    .line 552
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d7

    .line 558
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_f0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 565
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_f8
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 567
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 569
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 570
    goto/16 :goto_1b5

    .line 520
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_105
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10a

    goto :goto_10b

    :cond_10a
    move v3, v2

    .line 521
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_10b
    if-eqz v3, :cond_115

    .line 522
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 523
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 524
    goto/16 :goto_1b5

    .line 525
    :cond_115
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 529
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 531
    goto/16 :goto_1b5

    .line 503
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_127
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12c

    goto :goto_12d

    :cond_12c
    move v3, v2

    .line 504
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_12d
    if-eqz v3, :cond_137

    .line 505
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 506
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 507
    goto/16 :goto_1b5

    .line 508
    :cond_137
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 511
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 512
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 513
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 514
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 515
    goto/16 :goto_1b5

    .line 487
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_14d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_152

    goto :goto_153

    :cond_152
    move v3, v2

    .line 488
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_153
    if-eqz v3, :cond_15c

    .line 489
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 490
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 491
    goto :goto_1b5

    .line 492
    :cond_15c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 495
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 496
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 497
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 498
    goto :goto_1b5

    .line 470
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :cond_16d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    goto :goto_173

    :cond_172
    move v3, v2

    .line 471
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_173
    if-eqz v3, :cond_17c

    .line 472
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 474
    goto :goto_1b5

    .line 475
    :cond_17c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "devId":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 479
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->send(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 480
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 481
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 482
    goto :goto_1b5

    .line 454
    .end local v0    # "devId":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :cond_191
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_196

    goto :goto_197

    :cond_196
    move v3, v2

    .line 455
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_197
    if-eqz v3, :cond_1a0

    .line 456
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 457
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 458
    goto :goto_1b5

    .line 459
    :cond_1a0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;

    move-result-object v0

    .line 462
    .local v0, "adapter":Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->setP2pTransportAdapter(Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;)V

    .line 463
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 464
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 465
    nop

    .line 651
    .end local v0    # "adapter":Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;
    .end local v3    # "_hidl_is_oneway":Z
    :cond_1b5
    :goto_1b5
    return-void

    :sswitch_data_1b6
    .sparse-switch
        0xf43484e -> :sswitch_14d
        0xf444247 -> :sswitch_127
        0xf445343 -> :sswitch_105
        0xf485348 -> :sswitch_a0
        0xf494e54 -> :sswitch_89
        0xf4c5444 -> :sswitch_79
        0xf504e47 -> :sswitch_5b
        0xf524546 -> :sswitch_39
        0xf535953 -> :sswitch_22
        0xf555444 -> :sswitch_12
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 405
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 433
    const-string v0, "vendor.huawei.hardware.vpeer.p2ptransport@1.0::IP2pTransport"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 434
    return-object p0

    .line 436
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

    .line 440
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->registerService(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 395
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 427
    const/4 v0, 0x1

    return v0
.end method
