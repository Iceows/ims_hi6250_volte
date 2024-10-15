.class public final Lvendor/huawei/hardware/radio/ims/V2_0/RILUICCAUTHRESPSTATUSTYPEENUM;
.super Ljava/lang/Object;
.source "RILUICCAUTHRESPSTATUSTYPEENUM.java"


# static fields
.field public static final AUTH_RESP_FAIL:I = 0x1

.field public static final AUTH_RESP_SUCCESS:I = 0x0

.field public static final AUTH_RESP_SYNC_FAIL:I = 0x2

.field public static final AUTH_RESP_UNSUPPORTED:I = 0x3


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

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 28
    .local v1, "flipped":I
    const-string v2, "AUTH_RESP_SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 30
    const-string v2, "AUTH_RESP_FAIL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    or-int/lit8 v1, v1, 0x1

    .line 33
    :cond_17
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 34
    const-string v2, "AUTH_RESP_SYNC_FAIL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    or-int/lit8 v1, v1, 0x2

    .line 37
    :cond_23
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2f

    .line 38
    const-string v2, "AUTH_RESP_UNSUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    or-int/lit8 v1, v1, 0x3

    .line 41
    :cond_2f
    if-eq p0, v1, :cond_4b

    .line 42
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

    .line 44
    :cond_4b
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 10
    if-nez p0, :cond_5

    .line 11
    const-string v0, "AUTH_RESP_SUCCESS"

    return-object v0

    .line 13
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 14
    const-string v0, "AUTH_RESP_FAIL"

    return-object v0

    .line 16
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 17
    const-string v0, "AUTH_RESP_SYNC_FAIL"

    return-object v0

    .line 19
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 20
    const-string v0, "AUTH_RESP_UNSUPPORTED"

    return-object v0

    .line 22
    :cond_17
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
