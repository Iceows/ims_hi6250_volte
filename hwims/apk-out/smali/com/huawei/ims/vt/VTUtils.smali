.class public Lcom/huawei/ims/vt/VTUtils;
.super Ljava/lang/Object;
.source "VTUtils.java"


# static fields
.field private static final HW_VTFLOW_INFO:Ljava/lang/String; = "ro.config.vt_flow_info"

.field private static final HW_VTLTE_ON:Ljava/lang/String; = "ro.config.hw_vtlte_on"

.field private static IS_VT_FLOW_INFO:Z = false

.field private static final TAG:Ljava/lang/String; = "VTUtils"

.field private static final isDocomo:Z

.field private static mIsVtLteSupported:Z

.field private static preCallDataUsage:J

.field private static totalCallDataUsage:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    const-string v0, "ro.config.hw_vtlte_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/VTUtils;->mIsVtLteSupported:Z

    .line 21
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/huawei/ims/vt/VTUtils;->preCallDataUsage:J

    .line 22
    sput-wide v2, Lcom/huawei/ims/vt/VTUtils;->totalCallDataUsage:J

    .line 24
    const-string v0, "ro.product.custom"

    const-string v2, "NULL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "docomo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/VTUtils;->isDocomo:Z

    .line 43
    const-string v0, "ro.config.vt_flow_info"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/vt/VTUtils;->IS_VT_FLOW_INFO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreCallDataUsage()J
    .locals 2

    .line 31
    sget-wide v0, Lcom/huawei/ims/vt/VTUtils;->preCallDataUsage:J

    return-wide v0
.end method

.method public static getTotalCallDataUsage()J
    .locals 2

    .line 39
    sget-wide v0, Lcom/huawei/ims/vt/VTUtils;->totalCallDataUsage:J

    return-wide v0
.end method

.method public static isDocomo()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/huawei/ims/vt/VTUtils;->isDocomo:Z

    return v0
.end method

.method public static isImsSwitchOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "result":Z
    if-nez p0, :cond_0

    .line 61
    const-string v1, "VTUtils"

    const-string v2, "isImsSwitchOn : context is null, return false."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v0

    .line 64
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/ims/HwImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 65
    invoke-static {p0, v3}, Lcom/android/ims/HwImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    move v0, v1

    .line 66
    const-string v1, "VTUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isImsSwitchOn: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v0
.end method

.method public static isVTSupported()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/huawei/ims/vt/VTUtils;->mIsVtLteSupported:Z

    return v0
.end method

.method public static isVtFlowInfo()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/huawei/ims/vt/VTUtils;->IS_VT_FLOW_INFO:Z

    return v0
.end method

.method public static setPreCallDataUsage(J)V
    .locals 0
    .param p0, "datausage"    # J

    .line 27
    sput-wide p0, Lcom/huawei/ims/vt/VTUtils;->preCallDataUsage:J

    .line 28
    return-void
.end method

.method public static setTotalCallDataUsage(J)V
    .locals 0
    .param p0, "datausage"    # J

    .line 35
    sput-wide p0, Lcom/huawei/ims/vt/VTUtils;->totalCallDataUsage:J

    .line 36
    return-void
.end method
