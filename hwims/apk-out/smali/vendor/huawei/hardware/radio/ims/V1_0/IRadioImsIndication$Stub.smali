.class public abstract Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioImsIndication.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 453
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 456
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 498
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 499
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 500
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 501
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 502
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x5et
        -0x7ft
        -0x51t
        -0x6et
        0x3ft
        -0x4t
        0x2t
        -0x4et
        0x3dt
        0x52t
        0x49t
        0x5t
        -0x68t
        -0x3t
        0x7at
        0x3ft
        -0x68t
        -0x5bt
        0x21t
        -0x2bt
        0x3at
        0x53t
        0x41t
        0x35t
        -0x7dt
        0x58t
        -0x6bt
        0x29t
        0x3et
        -0x3et
        -0x6ct
        0x66t
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 468
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 507
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 508
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 844
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 845
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_27

    .line 846
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 848
    goto/16 :goto_7

    .line 831
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 832
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 833
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 834
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 835
    goto/16 :goto_7

    .line 836
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->notifySyspropsChanged()V

    .line 839
    goto/16 :goto_7

    .line 815
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 816
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 817
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 819
    goto/16 :goto_7

    .line 820
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 823
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 824
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 825
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 826
    goto/16 :goto_7

    .line 800
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 801
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 802
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 804
    goto/16 :goto_7

    .line 805
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->ping()V

    .line 808
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 809
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 810
    goto/16 :goto_7

    .line 790
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 791
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_27

    .line 792
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 793
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 794
    goto/16 :goto_7

    .line 777
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 778
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 779
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 781
    goto/16 :goto_7

    .line 782
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->setHALInstrumentation()V

    .line 785
    goto/16 :goto_7

    .line 744
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 745
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 746
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 747
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 748
    goto/16 :goto_7

    .line 749
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 752
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 756
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 757
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 758
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 759
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 760
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 762
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 763
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 764
    nop

    .line 760
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 767
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 769
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 771
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 772
    goto/16 :goto_7

    .line 728
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 729
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 730
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 732
    goto/16 :goto_7

    .line 733
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 737
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_7

    .line 714
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 715
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 716
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 717
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 718
    goto/16 :goto_7

    .line 719
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 723
    goto/16 :goto_7

    .line 698
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 699
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 700
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 701
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 702
    goto/16 :goto_7

    .line 703
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 706
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 707
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 708
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 709
    goto/16 :goto_7

    .line 682
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 683
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 684
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 686
    goto/16 :goto_7

    .line 687
    :cond_14
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 690
    .local v0, "type":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;-><init>()V

    .line 691
    .local v2, "imsRegErrRpt":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 692
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->imsRegErrRptInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;)V

    .line 693
    goto/16 :goto_7

    .line 666
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsRegErrRpt":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsRegErrReport;
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 667
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 668
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 669
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 670
    goto/16 :goto_7

    .line 671
    :cond_16
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 674
    .restart local v0    # "type":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;-><init>()V

    .line 675
    .local v2, "vtFlowInfo":Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 676
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->vtFlowInfoReport(ILvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;)V

    .line 677
    goto/16 :goto_7

    .line 650
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "vtFlowInfo":Lvendor/huawei/hardware/radio/ims/V1_0/RILVtFlowInfoReport;
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 651
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 652
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 654
    goto/16 :goto_7

    .line 655
    :cond_18
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 658
    .restart local v0    # "type":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;-><init>()V

    .line 659
    .local v2, "imsCallMtStatus":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 660
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->imsCallMtStatusInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;)V

    .line 661
    goto/16 :goto_7

    .line 634
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsCallMtStatus":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsMtStatusReport;
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 635
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 636
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 637
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 638
    goto/16 :goto_7

    .line 639
    :cond_1a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 642
    .restart local v0    # "type":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;-><init>()V

    .line 643
    .local v2, "imsModifyEndCause":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;->readFromParcel(Landroid/os/HwParcel;)V

    .line 644
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->imsCallModifyEndCauseInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;)V

    .line 645
    goto/16 :goto_7

    .line 618
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsModifyEndCause":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsModifyEndCause;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 619
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 620
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 621
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 622
    goto/16 :goto_7

    .line 623
    :cond_1c
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 626
    .restart local v0    # "type":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;-><init>()V

    .line 627
    .local v2, "imsCallModify":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 628
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->imsCallModifyInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;)V

    .line 629
    goto/16 :goto_7

    .line 602
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsCallModify":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 603
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 604
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 605
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 606
    goto/16 :goto_7

    .line 607
    :cond_1e
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 610
    .restart local v0    # "type":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;-><init>()V

    .line 611
    .local v2, "imsSuppSvcNofitication":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 612
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->imsSuppSrvInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;)V

    .line 613
    goto/16 :goto_7

    .line 586
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsSuppSvcNofitication":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSuppSvcNotification;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 587
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 588
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 589
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 590
    goto/16 :goto_7

    .line 591
    :cond_20
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 594
    .restart local v0    # "type":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;-><init>()V

    .line 595
    .local v2, "imsHandover":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;->readFromParcel(Landroid/os/HwParcel;)V

    .line 596
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->imsSrvStatusInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;)V

    .line 597
    goto/16 :goto_7

    .line 570
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsHandover":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsSrvstatusList;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 571
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 572
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 573
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 574
    goto :goto_7

    .line 575
    :cond_22
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 578
    .restart local v0    # "type":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;-><init>()V

    .line 579
    .local v2, "imsHandover":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;->readFromParcel(Landroid/os/HwParcel;)V

    .line 580
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->imsHandoverInd(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;)V

    .line 581
    goto :goto_7

    .line 553
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsHandover":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsHandover;
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 554
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 555
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 556
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 557
    goto :goto_7

    .line 558
    :cond_24
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 561
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 562
    .local v2, "MsgId":I
    new-instance v3, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;

    invoke-direct {v3}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;-><init>()V

    .line 563
    .local v3, "payload":Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;
    invoke-virtual {v3, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;->readFromParcel(Landroid/os/HwParcel;)V

    .line 564
    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->UnsolMsg(IILvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;)V

    .line 565
    goto :goto_7

    .line 539
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "MsgId":I
    .end local v3    # "payload":Lvendor/huawei/hardware/radio/ims/V1_0/RILUnsolMsgPayload;
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 540
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 541
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 542
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 543
    goto :goto_7

    .line 544
    :cond_26
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 547
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->imsNetworkStateChanged(I)V

    .line 548
    nop

    .line 853
    .end local v0    # "type":I
    .end local v1    # "_hidl_is_oneway":Z
    :cond_27
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 492
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 518
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    return-object p0

    .line 521
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 483
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 512
    const/4 v0, 0x1

    return v0
.end method
