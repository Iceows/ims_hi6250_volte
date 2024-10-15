.class public Lcom/huawei/sci/SciSys;
.super Ljava/lang/Object;
.source "SciSys.java"


# static fields
.field public static final EVENT_WHAT:I = 0x0

.field private static final MOD_DRIVE_LOCK:Ljava/lang/Object;

.field public static final SCI_ACC_NET_3GPP_CDMA:I = 0x8

.field public static final SCI_ACC_NET_3GPP_EUTRAN:I = 0x17

.field public static final SCI_ACC_NET_3GPP_EUTRAN_FDD:I = 0x15

.field public static final SCI_ACC_NET_3GPP_EUTRAN_TDD:I = 0x16

.field public static final SCI_ACC_NET_3GPP_EVDO:I = 0x9

.field public static final SCI_ACC_NET_3GPP_GERAN:I = 0x5

.field public static final SCI_ACC_NET_3GPP_HSPA:I = 0xa

.field public static final SCI_ACC_NET_3GPP_UTRAN:I = 0x14

.field public static final SCI_ACC_NET_3GPP_UTRAN_FDD:I = 0x6

.field public static final SCI_ACC_NET_3GPP_UTRAN_TDD:I = 0x7

.field public static final SCI_ACC_NET_802_11A:I = 0x1

.field public static final SCI_ACC_NET_802_11B:I = 0x2

.field public static final SCI_ACC_NET_802_11G:I = 0x3

.field public static final SCI_ACC_NET_802_11N:I = 0x4

.field public static final SCI_ACC_NET_UNKNOWN:I = 0x0

.field public static final SCI_ACC_NET_WMF_MOBILE_WIMAX:I = 0xc

.field private static final SCI_HANDLER:Landroid/os/Handler;

.field private static final SCI_HANDLERX:Landroid/os/Handler;

.field public static final SCI_SERVER_STATUS_CONNECT:I = 0x1

.field public static final SCI_SERVER_STATUS_DISCONNECT:I = 0x0

.field public static final SCI_SERVER_STATUS_TEMPERR:I = 0x2

.field public static final SCI_SRV_DISCONNECT_STATCODE_ACCESSTOKEN_EXPIRED:I = 0x1b

.field public static final SCI_SRV_DISCONNECT_STATCODE_ACCESSTOKEN_INVALID:I = 0x1a

.field public static final SCI_SRV_DISCONNECT_STATCODE_ACCOUNT_EXCEPTION:I = 0x9

.field public static final SCI_SRV_DISCONNECT_STATCODE_APPKEY_INVALID:I = 0x1c

.field public static final SCI_SRV_DISCONNECT_STATCODE_AUTH_FAILED:I = 0x0

.field public static final SCI_SRV_DISCONNECT_STATCODE_AUTH_FAILED_RELOGIN:I = 0x7

.field public static final SCI_SRV_DISCONNECT_STATCODE_CANCEL:I = 0x8

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_ACTION_NEEDED:I = 0xc

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_DISABLED:I = 0xb

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_DORMANT:I = 0xd

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_INVALID_REQ:I = 0x10

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_MSISDN_INVALID:I = 0x19

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_NETPWRK_AUTH_FAILED:I = 0x13

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_OTP_INVALID:I = 0x20

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_PWD_MISSED:I = 0x14

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_CONFIRM_ACK:I = 0x17

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_CONFIRM_REQUEST:I = 0x16

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_REQUEST:I = 0x15

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_RECONFIG_REQUEST_NOTIFY:I = 0x18

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_RETRY_LATER:I = 0x12

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_SERVER_IN_ERR:I = 0x11

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONF_TMP_DISABLED:I = 0x1e

.field public static final SCI_SRV_DISCONNECT_STATCODE_CONNCET_ERR:I = 0x1

.field public static final SCI_SRV_DISCONNECT_STATCODE_DEACTED:I = 0x4

.field public static final SCI_SRV_DISCONNECT_STATCODE_RMVED_USER:I = 0xf

.field public static final SCI_SRV_DISCONNECT_STATCODE_SERVER_BUSY:I = 0x2

