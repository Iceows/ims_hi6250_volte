.class public Lcom/huawei/ims/cust/HwCustVzwIms;
.super Ljava/lang/Object;
.source "HwCustVzwIms.java"


# static fields
.field private static final IMS_REG_MODE_NONE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "HwCustVzwIms"

.field private static final VZW_IMS_REG_MODE:Ljava/lang/String; = "vzw_ims_reg_mode_sub_"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static cleanVzwImsRegMode(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 55
    if-nez p0, :cond_3

    .line 56
    return-void

    .line 58
    :cond_3
    const-string v0, "HwCustVzwIms"

    const-string v1, "cleanVzwImsRegMode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/huawei/ims/cust/HwCustVzwIms;->getVzwImsRegKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    return-void
.end method

.method public static getVzwImsRegKey(I)Ljava/lang/String;
    .registers 3
    .param p0, "subId"    # I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vzw_ims_reg_mode_sub_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setVzwImsRegMode(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regMode"    # I
    .param p2, "subId"    # I
    .param p3, "mccMnc"    # Ljava/lang/String;
    .param p4, "iccId"    # Ljava/lang/String;

    .line 40
    if-nez p0, :cond_3

    .line 41
    return-void

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HwCustVzwIms"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p3, p4}, Lcom/huawei/ims/cust/HwCustUtil;->isVzwCard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, p1

    goto :goto_22

    :cond_21
    const/4 v0, -0x1

    .line 45
    .local v0, "regModeToSave":I
    :goto_22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Lcom/huawei/ims/cust/HwCustVzwIms;->getVzwImsRegKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 46
    return-void
.end method
