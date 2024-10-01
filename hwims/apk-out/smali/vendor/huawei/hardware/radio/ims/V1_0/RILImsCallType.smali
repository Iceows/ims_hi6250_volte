.class public final Lvendor/huawei/hardware/radio/ims/V1_0/RILImsCallType;
.super Ljava/lang/Object;
.source "RILImsCallType.java"


# static fields
.field public static final CALL_TYPE_CS_VS_RX:I = 0x6

.field public static final CALL_TYPE_CS_VS_TX:I = 0x5

.field public static final CALL_TYPE_PS_VS_RX:I = 0x8

.field public static final CALL_TYPE_PS_VS_TX:I = 0x7

.field public static final CALL_TYPE_SMS:I = 0xa

.field public static final CALL_TYPE_UNKNOWN:I = 0x9

.field public static final CALL_TYPE_UT:I = 0xb

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, "flipped":I
    const-string v2, "CALL_TYPE_VOICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 62
    const-string v2, "CALL_TYPE_VT_TX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x1

    .line 65
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 66
    const-string v2, "CALL_TYPE_VT_RX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x2

    .line 69
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 70
    const-string v2, "CALL_TYPE_VT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x3

    .line 73
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 74
    const-string v2, "CALL_TYPE_VT_NODIR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x4

    .line 77
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 78
    const-string v2, "CALL_TYPE_CS_VS_TX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x5

    .line 81
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 82
    const-string v2, "CALL_TYPE_CS_VS_RX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x6

    .line 85
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 86
    const-string v2, "CALL_TYPE_PS_VS_TX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x7

    .line 89
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 90
    const-string v2, "CALL_TYPE_PS_VS_RX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x8

    .line 93
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 94
    const-string v2, "CALL_TYPE_UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x9

    .line 97
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 98
    const-string v2, "CALL_TYPE_SMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0xa

    .line 101
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 102
    const-string v2, "CALL_TYPE_UT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0xb

    .line 105
    :cond_a
    if-eq p0, v1, :cond_b

    .line 106
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

    .line 108
    :cond_b
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 18
    if-nez p0, :cond_0

    .line 19
    const-string v0, "CALL_TYPE_VOICE"

    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 22
    const-string v0, "CALL_TYPE_VT_TX"

    return-object v0

    .line 24
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 25
    const-string v0, "CALL_TYPE_VT_RX"

    return-object v0

    .line 27
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 28
    const-string v0, "CALL_TYPE_VT"

    return-object v0

    .line 30
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 31
    const-string v0, "CALL_TYPE_VT_NODIR"

    return-object v0

    .line 33
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 34
    const-string v0, "CALL_TYPE_CS_VS_TX"

    return-object v0

    .line 36
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 37
    const-string v0, "CALL_TYPE_CS_VS_RX"

    return-object v0

    .line 39
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 40
    const-string v0, "CALL_TYPE_PS_VS_TX"

    return-object v0

    .line 42
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 43
    const-string v0, "CALL_TYPE_PS_VS_RX"

    return-object v0

    .line 45
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 46
    const-string v0, "CALL_TYPE_UNKNOWN"

    return-object v0

    .line 48
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 49
    const-string v0, "CALL_TYPE_SMS"

    return-object v0

    .line 51
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 52
    const-string v0, "CALL_TYPE_UT"

    return-object v0

    .line 54
    :cond_b
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
