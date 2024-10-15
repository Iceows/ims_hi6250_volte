.class public abstract Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIms.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1689
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1692
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

    .line 1705
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1742
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1743
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1744
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1745
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1746
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

    .line 1717
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
        -0x75t
        -0x57t
        0x71t
        -0x13t
        -0x52t
        -0x27t
        -0x5et
        -0x47t
        -0x3ft
        0x8t
        -0x5ct
        -0x25t
        -0x3at
        -0x26t
        -0x5bt
        0xct
        0x2bt
        -0x4ft
        -0x7dt
        -0x27t
        -0x13t
        -0x28t
        0x4at
        -0x1t
        0x7et
        -0x66t
        0x2t
        -0x5t
        -0x54t
        -0x17t
        0x7et
        -0x76t
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

    .line 1697
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.huawei.hardware.radio.ims@2.0::IRadioIms"

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

    .line 1711
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioIms"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1730
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1752
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1754
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

    .line 1782
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioIms"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_7aa

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_816

    goto/16 :goto_7a9

    .line 2716
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 2717
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_7a9

    .line 2718
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2719
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2720
    goto/16 :goto_7a9

    .line 2703
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 2704
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 2705
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2706
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2707
    goto/16 :goto_7a9

    .line 2708
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2710
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->notifySyspropsChanged()V

    .line 2711
    goto/16 :goto_7a9

    .line 2687
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 2688
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 2689
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2690
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2691
    goto/16 :goto_7a9

    .line 2692
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2694
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2695
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2696
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2697
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2698
    goto/16 :goto_7a9

    .line 2672
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 2673
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 2674
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2675
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2676
    goto/16 :goto_7a9

    .line 2677
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2679
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->ping()V

    .line 2680
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2681
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2682
    goto/16 :goto_7a9

    .line 2662
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 2663
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_7a9

    .line 2664
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2665
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2666
    goto/16 :goto_7a9

    .line 2649
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 2650
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 2651
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2652
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2653
    goto/16 :goto_7a9

    .line 2654
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2656
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setHALInstrumentation()V

    .line 2657
    goto/16 :goto_7a9

    .line 2610
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 2611
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 2612
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2613
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2614
    goto/16 :goto_7a9

    .line 2615
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2618
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2620
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2622
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2623
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2624
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2625
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 2626
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 2628
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 2629
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 2631
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 2635
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2636
    nop

    .line 2626
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 2632
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2639
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2641
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2643
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2644
    goto/16 :goto_7a9

    .line 2594
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 2595
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 2596
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2597
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2598
    goto/16 :goto_7a9

    .line 2599
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2602
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2603
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2605
    goto/16 :goto_7a9

    .line 2577
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 2578
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 2579
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2580
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2581
    goto/16 :goto_7a9

    .line 2582
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2584
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2585
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2586
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2587
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2589
    goto/16 :goto_7a9

    .line 2561
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 2562
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 2563
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2564
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2565
    goto/16 :goto_7a9

    .line 2566
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2568
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2569
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2570
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2572
    goto/16 :goto_7a9

    .line 2544
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_16d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    move v2, v3

    .line 2545
    .local v2, "_hidl_is_oneway":Z
    :cond_172
    if-eq v2, v3, :cond_17c

    .line 2546
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2548
    goto/16 :goto_7a9

    .line 2549
    :cond_17c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2552
    .local v0, "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2553
    .local v1, "msgId":I
    new-instance v3, Lvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;

    invoke-direct {v3}, Lvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;-><init>()V

    .line 2554
    .local v3, "payload":Lvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;
    invoke-virtual {v3, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2555
    invoke-virtual {p0, v0, v1, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->imsRequest(IILvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;)V

    .line 2556
    goto/16 :goto_7a9

    .line 2529
    .end local v0    # "serial":I
    .end local v1    # "msgId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "payload":Lvendor/huawei/hardware/radio/ims/V2_0/RequestPayload;
    :pswitch_194
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_199

    move v2, v3

    .line 2530
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_199
    if-eq v2, v3, :cond_1a3

    .line 2531
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2532
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2533
    goto/16 :goto_7a9

    .line 2534
    :cond_1a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2537
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2538
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setEncryptVolteCallSwitch(II)V

    .line 2539
    goto/16 :goto_7a9

    .line 2515
    .end local v0    # "serial":I
    .end local v1    # "status":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1b3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1b8

    move v2, v3

    .line 2516
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1b8
    if-eq v2, v3, :cond_1c2

    .line 2517
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2519
    goto/16 :goto_7a9

    .line 2520
    :cond_1c2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2523
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getCurrentImsCalls(I)V

    .line 2524
    goto/16 :goto_7a9

    .line 2499
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1ce
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1d3

    move v2, v3

    .line 2500
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1d3
    if-eq v2, v3, :cond_1dd

    .line 2501
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2502
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2503
    goto/16 :goto_7a9

    .line 2504
    :cond_1dd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2506
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2507
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;-><init>()V

    .line 2508
    .local v1, "dialInfo":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2509
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->imsDial(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;)V

    .line 2510
    goto/16 :goto_7a9

    .line 2484
    .end local v0    # "serial":I
    .end local v1    # "dialInfo":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsDial;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1f1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1f6

    move v2, v3

    .line 2485
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1f6
    if-eq v2, v3, :cond_200

    .line 2486
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2488
    goto/16 :goto_7a9

    .line 2489
    :cond_200
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2492
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2493
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setImsRegErrReport(II)V

    .line 2494
    goto/16 :goto_7a9

    .line 2470
    .end local v0    # "serial":I
    .end local v1    # "status":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_210
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_215

    move v2, v3

    .line 2471
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_215
    if-eq v2, v3, :cond_21f

    .line 2472
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2474
    goto/16 :goto_7a9

    .line 2475
    :cond_21f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2478
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getImsSmsConfig(I)V

    .line 2479
    goto/16 :goto_7a9

    .line 2455
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_22b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_230

    move v2, v3

    .line 2456
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_230
    if-eq v2, v3, :cond_23a

    .line 2457
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2458
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2459
    goto/16 :goto_7a9

    .line 2460
    :cond_23a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2463
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2464
    .local v1, "config":I
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setImsSmsConfig(II)V

    .line 2465
    goto/16 :goto_7a9

    .line 2440
    .end local v0    # "serial":I
    .end local v1    # "config":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_24a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_24f

    move v2, v3

    .line 2441
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_24f
    if-eq v2, v3, :cond_259

    .line 2442
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2443
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2444
    goto/16 :goto_7a9

    .line 2445
    :cond_259
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2447
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2448
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2449
    .local v1, "callIndex":I
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->cancelImsVideoCall(II)V

    .line 2450
    goto/16 :goto_7a9

    .line 2426
    .end local v0    # "serial":I
    .end local v1    # "callIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_269
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26e

    move v2, v3

    .line 2427
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_26e
    if-eq v2, v3, :cond_278

    .line 2428
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2429
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2430
    goto/16 :goto_7a9

    .line 2431
    :cond_278
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2433
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2434
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getVolteDomain(I)V

    .line 2435
    goto/16 :goto_7a9

    .line 2412
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_284
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_289

    move v2, v3

    .line 2413
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_289
    if-eq v2, v3, :cond_293

    .line 2414
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2415
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2416
    goto/16 :goto_7a9

    .line 2417
    :cond_293
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2419
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2420
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getVolteImpi(I)V

    .line 2421
    goto/16 :goto_7a9

    .line 2397
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_29f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a4

    move v2, v3

    .line 2398
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2a4
    if-eq v2, v3, :cond_2ae

    .line 2399
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2400
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2401
    goto/16 :goto_7a9

    .line 2402
    :cond_2ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2404
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2405
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2406
    .local v1, "callType":I
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->switchImsWaitingOrHoldingAndActiveWithType(II)V

    .line 2407
    goto/16 :goto_7a9

    .line 2382
    .end local v0    # "serial":I
    .end local v1    # "callType":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2be
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2c3

    move v2, v3

    .line 2383
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2c3
    if-eq v2, v3, :cond_2cd

    .line 2384
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2385
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2386
    goto/16 :goto_7a9

    .line 2387
    :cond_2cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2390
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2391
    .local v1, "wifiAid":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setWifiEmergencyAid(ILjava/lang/String;)V

    .line 2392
    goto/16 :goto_7a9

    .line 2366
    .end local v0    # "serial":I
    .end local v1    # "wifiAid":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2dd
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2e2

    move v2, v3

    .line 2367
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2e2
    if-eq v2, v3, :cond_2ec

    .line 2368
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2369
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2370
    goto/16 :goto_7a9

    .line 2371
    :cond_2ec
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2374
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2375
    .local v1, "capabilityType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2376
    .local v3, "capabilitySwitch":I
    invoke-virtual {p0, v0, v1, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setImsvtCapability(III)V

    .line 2377
    goto/16 :goto_7a9

    .line 2351
    .end local v0    # "serial":I
    .end local v1    # "capabilityType":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "capabilitySwitch":I
    :pswitch_300
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_305

    move v2, v3

    .line 2352
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_305
    if-eq v2, v3, :cond_30f

    .line 2353
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2354
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2355
    goto/16 :goto_7a9

    .line 2356
    :cond_30f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2359
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2360
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->informBatteryStatus(II)V

    .line 2361
    goto/16 :goto_7a9

    .line 2337
    .end local v0    # "serial":I
    .end local v1    # "status":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_31f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_324

    move v2, v3

    .line 2338
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_324
    if-eq v2, v3, :cond_32e

    .line 2339
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2340
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2341
    goto/16 :goto_7a9

    .line 2342
    :cond_32e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2345
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getDmUser(I)V

    .line 2346
    goto/16 :goto_7a9

    .line 2323
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_33a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_33f

    move v2, v3

    .line 2324
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_33f
    if-eq v2, v3, :cond_349

    .line 2325
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2326
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2327
    goto/16 :goto_7a9

    .line 2328
    :cond_349
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2331
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getSmsPsi(I)V

    .line 2332
    goto/16 :goto_7a9

    .line 2309
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_355
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_35a

    move v2, v3

    .line 2310
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_35a
    if-eq v2, v3, :cond_364

    .line 2311
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2312
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2313
    goto/16 :goto_7a9

    .line 2314
    :cond_364
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2316
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2317
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getDmTimer(I)V

    .line 2318
    goto/16 :goto_7a9

    .line 2295
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_370
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_375

    move v2, v3

    .line 2296
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_375
    if-eq v2, v3, :cond_37f

    .line 2297
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2298
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2299
    goto/16 :goto_7a9

    .line 2300
    :cond_37f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2303
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getDmDynamicPram(I)V

    .line 2304
    goto/16 :goto_7a9

    .line 2281
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_38b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_390

    move v2, v3

    .line 2282
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_390
    if-eq v2, v3, :cond_39a

    .line 2283
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2284
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2285
    goto/16 :goto_7a9

    .line 2286
    :cond_39a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2289
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getDmPcscf(I)V

    .line 2290
    goto/16 :goto_7a9

    .line 2266
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3a6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3ab

    move v2, v3

    .line 2267
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3ab
    if-eq v2, v3, :cond_3b5

    .line 2268
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2269
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2270
    goto/16 :goto_7a9

    .line 2271
    :cond_3b5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2274
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2275
    .local v1, "smsPsi":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setDmSmsPsi(ILjava/lang/String;)V

    .line 2276
    goto/16 :goto_7a9

    .line 2251
    .end local v0    # "serial":I
    .end local v1    # "smsPsi":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3c5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3ca

    move v2, v3

    .line 2252
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3ca
    if-eq v2, v3, :cond_3d4

    .line 2253
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2254
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2255
    goto/16 :goto_7a9

    .line 2256
    :cond_3d4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2259
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2260
    .local v1, "timer":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setDmTimer(ILjava/lang/String;)V

    .line 2261
    goto/16 :goto_7a9

    .line 2236
    .end local v0    # "serial":I
    .end local v1    # "timer":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_3e4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3e9

    move v2, v3

    .line 2237
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_3e9
    if-eq v2, v3, :cond_3f3

    .line 2238
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2239
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2240
    goto/16 :goto_7a9

    .line 2241
    :cond_3f3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2243
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2244
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2245
    .local v1, "dynamicPram":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setDmDynamicPram(ILjava/lang/String;)V

    .line 2246
    goto/16 :goto_7a9

    .line 2221
    .end local v0    # "serial":I
    .end local v1    # "dynamicPram":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_403
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_408

    move v2, v3

    .line 2222
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_408
    if-eq v2, v3, :cond_412

    .line 2223
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2224
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2225
    goto/16 :goto_7a9

    .line 2226
    :cond_412
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2228
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2229
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2230
    .local v1, "pcscf":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setDmPcscf(ILjava/lang/String;)V

    .line 2231
    goto/16 :goto_7a9

    .line 2205
    .end local v0    # "serial":I
    .end local v1    # "pcscf":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_422
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_427

    move v2, v3

    .line 2206
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_427
    if-eq v2, v3, :cond_431

    .line 2207
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2209
    goto/16 :goto_7a9

    .line 2210
    :cond_431
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2212
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2213
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2214
    .local v1, "state":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2215
    .local v3, "threshhold":I
    invoke-virtual {p0, v0, v1, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setVtLlteQualityRptCfg(III)V

    .line 2216
    goto/16 :goto_7a9

    .line 2189
    .end local v0    # "serial":I
    .end local v1    # "state":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "threshhold":I
    :pswitch_445
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_44a

    move v2, v3

    .line 2190
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_44a
    if-eq v2, v3, :cond_454

    .line 2191
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2192
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2193
    goto/16 :goto_7a9

    .line 2194
    :cond_454
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2197
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCKSNAFAUTH;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCKSNAFAUTH;-><init>()V

    .line 2198
    .local v1, "ksNafAuthParam":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCKSNAFAUTH;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCKSNAFAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2199
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->uiccKsNafAuth(ILvendor/huawei/hardware/radio/ims/V2_0/RILUICCKSNAFAUTH;)V

    .line 2200
    goto/16 :goto_7a9

    .line 2173
    .end local v0    # "serial":I
    .end local v1    # "ksNafAuthParam":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCKSNAFAUTH;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_468
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_46d

    move v2, v3

    .line 2174
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_46d
    if-eq v2, v3, :cond_477

    .line 2175
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2176
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2177
    goto/16 :goto_7a9

    .line 2178
    :cond_477
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2180
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2181
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2182
    .local v1, "uiccType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2183
    .local v3, "fileId":I
    invoke-virtual {p0, v0, v1, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getUiccFile(III)V

    .line 2184
    goto/16 :goto_7a9

    .line 2157
    .end local v0    # "serial":I
    .end local v1    # "uiccType":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "fileId":I
    :pswitch_48b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_490

    move v2, v3

    .line 2158
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_490
    if-eq v2, v3, :cond_49a

    .line 2159
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2160
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2161
    goto/16 :goto_7a9

    .line 2162
    :cond_49a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2165
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;-><init>()V

    .line 2166
    .local v1, "uiccUpdateParam":Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2167
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->updateUiccFile(ILvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;)V

    .line 2168
    goto/16 :goto_7a9

    .line 2141
    .end local v0    # "serial":I
    .end local v1    # "uiccUpdateParam":Lvendor/huawei/hardware/radio/ims/V2_0/RILCURSMUPDATEFILE;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4ae
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4b3

    move v2, v3

    .line 2142
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4b3
    if-eq v2, v3, :cond_4bd

    .line 2143
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2145
    goto/16 :goto_7a9

    .line 2146
    :cond_4bd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2148
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2149
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;-><init>()V

    .line 2150
    .local v1, "gbaParam":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2151
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->uiccGbaBootStrap(ILvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;)V

    .line 2152
    goto/16 :goto_7a9

    .line 2125
    .end local v0    # "serial":I
    .end local v1    # "gbaParam":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4d1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4d6

    move v2, v3

    .line 2126
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4d6
    if-eq v2, v3, :cond_4e0

    .line 2127
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2129
    goto/16 :goto_7a9

    .line 2130
    :cond_4e0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2133
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;-><init>()V

    .line 2134
    .local v1, "uiccAuthParam":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2135
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->uiccAuth(ILvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;)V

    .line 2136
    goto/16 :goto_7a9

    .line 2109
    .end local v0    # "serial":I
    .end local v1    # "uiccAuthParam":Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTH;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_4f4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_4f9

    move v2, v3

    .line 2110
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_4f9
    if-eq v2, v3, :cond_503

    .line 2111
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2113
    goto/16 :goto_7a9

    .line 2114
    :cond_503
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2117
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2118
    .local v1, "callIndex":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2119
    .local v3, "cause":I
    invoke-virtual {p0, v0, v1, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->rejectCallWithReason(III)V

    .line 2120
    goto/16 :goto_7a9

    .line 2093
    .end local v0    # "serial":I
    .end local v1    # "callIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "cause":I
    :pswitch_517
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_51c

    move v2, v3

    .line 2094
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_51c
    if-eq v2, v3, :cond_526

    .line 2095
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2096
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2097
    goto/16 :goto_7a9

    .line 2098
    :cond_526
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2101
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;-><init>()V

    .line 2102
    .local v1, "callModifyInfo":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2103
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->modifyImsCallConfirm(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;)V

    .line 2104
    goto/16 :goto_7a9

    .line 2077
    .end local v0    # "serial":I
    .end local v1    # "callModifyInfo":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_53a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_53f

    move v2, v3

    .line 2078
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_53f
    if-eq v2, v3, :cond_549

    .line 2079
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2081
    goto/16 :goto_7a9

    .line 2082
    :cond_549
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2085
    .restart local v0    # "serial":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;-><init>()V

    .line 2086
    .restart local v1    # "callModifyInfo":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2087
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->modifyImsCallInitiate(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;)V

    .line 2088
    goto/16 :goto_7a9

    .line 2061
    .end local v0    # "serial":I
    .end local v1    # "callModifyInfo":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_55d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_562

    move v2, v3

    .line 2062
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_562
    if-eq v2, v3, :cond_56c

    .line 2063
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2064
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2065
    goto/16 :goto_7a9

    .line 2066
    :cond_56c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2069
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 2070
    .local v1, "isActive":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 2071
    .local v3, "serviceClass":I
    invoke-virtual {p0, v0, v1, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setImsCallWaiting(IZI)V

    .line 2072
    goto/16 :goto_7a9

    .line 2046
    .end local v0    # "serial":I
    .end local v1    # "isActive":Z
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "serviceClass":I
    :pswitch_580
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_585

    move v2, v3

    .line 2047
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_585
    if-eq v2, v3, :cond_58f

    .line 2048
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2049
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2050
    goto/16 :goto_7a9

    .line 2051
    :cond_58f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2054
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2055
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->addImsConfMember(ILjava/lang/String;)V

    .line 2056
    goto/16 :goto_7a9

    .line 2031
    .end local v0    # "serial":I
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_59f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5a4

    move v2, v3

    .line 2032
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5a4
    if-eq v2, v3, :cond_5ae

    .line 2033
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2035
    goto/16 :goto_7a9

    .line 2036
    :cond_5ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2039
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2040
    .local v1, "impuIndex":I
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getImsImpu(II)V

    .line 2041
    goto/16 :goto_7a9

    .line 2016
    .end local v0    # "serial":I
    .end local v1    # "impuIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5be
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5c3

    move v2, v3

    .line 2017
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5c3
    if-eq v2, v3, :cond_5cd

    .line 2018
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2019
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2020
    goto/16 :goto_7a9

    .line 2021
    :cond_5cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2024
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2025
    .local v1, "callType":I
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->acceptImsCall(II)V

    .line 2026
    goto/16 :goto_7a9

    .line 2002
    .end local v0    # "serial":I
    .end local v1    # "callType":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5dd
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e2

    move v2, v3

    .line 2003
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5e2
    if-eq v2, v3, :cond_5ec

    .line 2004
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2006
    goto/16 :goto_7a9

    .line 2007
    :cond_5ec
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2010
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->getLastImsCallFailCause(I)V

    .line 2011
    goto/16 :goto_7a9

    .line 1988
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_5f8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5fd

    move v2, v3

    .line 1989
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_5fd
    if-eq v2, v3, :cond_607

    .line 1990
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1991
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1992
    goto/16 :goto_7a9

    .line 1993
    :cond_607
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1996
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->restartRILD(I)V

    .line 1997
    goto/16 :goto_7a9

    .line 1973
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_613
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_618

    move v2, v3

    .line 1974
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_618
    if-eq v2, v3, :cond_622

    .line 1975
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1977
    goto/16 :goto_7a9

    .line 1978
    :cond_622
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1981
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1982
    .local v1, "status":I
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setClir(II)V

    .line 1983
    goto/16 :goto_7a9

    .line 1958
    .end local v0    # "serial":I
    .end local v1    # "status":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_632
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_637

    move v2, v3

    .line 1959
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_637
    if-eq v2, v3, :cond_641

    .line 1960
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1961
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1962
    goto/16 :goto_7a9

    .line 1963
    :cond_641
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1966
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1967
    .local v1, "isMute":Z
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setMute(IZ)V

    .line 1968
    goto/16 :goto_7a9

    .line 1944
    .end local v0    # "serial":I
    .end local v1    # "isMute":Z
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_651
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_656

    move v2, v3

    .line 1945
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_656
    if-eq v2, v3, :cond_660

    .line 1946
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1947
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1948
    goto/16 :goto_7a9

    .line 1949
    :cond_660
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1952
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->stopDtmf(I)V

    .line 1953
    goto/16 :goto_7a9

    .line 1929
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_66c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_671

    move v2, v3

    .line 1930
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_671
    if-eq v2, v3, :cond_67b

    .line 1931
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1933
    goto/16 :goto_7a9

    .line 1934
    :cond_67b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1937
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1938
    .local v1, "dtmf":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->startDtmf(ILjava/lang/String;)V

    .line 1939
    goto/16 :goto_7a9

    .line 1914
    .end local v0    # "serial":I
    .end local v1    # "dtmf":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_68b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_690

    move v2, v3

    .line 1915
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_690
    if-eq v2, v3, :cond_69a

    .line 1916
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1917
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1918
    goto/16 :goto_7a9

    .line 1919
    :cond_69a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1922
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1923
    .restart local v1    # "dtmf":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 1924
    goto/16 :goto_7a9

    .line 1900
    .end local v0    # "serial":I
    .end local v1    # "dtmf":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6aa
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6af

    move v2, v3

    .line 1901
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6af
    if-eq v2, v3, :cond_6b9

    .line 1902
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1904
    goto/16 :goto_7a9

    .line 1905
    :cond_6b9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1908
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->rejectCall(I)V

    .line 1909
    goto/16 :goto_7a9

    .line 1886
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6c5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6ca

    move v2, v3

    .line 1887
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6ca
    if-eq v2, v3, :cond_6d4

    .line 1888
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1889
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1890
    goto/16 :goto_7a9

    .line 1891
    :cond_6d4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1894
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->explicitCallTransfer(I)V

    .line 1895
    goto/16 :goto_7a9

    .line 1872
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6e0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6e5

    move v2, v3

    .line 1873
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_6e5
    if-eq v2, v3, :cond_6ef

    .line 1874
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1875
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1876
    goto/16 :goto_7a9

    .line 1877
    :cond_6ef
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1880
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->conference(I)V

    .line 1881
    goto/16 :goto_7a9

    .line 1858
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6fb
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_700

    move v2, v3

    .line 1859
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_700
    if-eq v2, v3, :cond_70a

    .line 1860
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1861
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1862
    goto/16 :goto_7a9

    .line 1863
    :cond_70a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1866
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->hangupWaitingOrBackground(I)V

    .line 1867
    goto/16 :goto_7a9

    .line 1844
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_716
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_71b

    move v2, v3

    .line 1845
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_71b
    if-eq v2, v3, :cond_725

    .line 1846
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1848
    goto/16 :goto_7a9

    .line 1849
    :cond_725
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1852
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->hangupForegroundResumeBackground(I)V

    .line 1853
    goto/16 :goto_7a9

    .line 1830
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_731
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_736

    move v2, v3

    .line 1831
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_736
    if-eq v2, v3, :cond_740

    .line 1832
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1833
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1834
    goto/16 :goto_7a9

    .line 1835
    :cond_740
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1838
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 1839
    goto :goto_7a9

    .line 1815
    .end local v0    # "serial":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_74b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_750

    move v2, v3

    .line 1816
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_750
    if-eq v2, v3, :cond_759

    .line 1817
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1819
    goto :goto_7a9

    .line 1820
    :cond_759
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1823
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1824
    .local v1, "gsmIndex":I
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->hangup(II)V

    .line 1825
    goto :goto_7a9

    .line 1802
    .end local v0    # "serial":I
    .end local v1    # "gsmIndex":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_768
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_76d

    move v2, v3

    .line 1803
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_76d
    if-eq v2, v3, :cond_776

    .line 1804
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1805
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1806
    goto :goto_7a9

    .line 1807
    :cond_776
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->responseAcknowledgement()V

    .line 1810
    goto :goto_7a9

    .line 1785
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_77d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_782

    goto :goto_783

    :cond_782
    move v3, v2

    .line 1786
    .local v3, "_hidl_is_oneway":Z
    :goto_783
    if-eqz v3, :cond_78c

    .line 1787
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1788
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1789
    goto :goto_7a9

    .line 1790
    :cond_78c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1792
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse;

    move-result-object v0

    .line 1793
    .local v0, "radioResponse":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;

    move-result-object v1

    .line 1794
    .local v1, "radioIndication":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->setResponseFunctionsHuawei(Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse;Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;)V

    .line 1795
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1797
    nop

    .line 2725
    .end local v0    # "radioResponse":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsResponse;
    .end local v1    # "radioIndication":Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
    .end local v3    # "_hidl_is_oneway":Z
    :cond_7a9
    :goto_7a9
    return-void

    :pswitch_data_7aa
    .packed-switch 0x1
        :pswitch_77d
        :pswitch_768
        :pswitch_74b
        :pswitch_731
        :pswitch_716
        :pswitch_6fb
        :pswitch_6e0
        :pswitch_6c5
        :pswitch_6aa
        :pswitch_68b
        :pswitch_66c
        :pswitch_651
        :pswitch_632
        :pswitch_613
        :pswitch_5f8
        :pswitch_5dd
        :pswitch_5be
        :pswitch_59f
        :pswitch_580
        :pswitch_55d
        :pswitch_53a
        :pswitch_517
        :pswitch_4f4
        :pswitch_4d1
        :pswitch_4ae
        :pswitch_48b
        :pswitch_468
        :pswitch_445
        :pswitch_422
        :pswitch_403
        :pswitch_3e4
        :pswitch_3c5
        :pswitch_3a6
        :pswitch_38b
        :pswitch_370
        :pswitch_355
        :pswitch_33a
        :pswitch_31f
        :pswitch_300
        :pswitch_2dd
        :pswitch_2be
        :pswitch_29f
        :pswitch_284
        :pswitch_269
        :pswitch_24a
        :pswitch_22b
        :pswitch_210
        :pswitch_1f1
        :pswitch_1ce
        :pswitch_1b3
        :pswitch_194
        :pswitch_16d
    .end packed-switch

    :sswitch_data_816
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

    .line 1736
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1764
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioIms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1765
    return-object p0

    .line 1767
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

    .line 1771
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->registerService(Ljava/lang/String;)V

    .line 1772
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 1726
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioIms$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1758
    const/4 v0, 0x1

    return v0
.end method
