.class public Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;
.super Ljava/lang/Object;
.source "VolteEncryptTelephonyServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$TeleServiceConnection;
    }
.end annotation


# static fields
.field private static final OBJECT_LOCK:Ljava/lang/Object;

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final TAG:Ljava/lang/String; = "VolteEncryptTelephonyServiceProxy"

.field private static final VOLTE_ENCRYPT_HANDLER_SERVICE_NAME:Ljava/lang/String; = "com.android.phone.VolteEncryptTelephonyService"

.field private static final VOLTE_ENCRYPT_HANDLER_SERVICE_PERMISSION:Ljava/lang/String; = "com.huawei.permission.BIND_VOLTE_ENCRYPT_TELEPHONY_SERVICE"

.field private static sInstance:Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mVolteEncryptTelephonyService:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->OBJECT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 51
    iput-object p1, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->initServiceConnection()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;
    .param p1, "x1"    # Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    .line 29
    invoke-direct {p0, p1}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->onCallHandlerServiceConnected(Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 29
    sget-object v0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->OBJECT_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;

    .line 29
    invoke-direct {p0}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->unbind()V

    return-void
.end method

.method private createServiceConnection()V
    .registers 11

    .line 128
    iget-object v0, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->getInCallEncryptServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding to service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VolteEncryptTelephonyServiceProxy"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v1, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->OBJECT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_1f
    iget-object v2, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    if-nez v2, :cond_d1

    .line 132
    new-instance v2, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$TeleServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$TeleServiceConnection;-><init>(Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy$1;)V

    iput-object v2, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 133
    iget-object v2, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mContext:Landroid/content/Context;

    if-nez v2, :cond_31

    .line 134
    monitor-exit v1

    return-void

    .line 136
    :cond_31
    iget-object v2, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 137
    .local v2, "packageManger":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_3b

    .line 138
    monitor-exit v1

    return-void

    .line 140
    :cond_3b
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 141
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_44

    .line 142
    monitor-exit v1

    return-void

    .line 144
    :cond_44
    const/4 v4, 0x0

    .line 145
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 146
    .local v5, "size":I
    const-string v6, "VolteEncryptTelephonyServiceProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createServiceConnection SIZE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_60
    if-ge v6, v5, :cond_7f

    .line 148
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 152
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_7c

    .line 153
    const-string v8, "com.huawei.permission.BIND_VOLTE_ENCRYPT_TELEPHONY_SERVICE"

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 154
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v4, v8

    .line 155
    goto :goto_7f

    .line 147
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 160
    .end local v6    # "i":I
    :cond_7f
    :goto_7f
    if-eqz v4, :cond_c9

    .line 161
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    const-string v6, "VolteEncryptTelephonyServiceProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "binding to service = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v6, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {v6, v0, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    if-nez v6, :cond_d0

    .line 166
    const-string v6, "VolteEncryptTelephonyServiceProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not bind to default call handler service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 172
    :cond_c9
    const-string v6, "VolteEncryptTelephonyServiceProxy"

    const-string v7, "Default call handler service not found."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v2    # "packageManger":Landroid/content/pm/PackageManager;
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "size":I
    :cond_d0
    :goto_d0
    goto :goto_d8

    .line 175
    :cond_d1
    const-string v2, "VolteEncryptTelephonyServiceProxy"

    const-string v3, "Service connection to telephony service already started."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_d8
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_da
    move-exception v2

    monitor-exit v1
    :try_end_dc
    .catchall {:try_start_1f .. :try_end_dc} :catchall_da

    throw v2
.end method

.method private static getInCallEncryptServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.VolteEncryptTelephonyService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    return-object v0
.end method

.method public static getInstance()Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;
    .registers 1

    .line 70
    sget-object v0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->sInstance:Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/huawei/ims/HwImsServiceImpl;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hwMmTelFeature"    # Lcom/huawei/ims/HwImsServiceImpl;

    .line 62
    sget-object v0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->OBJECT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    sget-object v1, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->sInstance:Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;

    if-nez v1, :cond_e

    .line 64
    new-instance v1, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;

    invoke-direct {v1, p0}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->sInstance:Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;

    .line 66
    :cond_e
    monitor-exit v0

    .line 67
    return-void

    .line 66
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private initServiceCalls()V
    .registers 4

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mVolteEncryptTelephonyService:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    invoke-static {}, Lcom/huawei/ims/VolteEncryptCallCmdService;->getInstance()Lcom/huawei/ims/VolteEncryptCallCmdService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;->startVolteEncryptCallService(Lcom/android/services/telephony/common/IVolteEncryptCmdService;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 217
    goto :goto_12

    .line 215
    :catch_a
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolteEncryptTelephonyServiceProxy"

    const-string v2, "Remote exception calling CallHandlerService::setCallCommandService"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method private initServiceConnection()V
    .registers 3

    .line 89
    sget-object v0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->OBJECT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mVolteEncryptTelephonyService:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    if-nez v1, :cond_a

    .line 91
    invoke-direct {p0}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->createServiceConnection()V

    .line 93
    :cond_a
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private onCallHandlerServiceConnected(Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;)V
    .registers 4
    .param p1, "callHandlerService"    # Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    .line 199
    const-string v0, "VolteEncryptTelephonyServiceProxy"

    const-string v1, "onCallHandlerServiceConnected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->OBJECT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_a
    iput-object p1, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mVolteEncryptTelephonyService:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    .line 204
    invoke-direct {p0}, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->initServiceCalls()V

    .line 205
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v1
.end method

.method private unbind()V
    .registers 5

    .line 181
    sget-object v0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->OBJECT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mVolteEncryptTelephonyService:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 183
    const-string v1, "VolteEncryptTelephonyServiceProxy"

    const-string v3, "Unbinding service!"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-object v2, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mVolteEncryptTelephonyService:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    .line 185
    iget-object v1, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1c

    .line 186
    iget-object v1, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 189
    :cond_1c
    iput-object v2, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 190
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method


# virtual methods
.method public fallBack()V
    .registers 4

    .line 77
    const-string v0, "VolteEncryptTelephonyServiceProxy"

    const-string v1, "fallBack!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/huawei/ims/VolteEncryptTelephonyServiceProxy;->mVolteEncryptTelephonyService:Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;

    if-eqz v1, :cond_15

    .line 80
    :try_start_b
    invoke-interface {v1}, Lcom/android/services/telephony/common/IVolteEncryptTelephonyService;->fallBack()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 83
    goto :goto_15

    .line 81
    :catch_f
    move-exception v1

    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "fallBack exception"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method
