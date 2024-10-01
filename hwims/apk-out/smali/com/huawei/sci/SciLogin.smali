.class public Lcom/huawei/sci/SciLogin;
.super Ljava/lang/Object;
.source "SciLogin.java"


# static fields
.field public static final EN_CRS_CFG_MAJOR_ACCESS_TYPE:I = 0x1f

.field public static final EN_CRS_CFG_MAJOR_BASE_ALL_FAIL_RELOGIN_TIMER_LEN:I = 0x4f

.field public static final EN_CRS_CFG_MAJOR_BASE_NOT_ALL_FAIL_RELOGIN_TIMER_LEN:I = 0x50

.field public static final EN_CRS_CFG_MAJOR_CELL_ID:I = 0x20

.field public static final EN_CRS_CFG_MAJOR_DM_BACK_UP_PARAM:I = 0x51

.field public static final EN_CRS_CFG_MAJOR_DM_HTTPS_PORT:I = 0x13

.field public static final EN_CRS_CFG_MAJOR_DM_HTTP_PORT:I = 0x12

.field public static final EN_CRS_CFG_MAJOR_DM_IP:I = 0x1

.field public static final EN_CRS_CFG_MAJOR_DM_MODE:I = 0x0

.field public static final EN_CRS_CFG_MAJOR_DM_PORT:I = 0x2

.field public static final EN_CRS_CFG_MAJOR_DM_SDK_VERSION:I = 0x14

.field public static final EN_CRS_CFG_MAJOR_GSMA_CHECK:I = 0x49

.field public static final EN_CRS_CFG_MAJOR_IMEI:I = 0x21

.field public static final EN_CRS_CFG_MAJOR_IMPI_FORMAT:I = 0x53

.field public static final EN_CRS_CFG_MAJOR_IMS_DOMAIN:I = 0x5

.field public static final EN_CRS_CFG_MAJOR_IMS_IP:I = 0x3

.field public static final EN_CRS_CFG_MAJOR_IMS_PORT:I = 0x4

.field public static final EN_CRS_CFG_MAJOR_IMS_REG_EXPIRES:I = 0x6

.field public static final EN_CRS_CFG_MAJOR_MAC_ADDR:I = 0x3b

.field public static final EN_CRS_CFG_MAJOR_MAX_RELOGIN_TIMER_LEN:I = 0x4e

.field public static final EN_CRS_CFG_MAJOR_MSISDN_FOR_AUTO_RELOGIN:I = 0x59

.field public static final EN_CRS_CFG_MAJOR_MULTI_DEV:I = 0x48

.field public static final EN_CRS_CFG_MAJOR_NAT_KEEP_ALIVE:I = 0x4b

.field public static final EN_CRS_CFG_MAJOR_NICK_NAME:I = 0xe

.field public static final EN_CRS_CFG_MAJOR_RCS_FRAME_WORK_TYPE:I = 0x17

.field public static final EN_CRS_CFG_MAJOR_RCS_MODULE:I = 0x18

.field public static final EN_CRS_CFG_MAJOR_REG_MSISDN:I = 0x4a

.field public static final EN_CRS_CFG_MAJOR_RPG_IP:I = 0x7

.field public static final EN_CRS_CFG_MAJOR_RPG_PORT:I = 0x8

.field public static final EN_CRS_CFG_MAJOR_SIP_REGISTER_WITH_AUTH:I = 0x54

.field public static final EN_CRS_CFG_MAJOR_SIP_SIGNAL_WITH_AUTH:I = 0x52

.field public static final EN_CRS_CFG_MAJOR_SIP_TPT_RETRY_MAX_TIMES:I = 0x4d

.field public static final EN_CRS_CFG_MAJOR_SUPPORT_BARCYCLE:I = 0x55

.field public static final EN_CRS_CFG_MAJOR_SVN_COUNT:I = 0xb

.field public static final EN_CRS_CFG_MAJOR_SVN_IP:I = 0xc

.field public static final EN_CRS_CFG_MAJOR_SVN_PASSWORD:I = 0xa

.field public static final EN_CRS_CFG_MAJOR_SVN_PORT:I = 0xd

.field public static final EN_CRS_CFG_MAJOR_SVN_USER_NAME:I = 0x9

.field public static final EN_CRS_CFG_MAJOR_TEL_NUMBER_WITH_COUNTRY_CODE:I = 0x5a

.field public static final EN_CRS_CFG_MAJOR_TPT_TYPE:I = 0x11

.field public static final EN_CRS_CFG_MAJOR_UPLOG_AUTH_TYPE:I = 0x57

.field public static final EN_CRS_CFG_MAJOR_USER_AGENT:I = 0x10

.field public static final EN_CRS_CFG_MINOR_BUTT:I = 0x7fffffff

.field public static final EN_CRS_CFG_RCS_FRAME_WORK_VALUE_NOT_RCS:Ljava/lang/String; = "255"

.field public static final EN_CRS_CFG_RCS_FRAME_WORK_VALUE_RCS:Ljava/lang/String; = "0"

.field public static final EN_CRS_CFG_RCS_FRAME_WORK_VALUE_RCSE:Ljava/lang/String; = "1"

.field public static final EN_CRS_CFG_RCS_FRAME_WORK_VALUE_RCS_RCSE:Ljava/lang/String; = "2"

.field public static final EN_CRS_CFG_RCS_FRAME_WORK_VALUE_VOBB:Ljava/lang/String; = "3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native cleanUserPassword(Ljava/lang/String;)I
.end method

.method public static native delUser(Ljava/lang/String;)I
.end method

.method public static native getAllUser()[Ljava/lang/String;
.end method

.method public static native getAssoUri(J)Ljava/lang/String;
.end method

.method public static native getAssoUriSize()J
.end method

.method public static native getCfgValue(II)Ljava/lang/String;
.end method

.method public static native getLastUserInfo()Lcom/huawei/sci/SciLoginUserInfo;
.end method

.method public static native getLastUserLoginCfg()Lcom/huawei/sci/SciCfgLogin;
.end method

.method public static native getMwiFaxMessageCount([I)I
.end method

.method public static native getMwiMessageAccount()Ljava/lang/String;
.end method

.method public static native getMwiMessageWait()Z
.end method

.method public static native getMwiVideoMessageCount([I)I
.end method

.method public static native getMwiVoiceMessageCount([I)I
.end method

.method public static native getUserInfo(Ljava/lang/String;)Lcom/huawei/sci/SciLoginUserInfo;
.end method

.method public static native getUserLoginCfg(Ljava/lang/String;)Lcom/huawei/sci/SciCfgLogin;
.end method

.method public static native initLastUserInfo()I
.end method

.method public static login(Lcom/huawei/sci/SciLoginUserInfo;)I
    .locals 1
    .param p0, "userInfo"    # Lcom/huawei/sci/SciLoginUserInfo;

    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/sci/SciLogin;->login(Lcom/huawei/sci/SciLoginUserInfo;Lcom/huawei/sci/SciCfgLogin;)I

    move-result v0

    return v0
.end method

.method public static native login(Lcom/huawei/sci/SciLoginUserInfo;Lcom/huawei/sci/SciCfgLogin;)I
.end method

.method public static native logout()I
.end method

.method public static native pushRefreshRegister()I
.end method

.method public static native setAllUserSize(J)I
.end method

.method public static native setAuthExt(Ljava/lang/String;)I
.end method

.method public static native setCfgValue(IILjava/lang/String;)I
.end method
