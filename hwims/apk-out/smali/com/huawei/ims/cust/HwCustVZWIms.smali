.class public Lcom/huawei/ims/cust/HwCustVZWIms;
.super Ljava/lang/Object;
.source "HwCustVZWIms.java"


# static fields
.field private static final IMS_REG_MODE_NONE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "HwCustVZWIms"

.field private static final VZW_IMS_REG_MODE:Ljava/lang/String; = "vzw_ims_reg_mode_sub_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanVZWImsRegMode(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-void

    .line 30
    :cond_0
    const-string v0, "HwCustVZWIms"

    const-string v1, "cleanVZWImsRegMode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/huawei/ims/cust/HwCustVZWIms;->getVZWImsRegKey(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 32
    return-void
.end method

.method public static getVZWImsRegKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # I

    .line 35
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

.method public static setVZWImsRegMode(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "regMode"    # I
    .param p2, "subId"    # I
    .param p3, "mccMnc"    # Ljava/lang/String;
    .param p4, "iccId"    # Ljava/lang/String;

    .line 18
    if-nez p0, :cond_0

    .line 19
    return-void

    .line 21
    :cond_0
    const-string v0, "HwCustVZWIms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p3, p4}, Lcom/huawei/ims/cust/HwCustUtil;->isVzwCard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    move p1, v0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Lcom/huawei/ims/cust/HwCustVZWIms;->getVZWImsRegKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 24
    return-void
.end method
