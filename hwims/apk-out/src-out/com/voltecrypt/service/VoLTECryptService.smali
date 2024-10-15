.class public Lcom/voltecrypt/service/VoLTECryptService;
.super Landroid/app/Service;
.source "VoLTECryptService.java"


# static fields
.field private static final BINDER_RESULT_FAIL:I = -0x1

.field private static final BINDER_RESULT_NOT_SUPPORT:I = -0x64

.field private static final BINDER_RESULT_SUCCESS:I = 0x0

.field private static final PERMISSION_KEY:Ljava/lang/String; = "permission"

.field private static final PERMISSION_VALUE:Ljava/lang/String; = "com.westone.permission.VOLTE_SERVICE"

.field private static final TAG:Ljava/lang/String; = "VoLTECryptService"


# instance fields
.field private final mBinder:Lcom/voltecrypt/service/IVoLTECryptService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Lcom/voltecrypt/service/VoLTECryptService$1;

    invoke-direct {v0, p0}, Lcom/voltecrypt/service/VoLTECryptService$1;-><init>(Lcom/voltecrypt/service/VoLTECryptService;)V

    iput-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService;->mBinder:Lcom/voltecrypt/service/IVoLTECryptService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/voltecrypt/service/VoLTECryptService;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/voltecrypt/service/VoLTECryptService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/voltecrypt/service/VoLTECryptService;->checkBinderForUnsupportInterface(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/voltecrypt/service/VoLTECryptService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/voltecrypt/service/VoLTECryptService;

    .line 23
    invoke-direct {p0}, Lcom/voltecrypt/service/VoLTECryptService;->checkBinder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/voltecrypt/service/VoLTECryptService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/voltecrypt/service/VoLTECryptService;
    .param p1, "x1"    # Z

    .line 23
    invoke-direct {p0, p1}, Lcom/voltecrypt/service/VoLTECryptService;->handleEncryptSwitchChanged(Z)V

    return-void
.end method

.method private checkBinder()Z
    .registers 5

    .line 135
    invoke-static {p0}, Lcom/huawei/ims/HemihuaLoaderManager;->getInstance(Landroid/content/Context;)Lcom/huawei/ims/HemihuaLoaderManager;

    move-result-object v0

    .line 136
    .local v0, "manager":Lcom/huawei/ims/HemihuaLoaderManager;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 137
    return v1

    .line 139
    :cond_8
    invoke-virtual {v0, p0}, Lcom/huawei/ims/HemihuaLoaderManager;->isHemihuaAppExist(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "VoLTECryptService"

    if-nez v2, :cond_16

    .line 140
    const-string v2, "checkBinder: expected app is not installed."

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v1

    .line 143
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lcom/huawei/ims/HemihuaLoaderManager;->isPidOfHemihua(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_26

    .line 144
    const-string v2, "checkBinder: not called from expected app."

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v1

    .line 147
    :cond_26
    const/4 v1, 0x1

    return v1
.end method

.method private checkBinderForUnsupportInterface(Ljava/lang/String;)I
    .registers 6
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 152
    return v1

    .line 154
    :cond_8
    invoke-direct {p0}, Lcom/voltecrypt/service/VoLTECryptService;->checkBinder()Z

    move-result v0

    const-string v2, "VoLTECryptService"

    if-nez v0, :cond_25

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": not called from expected app."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v1

    .line 158
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": not support."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/16 v0, -0x64

    return v0
.end method

.method private checkPermission(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 163
    const-string v0, "VoLTECryptService"

    const/4 v1, 0x0

    .line 165
    .local v1, "permission":Ljava/lang/String;
    :try_start_3
    const-string v2, "permission"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/BadParcelableException; {:try_start_3 .. :try_end_9} :catch_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_b

    move-object v1, v0

    .line 174
    :goto_a
    goto :goto_19

    .line 168
    :catch_b
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "checkPermission: got ClassNotFoundException!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 166
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_12
    move-exception v2

    .line 167
    .local v2, "e":Landroid/os/BadParcelableException;
    const-string v3, "checkPermission: got BadParcelableException!"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/BadParcelableException;
    goto :goto_a

    .line 175
    :goto_19
    const-string v0, "com.westone.permission.VOLTE_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private handleEncryptSwitchChanged(Z)V
    .registers 3
    .param p1, "isOn"    # Z

    .line 128
    invoke-static {p0}, Lcom/huawei/ims/HemihuaLoaderManager;->getInstance(Landroid/content/Context;)Lcom/huawei/ims/HemihuaLoaderManager;

    move-result-object v0

    .line 129
    .local v0, "manager":Lcom/huawei/ims/HemihuaLoaderManager;
    if-eqz v0, :cond_9

    .line 130
    invoke-virtual {v0, p0, p1}, Lcom/huawei/ims/HemihuaLoaderManager;->handleEncryptSwitchChanged(Landroid/content/Context;Z)V

    .line 132
    :cond_9
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 105
    const-string v0, "VoLTECryptService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    if-nez p1, :cond_10

    .line 107
    const-string v2, "onBind: no intent."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-object v1

    .line 110
    :cond_10
    invoke-static {}, Lcom/huawei/ims/HemihuaLoaderManager;->isSupportCmccEncrypt()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 111
    const-string v2, "onBind: not support volte encrypt call."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v1

    .line 114
    :cond_1c
    invoke-direct {p0, p1}, Lcom/voltecrypt/service/VoLTECryptService;->checkPermission(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 115
    const-string v2, "onBind: no permission."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v1

    .line 118
    :cond_28
    iget-object v0, p0, Lcom/voltecrypt/service/VoLTECryptService;->mBinder:Lcom/voltecrypt/service/IVoLTECryptService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .line 99
    const-string v0, "VoLTECryptService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 101
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 123
    const-string v0, "VoLTECryptService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    return v0
.end method
