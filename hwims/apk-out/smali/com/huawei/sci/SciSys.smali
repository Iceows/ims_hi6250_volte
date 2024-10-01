.class public Lcom/huawei/sci/SciSys;
.super Ljava/lang/Object;
.source "SciSys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/sci/SciSys$SYS_TIME;
    }
.end annotation


# static fields
.field public static final EVENT_WHAT:I = 0x0

.field public static final LOG_DIR:Ljava/lang/String; = "hrslog"

.field public static final LOG_QOE_DIR:Ljava/lang/String; = "qoelog"

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

.field private static final TAG:Ljava/lang/String; = "SCI"

.field public static final ZFAILED:I = 0x1

.field public static final ZOK:I

.field private static bInitFlag:Z

.field private static deleteLogPath:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mExistLibInLibPath:Z

.field private static mLibPath:Ljava/lang/String;

.field private static mLibPathX:Ljava/lang/String;

.field private static final mSciHandler:Landroid/os/Handler;

.field private static final mSciHandlerX:Landroid/os/Handler;

.field private static final mSdkHandler:Landroid/os/Handler;

.field private static mWorkPath:Ljava/lang/String;

.field private static final mZpandModDriveMsg:Ljava/lang/Runnable;

.field private static mZpandTimerActive:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciSys;->mContext:Landroid/content/Context;

    .line 83
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/sci/SciSys;->bInitFlag:Z

    .line 85
    const-string v2, "/data/data/com.huawei.ims/caas"

    sput-object v2, Lcom/huawei/sci/SciSys;->deleteLogPath:Ljava/lang/String;

    .line 88
    new-instance v2, Lcom/huawei/sci/SciSys$1;

    invoke-direct {v2}, Lcom/huawei/sci/SciSys$1;-><init>()V

    sput-object v2, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    .line 102
    new-instance v2, Lcom/huawei/sci/SciSys$2;

    invoke-direct {v2}, Lcom/huawei/sci/SciSys$2;-><init>()V

    sput-object v2, Lcom/huawei/sci/SciSys;->mSciHandler:Landroid/os/Handler;

    .line 108
    new-instance v2, Lcom/huawei/sci/SciSys$3;

    invoke-direct {v2}, Lcom/huawei/sci/SciSys$3;-><init>()V

    sput-object v2, Lcom/huawei/sci/SciSys;->mSciHandlerX:Landroid/os/Handler;

    .line 117
    new-instance v2, Lcom/huawei/sci/SciSys$4;

    invoke-direct {v2}, Lcom/huawei/sci/SciSys$4;-><init>()V

    sput-object v2, Lcom/huawei/sci/SciSys;->mZpandModDriveMsg:Ljava/lang/Runnable;

    .line 127
    sput-object v0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    .line 128
    sput-object v0, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    .line 129
    sput-boolean v1, Lcom/huawei/sci/SciSys;->mExistLibInLibPath:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    return-void
.end method

