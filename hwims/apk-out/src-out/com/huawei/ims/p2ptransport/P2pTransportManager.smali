.class public Lcom/huawei/ims/p2ptransport/P2pTransportManager;
.super Ljava/lang/Object;
.source "P2pTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;,
        Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;,
        Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;
    }
.end annotation


# static fields
.field private static final DATA_QUEUE_LIMIT_LEN:I = 0xa

.field private static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final DEVICE_ID_LENGTH:I = 0xf

.field private static final HEADER_LEN:I = 0x4

.field private static final INVALID_PID:I = -0x1

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final MAX_THREAD_NUM:I = 0x2

.field private static final MEETIME_PACKAGE_NAME:Ljava/lang/String; = "com.huawei.meetime"

.field private static final MEETIME_SHA256_FINGERPRINT:Ljava/lang/String; = "35:DF:D8:1C:FA:F2:CA:01:26:F0:0B:63:99:F4:5F:B2:BB:CF:66:30:63:6C:46:60:BF:4C:0A:13:2E:EE:EE:4B"

.field private static final MSG_HANDLE_VOIP_DATA:I = 0x65

.field private static final MSG_HANDLE_VPEER_DATA:I = 0x64

.field private static final SEND_TASK_TIME_OUT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "P2pTransportManager"

.field private static final VOICE_DATA:Ljava/lang/String; = "voice_data"

.field private static sP2pTransportManager:Lcom/huawei/ims/p2ptransport/P2pTransportManager;


# instance fields
.field private mConnection:Ljava/nio/channels/SocketChannel;

.field private mFixedTaskPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private volatile mIsP2pTransportEnd:Z

.field private mP2pInputStream:Ljava/io/FileInputStream;

.field private mP2pOutputStream:Ljava/io/FileOutputStream;

.field private mP2pTransportAdapter:Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;

.field private mP2pTransportProxy:Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;

.field private mSendDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mIsP2pTransportEnd:Z

    .line 82
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mSendDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 87
    return-void
.end method

