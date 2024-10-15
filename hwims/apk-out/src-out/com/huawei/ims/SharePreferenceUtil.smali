.class public Lcom/huawei/ims/SharePreferenceUtil;
.super Ljava/lang/Object;
.source "SharePreferenceUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getDefaultDevSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 33
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultNormalSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isVersionHigherThanM()Z
    .registers 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static moveSharedPreferencesFrom(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "targetContext"    # Landroid/content/Context;
    .param p1, "sourceContext"    # Landroid/content/Context;
    .param p2, "sharedPreferenceName"    # Ljava/lang/String;

    .line 69
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-nez p2, :cond_7

    goto :goto_c

    .line 72
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 70
    :cond_c
    :goto_c
    const/4 v0, 0x0

    return v0
.end method