.method static synthetic access$000(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 17
    invoke-static {p0, p1}, Lcom/huawei/sci/SciSys;->driveSdk(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 17
    invoke-static {}, Lcom/huawei/sci/SciSys;->zpandModDriveMsg()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 17
    invoke-static {}, Lcom/huawei/sci/SciSys;->zpandTimerActive()V

    return-void
.end method

.method public static native clean()V
.end method

.method public static cliCbEvnt(J)I
    .locals 3
    .param p0, "zEvntId"    # J

    .line 271
    sget-object v0, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 272
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 274
    .local v1, "ret":Z
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method private static native construct()V
.end method

.method private static createLogPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pcWorkPath"    # Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hrslog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/sci/FileUtils;->createDir(Ljava/lang/String;)Ljava/io/File;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hrslog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "pcLogPath":Ljava/lang/String;
    return-object v0
.end method

.method private static createLogQoePath(Ljava/lang/String;)V
    .locals 2
    .param p0, "pcWorkPath"    # Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "qoelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/sci/FileUtils;->createDir(Ljava/lang/String;)Ljava/io/File;

    .line 214
    return-void
.end method

.method public static native decryptData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static destory()V
    .locals 1

    .line 225
    sget-boolean v0, Lcom/huawei/sci/SciSys;->bInitFlag:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/huawei/sci/SciSys;->clean()V

    .line 229
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/sci/SciSys;->bInitFlag:Z

    .line 230
    return-void
.end method

.method private static native driveSci(J)I
.end method

.method private static native driveSdk(J)I
.end method

.method public static native encryptData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getBuildTime()Ljava/lang/String;
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 197
    sget-object v0, Lcom/huawei/sci/SciSys;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static native getDMParamConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getInitFlag()Z
    .locals 1

    .line 221
    sget-boolean v0, Lcom/huawei/sci/SciSys;->bInitFlag:Z

    return v0
.end method

.method public static native getKeepAliveTimerLen()J
.end method

.method public static native getLastErrNo()J
.end method

.method public static getLibPath()Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getLogPathInWorkPath()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hrslog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogQoePathInWorkPath()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "qoelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native getServerLoginStatus()I
.end method

.method public static native getVersion()Ljava/lang/String;
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "pcCurVersion"    # Ljava/lang/String;
    .param p2, "logCfg"    # Lcom/huawei/sci/SciLogCfg;
    .param p3, "dwCompMask"    # J

    .line 179
    invoke-static {p0}, Lcom/huawei/sci/SciSys;->initLibPath(Landroid/content/Context;)V

    .line 181
    const-string v0, "hw_sys"

    invoke-static {v0}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 182
    const-string v0, "login"

    invoke-static {v0}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 183
    const-string v0, "sci"

    invoke-static {v0}, Lcom/huawei/sci/SciSys;->loadLib(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/huawei/sci/SciSys;->construct()V

    .line 189
    sput-object p0, Lcom/huawei/sci/SciSys;->mContext:Landroid/content/Context;

    .line 191
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/sci/SciSys;->bInitFlag:Z

    .line 193
    invoke-static {p1, p2, p3, p4}, Lcom/huawei/sci/SciSys;->init(Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I

    move-result v0

    return v0
.end method

.method public static native init(Ljava/lang/String;Lcom/huawei/sci/SciLogCfg;J)I
.end method

.method private static initLibPath(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 141
    if-nez p0, :cond_0

    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 144
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

    sput-object v0, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    sput-object v0, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    .line 150
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/libhw_sys.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/sci/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/sci/SciSys;->mExistLibInLibPath:Z

    .line 152
    const-string v0, "SCI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExistLibInLibPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/sci/SciSys;->mExistLibInLibPath:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLibPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mLibPathX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static native isVersionChanged()Z
.end method

.method public static native keepAlive()I
.end method

.method public static loadLib(Ljava/lang/String;)V
    .locals 3
    .param p0, "libName"    # Ljava/lang/String;

    .line 158
    const-string v0, "SCI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExistLibInLibPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/huawei/sci/SciSys;->mExistLibInLibPath:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLibPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " libName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/sci/SciLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    sget-boolean v0, Lcom/huawei/sci/SciSys;->mExistLibInLibPath:Z

    if-eqz v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mLibPathX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    sget-object v0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 175
    :goto_0
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
    .locals 0
    .param p0, "libPath"    # Ljava/lang/String;

    .line 132
    sput-object p0, Lcom/huawei/sci/SciSys;->mLibPath:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public static native setNotifyFilter(ILjava/lang/String;)I
.end method

.method public static native setScreenUnLock(Z)I
.end method

.method public static native setSharingSipStack(Z)I
.end method

.method public static sysCbEvnt(J)I
    .locals 3
    .param p0, "zEvntId"    # J

    .line 279
    sget-object v0, Lcom/huawei/sci/SciSys;->mSciHandler:Landroid/os/Handler;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 280
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/huawei/sci/SciSys;->mSciHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 282
    .local v1, "ret":Z
    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public static sysCbEvntX(J)V
    .locals 3
    .param p0, "zEvntId"    # J

    .line 287
    sget-object v0, Lcom/huawei/sci/SciSys;->mSciHandlerX:Landroid/os/Handler;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/huawei/sci/SciSys;->mSciHandlerX:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    return-void
.end method

.method public static native transferTime2SysTime(J[Lcom/huawei/sci/SciSys$SYS_TIME;)I
.end method

.method private static native zpandModDriveMsg()V
.end method

.method public static zpandModPostDrv()I
    .locals 3

    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "ret":Z
    sget-object v1, Lcom/huawei/sci/SciSys;->mZpandModDriveMsg:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 303
    sget-object v1, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    sget-object v2, Lcom/huawei/sci/SciSys;->mZpandModDriveMsg:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    goto :goto_0

    .line 307
    :cond_0
    const-string v1, "SCI"

    const-string v2, "UT zpandModPostDrv mZpandModDriveMsg is null"

    invoke-static {v1, v2}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static native zpandTimerActive()V
.end method

.method public static zpandTimerDestroy()I
    .locals 1

    .line 327
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/sci/SciSys;->mZpandTimerActive:Ljava/lang/Runnable;

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public static zpandTimerInit()I
    .locals 1

    .line 315
    new-instance v0, Lcom/huawei/sci/SciSys$5;

    invoke-direct {v0}, Lcom/huawei/sci/SciSys$5;-><init>()V

    sput-object v0, Lcom/huawei/sci/SciSys;->mZpandTimerActive:Ljava/lang/Runnable;

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public static zpandTimerStart(J)I
    .locals 3
    .param p0, "dwTimeLen"    # J

    .line 337
    const/4 v0, 0x0

    .line 339
    .local v0, "ret":Z
    sget-object v1, Lcom/huawei/sci/SciSys;->mZpandTimerActive:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 341
    sget-object v1, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    sget-object v2, Lcom/huawei/sci/SciSys;->mZpandTimerActive:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_0

    .line 345
    :cond_0
    const-string v1, "SCI"

    const-string v2, "UT zpandTimerStart mZpandTimerActive is null"

    invoke-static {v1, v2}, Lcom/huawei/sci/SciLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static zpandTimerStop()I
    .locals 2

    .line 353
    sget-object v0, Lcom/huawei/sci/SciSys;->mSdkHandler:Landroid/os/Handler;

    sget-object v1, Lcom/huawei/sci/SciSys;->mZpandTimerActive:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    const/4 v0, 0x0

    return v0
.end method
