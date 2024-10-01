.class public abstract Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;
.super Landroid/os/HwBinder;
.source "IRadioImsResponse.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 632
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 635
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 677
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 678
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 679
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 680
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 681
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

    .line 653
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
        -0x2bt
        -0x66t
        0x7t
        -0x4t
        0x38t
        -0x7et
        0xet
        -0x4t
        0x28t
        -0x80t
        0x56t
        -0x20t
        -0xft
        -0x3dt
        -0x9t
        0x69t
        0x10t
        0x2ft
        0x2t
        -0x4ct
        -0x71t
        0x6dt
        0x4t
        0x72t
        0x49t
        -0x12t
        -0x73t
        -0x5bt
        0x45t
        0x15t
        0x1et
        -0x43t
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

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

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

    .line 647
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 666
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 686
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 687
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

    .line 715
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    .line 1176
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 1177
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_3b

    .line 1178
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1179
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1180
    goto/16 :goto_7

    .line 1163
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 1164
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 1165
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1167
    goto/16 :goto_7

    .line 1168
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->notifySyspropsChanged()V

    .line 1171
    goto/16 :goto_7

    .line 1147
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 1148
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 1149
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1151
    goto/16 :goto_7

    .line 1152
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1155
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1156
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1157
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1158
    goto/16 :goto_7

    .line 1132
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 1133
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 1134
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1136
    goto/16 :goto_7

    .line 1137
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->ping()V

    .line 1140
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1142
    goto/16 :goto_7

    .line 1122
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 1123
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_3b

    .line 1124
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1126
    goto/16 :goto_7

    .line 1109
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 1110
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 1111
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1113
    goto/16 :goto_7

    .line 1114
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->setHALInstrumentation()V

    .line 1117
    goto/16 :goto_7

    .line 1076
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 1077
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 1078
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1079
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1080
    goto/16 :goto_7

    .line 1081
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1084
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1086
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1088
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1089
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1090
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1091
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 1092
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 1094
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 1095
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1096
    nop

    .line 1092
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1099
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1101
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1103
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1104
    goto/16 :goto_7

    .line 1060
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 1061
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 1062
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1063
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1064
    goto/16 :goto_7

    .line 1065
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1069
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1071
    goto/16 :goto_7

    .line 1046
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1047
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 1048
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1049
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1050
    goto/16 :goto_7

    .line 1051
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1055
    goto/16 :goto_7

    .line 1030
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 1031
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 1032
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_7

    .line 1035
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1038
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1039
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1040
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1041
    goto/16 :goto_7

    .line 1015
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 1016
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 1017
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1018
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1019
    goto/16 :goto_7

    .line 1020
    :cond_14
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 1023
    .local v0, "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1024
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->setImsRegErrReportResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 1025
    goto/16 :goto_7

    .line 999
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 1000
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 1001
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1002
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1003
    goto/16 :goto_7

    .line 1004
    :cond_16
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 1007
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1008
    invoke-static {p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1009
    .local v2, "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->getCurrentImsCallsResponseV1_2(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 1010
    goto/16 :goto_7

    .line 983
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallV1_2;>;"
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 984
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 985
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 986
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 987
    goto/16 :goto_7

    .line 988
    :cond_18
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 991
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 992
    invoke-static {p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 993
    .local v2, "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->getCurrentImsCallsWithImsDomainResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 994
    goto/16 :goto_7

    .line 966
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallEx;>;"
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 967
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 968
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    goto/16 :goto_7

    .line 971
    :cond_1a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 974
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 975
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;-><init>()V

    .line 976
    .local v2, "uiccAuthRst":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;->readFromParcel(Landroid/os/HwParcel;)V

    .line 977
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->uiccAuthResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;)V

    .line 978
    goto/16 :goto_7

    .line 950
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "uiccAuthRst":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTHRESPONSE;
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 951
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 952
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 953
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 954
    goto/16 :goto_7

    .line 955
    :cond_1c
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 958
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 959
    invoke-static {p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v2

    .line 960
    .local v2, "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;>;"
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->getCurrentImsCallsResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    .line 961
    goto/16 :goto_7

    .line 932
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "imsCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCall;>;"
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 933
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 934
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 936
    goto/16 :goto_7

    .line 937
    :cond_1e
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 940
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 942
    .local v2, "msgId":I
    new-instance v3, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;

    invoke-direct {v3}, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;-><init>()V

    .line 943
    .local v3, "payload":Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;
    invoke-virtual {v3, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;->readFromParcel(Landroid/os/HwParcel;)V

    .line 944
    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->RspMsg(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ILvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;)V

    .line 945
    goto/16 :goto_7

    .line 915
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "msgId":I
    .end local v3    # "payload":Lvendor/huawei/hardware/radio/ims/V1_0/RspMsgPayload;
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 916
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 917
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 918
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 919
    goto/16 :goto_7

    .line 920
    :cond_20
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 923
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 924
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;-><init>()V

    .line 925
    .local v2, "failCauseinfo":Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 926
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->getLastCallFailCauseResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;)V

    .line 927
    goto/16 :goto_7

    .line 900
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "failCauseinfo":Lvendor/huawei/hardware/radio/ims/V1_0/LastCallFailCauseInfo;
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 901
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 902
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 904
    goto/16 :goto_7

    .line 905
    :cond_22
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 908
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 909
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->setClirResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 910
    goto/16 :goto_7

    .line 885
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 886
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 887
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 889
    goto/16 :goto_7

    .line 890
    :cond_24
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 893
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 894
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->setMuteResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 895
    goto/16 :goto_7

    .line 870
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 871
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 872
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 873
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 874
    goto/16 :goto_7

    .line 875
    :cond_26
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 878
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 879
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->stopDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 880
    goto/16 :goto_7

    .line 855
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 856
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 857
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 859
    goto/16 :goto_7

    .line 860
    :cond_28
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 863
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 864
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->startDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 865
    goto/16 :goto_7

    .line 840
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 841
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 842
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 844
    goto/16 :goto_7

    .line 845
    :cond_2a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 848
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 849
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->sendDtmfResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 850
    goto/16 :goto_7

    .line 825
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 826
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 827
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 828
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 829
    goto/16 :goto_7

    .line 830
    :cond_2c
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 833
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 834
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->rejectCallResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 835
    goto/16 :goto_7

    .line 810
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 811
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 812
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 814
    goto/16 :goto_7

    .line 815
    :cond_2e
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 818
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 819
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->explicitCallTransferResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 820
    goto/16 :goto_7

    .line 795
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 796
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 797
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 799
    goto/16 :goto_7

    .line 800
    :cond_30
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 803
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 804
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->conferenceResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 805
    goto/16 :goto_7

    .line 780
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 781
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 782
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 784
    goto/16 :goto_7

    .line 785
    :cond_32
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 788
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 789
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->hangupWaitingOrBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 790
    goto/16 :goto_7

    .line 765
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 766
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 767
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 769
    goto/16 :goto_7

    .line 770
    :cond_34
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 773
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 774
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->hangupForegroundResumeBackgroundResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 775
    goto/16 :goto_7

    .line 750
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 751
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 752
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 753
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 754
    goto :goto_7

    .line 755
    :cond_36
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 758
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 759
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 760
    goto :goto_7

    .line 733
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 734
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 735
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 737
    goto :goto_7

    .line 738
    :cond_38
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 741
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 743
    .local v2, "isRegistered":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 744
    .local v3, "ratFamily":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->getImsRegistrationStateResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;ZI)V

    .line 745
    goto :goto_7

    .line 718
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "isRegistered":Z
    .end local v3    # "ratFamily":I
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 719
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 720
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 722
    goto :goto_7

    .line 723
    :cond_3a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    new-instance v0, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;-><init>()V

    .line 726
    .restart local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    invoke-virtual {v0, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 727
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->hangupConnectionResponse(Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;)V

    .line 728
    nop

    .line 1185
    .end local v0    # "info":Lvendor/huawei/hardware/radio/ims/V1_0/RadioResponseInfo;
    .end local v1    # "_hidl_is_oneway":Z
    :cond_3b
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

    .line 671
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 697
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioImsResponse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    return-object p0

    .line 700
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

    .line 704
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->registerService(Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 662
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 691
    const/4 v0, 0x1

    return v0
.end method
