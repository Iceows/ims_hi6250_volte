.class public final Lvendor/huawei/hardware/radio/ims/V2_0/RILImsRadioTechType;
.super Ljava/lang/Object;
.source "RILImsRadioTechType.java"


# static fields
.field public static final IMS_RADIO_TECH_TYPE_1X_RTT:I = 0x6

.field public static final IMS_RADIO_TECH_TYPE_EDGE:I = 0x2

.field public static final IMS_RADIO_TECH_TYPE_EHRPD:I = 0xd

.field public static final IMS_RADIO_TECH_TYPE_EVDO_0:I = 0x7

.field public static final IMS_RADIO_TECH_TYPE_EVDO_A:I = 0x8

.field public static final IMS_RADIO_TECH_TYPE_EVDO_B:I = 0xc

.field public static final IMS_RADIO_TECH_TYPE_GPRS:I = 0x1

.field public static final IMS_RADIO_TECH_TYPE_GSM:I = 0x10

.field public static final IMS_RADIO_TECH_TYPE_HSDPA:I = 0x9

.field public static final IMS_RADIO_TECH_TYPE_HSPA:I = 0xb

.field public static final IMS_RADIO_TECH_TYPE_HSPAP:I = 0xf

.field public static final IMS_RADIO_TECH_TYPE_HSUPA:I = 0xa

.field public static final IMS_RADIO_TECH_TYPE_IS95A:I = 0x4

.field public static final IMS_RADIO_TECH_TYPE_IS95B:I = 0x5

.field public static final IMS_RADIO_TECH_TYPE_IWLAN:I = 0x13

.field public static final IMS_RADIO_TECH_TYPE_LTE:I = 0xe

.field public static final IMS_RADIO_TECH_TYPE_NR:I = 0x14

.field public static final IMS_RADIO_TECH_TYPE_TD_SCDMA:I = 0x11

.field public static final IMS_RADIO_TECH_TYPE_UMTS:I = 0x3

.field public static final IMS_RADIO_TECH_TYPE_UNKNOW:I = 0x0

.field public static final IMS_RADIO_TECH_TYPE_WIFI:I = 0x12