.field public static final SCI_SRV_DISCONNECT_STATCODE_SRV_FORCE_LOGOUT:I = 0x5

.field public static final SCI_SRV_DISCONNECT_STATCODE_UNKNOWN_ERR:I = 0x6

.field public static final SCI_SRV_DISCONNECT_STATCODE_UNREG_USER:I = 0xe

.field public static final SCI_SRV_DISCONNECT_STATCODE_USER_SWITCHED:I = 0x1d

.field public static final SCI_SRV_DISCONNECT_STATCODE_WRONG_LOCAL_TIME:I = 0x3

.field public static final SCI_SRV_TMPUNAVAIL_STATCODE_CONNECTING:I = 0x1

.field public static final SCI_SRV_TMPUNAVAIL_STATCODE_DISCONNECTED:I = 0x2

.field public static final SCI_SRV_TMPUNAVAIL_STATCODE_NET_UNAVAILABLE:I = 0x0

.field public static final SCI_SRV_TMPUNAVAIL_STATCODE_OTHER:I = 0x3

.field private static final SDK_HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "SCI"

.field private static final TIMER_ACTIVE_LOCK:Ljava/lang/Object;

.field public static final ZFAILED:I = 0x1

.field public static final ZOK:I

.field private static final ZPAND_MOD_DRIVE_MSG:Ljava/lang/Runnable;

.field private static context:Landroid/content/Context;

.field private static hasInitFlag:Z

.field private static isExistLibInLibPath:Z

.field private static libPath:Ljava/lang/String;

.field private static libPathX:Ljava/lang/String;

