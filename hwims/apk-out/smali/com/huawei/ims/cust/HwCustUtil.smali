.class public Lcom/huawei/ims/cust/HwCustUtil;
.super Ljava/lang/Object;
.source "HwCustUtil.java"


# static fields
.field private static final VZW_ICCID_BEGIN:Ljava/lang/String; = "891480"

.field private static final VZW_MCCMNC:Ljava/lang/String; = "311810;311480"

.field private static final VZW_ROAMING_MCCMNC:Ljava/lang/String; = "20404"

.field public static final isVZW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "389"

    const-string v1, "ro.config.hw_opta"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "840"

    const-string v1, "ro.config.hw_optb"

    .line 17
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/huawei/ims/cust/HwCustUtil;->isVZW:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVzwCard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mccMnc"    # Ljava/lang/String;
    .param p1, "iccId"    # Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "isVZWCard":Z
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    const-string v1, "311810;311480"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "mccmncs":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "20404"

    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const-string v2, "891480"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 29
    .end local v1    # "mccmncs":[Ljava/lang/String;
    :cond_1
    return v0
.end method
