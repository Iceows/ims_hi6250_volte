.class public abstract Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;
.super Landroid/os/HwBinder;
.source "IRadioIms.java"

# interfaces
.implements Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1259
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1262
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1304
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1305
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1306
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1307
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1308
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

    .line 1280
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
        0xft
        -0x6t
        0x14t
        0x33t
        0x27t
        -0x53t
        -0x70t
        -0x56t
        -0x13t
        -0x78t
        -0x16t
        0x30t
        -0x2et
        0x63t
        0x69t
        0xct
        0x3ft
        -0x42t
        0x1ct
        -0x42t
        0x36t
        0x0t
        -0x6ft
        0x5at
        -0x74t
        -0x3t
        -0xet
        -0x20t
        0x20t
        0x10t
        0x5dt
        0x9t
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

    .line 1267
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

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

    .line 1274
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1293
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1313
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1314
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

    .line 1342
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_8

    .line 2277
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 2278
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_7d

    .line 2279
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2280
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2281
    goto/16 :goto_8

    .line 2264
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 2265
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 2266
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2267
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2268
    goto/16 :goto_8

    .line 2269
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2271
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->notifySyspropsChanged()V

    .line 2272
    goto/16 :goto_8

    .line 2248
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 2249
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 2250
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2251
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2252
    goto/16 :goto_8

    .line 2253
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2256
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2257
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2258
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2259
    goto/16 :goto_8

    .line 2233
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 2234
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 2235
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2236
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2237
    goto/16 :goto_8

    .line 2238
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2240
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->ping()V

    .line 2241
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2242
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2243
    goto/16 :goto_8

    .line 2223
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 2224
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_7d

    .line 2225
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2226
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2227
    goto/16 :goto_8

    .line 2210
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 2211
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 2212
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2213
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2214
    goto/16 :goto_8

    .line 2215
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setHALInstrumentation()V

    .line 2218
    goto/16 :goto_8

    .line 2177
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 2178
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 2179
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2181
    goto/16 :goto_8

    .line 2182
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2185
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2187
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2189
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2190
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2191
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2192
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 2193
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 2195
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 2196
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2197
    nop

    .line 2193
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2200
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2202
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2204
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2205
    goto/16 :goto_8

    .line 2161
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 2162
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 2163
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2165
    goto/16 :goto_8

    .line 2166
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2169
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2170
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2172
    goto/16 :goto_8

    .line 2147
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 2148
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 2149
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2151
    goto/16 :goto_8

    .line 2152
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2156
    goto/16 :goto_8

    .line 2131
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 2132
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 2133
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2135
    goto/16 :goto_8

    .line 2136
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2139
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2140
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2142
    goto/16 :goto_8

    .line 2116
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    move v1, v2

    nop

    .line 2117
    .local v1, "_hidl_is_oneway":Z
    :cond_13
    if-eq v1, v2, :cond_14

    .line 2118
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2119
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2120
    goto/16 :goto_8

    .line 2121
    :cond_14
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2124
    .local v0, "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2125
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setImsRegErrReport(II)V

    .line 2126
    goto/16 :goto_8

    .line 2102
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 2103
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_15
    if-eq v1, v2, :cond_16

    .line 2104
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2105
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2106
    goto/16 :goto_8

    .line 2107
    :cond_16
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2110
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getCurrentImsCallsV1_2(I)V

    .line 2111
    goto/16 :goto_8

    .line 2088
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    move v1, v2

    nop

    .line 2089
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_17
    if-eq v1, v2, :cond_18

    .line 2090
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2091
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2092
    goto/16 :goto_8

    .line 2093
    :cond_18
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2095
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2096
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getImsSmsConfig(I)V

    .line 2097
    goto/16 :goto_8

    .line 2073
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    move v1, v2

    nop

    .line 2074
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_19
    if-eq v1, v2, :cond_1a

    .line 2075
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2076
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2077
    goto/16 :goto_8

    .line 2078
    :cond_1a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2081
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2082
    .local v2, "ims_sms_enable":I
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setImsSmsConfig(II)V

    .line 2083
    goto/16 :goto_8

    .line 2058
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ims_sms_enable":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 2059
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eq v1, v2, :cond_1c

    .line 2060
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2062
    goto/16 :goto_8

    .line 2063
    :cond_1c
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2066
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2067
    .local v2, "callIndex":I
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->cancelImsVideoCall(II)V

    .line 2068
    goto/16 :goto_8

    .line 2044
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callIndex":I
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    move v1, v2

    nop

    .line 2045
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1d
    if-eq v1, v2, :cond_1e

    .line 2046
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2047
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2048
    goto/16 :goto_8

    .line 2049
    :cond_1e
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2052
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getVolteDomain(I)V

    .line 2053
    goto/16 :goto_8

    .line 2030
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    move v1, v2

    nop

    .line 2031
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v1, v2, :cond_20

    .line 2032
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2034
    goto/16 :goto_8

    .line 2035
    :cond_20
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2038
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getVolteImpi(I)V

    .line 2039
    goto/16 :goto_8

    .line 2016
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    nop

    .line 2017
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_21
    if-eq v1, v2, :cond_22

    .line 2018
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2019
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2020
    goto/16 :goto_8

    .line 2021
    :cond_22
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2024
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getCurrentImsCallsWithImsDomain(I)V

    .line 2025
    goto/16 :goto_8

    .line 2001
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_23

    move v1, v2

    nop

    .line 2002
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_23
    if-eq v1, v2, :cond_24

    .line 2003
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2004
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 2005
    goto/16 :goto_8

    .line 2006
    :cond_24
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2009
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2010
    .local v2, "callType":I
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->switchImsWaitingOrHoldingAndActiveWithType(II)V

    .line 2011
    goto/16 :goto_8

    .line 1986
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callType":I
    :pswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_25

    move v1, v2

    nop

    .line 1987
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_25
    if-eq v1, v2, :cond_26

    .line 1988
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1990
    goto/16 :goto_8

    .line 1991
    :cond_26
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1993
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1994
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1995
    .local v2, "wifiAid":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setWifiEmergencyAid(ILjava/lang/String;)V

    .line 1996
    goto/16 :goto_8

    .line 1970
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "wifiAid":Ljava/lang/String;
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_27

    move v1, v2

    nop

    .line 1971
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_27
    if-eq v1, v2, :cond_28

    .line 1972
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1973
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1974
    goto/16 :goto_8

    .line 1975
    :cond_28
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1978
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1979
    .local v2, "capabilityType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1980
    .local v3, "capabilitySwitch":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setImsvtCapability(III)V

    .line 1981
    goto/16 :goto_8

    .line 1955
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "capabilityType":I
    .end local v3    # "capabilitySwitch":I
    :pswitch_b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_29

    move v1, v2

    nop

    .line 1956
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_29
    if-eq v1, v2, :cond_2a

    .line 1957
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1958
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1959
    goto/16 :goto_8

    .line 1960
    :cond_2a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1963
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1964
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->informBatteryStatus(II)V

    .line 1965
    goto/16 :goto_8

    .line 1941
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2b

    move v1, v2

    nop

    .line 1942
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2b
    if-eq v1, v2, :cond_2c

    .line 1943
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1944
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1945
    goto/16 :goto_8

    .line 1946
    :cond_2c
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1948
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1949
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getDmUser(I)V

    .line 1950
    goto/16 :goto_8

    .line 1927
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2d

    move v1, v2

    nop

    .line 1928
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2d
    if-eq v1, v2, :cond_2e

    .line 1929
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1930
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1931
    goto/16 :goto_8

    .line 1932
    :cond_2e
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1935
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getSmsPsi(I)V

    .line 1936
    goto/16 :goto_8

    .line 1913
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2f

    move v1, v2

    nop

    .line 1914
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_2f
    if-eq v1, v2, :cond_30

    .line 1915
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1917
    goto/16 :goto_8

    .line 1918
    :cond_30
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1921
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getDmTimer(I)V

    .line 1922
    goto/16 :goto_8

    .line 1899
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_31

    move v1, v2

    nop

    .line 1900
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_31
    if-eq v1, v2, :cond_32

    .line 1901
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1902
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1903
    goto/16 :goto_8

    .line 1904
    :cond_32
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1907
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getDmDynamicPram(I)V

    .line 1908
    goto/16 :goto_8

    .line 1885
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_10
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_33

    move v1, v2

    nop

    .line 1886
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_33
    if-eq v1, v2, :cond_34

    .line 1887
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1889
    goto/16 :goto_8

    .line 1890
    :cond_34
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1893
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getDmPcscf(I)V

    .line 1894
    goto/16 :goto_8

    .line 1870
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_11
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_35

    move v1, v2

    nop

    .line 1871
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_35
    if-eq v1, v2, :cond_36

    .line 1872
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1873
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1874
    goto/16 :goto_8

    .line 1875
    :cond_36
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1878
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1879
    .local v2, "smsPsi":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setDmSmsPsi(ILjava/lang/String;)V

    .line 1880
    goto/16 :goto_8

    .line 1855
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "smsPsi":Ljava/lang/String;
    :pswitch_12
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_37

    move v1, v2

    nop

    .line 1856
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_37
    if-eq v1, v2, :cond_38

    .line 1857
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1859
    goto/16 :goto_8

    .line 1860
    :cond_38
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1863
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1864
    .local v2, "timer":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setDmTimer(ILjava/lang/String;)V

    .line 1865
    goto/16 :goto_8

    .line 1840
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "timer":Ljava/lang/String;
    :pswitch_13
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_39

    move v1, v2

    nop

    .line 1841
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_39
    if-eq v1, v2, :cond_3a

    .line 1842
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1844
    goto/16 :goto_8

    .line 1845
    :cond_3a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1848
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1849
    .local v2, "dyPram":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setDmDynamicPram(ILjava/lang/String;)V

    .line 1850
    goto/16 :goto_8

    .line 1825
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dyPram":Ljava/lang/String;
    :pswitch_14
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    move v1, v2

    nop

    .line 1826
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3b
    if-eq v1, v2, :cond_3c

    .line 1827
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1828
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1829
    goto/16 :goto_8

    .line 1830
    :cond_3c
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1833
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1834
    .local v2, "pcscf":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setDmPcscf(ILjava/lang/String;)V

    .line 1835
    goto/16 :goto_8

    .line 1809
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "pcscf":Ljava/lang/String;
    :pswitch_15
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3d

    move v1, v2

    nop

    .line 1810
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3d
    if-eq v1, v2, :cond_3e

    .line 1811
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1813
    goto/16 :goto_8

    .line 1814
    :cond_3e
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1817
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1818
    .local v2, "enabled":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1819
    .local v3, "threshHold":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setVtLlteQualityRptCfg(III)V

    .line 1820
    goto/16 :goto_8

    .line 1793
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enabled":I
    .end local v3    # "threshHold":I
    :pswitch_16
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3f

    move v1, v2

    nop

    .line 1794
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_3f
    if-eq v1, v2, :cond_40

    .line 1795
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1797
    goto/16 :goto_8

    .line 1798
    :cond_40
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1801
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCKSNAFAUTH;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCKSNAFAUTH;-><init>()V

    .line 1802
    .local v2, "ksNafAuthParam":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCKSNAFAUTH;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCKSNAFAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1803
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->uiccKsNafAuth(ILvendor/huawei/hardware/radio/ims/V1_0/RILUICCKSNAFAUTH;)V

    .line 1804
    goto/16 :goto_8

    .line 1777
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "ksNafAuthParam":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCKSNAFAUTH;
    :pswitch_17
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_41

    move v1, v2

    nop

    .line 1778
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_41
    if-eq v1, v2, :cond_42

    .line 1779
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1780
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1781
    goto/16 :goto_8

    .line 1782
    :cond_42
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1785
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1786
    .local v2, "uiccType":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1787
    .local v3, "fileId":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getUiccFile(III)V

    .line 1788
    goto/16 :goto_8

    .line 1761
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "uiccType":I
    .end local v3    # "fileId":I
    :pswitch_18
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_43

    move v1, v2

    nop

    .line 1762
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_43
    if-eq v1, v2, :cond_44

    .line 1763
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1765
    goto/16 :goto_8

    .line 1766
    :cond_44
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1769
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;-><init>()V

    .line 1770
    .local v2, "uiccUpdateParam":Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1771
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->updateUiccFile(ILvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;)V

    .line 1772
    goto/16 :goto_8

    .line 1745
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "uiccUpdateParam":Lvendor/huawei/hardware/radio/ims/V1_0/RILCURSMUPDATEFILE;
    :pswitch_19
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_45

    move v1, v2

    nop

    .line 1746
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_45
    if-eq v1, v2, :cond_46

    .line 1747
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1748
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1749
    goto/16 :goto_8

    .line 1750
    :cond_46
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1753
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;-><init>()V

    .line 1754
    .local v2, "gbaParam":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1755
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->uiccGbaBootStrap(ILvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;)V

    .line 1756
    goto/16 :goto_8

    .line 1729
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gbaParam":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    :pswitch_1a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_47

    move v1, v2

    nop

    .line 1730
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_47
    if-eq v1, v2, :cond_48

    .line 1731
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1733
    goto/16 :goto_8

    .line 1734
    :cond_48
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1737
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;-><init>()V

    .line 1738
    .local v2, "uiccAuthParam":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1739
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->uiccAuth(ILvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;)V

    .line 1740
    goto/16 :goto_8

    .line 1713
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "uiccAuthParam":Lvendor/huawei/hardware/radio/ims/V1_0/RILUICCAUTH;
    :pswitch_1b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_49

    move v1, v2

    nop

    .line 1714
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_49
    if-eq v1, v2, :cond_4a

    .line 1715
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1717
    goto/16 :goto_8

    .line 1718
    :cond_4a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1721
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1722
    .local v2, "callIndex":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1723
    .local v3, "cause":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->rejectCallWithReason(III)V

    .line 1724
    goto/16 :goto_8

    .line 1697
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callIndex":I
    .end local v3    # "cause":I
    :pswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4b

    move v1, v2

    nop

    .line 1698
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4b
    if-eq v1, v2, :cond_4c

    .line 1699
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1700
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1701
    goto/16 :goto_8

    .line 1702
    :cond_4c
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1705
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;-><init>()V

    .line 1706
    .local v2, "callModifyInfo":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1707
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->modifyImsCallConfirm(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;)V

    .line 1708
    goto/16 :goto_8

    .line 1681
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callModifyInfo":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;
    :pswitch_1d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4d

    move v1, v2

    nop

    .line 1682
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4d
    if-eq v1, v2, :cond_4e

    .line 1683
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1684
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1685
    goto/16 :goto_8

    .line 1686
    :cond_4e
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1689
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;-><init>()V

    .line 1690
    .restart local v2    # "callModifyInfo":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1691
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->modifyImsCallInitiate(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;)V

    .line 1692
    goto/16 :goto_8

    .line 1665
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callModifyInfo":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallModify;
    :pswitch_1e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_4f

    move v1, v2

    nop

    .line 1666
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_4f
    if-eq v1, v2, :cond_50

    .line 1667
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1668
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1669
    goto/16 :goto_8

    .line 1670
    :cond_50
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1673
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1674
    .local v2, "enable":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1675
    .local v3, "serviceClass":I
    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setImsCallWaiting(IZI)V

    .line 1676
    goto/16 :goto_8

    .line 1650
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    .end local v3    # "serviceClass":I
    :pswitch_1f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_51

    move v1, v2

    nop

    .line 1651
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_51
    if-eq v1, v2, :cond_52

    .line 1652
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1654
    goto/16 :goto_8

    .line 1655
    :cond_52
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1658
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1659
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->addImsConfMember(ILjava/lang/String;)V

    .line 1660
    goto/16 :goto_8

    .line 1635
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_20
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_53

    move v1, v2

    nop

    .line 1636
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_53
    if-eq v1, v2, :cond_54

    .line 1637
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1639
    goto/16 :goto_8

    .line 1640
    :cond_54
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1643
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1644
    .local v2, "impuIndex":I
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getImsImpu(II)V

    .line 1645
    goto/16 :goto_8

    .line 1620
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "impuIndex":I
    :pswitch_21
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_55

    move v1, v2

    nop

    .line 1621
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_55
    if-eq v1, v2, :cond_56

    .line 1622
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1624
    goto/16 :goto_8

    .line 1625
    :cond_56
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1628
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1629
    .local v2, "callType":I
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->acceptImsCall(II)V

    .line 1630
    goto/16 :goto_8

    .line 1606
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "callType":I
    :pswitch_22
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_57

    move v1, v2

    nop

    .line 1607
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_57
    if-eq v1, v2, :cond_58

    .line 1608
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1610
    goto/16 :goto_8

    .line 1611
    :cond_58
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1614
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getLastImsCallFailCause(I)V

    .line 1615
    goto/16 :goto_8

    .line 1592
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_23
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_59

    move v1, v2

    nop

    .line 1593
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_59
    if-eq v1, v2, :cond_5a

    .line 1594
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1596
    goto/16 :goto_8

    .line 1597
    :cond_5a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1600
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getCurrentImsCalls(I)V

    .line 1601
    goto/16 :goto_8

    .line 1576
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_24
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5b

    move v1, v2

    nop

    .line 1577
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5b
    if-eq v1, v2, :cond_5c

    .line 1578
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1580
    goto/16 :goto_8

    .line 1581
    :cond_5c
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1584
    .restart local v0    # "serial":I
    new-instance v2, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;

    invoke-direct {v2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;-><init>()V

    .line 1585
    .local v2, "dialInfo":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;
    invoke-virtual {v2, p2}, Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1586
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->imsDial(ILvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;)V

    .line 1587
    goto/16 :goto_8

    .line 1562
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "dialInfo":Lvendor/huawei/hardware/radio/ims/V1_0/RILImsDial;
    :pswitch_25
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    move v1, v2

    nop

    .line 1563
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5d
    if-eq v1, v2, :cond_5e

    .line 1564
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1565
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1566
    goto/16 :goto_8

    .line 1567
    :cond_5e
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1570
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->restartRILD(I)V

    .line 1571
    goto/16 :goto_8

    .line 1547
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_26
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    move v1, v2

    nop

    .line 1548
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_5f
    if-eq v1, v2, :cond_60

    .line 1549
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1550
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1551
    goto/16 :goto_8

    .line 1552
    :cond_60
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1555
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1556
    .local v2, "status":I
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setClir(II)V

    .line 1557
    goto/16 :goto_8

    .line 1532
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "status":I
    :pswitch_27
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_61

    move v1, v2

    nop

    .line 1533
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_61
    if-eq v1, v2, :cond_62

    .line 1534
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1535
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1536
    goto/16 :goto_8

    .line 1537
    :cond_62
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1540
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1541
    .local v2, "enable":Z
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setMute(IZ)V

    .line 1542
    goto/16 :goto_8

    .line 1518
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "enable":Z
    :pswitch_28
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_63

    move v1, v2

    nop

    .line 1519
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_63
    if-eq v1, v2, :cond_64

    .line 1520
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1522
    goto/16 :goto_8

    .line 1523
    :cond_64
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1526
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->stopDtmf(I)V

    .line 1527
    goto/16 :goto_8

    .line 1503
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_29
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_65

    move v1, v2

    nop

    .line 1504
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_65
    if-eq v1, v2, :cond_66

    .line 1505
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1506
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1507
    goto/16 :goto_8

    .line 1508
    :cond_66
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1511
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1512
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->startDtmf(ILjava/lang/String;)V

    .line 1513
    goto/16 :goto_8

    .line 1488
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_2a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_67

    move v1, v2

    nop

    .line 1489
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_67
    if-eq v1, v2, :cond_68

    .line 1490
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1491
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1492
    goto/16 :goto_8

    .line 1493
    :cond_68
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1496
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1497
    .restart local v2    # "s":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 1498
    goto/16 :goto_8

    .line 1474
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "s":Ljava/lang/String;
    :pswitch_2b
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_69

    move v1, v2

    nop

    .line 1475
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_69
    if-eq v1, v2, :cond_6a

    .line 1476
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1477
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1478
    goto/16 :goto_8

    .line 1479
    :cond_6a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1482
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->rejectCall(I)V

    .line 1483
    goto/16 :goto_8

    .line 1460
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6b

    move v1, v2

    nop

    .line 1461
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6b
    if-eq v1, v2, :cond_6c

    .line 1462
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1463
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1464
    goto/16 :goto_8

    .line 1465
    :cond_6c
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1468
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->explicitCallTransfer(I)V

    .line 1469
    goto/16 :goto_8

    .line 1446
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6d

    move v1, v2

    nop

    .line 1447
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6d
    if-eq v1, v2, :cond_6e

    .line 1448
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1449
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1450
    goto/16 :goto_8

    .line 1451
    :cond_6e
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1454
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->conference(I)V

    .line 1455
    goto/16 :goto_8

    .line 1432
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2e
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_6f

    move v1, v2

    nop

    .line 1433
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_6f
    if-eq v1, v2, :cond_70

    .line 1434
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1435
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1436
    goto/16 :goto_8

    .line 1437
    :cond_70
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1440
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->hangupWaitingOrBackground(I)V

    .line 1441
    goto/16 :goto_8

    .line 1418
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2f
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_71

    move v1, v2

    nop

    .line 1419
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_71
    if-eq v1, v2, :cond_72

    .line 1420
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1421
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1422
    goto/16 :goto_8

    .line 1423
    :cond_72
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1426
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->hangupForegroundResumeBackground(I)V

    .line 1427
    goto/16 :goto_8

    .line 1404
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_30
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_73

    move v1, v2

    nop

    .line 1405
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_73
    if-eq v1, v2, :cond_74

    .line 1406
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1407
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1408
    goto/16 :goto_8

    .line 1409
    :cond_74
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1412
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 1413
    goto/16 :goto_8

    .line 1390
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_31
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_75

    move v1, v2

    nop

    .line 1391
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_75
    if-eq v1, v2, :cond_76

    .line 1392
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1393
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1394
    goto/16 :goto_8

    .line 1395
    :cond_76
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1398
    .restart local v0    # "serial":I
    invoke-virtual {p0, v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->getImsRegistrationState(I)V

    .line 1399
    goto/16 :goto_8

    .line 1375
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_32
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_77

    move v1, v2

    nop

    .line 1376
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_77
    if-eq v1, v2, :cond_78

    .line 1377
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1378
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1379
    goto :goto_8

    .line 1380
    :cond_78
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1383
    .restart local v0    # "serial":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1384
    .local v2, "gsmIndex":I
    invoke-virtual {p0, v0, v2}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->hangup(II)V

    .line 1385
    goto :goto_8

    .line 1362
    .end local v0    # "serial":I
    .end local v1    # "_hidl_is_oneway":Z
    .end local v2    # "gsmIndex":I
    :pswitch_33
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_79

    move v1, v2

    nop

    .line 1363
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_79
    if-eq v1, v2, :cond_7a

    .line 1364
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1365
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1366
    goto :goto_8

    .line 1367
    :cond_7a
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->responseAcknowledgement()V

    .line 1370
    goto :goto_8

    .line 1345
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_34
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7b

    goto :goto_7

    :cond_7b
    move v2, v1

    .line 1346
    .local v2, "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_7c

    .line 1347
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1348
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1349
    goto :goto_8

    .line 1350
    :cond_7c
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;

    move-result-object v0

    .line 1353
    .local v0, "radioResponse":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;

    move-result-object v3

    .line 1354
    .local v3, "radioIndication":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
    invoke-virtual {p0, v0, v3}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->setResponseFunctionsHuawei(Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;)V

    .line 1355
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1356
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1357
    nop

    .line 2286
    .end local v0    # "radioResponse":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsResponse;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "radioIndication":Lvendor/huawei/hardware/radio/ims/V1_0/IRadioImsIndication;
    :cond_7d
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

    .line 1298
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1324
    const-string v0, "vendor.huawei.hardware.radio.ims@1.0::IRadioIms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    return-object p0

    .line 1327
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

    .line 1331
    invoke-virtual {p0, p1}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->registerService(Ljava/lang/String;)V

    .line 1332
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1289
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/radio/ims/V1_0/IRadioIms$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1318
    const/4 v0, 0x1

    return v0
.end method