.field private static zpandTimerActive:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciSys;->context:Landroid/content/Context;

    .line 198
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/huawei/sci/SciSys;->MOD_DRIVE_LOCK:Ljava/lang/Object;

    .line 200
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/huawei/sci/SciSys;->TIMER_ACTIVE_LOCK:Ljava/lang/Object;

    .line 204
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/sci/SciSys;->hasInitFlag:Z

    .line 207
    new-instance v2, Lcom/huawei/sci/SciSys$1;

    invoke-direct {v2}, Lcom/huawei/sci/SciSys$1;-><init>()V

    sput-object v2, Lcom/huawei/sci/SciSys;->SDK_HANDLER:Landroid/os/Handler;

    .line 225
    new-instance v2, Lcom/huawei/sci/SciSys$2;

    invoke-direct {v2}, Lcom/huawei/sci/SciSys$2;-><init>()V

    sput-object v2, Lcom/huawei/sci/SciSys;->SCI_HANDLER:Landroid/os/Handler;

    .line 232
    new-instance v2, Lcom/huawei/sci/SciSys$3;

    invoke-direct {v2}, Lcom/huawei/sci/SciSys$3;-><init>()V

    sput-object v2, Lcom/huawei/sci/SciSys;->SCI_HANDLERX:Landroid/os/Handler;

    .line 239
    new-instance v2, Lcom/huawei/sci/SciSys$4;

    invoke-direct {v2}, Lcom/huawei/sci/SciSys$4;-><init>()V

    sput-object v2, Lcom/huawei/sci/SciSys;->ZPAND_MOD_DRIVE_MSG:Ljava/lang/Runnable;

    .line 251
    sput-object v0, Lcom/huawei/sci/SciSys;->libPath:Ljava/lang/String;

    .line 253
    sput-object v0, Lcom/huawei/sci/SciSys;->libPathX:Ljava/lang/String;

    .line 255
    sput-boolean v1, Lcom/huawei/sci/SciSys;->isExistLibInLibPath:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(J)I
    .registers 3
    .param p0, "x0"    # J

    .line 24
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSys;->driveSdk(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 24
    sget-object v0, Lcom/huawei/sci/SciSys;->MOD_DRIVE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/huawei/sci/SciSys;->zpandModDriveMsg()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .registers 1

    .line 24
    sget-object v0, Lcom/huawei/sci/SciSys;->TIMER_ACTIVE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/huawei/sci/SciSys;->zpandTimerActive()V

    return-void
.end method

.method public static native clean()V
.end method

.method public static cliCbEvnt(J)I
    .registers 5
    .param p0, "evntId"    # J

    .line 490
    sget-object v0, Lcom/huawei/sci/SciSys;->SDK_HANDLER:Landroid/os/Handler;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 491
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/huawei/sci/SciSys;->SDK_HANDLER:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 493
    .local v1, "isSuccess":Z
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method private static native construct()V
.end method

.method public static destory()V
    .registers 1

    .line 368
    sget-boolean v0, Lcom/huawei/sci/SciSys;->hasInitFlag:Z

    if-eqz v0, :cond_7

    .line 369
    invoke-static {}, Lcom/huawei/sci/SciSys;->clean()V

    .line 372
    :cond_7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/sci/SciSys;->hasInitFlag:Z

    .line 373
    return-void
.end method

.method private static native driveSdk(J)I
.end method

.method public static native getBuildTime()Ljava/lang/String;
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 352
    sget-object v0, Lcom/huawei/sci/SciSys;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static native getDMParamConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getInitFlag()Z
    .registers 1

    .line 361
    sget-boolean v0, Lcom/huawei/sci/SciSys;->hasInitFlag:Z

    return v0
.end method

.method public static native getKeepAliveTimerLen()J
.end method

.method public static native getLastErrNo()J
.end method

.method public static getLibPath()Ljava/lang/String;
    .registers 1

    .line 272
    sget-object v0, Lcom/huawei/sci/SciSys;->libPath:Ljava/lang/String;

    return-object v0
.end method

.method public static native getServerLoginStatus()I
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I
    .registers 6
    .param p0, "contextVal"    # Landroid/content/Context;
    .param p1, "curVersion"    # Ljava/lang/String;
    .param p2, "logCfg"    # Lcom/huawei/sci/SciLogCfg;
    .param p3, "compMask"    # J

    .line 327
    invoke-static {p0}, Lcom/huawei/sci/SciSys;->initLibPath(Landroid/content/Context;)V

    .line 329
    const-string v0, "hw_sys"

    invoke-static {v0}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 330
    const-string v0, "login"

    invoke-static {v0}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 331
    const-string v0, "sci"

    invoke-static {v0}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/huawei/sci/SciSys;->construct()V

    .line 336
    sput-object p0, Lcom/huawei/sci/SciSys;->context:Landroid/content/Context;

    .line 337
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/sci/SciSys;->hasInitFlag:Z

    .line 339
    invoke-static {p1, p2, p3, p4}, Lcom/huawei/sci/SciSys;->init(Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I

    move-result v0

    return v0
.end method

.method public static native init(Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I
.end method

.method private static initLibPath(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 278
    if-nez p0, :cond_3

    .line 279
    return-void

    .line 282
    :cond_3
    sget-object v0, Lcom/huawei/sci/SciSys;->libPath:Ljava/lang/String;

    if-nez v0, :cond_24

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/sci/SciSys;->libPathX:Ljava/lang/String;

    goto :goto_26

    .line 285
    :cond_24
    sput-object v0, Lcom/huawei/sci/SciSys;->libPathX:Ljava/lang/String;

    .line 288
    :goto_26
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/huawei/sci/SciSys;->libPathX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/libhw_sys.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/huawei/sci/SciSys;->isExistLibInLibPath:Z

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExistLibInLibPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/sci/SciSys;->isExistLibInLibPath:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " libPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/sci/SciSys;->libPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " libPathX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/sci/SciSys;->libPathX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCI"

    invoke-static {v2, v1}, Lcom/huawei/sci/SciLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static native isVersionChanged()Z
.end method

.method public static native keepAlive()I
.end method

.method public static loadLib(Ljava/lang/String;)V
    .registers 5
    .param p0, "libName"    # Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isExistLibInLibPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/huawei/sci/SciSys;->isExistLibInLibPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "libPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/huawei/sci/SciSys;->libPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " libName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCI"

    invoke-static {v1, v0}, Lcom/huawei/sci/SciLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 305
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_7d

    .line 307
    :cond_38
    sget-boolean v0, Lcom/huawei/sci/SciSys;->isExistLibInLibPath:Z

    const-string v1, ".so"

    const-string v2, "/lib"

    if-eqz v0, :cond_5b

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/huawei/sci/SciSys;->libPathX:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_7d

    .line 309
    :cond_5b
    sget-object v0, Lcom/huawei/sci/SciSys;->libPath:Ljava/lang/String;

    if-eqz v0, :cond_7a

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/huawei/sci/SciSys;->libPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_7d

    .line 312
    :cond_7a
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 315
    :goto_7d
    return-void
.end method

.method public static native notifyNetConnect(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native notifyNetDisconnect()I
.end method

.method public static native setAppOnForeGround(Z)I
.end method

.method public static native setKeepAliveEnable(Z)I
.end method

.method public static setLibPath(Ljava/lang/String;)V
    .registers 1
    .param p0, "libPathVal"    # Ljava/lang/String;

    .line 263
    sput-object p0, Lcom/huawei/sci/SciSys;->libPath:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public static native setNotifyFilter(ILjava/lang/String;)I
.end method

.method public static native setScreenUnLock(Z)I
.end method

.method public static native setSharingSipStack(Z)I
.end method

.method public static sysCbEvnt(J)I
    .registers 5
    .param p0, "evntId"    # J

    .line 503
    sget-object v0, Lcom/huawei/sci/SciSys;->SCI_HANDLER:Landroid/os/Handler;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 504
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/huawei/sci/SciSys;->SCI_HANDLER:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 506
    .local v1, "isSuccess":Z
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public static sysCbEvntX(J)V
    .registers 5
    .param p0, "evntId"    # J

    .line 515
    sget-object v0, Lcom/huawei/sci/SciSys;->SCI_HANDLERX:Landroid/os/Handler;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 516
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/huawei/sci/SciSys;->SCI_HANDLERX:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 517
    return-void
.end method

.method private static native zpandModDriveMsg()V
.end method

.method public static zpandModPostDrv()I
    .registers 3

    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, "isSuccess":Z
    sget-object v1, Lcom/huawei/sci/SciSys;->ZPAND_MOD_DRIVE_MSG:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    .line 531
    sget-object v2, Lcom/huawei/sci/SciSys;->SDK_HANDLER:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_13

    .line 533
    :cond_c
    const-string v1, "SCI"

    const-string v2, "UT zpandModPostDrv ZPAND_MOD_DRIVE_MSG is null"

    invoke-static {v1, v2}, Lcom/huawei/sci/SciLog;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :goto_13
    if-eqz v0, :cond_17

    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method private static native zpandTimerActive()V
.end method

.method public static zpandTimerDestroy()I
    .registers 1

    .line 563
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciSys;->zpandTimerActive:Ljava/lang/Runnable;

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public static zpandTimerInit()I
    .registers 1

    .line 545
    new-instance v0, Lcom/huawei/sci/SciSys$5;

    invoke-direct {v0}, Lcom/huawei/sci/SciSys$5;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSys;->zpandTimerActive:Ljava/lang/Runnable;

    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public static zpandTimerStart(J)I
    .registers 5
    .param p0, "dwTimeLen"    # J

    .line 576
    const/4 v0, 0x0

    .line 578
    .local v0, "isSuccess":Z
    sget-object v1, Lcom/huawei/sci/SciSys;->zpandTimerActive:Ljava/lang/Runnable;

    if-eqz v1, :cond_c

    .line 579
    sget-object v2, Lcom/huawei/sci/SciSys;->SDK_HANDLER:Landroid/os/Handler;

    invoke-virtual {v2, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_13

    .line 581
    :cond_c
    const-string v1, "SCI"

    const-string v2, "UT zpandTimerStart zpandTimerActive is null"

    invoke-static {v1, v2}, Lcom/huawei/sci/SciLog;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_13
    if-eqz v0, :cond_17

    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method public static zpandTimerStop()I
    .registers 2

    .line 593
    sget-object v0, Lcom/huawei/sci/SciSys;->SDK_HANDLER:Landroid/os/Handler;

    sget-object v1, Lcom/huawei/sci/SciSys;->zpandTimerActive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 595
    const/4 v0, 0x0

    return v0
.end method
