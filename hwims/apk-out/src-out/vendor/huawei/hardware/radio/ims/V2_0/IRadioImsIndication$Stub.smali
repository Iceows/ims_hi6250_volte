.class public abstract Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;
.super Landroid/os/HwBinder;
.source "IRadioImsIndication.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 564
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 567
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

    .line 580
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 617
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 618
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 619
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 620
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 621
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

    .line 592
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
        0x4ct
        -0x5ft
        -0x65t
        -0x17t
        0x13t
        0xat
        0x6et
        0x36t
        -0x1ct
        -0x5t
        0x78t
        -0x3ct
        0x17t
        0x16t
        -0x7at
        0x18t
        -0x77t
        0x20t
        -0x5ft
        0x53t
        -0x61t
        -0x3dt
        0x25t
        -0x25t
        0x2dt
        0x55t
        0x18t
        -0x26t
        0x66t
        -0x48t
        -0x2et
        0x73t
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

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsIndication"

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

    .line 586
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 605
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 627
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 629
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

    .line 657
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsIndication"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2c2

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_2da

    goto/16 :goto_2c0

    .line 974
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 975
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c0

    .line 976
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 978
    goto/16 :goto_2c0

    .line 961
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 962
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 963
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 964
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 965
    goto/16 :goto_2c0

    .line 966
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->notifySyspropsChanged()V

    .line 969
    goto/16 :goto_2c0

    .line 945
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 946
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 947
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 949
    goto/16 :goto_2c0

    .line 950
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 953
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 954
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 955
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 956
    goto/16 :goto_2c0

    .line 930
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 931
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 932
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 933
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 934
    goto/16 :goto_2c0

    .line 935
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->ping()V

    .line 938
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 939
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 940
    goto/16 :goto_2c0

    .line 920
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 921
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c0

    .line 922
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 923
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 924
    goto/16 :goto_2c0

    .line 907
    .end local v0    # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 908
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 909
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 910
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 911
    goto/16 :goto_2c0

    .line 912
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->setHALInstrumentation()V

    .line 915
    goto/16 :goto_2c0

    .line 868
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 869
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 870
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 872
    goto/16 :goto_2c0

    .line 873
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 876
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 878
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 880
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 881
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 882
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 883
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 884
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 886
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 887
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 889
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 893
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 894
    nop

    .line 884
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 890
    .restart local v6    # "_hidl_array_offset_1":J
    .restart local v8    # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 897
    .end local v5    # "_hidl_index_0":I
    .end local v6    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 899
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 901
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 902
    goto/16 :goto_2c0

    .line 852
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 853
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 854
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 855
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 856
    goto/16 :goto_2c0

    .line 857
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 861
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 863
    goto/16 :goto_2c0

    .line 835
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 836
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 837
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 838
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 839
    goto/16 :goto_2c0

    .line 840
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 843
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 844
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 845
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 846
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 847
    goto/16 :goto_2c0

    .line 819
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 820
    .restart local v3    # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 821
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 823
    goto/16 :goto_2c0

    .line 824
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 827
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 828
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 829
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 830
    goto/16 :goto_2c0

    .line 803
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "_hidl_is_oneway":Z
    :pswitch_16d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    move v2, v3

    .line 804
    .local v2, "_hidl_is_oneway":Z
    :cond_172
    if-eq v2, v3, :cond_17c

    .line 805
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 806
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 807
    goto/16 :goto_2c0

    .line 808
    :cond_17c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 811
    .local v0, "type":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;-><init>()V

    .line 812
    .local v1, "imsRegErrRpt":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 813
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->imsRegErrRptInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;)V

    .line 814
    goto/16 :goto_2c0

    .line 787
    .end local v0    # "type":I
    .end local v1    # "imsRegErrRpt":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRegErrReport;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_190
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_195

    move v2, v3

    .line 788
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_195
    if-eq v2, v3, :cond_19f

    .line 789
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 791
    goto/16 :goto_2c0

    .line 792
    :cond_19f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 795
    .restart local v0    # "type":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;-><init>()V

    .line 796
    .local v1, "imsSrvsStatusList":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;->readFromParcel(Landroid/os/HwParcel;)V

    .line 797
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->imsSrvStatusInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;)V

    .line 798
    goto/16 :goto_2c0

    .line 771
    .end local v0    # "type":I
    .end local v1    # "imsSrvsStatusList":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSrvstatusList;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1b3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1b8

    move v2, v3

    .line 772
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1b8
    if-eq v2, v3, :cond_1c2

    .line 773
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 774
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 775
    goto/16 :goto_2c0

    .line 776
    :cond_1c2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 779
    .restart local v0    # "type":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;-><init>()V

    .line 780
    .local v1, "imsHandover":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;->readFromParcel(Landroid/os/HwParcel;)V

    .line 781
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->imsHandoverInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;)V

    .line 782
    goto/16 :goto_2c0

    .line 755
    .end local v0    # "type":I
    .end local v1    # "imsHandover":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsHandover;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1d6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1db

    move v2, v3

    .line 756
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1db
    if-eq v2, v3, :cond_1e5

    .line 757
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 758
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 759
    goto/16 :goto_2c0

    .line 760
    :cond_1e5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 763
    .restart local v0    # "type":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;-><init>()V

    .line 764
    .local v1, "vtFlowInfo":Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 765
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->vtFlowInfoReport(ILvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;)V

    .line 766
    goto/16 :goto_2c0

    .line 739
    .end local v0    # "type":I
    .end local v1    # "vtFlowInfo":Lvendor/huawei/hardware/radio/ims/V2_0/RILVtFlowInfoReport;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_1f9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1fe

    move v2, v3

    .line 740
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_1fe
    if-eq v2, v3, :cond_208

    .line 741
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 742
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 743
    goto/16 :goto_2c0

    .line 744
    :cond_208
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 747
    .restart local v0    # "type":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;-><init>()V

    .line 748
    .local v1, "imsCallMtStatus":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 749
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->imsCallMtStatusInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;)V

    .line 750
    goto/16 :goto_2c0

    .line 723
    .end local v0    # "type":I
    .end local v1    # "imsCallMtStatus":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsMtStatusReport;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_21c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_221

    move v2, v3

    .line 724
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_221
    if-eq v2, v3, :cond_22b

    .line 725
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 726
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 727
    goto/16 :goto_2c0

    .line 728
    :cond_22b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 731
    .restart local v0    # "type":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;-><init>()V

    .line 732
    .local v1, "imsModifyEndCause":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;->readFromParcel(Landroid/os/HwParcel;)V

    .line 733
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->imsCallModifyEndCauseInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;)V

    .line 734
    goto/16 :goto_2c0

    .line 707
    .end local v0    # "type":I
    .end local v1    # "imsModifyEndCause":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsModifyEndCause;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_23f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_244

    move v2, v3

    .line 708
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_244
    if-eq v2, v3, :cond_24e

    .line 709
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 710
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 711
    goto/16 :goto_2c0

    .line 712
    :cond_24e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 715
    .restart local v0    # "type":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;-><init>()V

    .line 716
    .local v1, "imsCallModify":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 717
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->imsCallModifyInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;)V

    .line 718
    goto :goto_2c0

    .line 691
    .end local v0    # "type":I
    .end local v1    # "imsCallModify":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsCallModify;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_261
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_266

    move v2, v3

    .line 692
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_266
    if-eq v2, v3, :cond_26f

    .line 693
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 694
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 695
    goto :goto_2c0

    .line 696
    :cond_26f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 699
    .restart local v0    # "type":I
    new-instance v1, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;

    invoke-direct {v1}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;-><init>()V

    .line 700
    .local v1, "imsSuppSvcNofitication":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;
    invoke-virtual {v1, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 701
    invoke-virtual {p0, v0, v1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->imsSuppSrvInd(ILvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;)V

    .line 702
    goto :goto_2c0

    .line 674
    .end local v0    # "type":I
    .end local v1    # "imsSuppSvcNofitication":Lvendor/huawei/hardware/radio/ims/V2_0/RILImsSuppSvcNotification;
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_282
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_287

    move v2, v3

    .line 675
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_287
    if-eq v2, v3, :cond_290

    .line 676
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 678
    goto :goto_2c0

    .line 679
    :cond_290
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 682
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 683
    .local v1, "MsgId":I
    new-instance v3, Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;

    invoke-direct {v3}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;-><init>()V

    .line 684
    .local v3, "payload":Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;
    invoke-virtual {v3, p2}, Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;->readFromParcel(Landroid/os/HwParcel;)V

    .line 685
    invoke-virtual {p0, v0, v1, v3}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->UnsolMsg(IILvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;)V

    .line 686
    goto :goto_2c0

    .line 660
    .end local v0    # "type":I
    .end local v1    # "MsgId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "payload":Lvendor/huawei/hardware/radio/ims/V2_0/RILUnsolMsgPayload;
    :pswitch_2a7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2ac

    move v2, v3

    .line 661
    .restart local v2    # "_hidl_is_oneway":Z
    :cond_2ac
    if-eq v2, v3, :cond_2b5

    .line 662
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 664
    goto :goto_2c0

    .line 665
    :cond_2b5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 668
    .restart local v0    # "type":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->imsNetworkStateChanged(I)V

    .line 669
    nop

    .line 983
    .end local v0    # "type":I
    .end local v2    # "_hidl_is_oneway":Z
    :cond_2c0
    :goto_2c0
    return-void

    nop

    :pswitch_data_2c2
    .packed-switch 0x1
        :pswitch_2a7
        :pswitch_282
        :pswitch_261
        :pswitch_23f
        :pswitch_21c
        :pswitch_1f9
        :pswitch_1d6
        :pswitch_1b3
        :pswitch_190
        :pswitch_16d
    .end packed-switch

    :sswitch_data_2da
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

    .line 611
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 639
    const-string v0, "vendor.huawei.hardware.radio.ims@2.0::IRadioImsIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 640
    return-object p0

    .line 642
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

    .line 646
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 601
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V2_0/IRadioImsIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 633
    const/4 v0, 0x1

    return v0
.end method
