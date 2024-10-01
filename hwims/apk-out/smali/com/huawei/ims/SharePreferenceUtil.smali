.class public Lcom/huawei/ims/SharePreferenceUtil;
.super Ljava/lang/Object;
.source "SharePreferenceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultSharedPreferencesCE(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 v0, 0x0

    return-object v0

    .line 24
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSharedPreferencesDE(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 v0, 0x0

    return-object v0

    .line 15
    :cond_0
    nop

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isNOrLater()Z
    .locals 2

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static moveSharedPreferencesFrom(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "targetContext"    # Landroid/content/Context;
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "sharedPreferenceName"    # Ljava/lang/String;

    .line 32
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