.field public static final IMS_RAIDO_THCH_TYPE_ANY:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 101
    const-string v2, "IMS_RAIDO_THCH_TYPE_ANY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, -0x1

    .line 104
    :cond_12
    const-string v2, "IMS_RADIO_TECH_TYPE_UNKNOW"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 106
    const-string v2, "IMS_RADIO_TECH_TYPE_GPRS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x1

    .line 109
    :cond_23
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    .line 110
    const-string v2, "IMS_RADIO_TECH_TYPE_EDGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x2

    .line 113
    :cond_2f
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    .line 114
    const-string v2, "IMS_RADIO_TECH_TYPE_UMTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x3

    .line 117
    :cond_3b
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_47

    .line 118
    const-string v2, "IMS_RADIO_TECH_TYPE_IS95A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x4

    .line 121
    :cond_47
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_53

    .line 122
    const-string v2, "IMS_RADIO_TECH_TYPE_IS95B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x5

    .line 125
    :cond_53
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5f

    .line 126
    const-string v2, "IMS_RADIO_TECH_TYPE_1X_RTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0x6

    .line 129
    :cond_5f
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6b

    .line 130
    const-string v2, "IMS_RADIO_TECH_TYPE_EVDO_0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0x7

    .line 133
    :cond_6b
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_78

    .line 134
    const-string v2, "IMS_RADIO_TECH_TYPE_EVDO_A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0x8

    .line 137
    :cond_78
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_85

    .line 138
    const-string v2, "IMS_RADIO_TECH_TYPE_HSDPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0x9

    .line 141
    :cond_85
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_92

    .line 142
    const-string v2, "IMS_RADIO_TECH_TYPE_HSUPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0xa

    .line 145
    :cond_92
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_9f

    .line 146
    const-string v2, "IMS_RADIO_TECH_TYPE_HSPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v1, v1, 0xb

    .line 149
    :cond_9f
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_ac

    .line 150
    const-string v2, "IMS_RADIO_TECH_TYPE_EVDO_B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0xc

    .line 153
    :cond_ac
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_b9

    .line 154
    const-string v2, "IMS_RADIO_TECH_TYPE_EHRPD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0xd

    .line 157
    :cond_b9
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_c6

    .line 158
    const-string v2, "IMS_RADIO_TECH_TYPE_LTE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0xe

    .line 161
    :cond_c6
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_d3

    .line 162
    const-string v2, "IMS_RADIO_TECH_TYPE_HSPAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit8 v1, v1, 0xf

    .line 165
    :cond_d3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_e0

    .line 166
    const-string v2, "IMS_RADIO_TECH_TYPE_GSM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v1, v1, 0x10

    .line 169
    :cond_e0
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_ed

    .line 170
    const-string v2, "IMS_RADIO_TECH_TYPE_TD_SCDMA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v1, v1, 0x11

    .line 173
    :cond_ed
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_fa

    .line 174
    const-string v2, "IMS_RADIO_TECH_TYPE_WIFI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit8 v1, v1, 0x12

    .line 177
    :cond_fa
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_107

    .line 178
    const-string v2, "IMS_RADIO_TECH_TYPE_IWLAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit8 v1, v1, 0x13

    .line 181
    :cond_107
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_114

    .line 182
    const-string v2, "IMS_RADIO_TECH_TYPE_NR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/lit8 v1, v1, 0x14

    .line 185
    :cond_114
    if-eq p0, v1, :cond_130

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_130
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 28
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 29
    const-string v0, "IMS_RAIDO_THCH_TYPE_ANY"

    return-object v0

    .line 31
    :cond_6
    if-nez p0, :cond_b

    .line 32
    const-string v0, "IMS_RADIO_TECH_TYPE_UNKNOW"

    return-object v0

    .line 34
    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 35
    const-string v0, "IMS_RADIO_TECH_TYPE_GPRS"

    return-object v0

    .line 37
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    .line 38
    const-string v0, "IMS_RADIO_TECH_TYPE_EDGE"

    return-object v0

    .line 40
    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    .line 41
    const-string v0, "IMS_RADIO_TECH_TYPE_UMTS"

    return-object v0

    .line 43
    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    .line 44
    const-string v0, "IMS_RADIO_TECH_TYPE_IS95A"

    return-object v0

    .line 46
    :cond_23
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    .line 47
    const-string v0, "IMS_RADIO_TECH_TYPE_IS95B"

    return-object v0

    .line 49
    :cond_29
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2f

    .line 50
    const-string v0, "IMS_RADIO_TECH_TYPE_1X_RTT"

    return-object v0

    .line 52
    :cond_2f
    const/4 v0, 0x7

    if-ne p0, v0, :cond_35

    .line 53
    const-string v0, "IMS_RADIO_TECH_TYPE_EVDO_0"

    return-object v0

    .line 55
    :cond_35
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3c

    .line 56
    const-string v0, "IMS_RADIO_TECH_TYPE_EVDO_A"

    return-object v0

    .line 58
    :cond_3c
    const/16 v0, 0x9

    if-ne p0, v0, :cond_43

    .line 59
    const-string v0, "IMS_RADIO_TECH_TYPE_HSDPA"

    return-object v0

    .line 61
    :cond_43
    const/16 v0, 0xa

    if-ne p0, v0, :cond_4a

    .line 62
    const-string v0, "IMS_RADIO_TECH_TYPE_HSUPA"

    return-object v0

    .line 64
    :cond_4a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_51

    .line 65
    const-string v0, "IMS_RADIO_TECH_TYPE_HSPA"

    return-object v0

    .line 67
    :cond_51
    const/16 v0, 0xc

    if-ne p0, v0, :cond_58

    .line 68
    const-string v0, "IMS_RADIO_TECH_TYPE_EVDO_B"

    return-object v0

    .line 70
    :cond_58
    const/16 v0, 0xd

    if-ne p0, v0, :cond_5f

    .line 71
    const-string v0, "IMS_RADIO_TECH_TYPE_EHRPD"

    return-object v0

    .line 73
    :cond_5f
    const/16 v0, 0xe

    if-ne p0, v0, :cond_66

    .line 74
    const-string v0, "IMS_RADIO_TECH_TYPE_LTE"

    return-object v0

    .line 76
    :cond_66
    const/16 v0, 0xf

    if-ne p0, v0, :cond_6d

    .line 77
    const-string v0, "IMS_RADIO_TECH_TYPE_HSPAP"

    return-object v0

    .line 79
    :cond_6d
    const/16 v0, 0x10

    if-ne p0, v0, :cond_74

    .line 80
    const-string v0, "IMS_RADIO_TECH_TYPE_GSM"

    return-object v0

    .line 82
    :cond_74
    const/16 v0, 0x11

    if-ne p0, v0, :cond_7b

    .line 83
    const-string v0, "IMS_RADIO_TECH_TYPE_TD_SCDMA"

    return-object v0

    .line 85
    :cond_7b
    const/16 v0, 0x12

    if-ne p0, v0, :cond_82

    .line 86
    const-string v0, "IMS_RADIO_TECH_TYPE_WIFI"

    return-object v0

    .line 88
    :cond_82
    const/16 v0, 0x13

    if-ne p0, v0, :cond_89

    .line 89
    const-string v0, "IMS_RADIO_TECH_TYPE_IWLAN"

    return-object v0

    .line 91
    :cond_89
    const/16 v0, 0x14

    if-ne p0, v0, :cond_90

    .line 92
    const-string v0, "IMS_RADIO_TECH_TYPE_NR"

    return-object v0

    .line 94
    :cond_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
