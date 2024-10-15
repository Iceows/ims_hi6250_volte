.class public Lcom/huawei/ims/HemihuaLoaderManager;
.super Ljava/lang/Object;
.source "HemihuaLoaderManager.java"


# static fields
.field private static final BINDER_RESULT_FAIL:I = -0x1

.field private static final BINDER_RESULT_NOT_SUPPORT:I = -0x64

.field private static final BINDER_RESULT_SUCCESS:I = 0x0

.field private static final CLOSE_ENCRYPT_SWITCH:I = 0x0

.field private static final CMCC_ENCRYPT_CALL_SWITCH:I = 0xa

.field private static final ENCRYPTED_VERSION:I = 0x1

.field private static final ENCRYPT_SWITCH_KEY:Ljava/lang/String; = "open"

.field private static final HEMIHUA_PACKAGE_NAME:Ljava/lang/String; = "com.cmcc.hemihua"

.field private static final HEMIHUA_SHA256_FINGERPRINT:Ljava/lang/String; = "88:2D:03:DA:AF:5B:D5:A6:32:A0:EB:01:C2:A4:89:D9:F7:41:10:B2:E0:06:C8:BC:1E:2F:D3:47:8E:14:77:1A"

.field private static final INVALID_PID:I = -0x1

.field private static final IS_SUPPORT_CMCC_ENCRYPT:Z

.field private static final KEY_CMCC_ENCRYPT_VERSION:Ljava/lang/String; = "cmcc_encrypt_version"

.field private static final OPEN_ENCRYPT_SWITCH:I = 0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.huawei.ims"

.field private static final PROP_CMCC_VOLTE_ENCRYPT_ENABLE:Ljava/lang/String; = "ro.config.cmcc.volteencrypt"

.field private static final REGULAR_VERSION:I = 0x0

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.huawei.ims.HemihuaLoaderService"

.field private static final TAG:Ljava/lang/String; = "HemihuaLoaderManager"

.field private static volatile sInstance:Lcom/huawei/ims/HemihuaLoaderManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    nop

    .line 61
    const-string v0, "ro.config.cmcc.volteencrypt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HemihuaLoaderManager;->IS_SUPPORT_CMCC_ENCRYPT:Z

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HemihuaLoaderManager;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public static getHemihuaPackageName()Ljava/lang/String;
    .registers 1

    .line 112
    const-string v0, "com.cmcc.hemihua"

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/ims/HemihuaLoaderManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    sget-object v0, Lcom/huawei/ims/HemihuaLoaderManager;->sInstance:Lcom/huawei/ims/HemihuaLoaderManager;

    if-nez v0, :cond_17

    .line 77
    const-class v0, Lcom/huawei/ims/HemihuaLoaderManager;

    monitor-enter v0

    .line 78
    :try_start_7
    sget-object v1, Lcom/huawei/ims/HemihuaLoaderManager;->sInstance:Lcom/huawei/ims/HemihuaLoaderManager;

    if-nez v1, :cond_12

    .line 79
    new-instance v1, Lcom/huawei/ims/HemihuaLoaderManager;

    invoke-direct {v1, p0}, Lcom/huawei/ims/HemihuaLoaderManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/ims/HemihuaLoaderManager;->sInstance:Lcom/huawei/ims/HemihuaLoaderManager;

    .line 81
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 83
    :cond_17
    :goto_17
    sget-object v0, Lcom/huawei/ims/HemihuaLoaderManager;->sInstance:Lcom/huawei/ims/HemihuaLoaderManager;

    return-object v0
.end method

.method private isRealHemihuaByFingerprint(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    const-string v0, "com.cmcc.hemihua"

    invoke-static {p1, v0}, Lcom/huawei/ims/ImsUtils;->getCertificateSha256Fingerprint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "fingerprint":Ljava/lang/String;
    const-string v1, "88:2D:03:DA:AF:5B:D5:A6:32:A0:EB:01:C2:A4:89:D9:F7:41:10:B2:E0:06:C8:BC:1E:2F:D3:47:8E:14:77:1A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 181
    const/4 v1, 0x0

    return v1

    .line 184
    :cond_10
    const/4 v1, 0x1

    return v1
.end method

.method public static isSupportCmccEncrypt()Z
    .registers 1

    .line 103
    sget-boolean v0, Lcom/huawei/ims/HemihuaLoaderManager;->IS_SUPPORT_CMCC_ENCRYPT:Z

    return v0
.end method


# virtual methods
.method public handleEncryptSwitchChanged(Landroid/content/Context;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOn"    # Z

    .line 163
    if-nez p1, :cond_3

    .line 164
    return-void

    .line 166
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cmcc_encrypt_version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_13

    move v0, v3

    goto :goto_14

    :cond_13
    move v0, v2

    .line 168
    .local v0, "isOnNow":Z
    :goto_14
    if-eq p2, v0, :cond_29

    .line 169
    const/16 v4, 0xa

    .line 170
    nop

    .line 169
    const-string v5, "open"

    invoke-static {p1, v4, v5, p2}, Lcom/huawei/ims/StatisticalHelper;->report(Landroid/content/Context;ILjava/lang/String;I)V

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 173
    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    move v2, v3

    .line 171
    :goto_26
    invoke-static {v4, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEncryptSwitchChanged: from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HemihuaLoaderManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public isHemihuaAppExist(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 141
    return v0

    .line 143
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 144
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_b

    .line 145
    return v0

    .line 148
    :cond_b
    :try_start_b
    const-string v2, "com.huawei.ims"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 149
    invoke-direct {p0, p1}, Lcom/huawei/ims/HemihuaLoaderManager;->isRealHemihuaByFingerprint(Landroid/content/Context;)Z

    move-result v0
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_16} :catch_17

    return v0

    .line 150
    :catch_17
    move-exception v2

    .line 151
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "HemihuaLoaderManager"

    const-string v4, "expected app is not exist."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v0
.end method

.method public isPidOfHemihua(Landroid/content/Context;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .line 123
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 124
    return v0

    .line 126
    :cond_4
    const-string v1, "com.cmcc.hemihua"

    invoke-static {p1, v1}, Lcom/huawei/ims/ImsUtils;->getPidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, "hemihuaPid":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 128
    return v0

    .line 130
    :cond_e
    if-ne p2, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public startHemihuaLoader()V
    .registers 5

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "startIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.ims"

    const-string v3, "com.huawei.ims.HemihuaLoaderService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/huawei/ims/HemihuaLoaderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    const-string v2, "HemihuaLoaderManager"

    const-string v3, "startHemihuaLoader"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method
