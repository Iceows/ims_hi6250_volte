.class public Lcom/huawei/ims/vt/VtUtils;
.super Ljava/lang/Object;
.source "VtUtils.java"


# static fields
.field private static final HW_VTFLOW_INFO:Ljava/lang/String; = "ro.config.vt_flow_info"

.field private static final HW_VTLTE_ON:Ljava/lang/String; = "ro.config.hw_vtlte_on"

.field private static final IS_DOCOMO:Z

.field private static final IS_VT_FLOW_INFO:Z

.field private static final TAG:Ljava/lang/String; = "VtUtils"

.field private static preCallDataUsage:J

.field private static sIsVtLteSupported:Z

.field private static totalCallDataUsage:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-string v0, "ro.product.custom"

    const-string v1, "NULL"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "docomo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/VtUtils;->IS_DOCOMO:Z

    .line 30
    const/4 v0, 0x0

    const-string v1, "ro.config.vt_flow_info"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/huawei/ims/vt/VtUtils;->IS_VT_FLOW_INFO:Z

    .line 32
    const-string v1, "ro.config.hw_vtlte_on"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/VtUtils;->sIsVtLteSupported:Z

    .line 36
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/huawei/ims/vt/VtUtils;->preCallDataUsage:J

    .line 38
    sput-wide v0, Lcom/huawei/ims/vt/VtUtils;->totalCallDataUsage:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getPreCallDataUsage()J
    .registers 2

    .line 49
    sget-wide v0, Lcom/huawei/ims/vt/VtUtils;->preCallDataUsage:J

    return-wide v0
.end method

.method public static getTotalCallDataUsage()J
    .registers 2

    .line 57
    sget-wide v0, Lcom/huawei/ims/vt/VtUtils;->totalCallDataUsage:J

    return-wide v0
.end method

.method public static isDocomo()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/huawei/ims/vt/VtUtils;->IS_DOCOMO:Z

    return v0
.end method

.method public static isImsSwitchOn(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "isImsSwitchOn":Z
    const-string v1, "VtUtils"

    if-nez p0, :cond_b

    .line 98
    const-string v2, "isImsSwitchOn : context is null, return false."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v0

    .line 101
    :cond_b
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/ims/HwImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_19

    .line 102
    invoke-static {p0, v4}, Lcom/android/ims/HwImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    move v2, v4

    :cond_1a
    move v0, v2

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isImsSwitchOn: isImsSwitchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0
.end method

.method public static isVtFlowInfo()Z
    .registers 1

    .line 66
    sget-boolean v0, Lcom/huawei/ims/vt/VtUtils;->IS_VT_FLOW_INFO:Z

    return v0
.end method

.method public static isVtSupported()Z
    .registers 1

    .line 75
    sget-boolean v0, Lcom/huawei/ims/vt/VtUtils;->sIsVtLteSupported:Z

    return v0
.end method

.method public static setPreCallDataUsage(J)V
    .registers 2
    .param p0, "datausage"    # J

    .line 45
    sput-wide p0, Lcom/huawei/ims/vt/VtUtils;->preCallDataUsage:J

    .line 46
    return-void
.end method

.method public static setTotalCallDataUsage(J)V
    .registers 2
    .param p0, "datausage"    # J

    .line 53
    sput-wide p0, Lcom/huawei/ims/vt/VtUtils;->totalCallDataUsage:J

    .line 54
    return-void
.end method