.method static synthetic access$300(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    .line 38
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mSendDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Ljava/io/FileOutputStream;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    .line 38
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    .line 38
    iget-boolean v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mIsP2pTransportEnd:Z

    return v0
.end method

.method static synthetic access$600(Lcom/huawei/ims/p2ptransport/P2pTransportManager;)Ljava/io/FileInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    .line 38
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/ims/p2ptransport/P2pTransportManager;Ljava/lang/String;[B)V
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/p2ptransport/P2pTransportManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->sendVoiceDataToVpeer(Ljava/lang/String;[B)V

    return-void
.end method

.method private checkCallingPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 314
    return v0

    .line 316
    :cond_4
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/ims/p2ptransport/P2pTransportManager;
    .registers 2

    const-class v0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    monitor-enter v0

    .line 95
    :try_start_3
    sget-object v1, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->sP2pTransportManager:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    if-nez v1, :cond_e

    .line 96
    new-instance v1, Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    invoke-direct {v1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;-><init>()V

    sput-object v1, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->sP2pTransportManager:Lcom/huawei/ims/p2ptransport/P2pTransportManager;

    .line 99
    :cond_e
    sget-object v1, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->sP2pTransportManager:Lcom/huawei/ims/p2ptransport/P2pTransportManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 94
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getVpeerProxy()Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pTransportProxy:Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;

    if-eqz v0, :cond_5

    .line 158
    return-object v0

    .line 160
    :cond_5
    const/4 v0, 0x0

    .line 163
    .local v0, "p2pTransportProxy":Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;
    const/4 v1, 0x1

    :try_start_7
    invoke-static {v1}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;->getService(Z)Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;

    move-result-object v1

    move-object v0, v1

    .line 164
    iput-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pTransportProxy:Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_e} :catch_f

    .line 167
    goto :goto_17

    .line 165
    :catch_f
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "P2pTransportManager"

    const-string v3, "getVpeerProxy: p2pTransportProxy got V1_0 exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_17
    iget-object v1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pTransportProxy:Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;

    return-object v1
.end method

.method private isPidOfMeetime(Landroid/content/Context;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .line 320
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 321
    return v0

    .line 323
    :cond_4
    const-string v1, "com.huawei.meetime"

    invoke-static {p1, v1}, Lcom/huawei/ims/ImsUtils;->getPidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 324
    .local v1, "meetimePid":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 325
    return v0

    .line 327
    :cond_e
    if-ne p2, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isRealMeetimeByFingerprint(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 331
    const-string v0, "com.huawei.meetime"

    invoke-static {p1, v0}, Lcom/huawei/ims/ImsUtils;->getCertificateSha256Fingerprint(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "fingerprint":Ljava/lang/String;
    const-string v1, "35:DF:D8:1C:FA:F2:CA:01:26:F0:0B:63:99:F4:5F:B2:BB:CF:66:30:63:6C:46:60:BF:4C:0A:13:2E:EE:EE:4B"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private sendVoiceDataToVpeer(Ljava/lang/String;[B)V
    .registers 7
    .param p1, "devId"    # Ljava/lang/String;
    .param p2, "voiceData"    # [B

    .line 172
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pTransportProxy:Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;

    if-eqz v0, :cond_19

    .line 173
    invoke-static {p2}, Lcom/android/internal/telephony/RIL;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v0

    .line 175
    .local v0, "voiceDataLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :try_start_8
    iget-object v1, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pTransportProxy:Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;

    invoke-interface {v1, p1, v0}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;->send(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 179
    goto :goto_19

    .line 176
    :catch_e
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "P2pTransportManager"

    const-string v3, "SendTask run: Exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->deInit()V

    .line 181
    .end local v0    # "voiceDataLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 4

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pTransportAdapter:Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;

    .line 134
    iput-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pTransportProxy:Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mIsP2pTransportEnd:Z

    .line 136
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pInputStream:Ljava/io/FileInputStream;

    const-string v1, "Unexcepted file exception of output stream."

    const-string v2, "P2pTransportManager"

    if-eqz v0, :cond_18

    .line 138
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14

    .line 141
    goto :goto_18

    .line 139
    :catch_14
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_24

    .line 145
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 148
    goto :goto_24

    .line 146
    :catch_20
    move-exception v0

    .line 147
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mSendDataQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 151
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mFixedTaskPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_30

    .line 152
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 154
    :cond_30
    return-void
.end method

.method public hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->checkCallingPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 303
    return v1

    .line 305
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->isPidOfMeetime(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0, p1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->isRealMeetimeByFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 306
    return v1

    .line 308
    :cond_19
    const-string v0, "P2pTransportManager"

    const-string v1, "has no permission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/os/ParcelFileDescriptor;)V
    .registers 11
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 108
    if-nez p1, :cond_3

    .line 109
    return-void

    .line 111
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mIsP2pTransportEnd:Z

    .line 112
    invoke-direct {p0}, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->getVpeerProxy()Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;

    .line 113
    new-instance v0, Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;-><init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;Lcom/huawei/ims/p2ptransport/P2pTransportManager$1;)V

    iput-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pTransportAdapter:Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;

    .line 114
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pTransportProxy:Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;

    if-eqz v0, :cond_23

    .line 116
    :try_start_15
    iget-object v2, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pTransportAdapter:Lcom/huawei/ims/p2ptransport/P2pTransportManager$P2pTransportAdapter;

    invoke-interface {v0, v2}, Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransport;->setP2pTransportAdapter(Lvendor/huawei/hardware/vpeer/p2ptransport/V1_0/IP2pTransportAdapter;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 119
    goto :goto_23

    .line 117
    :catch_1b
    move-exception v0

    .line 118
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "P2pTransportManager"

    const-string v3, "Vpeer service occurs exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pInputStream:Ljava/io/FileInputStream;

    .line 122
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mP2pOutputStream:Ljava/io/FileOutputStream;

    .line 123
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mFixedTaskPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 125
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mFixedTaskPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;

    invoke-direct {v2, p0, v1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager$SendTask;-><init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;Lcom/huawei/ims/p2ptransport/P2pTransportManager$1;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 126
    iget-object v0, p0, Lcom/huawei/ims/p2ptransport/P2pTransportManager;->mFixedTaskPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;

    invoke-direct {v2, p0, v1}, Lcom/huawei/ims/p2ptransport/P2pTransportManager$ReceiveTask;-><init>(Lcom/huawei/ims/p2ptransport/P2pTransportManager;Lcom/huawei/ims/p2ptransport/P2pTransportManager$1;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method
