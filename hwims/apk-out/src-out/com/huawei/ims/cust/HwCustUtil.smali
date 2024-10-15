.class public Lcom/huawei/ims/cust/HwCustUtil;
.super Ljava/lang/Object;
.source "HwCustUtil.java"


# static fields
.field public static final IS_VZW:Z

.field private static final VZW_ICCID_BEGIN:Ljava/lang/String; = "891480"

.field private static final VZW_MCCMNC:Ljava/lang/String; = "311810;311480"

.field private static final VZW_ROAMING_MCCMNC:Ljava/lang/String; = "20404"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    const-string v0, "ro.config.hw_opta"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "389"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 23
    const-string v0, "ro.config.hw_optb"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "840"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    sput-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->IS_VZW:Z

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static isVzwCard(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "mccMnc"    # Ljava/lang/String;
    .param p1, "iccId"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "isVzwCard":Z
    if-eqz p0, :cond_3d

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 44
    const-string v1, "311810;311480"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "mccmncs":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 46
    .local v2, "isVzmCard":Z
    const-string v3, "20404"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 47
    .local v3, "isRoamingVzwMccMnc":Z
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_31

    const-string v6, "891480"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    move v6, v4

    goto :goto_32

    :cond_31
    move v6, v5

    .line 48
    .local v6, "isVzwIccId":Z
    :goto_32
    if-eqz v3, :cond_37

    if-eqz v6, :cond_37

    goto :goto_38

    :cond_37
    move v4, v5

    .line 49
    .local v4, "isRoamingVzwCard":Z
    :goto_38
    if-nez v2, :cond_3c

    if-eqz v4, :cond_3d

    .line 50
    :cond_3c
    const/4 v0, 0x1

    .line 53
    .end local v1    # "mccmncs":[Ljava/lang/String;
    .end local v2    # "isVzmCard":Z
    .end local v3    # "isRoamingVzwMccMnc":Z
    .end local v4    # "isRoamingVzwCard":Z
    .end local v6    # "isVzwIccId":Z
    :cond_3d
    return v0
.end method
