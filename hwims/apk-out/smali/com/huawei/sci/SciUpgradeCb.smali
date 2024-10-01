.class public Lcom/huawei/sci/SciUpgradeCb;
.super Ljava/lang/Object;
.source "SciUpgradeCb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciUpgradeCb$Callback;
    }
.end annotation


# static fields
.field public static final NTYCODE_NO_NEW_VER:I = 0x0

.field public static final NTYCODE_TIMEOUT:I = 0x1

.field public static final NTYCODE_UNKNOWN:I = 0xff

.field static mCallback:Lcom/huawei/sci/SciUpgradeCb$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static setCallback(Lcom/huawei/sci/SciUpgradeCb$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/huawei/sci/SciUpgradeCb$Callback;

    .line 43
    sput-object p0, Lcom/huawei/sci/SciUpgradeCb;->mCallback:Lcom/huawei/sci/SciUpgradeCb$Callback;

    .line 44
    return-void
.end method

.method public static upgradeCbUpgradeCheckNotify(I)V
    .locals 1
    .param p0, "iResult"    # I

    .line 34
    sget-object v0, Lcom/huawei/sci/SciUpgradeCb;->mCallback:Lcom/huawei/sci/SciUpgradeCb$Callback;

    if-nez v0, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciUpgradeCb;->mCallback:Lcom/huawei/sci/SciUpgradeCb$Callback;

    invoke-interface {v0, p0}, Lcom/huawei/sci/SciUpgradeCb$Callback;->sciUpgradeCbUpgradeCheckNotify(I)V

    .line 39
    return-void
.end method

.method public static upgradeCbUpgradeNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p0, "newVersion"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "urlMd5"    # Ljava/lang/String;
    .param p3, "url2"    # Ljava/lang/String;
    .param p4, "url2Md5"    # Ljava/lang/String;
    .param p5, "iForceUpgrade"    # I

    .line 23
    sget-object v0, Lcom/huawei/sci/SciUpgradeCb;->mCallback:Lcom/huawei/sci/SciUpgradeCb$Callback;

    if-nez v0, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    sget-object v1, Lcom/huawei/sci/SciUpgradeCb;->mCallback:Lcom/huawei/sci/SciUpgradeCb$Callback;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/huawei/sci/SciUpgradeCb$Callback;->sciUpgradeCbUpgradeNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    return-void
.end method
