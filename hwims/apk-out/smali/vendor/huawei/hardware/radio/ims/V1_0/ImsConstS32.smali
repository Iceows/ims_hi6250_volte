.class public final Lvendor/huawei/hardware/radio/ims/V1_0/ImsConstS32;
.super Ljava/lang/Object;
.source "ImsConstS32.java"


# static fields
.field public static final IPV4_ADDR_LEN:I = 0x4

.field public static final IPV6_ADDR_LEN:I = 0x10

.field public static final MAX_ECONF_CALLED_NUM:I = 0x5

.field public static final MAX_IMS_CALL_TYPE:I = 0x4

.field public static final MAX_IMS_TECH_TYPE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5
    .param p0, "o"    # I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 32
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 33
    const-string v2, "IPV4_ADDR_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    or-int/lit8 v1, v1, 0x4

    .line 36
    :cond_0
    and-int/lit8 v2, p0, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_1

    .line 37
    const-string v2, "IPV6_ADDR_LEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    or-int/lit8 v1, v1, 0x10

    .line 40
    :cond_1
    and-int/lit8 v2, p0, 0x4

    if-ne v2, v3, :cond_2

    .line 41
    const-string v2, "MAX_IMS_CALL_TYPE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v1, v1, 0x4

    .line 44
    :cond_2
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 45
    const-string v2, "MAX_IMS_TECH_TYPE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    or-int/lit8 v1, v1, 0x1

    .line 48
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 49
    const-string v2, "MAX_ECONF_CALLED_NUM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    or-int/lit8 v1, v1, 0x5

    .line 52
    :cond_4
    if-eq p0, v1, :cond_5

    .line 53
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

    .line 55
    :cond_5
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 12
    const-string v0, "IPV4_ADDR_LEN"

    return-object v0

    .line 14
    :cond_0
    const/16 v1, 0x10

    if-ne p0, v1, :cond_1

    .line 15
    const-string v0, "IPV6_ADDR_LEN"

    return-object v0

    .line 17
    :cond_1
    if-ne p0, v0, :cond_2

    .line 18
    const-string v0, "MAX_IMS_CALL_TYPE"

    return-object v0

    .line 20
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 21
    const-string v0, "MAX_IMS_TECH_TYPE"

    return-object v0

    .line 23
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 24
    const-string v0, "MAX_ECONF_CALLED_NUM"

    return-object v0

    .line 26
    :cond_4
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
