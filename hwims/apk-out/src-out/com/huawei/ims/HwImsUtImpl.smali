.class public Lcom/huawei/ims/HwImsUtImpl;
.super Lcom/huawei/ims/ImsUtImpl;
.source "HwImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;,
        Lcom/huawei/ims/HwImsUtImpl$UtServiceHandler;,
        Lcom/huawei/ims/HwImsUtImpl$UtData;,
        Lcom/huawei/ims/HwImsUtImpl$UtCmd;,
        Lcom/huawei/ims/HwImsUtImpl$CallWaitingSyncState;,
        Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;,
        Lcom/huawei/ims/HwImsUtImpl$CmdToken;,
        Lcom/huawei/ims/HwImsUtImpl$CmdState;,
        Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    }
.end annotation


# static fields
.field private static final ACTION_MAPCON_SERVICE_FAILED:Ljava/lang/String; = "com.hisi.mapcon.servicefailed"

.field private static final CALL_SDK_FAILED:I = -0x1

.field private static final CALL_SDK_SUCCESSFULLY:I = 0x0

.field private static final CALL_WAITING_ACTIVE:I = 0x1

.field private static final CALL_WAITING_DEACTIVE:I = 0x0

.field private static final CARD_VOLTE_FLAG:[Ljava/lang/String;

.field private static final CATEGORY_DATA_OR_WIFI_CONNECTION_STATUS:Ljava/lang/String; = "@hwBrExpand@ConnectStatus=MOBILEDATACON|ConnectStatus=WIFIDATADSCON"

.field private static final CFT_DATE_NUM:I = 0x2

.field private static final CF_REASON_TIME:I = 0x6

.field private static final CLEAR_TCP_GBA_PARM:I = 0x0

.field private static final CLEAR_TCP_GBA_UTCFG_PARM:I = 0x1

.field private static final CLIR_PRESENTATION_ALLOWED_TEMPORARY:I = 0x4

.field private static final CONNECT_INFO_ERRORCODE:Ljava/lang/String; = "ut409perfix"

.field private static final DC_ALARM_IN_MS:I = 0x2710

.field private static final DEFAULT_CURRENT_SLOT_ID:I = -0x1

.field private static final DEFAULT_NO_REPLY_TIME:I = 0x14

.field private static final DEFAULT_NO_REPLY_TIMER:I = -0x1

.field private static final EN_MUTF_EXTPARAM_CFG_BSF_USER_AGENT:I = 0x1

.field private static final EN_MUTF_EXTPARAM_CFG_NAF_USER_AGENT:I = 0x0

.field private static final EVENT_ECT_RESULT:I = 0x32

.field private static final EVENT_GET_CS_CALL_WAITING_DONE:I = 0x1b

.field private static final EVENT_QUERY_CALL_WAITING:I = 0x14

.field private static final EVENT_QUERY_CLIR:I = 0x16

.field private static final EVENT_SET_CS_CALL_WAITING_DONE:I = 0x1c

.field private static final EVENT_SET_CS_CALL_WAITING_NONE_SYNC:I = 0x33

.field private static final EVENT_SYNC_CLIR_TO_IMS_DONE:I = 0x1f

.field private static final EVENT_SYNC_CW_TO_CS_DONE:I = 0x1e

.field private static final EVENT_SYNC_CW_TO_IMS_DONE:I = 0x1d

.field private static final EVENT_UPDATE_CALL_WAITING:I = 0x15

.field private static final EVENT_UPDATE_CLIR:I = 0x17

.field private static final FLAG_DEFAULT_VOLTE_VALUE:I = -0x1

.field private static final FLAG_IS_NOT_VOLTE:I = 0x0

.field private static final FLAG_IS_VOLTE:I = 0x1

.field private static final GENERAL_TELEPHONE_NUMBER:I = 0x81

.field private static final GET_CALL_WAITING_DURATION_TIME:I = 0x5

.field private static final GROUP_TWO:I = 0x2

.field private static final HANDLER_ARG_RESERVE:I = 0x0

.field private static final ILLEGAL_NUMBER:I = -0x1

.field private static final IMS_DATA_CONNECTION_KEEPALIVE_IN_MS:I = 0x7530

.field private static final IMS_DATA_CONNECTION_TIMEOUT_IN_MS:I = 0x2710

.field private static final IMS_GET_HOST_NAME_DELAY_IN_MS:I = 0x64

.field private static final INTERNATIONAL_TELEPHONE_NUMBER:I = 0x91

.field private static final INVALID_TIME:I = -0x1

.field private static final INVALID_VALUE:I = -0x1

.field private static final IS_DEBUG:Z = false

.field private static final IS_LOCAL_CALL_WAITING_DEFAULT_VALUE:Z = true

.field private static final IS_UT_USE_IMSAPN:Z

.field private static final IS_VOWIFI_PROP_ON:Z

.field private static final KEY_MUTF_PARAM_CFG_USE_TLS_VERSION:I = 0xc

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsUtImpl"

.field private static final MAPCON_APN:Ljava/lang/String; = "apn"

.field private static final MAPCON_CAUSE:Ljava/lang/String; = "cause"

.field private static final MAPCON_DOMAIN_CELLULAR_PREFER:I = 0x3

.field private static final MAPCON_DOMAIN_LTE_PREFER:I = 0x1

.field private static final MAPCON_DOMAIN_WIFI_ONLY:I = 0x0

.field private static final MAPCON_DOMAIN_WIFI_PREFER:I = 0x2

.field private static final MAPCON_PHONEID:Ljava/lang/String; = "phoneId"

.field private static final MAPCON_SERVERADDR:Ljava/lang/String; = "serverAddr"

.field private static final MAPCON_SERVICE_TYPE_MMS:I = 0x1

.field private static final MAPCON_SERVICE_TYPE_UT:I = 0x2

.field private static final MAPCON_SERVICE_TYPE_VOICE:I = 0x0

.field private static final MAPCON_TYPE:Ljava/lang/String; = "serviceType"

.field private static final MAPCON_UNKNOW_INDEX:I = 0x3

.field private static final MAX_REQUESTS_PENDING:I = 0x32

.field private static final MAX_UT_TUNNEL_RETRY_TIMES:I = 0x3

.field private static final MEDIA_TYPE_AUDIO:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x2

.field private static final MUTF_PARAM_CFG_UT_SET_TLS_CIPHER:I = 0x1d

.field private static final MUTF_RESET_LEVEL_FW_MARK:I = 0x3

.field private static final NOT_REGISTERED:I = 0x0

.field private static final NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_DEFAULT:I = 0x0

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_NOT_RESTRICTED:I = 0x1

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_NOT_SUBSCRIBED:I = 0x3

.field private static final OIR_DEFAULT_BEHAVIOR_TYPE_RESTRICTED:I = 0x2

.field private static final PERMISSION_READ_PRECISE_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PRECISE_PHONE_STATE"

.field private static final REGISTERED:I = 0x1

.field private static final REGISTERING:I = 0x2

.field private static final REG_FORMATTING:Ljava/lang/String; = "^.+ (\\d+\\.\\d+\\.\\d+\\.\\d+).*?(\\((SP\\d+)?(.{3})?(C\\d+)(.*)\\))?$"

.field private static final RO_BUILD_HW_VERSION_INCREMENTAL:Ljava/lang/String;

.field private static final RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

.field private static final RO_HW_BUILD_DISPLAYID:Ljava/lang/String;

.field private static final RO_HW_OEMNAME:Ljava/lang/String;

.field private static final SEND_CHR_BROADCAST_TIME_GAP:I = 0x36ee80

.field private static final SERVICE_CLASS_CW_MODE:I = 0x3

.field private static final SET_UT_NETWORKID_SDK:I = 0x1c

.field private static final SMCOMMON_TYPE_MMS:I = 0x0

.field private static final SMCOMMON_TYPE_OTHERS:I = 0x2

.field private static final SMCOMMON_TYPE_UT:I = 0x1

.field private static final SSCONF_CB_CONDITION_ALL:I = 0x5

.field private static final SSCONF_CB_CONDITION_BAIC:I = 0x0

.field private static final SSCONF_CB_CONDITION_BAICR:I = 0x4

.field private static final SSCONF_CB_CONDITION_BAOC:I = 0x1

.field private static final SSCONF_CB_CONDITION_BAOIC:I = 0x2

.field private static final SSCONF_CB_CONDITION_BAOICXH:I = 0x3

.field private static final SSCONF_CF_REASON_CFB:I = 0x2

.field private static final SSCONF_CF_REASON_CFNL:I = 0x1

.field private static final SSCONF_CF_REASON_CFNR:I = 0x3

.field private static final SSCONF_CF_REASON_CFNRC:I = 0x4

.field private static final SSCONF_CF_REASON_CFT:I = 0x5

.field private static final SSCONF_CF_REASON_CFU:I = 0x0

.field public static final SSCONF_OP_TYPE_GET:I = 0x0

.field public static final SSCONF_OP_TYPE_PUT:I = 0x1

.field public static final SSCONF_SS_TYPE_ALL:I = 0x0

.field public static final SSCONF_SS_TYPE_BAIC:I = 0xf

.field public static final SSCONF_SS_TYPE_BAICR:I = 0x13

.field public static final SSCONF_SS_TYPE_BAOC:I = 0x10

.field public static final SSCONF_SS_TYPE_BAOIC:I = 0x11

.field public static final SSCONF_SS_TYPE_BAOICXH:I = 0x12

.field public static final SSCONF_SS_TYPE_BA_ALL:I = 0x15

.field public static final SSCONF_SS_TYPE_CDIV:I = 0x5

.field public static final SSCONF_SS_TYPE_CFA:I = 0x16

.field public static final SSCONF_SS_TYPE_CFAC:I = 0x17

.field public static final SSCONF_SS_TYPE_CFB:I = 0x9

.field public static final SSCONF_SS_TYPE_CFNL:I = 0x8

.field public static final SSCONF_SS_TYPE_CFNR:I = 0xa

.field public static final SSCONF_SS_TYPE_CFNRC:I = 0xb

.field public static final SSCONF_SS_TYPE_CFT:I = 0xc

.field public static final SSCONF_SS_TYPE_CFU:I = 0x7

.field public static final SSCONF_SS_TYPE_CW:I = 0x14

.field public static final SSCONF_SS_TYPE_ICB:I = 0xd

.field public static final SSCONF_SS_TYPE_MAX:I = 0x18

.field public static final SSCONF_SS_TYPE_NRT:I = 0x6

.field public static final SSCONF_SS_TYPE_OCB:I = 0xe

.field public static final SSCONF_SS_TYPE_OIP:I = 0x1

.field public static final SSCONF_SS_TYPE_OIR:I = 0x3

.field public static final SSCONF_SS_TYPE_TIP:I = 0x2

.field public static final SSCONF_SS_TYPE_TIR:I = 0x4

.field public static final SSCONF_SS_TYPE_UNKNOWN:I = -0x1

.field private static final SS_403_FORBIDDEN_ERROR:I = 0x193

.field private static final SS_404_NOT_FOUND_ERROR:I = 0x194

.field private static final SS_409_CONFLICT_ERROR:I = 0x199

.field private static final SS_ACTIVE:I = 0x1

.field private static final SS_DEACTIVE:I = 0x0

.field private static final SS_ERROR:I = 0x1

.field private static final SS_ERROR_FROM_BSF:I = 0x2

.field private static final SS_ERROR_FROM_NAF:I = 0x1

.field private static final SS_ERROR_NOT_SET_BSF_IP:I = 0x5

.field private static final SS_ERROR_NOT_SET_NAF_IP:I = 0x4

.field private static final SS_HTTP_DIGEST_ONLY_CONFLICT_ERROR:I = 0x3

.field private static final SS_OK:I = 0x0

.field private static final SS_RESPONSE_CF_NUM:I = 0x1

.field private static final SS_RESPONSE_NUM:I = 0x2

.field private static final SS_SEVICE_CLASS_VOICE:I = 0x1

.field private static final START_UT_FORBIDDEN_ALARM_ONE_MINUTE:I = 0xea60

.field private static final START_UT_FORBIDDEN_ALARM_ONE_SECOND:I = 0x3e8

.field private static final SUB_EVENT_IMS_GET_IMPU_DONE:I = 0xb

.field private static final SUB_EVENT_IMS_UT_CLEAR:I = 0x7

.field private static final SUB_EVENT_IMS_UT_CONTINUE_IMS_CONNECTIVITY:I = 0x5

.field private static final SUB_EVENT_IMS_UT_DC_ALARM:I = 0x29

.field private static final SUB_EVENT_IMS_UT_END_CONNECTIVITY_ALARM:I = 0x31

.field private static final SUB_EVENT_IMS_UT_END_IMS_CONNECTIVITY:I = 0xc

.field private static final SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE:I = 0x2

.field private static final SUB_EVENT_IMS_UT_IMS_DC_ALARM:I = 0x2c

.field private static final SUB_EVENT_IMS_UT_INIT:I = 0x8

.field private static final SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED:I = 0x4

.field private static final SUB_EVENT_IMS_UT_REQ_ROUT_HOST_OK:I = 0x3

.field private static final SUB_EVENT_IMS_UT_SCISSCONFCB:I = 0x1

.field private static final SUB_EVENT_IMS_UT_TEAR_DOWN_TUNNEL_CONNECTION_ALARM:I = 0x2e

.field private static final SUB_EVENT_IMS_UT_TEMPORARY_DC_ALARM:I = 0x2f

.field private static final SUB_EVENT_IMS_UT_TEMPORARY_UT_STAY_ALARM:I = 0x30

.field private static final SUB_EVENT_IMS_UT_TICK:I = 0x6

.field private static final SUB_EVENT_IMS_UT_TUNNEL_SETUP_ALARM:I = 0x2d

.field private static final SUB_EVENT_IMS_UT_UT_ALARM:I = 0x2a

.field private static final SUB_EVENT_IMS_UT_UT_RETRY_ALARM:I = 0x2b

.field private static final SUB_EVENT_SIM_CARD_ABSENT:I = 0xa

.field private static final SUB_EVENT_SIM_RECORDS_LOADED:I = 0x9

.field private static final TEMPORARY_DC_ALARM_IN_MS:I = 0x7530

.field private static final TEMPORARY_UT_END_CONNECTIVITY_ALARM_IN_MS:I = 0x7d0

.field private static final TEMPORARY_UT_STAY_ALARM_IN_MS:I = 0x3e8

.field private static final TLS_DEFAULT_VERSION:I = 0x1

.field private static final TUNNEL_SETUP_TIMEOUT_IN_MS:I = 0x2710

.field private static final TYPE_SDK_HOST_BSF:I = 0x1

.field private static final TYPE_SDK_HOST_NAF:I = 0x0

.field private static final UT_ALARM_IN_MS:I = 0x7530

.field private static final UT_DATA_UPDATE_TIME:I = 0xa

.field private static final UT_DOMAIN_CELLULAR:I = 0x2

.field private static final UT_DOMAIN_DEFAULT:I = 0x0

.field private static final UT_DOMAIN_WIFI:I = 0x1

.field private static final UT_ID_INVALID:I = -0x1

.field private static final UT_ID_VALID:I = 0x0

.field private static final UT_INVALID:I = -0x1

.field private static final UT_PARAM_CFG_LENGTH:I = 0x2

.field private static sCurrentSlotId:I

.field private static sRequestId:I

.field private static sSciSsConfCb:Lcom/huawei/sci/SciSSConfCb;

.field private static sUtSdkInitResult:I


# instance fields
.field private mApnChangeObserver:Landroid/database/ContentObserver;

.field private mCanSendChrBroadcastDate:Ljava/util/Date;

.field private mCi:Lcom/huawei/ims/ImsRIL;

.field private mGbaAuth:Lcom/huawei/ims/GbaAuth;

.field private mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

.field private mImpu:Ljava/lang/String;

.field private mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

.field private mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

.field private mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirModeResetCwInModem:Z

.field private mIsCallWatingUtCanBeUsed:Z

.field private mIsChangedDefaultDataSub:Z

.field private mIsCheckedSimCardByUt:Z

.field private mIsDataReg:Z

.field private mIsImsConnectivityEnd:Z

.field private mIsReqRoutHost:Z

.field private mIsSetNafOrBsfIpToSdk:Z

.field private mIsSetNetworkAsDefault:Z

.field private mIsShowDataConnectionDialog:Z

.field private mIsSimRecordLoaded:Z

.field private mIsUtEnable:Z

.field private mIsUtForbidden:Z

.field private mIsUtSubscribed:Z

.field private mIsUtUseApn:Z

.field private mIsVowifi:Z

.field private mIsVowifiTimeOut:Z

.field private mIsWifiTunnnelUp:Z

.field private mLastSs:I

.field private mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

.field private mNetId:I

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNextGetCallWaitingTime:Ljava/util/Date;

.field private mSciSsCb:Lcom/huawei/sci/SciSSConfCb$Callback;

.field private mSlotId:I

.field private mUtApnInetAddressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mUtCmdQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsUtImpl$UtCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mUtDataExpireTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mUtForbiddenDate:Ljava/util/Date;

.field private mUtRetryCmdQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/ims/HwImsUtImpl$UtCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mUtServiceHandler:Landroid/os/Handler;

.field private mUtTunnelRetryTimes:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 348
    invoke-static {}, Lcom/huawei/ims/ImsCallProviderUtils;->isVowifiPropOn()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    .line 488
    const-string v0, "ro.config.hw_ut_ims"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_UT_USE_IMSAPN:Z

    .line 523
    const-string v0, ""

    const-string v1, "ro.hw.oemName"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    .line 525
    nop

    .line 526
    const-string v1, "ro.huawei.build.version.incremental"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_HW_VERSION_INCREMENTAL:Ljava/lang/String;

    .line 528
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_HW_VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 529
    const-string v1, "ro.build.version.incremental"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    :cond_31
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_HW_VERSION_INCREMENTAL:Ljava/lang/String;

    :goto_33
    sput-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_BUILD_VERSION_INCREMENTAL:Ljava/lang/String;

    .line 531
    nop

    .line 532
    const-string v1, "ro.huawei.build.display.id"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_BUILD_DISPLAYID:Ljava/lang/String;

    .line 601
    const-string v0, "card_volte_flag_0"

    const-string v1, "card_volte_flag_1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    .line 620
    const/4 v0, -0x1

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    .line 622
    sput v0, Lcom/huawei/ims/HwImsUtImpl;->sUtSdkInitResult:I

    .line 625
    const/4 v1, 0x0

    sput-object v1, Lcom/huawei/ims/HwImsUtImpl;->sSciSsConfCb:Lcom/huawei/sci/SciSSConfCb;

    .line 627
    sput v0, Lcom/huawei/ims/HwImsUtImpl;->sRequestId:I

    return-void
.end method

.method public constructor <init>(Lcom/huawei/ims/HwImsServiceImpl;ILcom/huawei/ims/ImsUtImpl;)V
    .registers 9
    .param p1, "hwImsServiceImpl"    # Lcom/huawei/ims/HwImsServiceImpl;
    .param p2, "slotId"    # I
    .param p3, "imsUtImpl"    # Lcom/huawei/ims/ImsUtImpl;

    .line 1216
    invoke-direct {p0}, Lcom/huawei/ims/ImsUtImpl;-><init>()V

    .line 1007
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    .line 1009
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCheckedSimCardByUt:Z

    .line 1011
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsImsConnectivityEnd:Z

    .line 1013
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    .line 1015
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    .line 1017
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 1019
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsReqRoutHost:Z

    .line 1021
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtApnInetAddressMap:Ljava/util/HashMap;

    .line 1025
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtUseApn:Z

    .line 1027
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNetworkAsDefault:Z

    .line 1034
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 1037
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 1040
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCwInModem:Z

    .line 1046
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    .line 1048
    new-instance v3, Lcom/huawei/ims/ImsUtListenerProxy;

    invoke-direct {v3}, Lcom/huawei/ims/ImsUtListenerProxy;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    .line 1050
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 1053
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 1055
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    .line 1057
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1059
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 1061
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 1063
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCallWatingUtCanBeUsed:Z

    .line 1067
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 1069
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    .line 1072
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    .line 1074
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsShowDataConnectionDialog:Z

    .line 1076
    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    .line 1078
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 1080
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    .line 1082
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsChangedDefaultDataSub:Z

    .line 1084
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    .line 1086
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    .line 1088
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 1090
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    .line 1092
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNafOrBsfIpToSdk:Z

    .line 1094
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 1096
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 1098
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImpu:Ljava/lang/String;

    .line 1100
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/huawei/ims/HwImsUtImpl$1;-><init>(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mApnChangeObserver:Landroid/database/ContentObserver;

    .line 1110
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$2;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsUtImpl$2;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1191
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$3;

    invoke-direct {v0, p0}, Lcom/huawei/ims/HwImsUtImpl$3;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSsCb:Lcom/huawei/sci/SciSSConfCb$Callback;

    .line 1217
    iput p2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    .line 1218
    const-string v0, "HwImsUtImpl constructor"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1219
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->isValidServiceSubIndex(I)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 1220
    const-string v0, "mSlotId is invalid"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1221
    return-void

    .line 1224
    :cond_9d
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    .line 1225
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v0, :cond_a9

    .line 1226
    const-string v0, "mHwImsServiceImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1227
    return-void

    .line 1230
    :cond_a9
    invoke-virtual {p1}, Lcom/huawei/ims/HwImsServiceImpl;->getConfig()Lcom/huawei/ims/HwImsConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 1231
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v0, :cond_b9

    .line 1232
    const-string v0, "mImsConfigImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1233
    return-void

    .line 1236
    :cond_b9
    iput-object p3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    .line 1237
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-nez v0, :cond_c5

    .line 1238
    const-string v0, "mImsUtImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1239
    return-void

    .line 1243
    :cond_c5
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtServiceThread()V

    .line 1244
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 102
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->getIdForRequest()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/ims/HwImsUtImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;)Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 102
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/huawei/ims/HwImsUtImpl;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 102
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huawei/ims/HwImsUtImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    return-void
.end method

.method static synthetic access$1300(Lcom/huawei/ims/HwImsUtImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return v0
.end method

.method static synthetic access$1302(Lcom/huawei/ims/HwImsUtImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # I

    .line 102
    iput p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return p1
.end method

.method static synthetic access$1308(Lcom/huawei/ims/HwImsUtImpl;)I
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtTunnelRetryTimes:I

    return v0
.end method

.method static synthetic access$1400(Lcom/huawei/ims/HwImsUtImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/huawei/ims/HwImsUtImpl;Z)I
    .registers 3
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 102
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/huawei/ims/HwImsUtImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    return-void
.end method

.method static synthetic access$1700(Lcom/huawei/ims/HwImsUtImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelSetupAlarm()V

    return-void
.end method

.method static synthetic access$1800(Lcom/huawei/ims/HwImsUtImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    return-void
.end method

.method static synthetic access$1900(Lcom/huawei/ims/HwImsUtImpl;Landroid/net/NetworkInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 102
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleConnectivity(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/huawei/ims/HwImsUtImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCwInModem:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/huawei/ims/HwImsUtImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/huawei/ims/HwImsUtImpl;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 102
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtApnConnection(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/GbaAuth;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/huawei/ims/HwImsUtImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/huawei/ims/HwImsUtImpl;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Landroid/os/Message;

    .line 102
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsConfigImpl;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/huawei/ims/HwImsUtImpl;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtApnInetAddressMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/huawei/ims/HwImsUtImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNetworkAsDefault:Z

    return p1
.end method

.method static synthetic access$300(Lcom/huawei/ims/HwImsUtImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryUtApn()V

    return-void
.end method

.method static synthetic access$3000(Lcom/huawei/ims/HwImsUtImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/huawei/ims/HwImsUtImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    return-void
.end method

.method static synthetic access$3200(Lcom/huawei/ims/HwImsUtImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->keepAliveImsConnectivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/ims/HwImsUtImpl;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/ims/HwImsUtImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    return v0
.end method

.method static synthetic access$600()I
    .registers 1

    .line 102
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    return v0
.end method

.method static synthetic access$700(Lcom/huawei/ims/HwImsUtImpl;)Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 102
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    return v0
.end method

.method static synthetic access$900(Lcom/huawei/ims/HwImsUtImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/huawei/ims/HwImsUtImpl;

    .line 102
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    return v0
.end method

.method private addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .registers 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2416
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2417
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after add mUtCmdQueue size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2419
    monitor-exit v0

    .line 2420
    return-void

    .line 2419
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private beginImsConnectivity(Z)I
    .registers 14
    .param p1, "isVowifi"    # Z

    .line 5201
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    .line 5202
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5204
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_17

    .line 5205
    const-string v1, "get ConnectivityManager null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5206
    const/4 v1, 0x3

    return v1

    .line 5209
    :cond_17
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v1

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v7

    .line 5210
    .local v7, "slotId":I
    const/4 v1, 0x0

    .line 5211
    .local v1, "request":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtNetworkCallback;-><init>(Lcom/huawei/ims/HwImsUtImpl;Lcom/huawei/ims/HwImsUtImpl$1;)V

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5212
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_5e

    .line 5213
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0x9

    .line 5214
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 5215
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v10

    .line 5216
    .end local v1    # "request":Landroid/net/NetworkRequest;
    .local v10, "request":Landroid/net/NetworkRequest;
    const-string v1, "handle UT data connection begin ims connectivity of vowifi"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5217
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x0

    const/16 v5, 0x2f

    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, v10

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 5218
    iput-boolean v9, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    move-object v9, v10

    goto :goto_9e

    .line 5220
    .end local v10    # "request":Landroid/net/NetworkRequest;
    .restart local v1    # "request":Landroid/net/NetworkRequest;
    :cond_5e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtApnCapabilities()I

    move-result v10

    .line 5221
    .local v10, "cap":I
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtApnConectionType()I

    move-result v11

    .line 5222
    .local v11, "connectionType":I
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v9}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 5223
    invoke-virtual {v2, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v9

    .line 5224
    .end local v1    # "request":Landroid/net/NetworkRequest;
    .local v9, "request":Landroid/net/NetworkRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle UT data connection begin ims connectivity of volte use connectionType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5225
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, v9

    move v5, v11

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 5227
    .end local v10    # "cap":I
    .end local v11    # "connectionType":I
    :goto_9e
    return v8
.end method

.method private broadcastUtIdle()V
    .registers 3

    .line 6397
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6398
    return-void

    .line 6401
    :cond_7
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-eqz v0, :cond_10

    .line 6402
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtImpl;->broadcastUtIdle(I)V

    .line 6404
    :cond_10
    return-void
.end method

.method private cancelStopImsApnMessage()V
    .registers 3

    .line 5667
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    .line 5668
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5669
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5671
    :cond_11
    return-void
.end method

.method private changeDcStateWhenImsActFail()V
    .registers 5

    .line 5310
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5311
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-boolean v1, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v1, :cond_6b

    if-eqz v0, :cond_6b

    .line 5313
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    .line 5314
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtPreferOption()I

    move-result v1

    if-ne v1, v2, :cond_1f

    .line 5315
    const-string v1, "process ut use xcap connection fail, retry vowifi"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5316
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5317
    return-void

    .line 5319
    :cond_1f
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v1

    .line 5320
    .local v1, "utDomain":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2b

    .line 5321
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_55

    .line 5322
    :cond_2b
    if-nez v1, :cond_32

    .line 5323
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_55

    .line 5324
    :cond_32
    if-ne v1, v2, :cond_39

    .line 5325
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_55

    .line 5326
    :cond_39
    const/4 v2, 0x3

    if-ne v1, v2, :cond_41

    .line 5327
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_IMSPDP_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_55

    .line 5329
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenImsActFail, utDomain is an undefined type! utDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5331
    :goto_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenImsActFail, cmd.dcState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5333
    .end local v1    # "utDomain":I
    :cond_6b
    return-void
.end method

.method private changeDcStateWhenTunnelSetupFail()V
    .registers 5

    .line 5345
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5346
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-boolean v1, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v1, :cond_84

    if-eqz v0, :cond_84

    .line 5349
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    if-nez v1, :cond_23

    .line 5350
    :cond_1e
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_AIRPLANE_ON_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5351
    return-void

    .line 5353
    :cond_23
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_38

    .line 5354
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtPreferOption()I

    move-result v1

    if-ne v1, v2, :cond_38

    .line 5355
    const-string v1, "process ut prefer use volte fail, retry vowifi fail, csfb"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5356
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_ACT_EXECUTE_LTE_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5357
    return-void

    .line 5359
    :cond_38
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v1

    .line 5360
    .local v1, "utDomain":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_44

    .line 5361
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_6e

    .line 5362
    :cond_44
    if-nez v1, :cond_4b

    .line 5363
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_ONLY_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_6e

    .line 5364
    :cond_4b
    if-ne v1, v2, :cond_52

    .line 5365
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_LTE_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_6e

    .line 5366
    :cond_52
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5a

    .line 5367
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CELLULAR_PREF_TUNNEL_FAIL:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_6e

    .line 5369
    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenTunnelSetupFail, utDomain is an undefined type! utDomain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5371
    :goto_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDcStateWhenTunnelSetupFail, cmd.dcState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5373
    .end local v1    # "utDomain":I
    :cond_84
    return-void
.end method

.method private checkUtForbiddenDate()V
    .registers 3

    .line 5936
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v0, :cond_21

    .line 5937
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 5939
    .local v0, "currDate":Ljava/util/Date;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_21

    .line 5940
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 5941
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 5944
    .end local v0    # "currDate":Ljava/util/Date;
    :cond_21
    return-void
.end method

.method private clearCtCardVolteFlag()V
    .registers 5

    .line 3897
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 3898
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCtCardVolteFlag: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3899
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3900
    return-void
.end method

.method private clearSharedPreferences()V
    .registers 6

    .line 4444
    const-string v0, "enter clearSharedPreferences"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4447
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setImpiFromSim(Ljava/lang/String;)V

    .line 4448
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setNafAddrFromSim(Ljava/lang/String;)V

    .line 4449
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->setBsfAddrFromSim(Ljava/lang/String;)V

    .line 4452
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4453
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4456
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v2, v2, v3

    .line 4457
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4456
    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/huawei/ims/HwImsConfigImpl;->setBoolToSp(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 4458
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->removeKeyInSp(Ljava/lang/String;Landroid/content/Context;)V

    .line 4459
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4461
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_7f

    .line 4462
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_79

    .line 4463
    const-string v2, "ims not registered, set impu from network as null."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4464
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v3, v3, v4

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_84

    .line 4466
    :cond_79
    const-string v1, "ims is registered."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_84

    .line 4469
    :cond_7f
    const-string v1, "imsphone is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4471
    :goto_84
    return-void
.end method

.method private createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;
    .registers 5
    .param p1, "addresses"    # [Ljava/net/InetAddress;

    .line 2978
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 2979
    .local v0, "ipAddr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 2980
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2979
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2982
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .registers 4
    .param p1, "oldDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3970
    move-object v0, p1

    .line 3974
    .local v0, "newDomain":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne p1, v1, :cond_8

    .line 3975
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    goto :goto_14

    .line 3976
    :cond_8
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne p1, v1, :cond_f

    .line 3977
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    goto :goto_14

    .line 3979
    :cond_f
    const-string v1, "domainIntersectCs: oldDomain is other domain select type"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3982
    :goto_14
    return-object v0
.end method

.method private domainIntersectUt(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .registers 4
    .param p1, "oldDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3992
    move-object v0, p1

    .line 3996
    .local v0, "newDomain":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne p1, v1, :cond_8

    .line 3997
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    goto :goto_14

    .line 3998
    :cond_8
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne p1, v1, :cond_f

    .line 3999
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    goto :goto_14

    .line 4001
    :cond_f
    const-string v1, "domainIntersectUt: oldDomain is other domain select type"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4004
    :goto_14
    return-object v0
.end method

.method private domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .registers 7
    .param p1, "prevDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .param p2, "utType"    # I
    .param p3, "isShowDcDialog"    # Z

    .line 4008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter domainSelect, prevDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", utType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShowDcDialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4011
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isImsSsBeUsed()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 4012
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v0

    .line 4015
    :cond_2f
    move-object v0, p1

    .line 4017
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtForbiddenWhenVolteSwitchOff()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 4018
    const-string v1, "UtForbiddenWhenVolteSwitchOff"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4021
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isVolteSwitchOn()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 4022
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4023
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v0, v1, :cond_4e

    .line 4024
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 4029
    :cond_4e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->checkUtForbiddenDate()V

    .line 4032
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v1, :cond_6b

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 4033
    const-string v1, "Ut forbidden"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4034
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4035
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v0, v1, :cond_6b

    .line 4036
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 4041
    :cond_6b
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardTypePreferToUseUt()Z

    move-result v1

    if-nez v1, :cond_81

    .line 4042
    const-string v1, "this card is not prefer to use UT"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4043
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4044
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v0, v1, :cond_81

    .line 4045
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 4049
    :cond_81
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUt()Z

    move-result v1

    if-nez v1, :cond_97

    .line 4050
    const-string v1, "this card MCC MNC is not prefer to use UT"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4051
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4052
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v0, v1, :cond_97

    .line 4053
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 4058
    :cond_97
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->isSsUseCsOnly(I)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 4059
    const-string v1, "this ut type use cs only"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4060
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4061
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v0, v1, :cond_af

    .line 4062
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 4067
    :cond_af
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUt()Z

    move-result v1

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1, p2}, Lcom/huawei/ims/HwImsConfigImpl;->isSsForbidFallbackCs(I)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 4068
    const-string v1, "this ut type is forbided fallback cs"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4069
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectUt(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4070
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v0, v1, :cond_cd

    .line 4071
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 4075
    :cond_cd
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtSupportedByCurrentBearer()Z

    move-result v1

    if-nez v1, :cond_e3

    .line 4076
    const-string v1, "current bearer did not support ut"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4077
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4078
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v0, v1, :cond_e3

    .line 4079
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 4083
    :cond_e3
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v1

    if-nez v1, :cond_133

    .line 4084
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtUseApn:Z

    if-nez v1, :cond_f7

    .line 4085
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4086
    const-string v1, "Ut Not Use Default APN, but has no Ut APN"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_12c

    .line 4087
    :cond_f7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtSubscribed()Z

    move-result v1

    if-nez v1, :cond_127

    .line 4088
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    if-ne v1, v2, :cond_10b

    const/16 v1, 0x14

    if-eq p2, v1, :cond_117

    :cond_10b
    const/4 v1, 0x3

    if-ne p2, v1, :cond_11d

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4090
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOirSourceMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11d

    .line 4091
    :cond_117
    const-string v1, "CallWaitingMode or OIRMode is config UE base, so keep UE base though noVolte subscibed"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_12c

    .line 4093
    :cond_11d
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4094
    const-string v1, "Ut Not Use Default APN, but ut service not subscibed"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_12c

    .line 4097
    :cond_127
    const-string v1, "Ut Not Use Default APN, undefined branch"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4099
    :goto_12c
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v0, v1, :cond_133

    .line 4100
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 4104
    :cond_133
    invoke-direct {p0, p2, p3, v0}, Lcom/huawei/ims/HwImsUtImpl;->getDomainSelectType(IZLcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4105
    return-object v0
.end method

.method private domainSelect(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .registers 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4115
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 4117
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    if-nez p1, :cond_c

    .line 4118
    const-string v1, "cmd is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4119
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    return-object v1

    .line 4122
    :cond_c
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    if-ne v1, v2, :cond_19

    .line 4123
    :cond_15
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 4126
    :cond_19
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    return-object v1
.end method

.method private endConnectivityIfNeeded(I)V
    .registers 4
    .param p1, "networkType"    # I

    .line 2789
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isNetworkAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xcap connectivity is available "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", need to release"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2791
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 2793
    :cond_22
    return-void
.end method

.method private endImsConnectivity()V
    .registers 5

    .line 5231
    const-string v0, "endImsConnectivity"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5234
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5235
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 5238
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 5239
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5242
    :cond_15
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5244
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_3c

    .line 5245
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 5246
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5248
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNetworkAsDefault:Z

    if-eqz v3, :cond_3c

    .line 5249
    const-string v3, "clear default network for host"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5250
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 5251
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNetworkAsDefault:Z

    .line 5255
    :cond_3c
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v2, :cond_43

    .line 5256
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    .line 5258
    :cond_43
    return-void
.end method

.method private extractParametersForChr(BBI)Lcom/huawei/ims/UtChrData;
    .registers 7
    .param p1, "isVowifiUt"    # B
    .param p2, "addressType"    # B
    .param p3, "failReason"    # I

    .line 6587
    const/4 v0, 0x0

    .line 6588
    .local v0, "utChrData":Lcom/huawei/ims/UtChrData;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v1

    .line 6589
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v1, :cond_61

    .line 6590
    const-string v2, "extractParametersForChr"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6591
    new-instance v2, Lcom/huawei/ims/UtChrData;

    invoke-direct {v2}, Lcom/huawei/ims/UtChrData;-><init>()V

    move-object v0, v2

    .line 6592
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/UtChrData;->setOperationType(B)V

    .line 6593
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtUseApn()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/UtChrData;->setDataApnType(B)V

    .line 6594
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/UtChrData;->setIsSupportWifi(B)V

    .line 6595
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/UtChrData;->setIsMobileDataConnected(B)V

    .line 6596
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/UtChrData;->setIsWifiConnected(B)V

    .line 6597
    invoke-virtual {v0, p1}, Lcom/huawei/ims/UtChrData;->setIsVowifiEnable(B)V

    .line 6598
    invoke-virtual {v0, p2}, Lcom/huawei/ims/UtChrData;->setAddressType(B)V

    .line 6599
    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/UtChrData;->setSubId(B)V

    .line 6600
    sget v2, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/UtChrData;->setCurrentSubId(B)V

    .line 6601
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/UtChrData;->setVowifiDomain(B)V

    .line 6602
    invoke-virtual {v0, p3}, Lcom/huawei/ims/UtChrData;->setFailReason(I)V

    .line 6603
    iget-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/ims/UtChrData;->setCmdDcState(Ljava/lang/String;)V

    .line 6605
    :cond_61
    return-object v0
.end method

.method private getCallWaitingAction(Z)I
    .registers 3
    .param p1, "isEnable"    # Z

    .line 6192
    if-eqz p1, :cond_4

    .line 6193
    const/4 v0, 0x1

    return v0

    .line 6195
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private getCardMccMnc()Ljava/lang/String;
    .registers 8

    .line 4241
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v0

    .line 4242
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 4244
    .local v1, "simOperator":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 4246
    return-object v2

    .line 4249
    :cond_16
    const-string v3, "simOperator=******"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4250
    const/4 v3, 0x0

    .line 4253
    .local v3, "mccMnc":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-ne v4, v5, :cond_29

    .line 4254
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .end local v3    # "mccMnc":Ljava/lang/String;
    .local v2, "mccMnc":Ljava/lang/String;
    goto :goto_34

    .line 4255
    .end local v2    # "mccMnc":Ljava/lang/String;
    .restart local v3    # "mccMnc":Ljava/lang/String;
    :cond_29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_49

    .line 4256
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 4263
    .end local v3    # "mccMnc":Ljava/lang/String;
    .restart local v2    # "mccMnc":Ljava/lang/String;
    :goto_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4264
    return-object v2

    .line 4259
    .end local v2    # "mccMnc":Ljava/lang/String;
    .restart local v3    # "mccMnc":Ljava/lang/String;
    :cond_49
    const-string v4, "mccMnc error: Get wrong MCC MNC "

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4260
    return-object v2
.end method

.method private getDefaultDataSlotId()I
    .registers 5

    .line 5539
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 5540
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    .line 5541
    .local v1, "slotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultDataSubId: subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5542
    return v1
.end method

.method private getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .line 2121
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private getDomainSelectType(IZLcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    .registers 9
    .param p1, "utType"    # I
    .param p2, "isShowDcDialog"    # Z
    .param p3, "oldDomain"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 4130
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    .line 4131
    .local v0, "isUtCanUseWifi":Z
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v1

    .line 4132
    .local v1, "isWifiConnected":Z
    move-object v2, p3

    .line 4142
    .local v2, "newDomain":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 4143
    const-string v3, "wifi has connected, Ut will use wifi link"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_74

    .line 4144
    :cond_15
    const/4 v3, 0x1

    if-nez v0, :cond_4c

    if-eqz v1, :cond_4c

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 4146
    invoke-direct {p0, p3}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 4147
    if-eqz p2, :cond_74

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataSwitchOn()Z

    move-result v4

    if-nez v4, :cond_74

    .line 4148
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 4149
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsShowDataConnectionDialog:Z

    goto :goto_74

    .line 4151
    :cond_39
    invoke-direct {p0, p3}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v3

    if-eqz v3, :cond_47

    if-eqz p2, :cond_47

    .line 4152
    const-string v3, "tip user to diconnect wifi"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_74

    .line 4154
    :cond_47
    invoke-direct {p0, p3}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    goto :goto_74

    .line 4158
    :cond_4c
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataSwitchOn()Z

    move-result v4

    if-nez v4, :cond_74

    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isSsUseUtInterface(I)Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 4159
    invoke-direct {p0, p3}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v4

    if-eqz v4, :cond_70

    if-eqz p2, :cond_70

    .line 4160
    const-string v4, "Show a dialog to notice user to turn data switch on"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4163
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 4164
    iput-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsShowDataConnectionDialog:Z

    goto :goto_74

    .line 4167
    :cond_70
    invoke-direct {p0, p3}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    .line 4171
    :cond_74
    :goto_74
    return-object v2
.end method

.method private getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .registers 5

    .line 2430
    const/4 v0, 0x0

    .line 2431
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2432
    :try_start_4
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2433
    const-string v2, "getFirstUtCmd mUtCmdQueue isEmpty"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2434
    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    .line 2436
    :cond_14
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-object v0, v2

    .line 2437
    monitor-exit v1

    .line 2438
    return-object v0

    .line 2437
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v2
.end method

.method private getHostByName(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;
    .registers 8
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/Network;

    .line 5546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 5547
    return-object v1

    .line 5549
    :cond_8
    const/4 v0, 0x0

    .line 5552
    .local v0, "inetAddress":[Ljava/net/InetAddress;
    if-eqz p2, :cond_1e

    .line 5553
    :try_start_b
    invoke-virtual {p2, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1
    :try_end_f
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_f} :catch_11

    move-object v0, v1

    goto :goto_1e

    .line 5555
    :catch_11
    move-exception v2

    .line 5556
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v3, "Cannot get inet address Unknown host"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5557
    const/16 v3, 0x3eb

    const/4 v4, -0x1

    invoke-direct {p0, v4, v4, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5559
    return-object v1

    .line 5560
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_1e
    :goto_1e
    nop

    .line 5561
    return-object v0
.end method

.method private static getIdForRequest()I
    .registers 2

    .line 4695
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->sRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->sRequestId:I

    .line 4696
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->sRequestId:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_f

    .line 4697
    const/4 v0, 0x0

    sput v0, Lcom/huawei/ims/HwImsUtImpl;->sRequestId:I

    .line 4699
    :cond_f
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->sRequestId:I

    return v0
.end method

.method private getNetworkForDefaultApn()Landroid/net/Network;
    .registers 3

    .line 2910
    const/4 v0, -0x1

    .line 2911
    .local v0, "type":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2912
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2913
    const/4 v0, 0x1

    .line 2916
    :cond_10
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2917
    const/4 v0, 0x0

    .line 2919
    :cond_17
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkForType(I)Landroid/net/Network;
    .registers 4
    .param p1, "type"    # I

    .line 2923
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2924
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_10

    .line 2925
    const/4 v1, 0x0

    return-object v1

    .line 2927
    :cond_10
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method private getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .registers 6
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3195
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getDefaultNoReplyTimer()I

    move-result v0

    .line 3196
    .local v0, "time":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getDefaultNeedNoReplyTimer()I

    move-result v1

    .line 3197
    .local v1, "deactNoReplyTime":I
    iget-boolean v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    const/4 v3, -0x1

    if-nez v2, :cond_14

    if-eq v1, v3, :cond_14

    .line 3198
    move v0, v1

    .line 3200
    :cond_14
    if-nez v0, :cond_18

    .line 3202
    const/4 v0, -0x1

    goto :goto_37

    .line 3203
    :cond_18
    if-ne v0, v3, :cond_32

    .line 3205
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    .line 3206
    if-nez v0, :cond_37

    .line 3207
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x16

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x17

    if-eq v2, v3, :cond_2d

    .line 3216
    goto :goto_37

    .line 3213
    :cond_2d
    const/4 v0, -0x1

    .line 3214
    goto :goto_37

    .line 3209
    :cond_2f
    const/16 v0, 0x14

    .line 3210
    goto :goto_37

    .line 3220
    :cond_32
    const-string v2, "getNoReplyTimer: undefined branch"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3222
    :cond_37
    :goto_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNoReplyTimer time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3223
    return v0
.end method

.method private getUaFromDisplayId()Ljava/lang/String;
    .registers 5

    .line 4710
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4711
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "^.+ (\\d+\\.\\d+\\.\\d+\\.\\d+).*?(\\((SP\\d+)?(.{3})?(C\\d+)(.*)\\))?$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_BUILD_DISPLAYID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4712
    .local v1, "rematcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 4713
    const-string v2, "Not find group"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4714
    const/4 v2, 0x0

    return-object v2

    .line 4716
    :cond_1e
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1f
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 4717
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_36

    const/4 v3, 0x2

    if-eq v2, v3, :cond_36

    .line 4718
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 4716
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 4721
    .end local v2    # "i":I
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getUtApnCapabilities()I
    .registers 3

    .line 5582
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 5583
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    goto :goto_1a

    .line 5585
    :cond_f
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_18

    .line 5586
    const/16 v0, 0xc

    return v0

    .line 5588
    :cond_18
    const/4 v0, 0x4

    return v0

    .line 5584
    :cond_1a
    :goto_1a
    const/16 v0, 0x9

    return v0
.end method

.method private getUtApnConectionType()I
    .registers 3

    .line 5593
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v0, :cond_7

    .line 5594
    const/16 v0, 0x2f

    return v0

    .line 5595
    :cond_7
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 5596
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    goto :goto_21

    .line 5598
    :cond_16
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_1e

    .line 5599
    const/4 v0, 0x0

    return v0

    .line 5601
    :cond_1e
    const/16 v0, 0xb

    return v0

    .line 5597
    :cond_21
    :goto_21
    const/16 v0, 0x2d

    return v0
.end method

.method private getUtDomain()I
    .registers 7

    .line 5336
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 5337
    .local v0, "slotId":I
    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v1

    .line 5338
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    .line 5339
    .local v2, "isRoaming":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/android/ims/HwImsManager;->getWfcMode(Landroid/content/Context;ZI)I

    move-result v3

    .line 5340
    .local v3, "utDomain":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUtOverWifiEnabled isRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5341
    return v3
.end method

.method private getUtUseApn()I
    .registers 3

    .line 6656
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtUseApn:Z

    if-eqz v0, :cond_10

    .line 6658
    return v1

    .line 6660
    :cond_10
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtUseApn:Z

    return v0
.end method

.method private handle403Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 8
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter handle403Error, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3539
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mStatus:I

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 3540
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_21

    .line 3541
    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 3544
    :cond_21
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCtCardAndSupportVolte()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3545
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->saveCtCardVolteFlag(Z)V

    .line 3546
    const-string v0, "CT Card receive 403, notify HWCardManager"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3548
    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 3549
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3550
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 3551
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtForbiddenAlarm()V

    .line 3554
    :cond_3f
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isMmi002004NoneCsfb(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 3555
    const-string v0, "403 Error for ut fail and none csfb"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3556
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3557
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_79

    .line 3560
    :cond_5a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromRetryQueueToUtCmdQueue()V

    .line 3563
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3564
    :try_start_60
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3565
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_67
    if-ge v2, v1, :cond_78

    .line 3566
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3567
    .local v3, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3565
    .end local v3    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 3569
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_60 .. :try_end_79} :catchall_7e

    .line 3571
    :goto_79
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 3572
    return-void

    .line 3569
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v1
.end method

.method private handleClear(I)V
    .registers 9
    .param p1, "level"    # I

    .line 6021
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 6022
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    .line 6023
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->clearCtCardVolteFlag()V

    .line 6024
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 6025
    if-ne p1, v0, :cond_1f

    .line 6026
    const-string v1, "handleClear, set mIsUtForbidden false"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6027
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 6028
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    goto :goto_1f

    .line 6031
    :cond_1d
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 6033
    :cond_1f
    :goto_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    .line 6034
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCheckedSimCardByUt:Z

    .line 6035
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 6036
    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 6038
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 6039
    :try_start_2e
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6040
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_35
    if-ge v4, v3, :cond_47

    .line 6041
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 6042
    .local v5, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v6, v5, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v6, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 6040
    .end local v5    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 6044
    .end local v4    # "i":I
    :cond_47
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6045
    .end local v3    # "size":I
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_76

    .line 6047
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_55

    .line 6048
    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->clear()V

    goto :goto_5a

    .line 6050
    :cond_55
    const-string v1, "mGbaAuth is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6052
    :goto_5a
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->utSdkReset(I)V

    .line 6054
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_6c

    if-ne p1, v0, :cond_6c

    .line 6055
    const-string v0, "handleClear: reset current sub id to default"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6056
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSlotId(I)V

    .line 6059
    :cond_6c
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtApnInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6060
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 6061
    return-void

    .line 6045
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method

.method private handleConnectivity(Landroid/net/NetworkInfo;)V
    .registers 6
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 5774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleConnectivity mImsDcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5776
    if-eqz p1, :cond_b9

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_b9

    .line 5780
    :cond_20
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsImsConnectivityEnd:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_3f

    .line 5781
    const-string v0, "handleConnectivity start to switch card."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsImsConnectivityEnd:Z

    .line 5783
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryDcAlarm()V

    .line 5784
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopDcAlarm()V

    .line 5785
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 5786
    return-void

    .line 5788
    :cond_3f
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5789
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5c

    if-nez v0, :cond_5c

    const/16 v2, 0x2f

    .line 5790
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isNetworkAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 5791
    const-string v2, "handleConnectivity receive CONNECTIVITY_ACTION and need to release requestNetwork "

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5792
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5794
    :cond_5c
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_b8

    .line 5795
    sget-boolean v2, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v2, :cond_7a

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSlotId()I

    move-result v2

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    if-eq v2, v3, :cond_7a

    .line 5796
    const-string v1, "Data has connected, but not for this slot, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5797
    return-void

    .line 5800
    :cond_7a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConnectedForSlotId()Z

    move-result v2

    if-nez v2, :cond_86

    .line 5801
    const-string v1, "Data has not connected for this slot, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5802
    return-void

    .line 5805
    :cond_86
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-eq v2, v3, :cond_92

    .line 5806
    const-string v1, "handleConnectivity: Ims connection is being established, do not use default data connection."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5807
    return-void

    .line 5810
    :cond_92
    if-eqz v0, :cond_b8

    .line 5811
    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_b8

    .line 5812
    const-string v2, "Data has connected, the SS can go UT interface"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5813
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v2

    .line 5814
    .local v2, "network":Landroid/net/Network;
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->initSdkServiceIpAddr(Landroid/net/Network;)V

    .line 5815
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5816
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryDcAlarm()V

    .line 5817
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopDcAlarm()V

    .line 5818
    const/16 v3, 0x31

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5819
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 5823
    .end local v2    # "network":Landroid/net/Network;
    :cond_b8
    return-void

    .line 5777
    .end local v0    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_b9
    :goto_b9
    const-string v0, "network not available"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5778
    return-void
.end method

.method private handleDcTimeOut()V
    .registers 5

    .line 5845
    const-string v0, "handleDcTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5846
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5848
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_11

    .line 5849
    const-string v1, "[error]cmd is null, but receive message of dc time out!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5850
    return-void

    .line 5852
    :cond_11
    const-string v1, "handle UT data connection time out and finish data connection"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5853
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x3ea

    invoke-direct {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5855
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5856
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    .line 5858
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_2b

    .line 5859
    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5861
    :cond_2b
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 5862
    return-void
.end method

.method private handleGetCallWaitingDone(ZILandroid/os/Message;)V
    .registers 7
    .param p1, "isCallWaitingEnable"    # Z
    .param p2, "type"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 6068
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    and-int/lit8 v1, p2, 0x1

    if-ne v1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 6071
    .local v0, "isEnable":Z
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get call waiting success, isEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6073
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 6074
    invoke-direct {p0, v0, p3}, Lcom/huawei/ims/HwImsUtImpl;->isSyncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    goto :goto_42

    .line 6075
    :cond_29
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 6076
    invoke-direct {p0, v0, p3}, Lcom/huawei/ims/HwImsUtImpl;->isSyncCallWaitingToCs(ZLandroid/os/Message;)Z

    goto :goto_42

    .line 6078
    :cond_35
    const-string v1, "call waiting does not sync to modem, response to target"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6079
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseCwInts(Z)Ljava/lang/Object;

    move-result-object v1

    .line 6080
    .local v1, "ret":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6082
    .end local v1    # "ret":Ljava/lang/Object;
    :goto_42
    return-void
.end method

.method private handleGetCwResponseFromCs(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 2372
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2373
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 2375
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_29

    .line 2376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetCwResponseFromCs: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2377
    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2378
    return-void

    .line 2381
    :cond_29
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_7a

    .line 2382
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 2384
    .local v2, "cwArray":[I
    if-nez v2, :cond_40

    .line 2385
    :try_start_35
    const-string v3, "cwArray is null"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2386
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2387
    return-void

    .line 2389
    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCwResponseFromCs, cwArray[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cwArray[1]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2390
    aget v3, v2, v4

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v3

    .line 2391
    .local v3, "isEnable":Z
    aget v4, v2, v5

    invoke-direct {p0, v3, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V
    :try_end_6d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_35 .. :try_end_6d} :catch_6e

    .line 2395
    .end local v3    # "isEnable":Z
    goto :goto_79

    .line 2392
    :catch_6e
    move-exception v3

    .line 2393
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "handleGetCwResponseFromCs: improper failed"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2394
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v4}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2396
    .end local v2    # "cwArray":[I
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_79
    goto :goto_84

    .line 2397
    :cond_7a
    const-string v2, "ar.result is not int[]"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2398
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 2400
    :goto_84
    return-void
.end method

.method private handleImsConnectionFailure()V
    .registers 3

    .line 6334
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 6336
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConfigUtForbiddenTimer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 6337
    const-string v0, "handleImsConnectionFailure, set mIsUtForbidden true"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6338
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    .line 6339
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtForbiddenAlarm()V

    .line 6340
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtForbiddenAlarm()V

    .line 6343
    :cond_17
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    .line 6344
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6346
    const-string v0, "handle UT data connectionreceived INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return true."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6347
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenImsActFail()V

    .line 6348
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    goto :goto_38

    .line 6350
    :cond_2c
    const-string v0, "handle UT data connection received INTENT_IMS_CONNECTION_TIMEOUT,isUtOverWifiEnabled return false,handoverSSTick."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6354
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 6355
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSsTick()V

    .line 6357
    :goto_38
    return-void
.end method

.method private handleImsDcTimeOut()V
    .registers 2

    .line 5573
    const-string v0, "handleImsDcTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5574
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsConnectionFailure()V

    .line 5575
    return-void
.end method

.method private handleImsGetImpuDoneInternal(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 4474
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-eqz v0, :cond_60

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v1, :cond_9

    goto :goto_60

    .line 4478
    :cond_9
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 4479
    .local v0, "currentImsi":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v2, v2, v3

    .line 4480
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4481
    .local v1, "imsiFromSp":Ljava/lang/String;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 4482
    .local v2, "impu":Ljava/lang/String;
    if-eqz v0, :cond_39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 4483
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v4, v4, v5

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_50

    .line 4485
    :cond_39
    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImpu:Ljava/lang/String;

    .line 4486
    const-string v3, "handleImsGetImpuDoneInternal else setImpu = null"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4487
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4490
    :goto_50
    sget v3, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    if-ne v3, v4, :cond_5a

    .line 4491
    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpu(Ljava/lang/String;)I

    goto :goto_5f

    .line 4493
    :cond_5a
    const-string v3, "handleImsGetImpuDone: skip set impu to sdk because it\'s not the current slot"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4495
    :goto_5f
    return-void

    .line 4475
    .end local v0    # "currentImsi":Ljava/lang/String;
    .end local v1    # "imsiFromSp":Ljava/lang/String;
    .end local v2    # "impu":Ljava/lang/String;
    :cond_60
    :goto_60
    const-string v0, "handleImsGetImpuDoneInternal mHwImsServiceImpl or mImsConfigImpl is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4476
    return-void
.end method

.method private handleImsRequestRoutHostOk()V
    .registers 4

    .line 2302
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 2303
    .local v0, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_1b

    .line 2304
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v1, v2, :cond_11

    .line 2305
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_20

    .line 2307
    :cond_11
    const-string v1, "maybe some exception happen, so we set cmd dcState to IDLE"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2308
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    goto :goto_20

    .line 2311
    :cond_1b
    const-string v1, "SUB_EVENT_IMS_UT_REQ_ROUT_HOST_OK, utCmd is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2313
    :goto_20
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmdQueue()V

    .line 2314
    return-void
.end method

.method private handleImsUtContinueImsConnectivity()V
    .registers 3

    .line 2317
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 2318
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_c

    .line 2319
    const-string v1, "there is no cmd in queue"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2320
    return-void

    .line 2322
    :cond_c
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2323
    const-string v1, "The network is connected and continues to be connected."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2324
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->keepAliveImsConnectivity()V

    goto :goto_20

    .line 2328
    :cond_1b
    const-string v1, "The network is disconnected."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2330
    :goto_20
    return-void
.end method

.method private handleImsUtEndImsConectivity()V
    .registers 5

    .line 2333
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 2334
    .local v0, "firstCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    const/4 v1, 0x0

    .line 2335
    .local v1, "isUtRetryCmdEmpty":Z
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2336
    :try_start_8
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    move v1, v3

    .line 2337
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_18

    .line 2338
    if-nez v0, :cond_17

    if-eqz v1, :cond_17

    .line 2339
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 2341
    :cond_17
    return-void

    .line 2337
    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v3
.end method

.method private handleImsUtGetHostNameDone(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2270
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 2271
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v1

    .line 2272
    .local v1, "utNafSrvAddr":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isGetHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z

    move-result v2

    .line 2274
    .local v2, "isNafRouteAddress":Z
    const/4 v3, 0x0

    .line 2275
    .local v3, "isBsfRouteAddress":Z
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfAuthBeUsed()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2276
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v4

    .line 2277
    .local v4, "utBsfSrvAddr":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/huawei/ims/HwImsUtImpl;->isGetHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z

    move-result v3

    .line 2278
    .end local v4    # "utBsfSrvAddr":Ljava/lang/String;
    goto :goto_28

    .line 2279
    :cond_22
    const-string v4, "ut not need bsf auth."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2280
    const/4 v3, 0x1

    .line 2282
    :goto_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle UT data connection ensure route to host and result is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2284
    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v4, :cond_4b

    .line 2285
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->setUtOverWifiTunnelUpFlag(Z)V

    .line 2287
    :cond_4b
    if-eqz v2, :cond_74

    .line 2288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HwImsUtImpl handleUt SUB_EVENT_IMS_UT_GET_HOST_NAME_DONE and network is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2289
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSdkServiceIpAddr(Landroid/net/Network;)V

    .line 2290
    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNafOrBsfIpToSdk:Z

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsReqRoutHost:Z

    .line 2291
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 2292
    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v4, :cond_78

    .line 2293
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelConnectionAlarm()V

    goto :goto_78

    .line 2296
    :cond_74
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 2298
    :cond_78
    :goto_78
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2143
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    packed-switch v0, :pswitch_data_102

    packed-switch v0, :pswitch_data_11e

    packed-switch v0, :pswitch_data_12a

    packed-switch v0, :pswitch_data_138

    .line 2264
    const-string v0, "imsut not support this msg"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_101

    .line 2204
    :pswitch_2c
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCallWaitingNoneSync(Landroid/os/Message;)V

    .line 2205
    goto/16 :goto_101

    .line 2261
    :pswitch_31
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->processEctCallBack(Landroid/os/Message;)V

    .line 2262
    goto/16 :goto_101

    .line 2252
    :pswitch_36
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 2253
    .local v0, "connectivityCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_42

    .line 2254
    const-string v1, "there is no cmd in queue"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2255
    return-void

    .line 2257
    :cond_42
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2258
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 2259
    goto/16 :goto_101

    .line 2249
    .end local v0    # "connectivityCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :pswitch_4b
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTemporaryUtStayTimeOut()V

    .line 2250
    goto/16 :goto_101

    .line 2246
    :pswitch_50
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTemporaryDcTimeOut()V

    .line 2247
    goto/16 :goto_101

    .line 2243
    :pswitch_55
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTearDownTunnelConnectionTimeout()V

    .line 2244
    goto/16 :goto_101

    .line 2240
    :pswitch_5a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleTunnelSetupTimeout()V

    .line 2241
    goto/16 :goto_101

    .line 2237
    :pswitch_5f
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsDcTimeOut()V

    .line 2238
    goto/16 :goto_101

    .line 2234
    :pswitch_64
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtRetryAlarmTimeOut()V

    .line 2235
    goto/16 :goto_101

    .line 2231
    :pswitch_69
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtTimeOut()V

    .line 2232
    goto/16 :goto_101

    .line 2228
    :pswitch_6e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleDcTimeOut()V

    .line 2229
    goto/16 :goto_101

    .line 2213
    :pswitch_73
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncClirModeToImsSdkDone(Landroid/os/Message;)V

    .line 2214
    goto/16 :goto_101

    .line 2210
    :pswitch_78
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingToCsDone(Landroid/os/Message;)V

    .line 2211
    goto/16 :goto_101

    .line 2207
    :pswitch_7d
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingToImsSdkDone(Landroid/os/Message;)V

    .line 2208
    goto/16 :goto_101

    .line 2201
    :pswitch_82
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCwFromCs(Landroid/os/Message;)V

    .line 2202
    goto/16 :goto_101

    .line 2198
    :pswitch_87
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCwResponseFromCs(Landroid/os/Message;)V

    .line 2199
    goto/16 :goto_101

    .line 2225
    :pswitch_8c
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUpdateClir(Landroid/os/Message;)V

    .line 2226
    goto/16 :goto_101

    .line 2222
    :pswitch_91
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleQueryClir(Landroid/os/Message;)V

    .line 2223
    goto/16 :goto_101

    .line 2219
    :pswitch_96
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUpdateCallWaiting(Landroid/os/Message;)V

    .line 2220
    goto/16 :goto_101

    .line 2216
    :pswitch_9b
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleQueryCallWaiting(Landroid/os/Message;)V

    .line 2217
    goto/16 :goto_101

    .line 2195
    :pswitch_a0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsUtEndImsConectivity()V

    .line 2196
    goto :goto_101

    .line 2192
    :pswitch_a4
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleImsGetImpuDoneInternal(Landroid/os/Message;)V

    .line 2193
    goto :goto_101

    .line 2189
    :pswitch_a8
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSimCardAbsentInternal(Landroid/os/Message;)V

    .line 2190
    goto :goto_101

    .line 2186
    :pswitch_ac
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSimRecordsLoadedInternal(Landroid/os/Message;)V

    .line 2187
    goto :goto_101

    .line 2183
    :pswitch_b0
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtInit()V

    .line 2184
    goto :goto_101

    .line 2180
    :pswitch_b4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    .line 2181
    goto :goto_101

    .line 2177
    :pswitch_b9
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmdQueue()V

    .line 2178
    goto :goto_101

    .line 2174
    :pswitch_bd
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsUtContinueImsConnectivity()V

    .line 2175
    goto :goto_101

    .line 2154
    :pswitch_c1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 2155
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 2156
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x3ec

    invoke-direct {p0, v0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 2158
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 2160
    const-string v0, "received SUB_EVENT_IMS_UT_REQ_ROUT_HOST_FAILED,isUtOverWifiEnabled return true."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2161
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v0, :cond_e1

    .line 2162
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    goto :goto_e4

    .line 2164
    :cond_e1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenImsActFail()V

    .line 2166
    :goto_e4
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    goto :goto_101

    .line 2169
    :cond_e8
    const-string v0, "handle UT data connection fall back cs for ensure route fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2170
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSsTick()V

    .line 2172
    goto :goto_101

    .line 2151
    :pswitch_f1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsRequestRoutHostOk()V

    .line 2152
    goto :goto_101

    .line 2148
    :pswitch_f5
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleImsUtGetHostNameDone(Landroid/os/Message;)V

    .line 2149
    goto :goto_101

    .line 2145
    :pswitch_f9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtData;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCb(Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 2146
    nop

    .line 2267
    :goto_101
    return-void

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_c1
        :pswitch_bd
        :pswitch_b9
        :pswitch_b4
        :pswitch_b0
        :pswitch_ac
        :pswitch_a8
        :pswitch_a4
        :pswitch_a0
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x14
        :pswitch_9b
        :pswitch_96
        :pswitch_91
        :pswitch_8c
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0x1b
        :pswitch_87
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
    .end packed-switch

    :pswitch_data_138
    .packed-switch 0x29
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_50
        :pswitch_4b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method private handleQueryCallWaiting(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 4498
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4499
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    move-result-object v1

    .line 4500
    .local v1, "callWaitingSource":Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter getCallWaiting, callWaitingSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4502
    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCallWatingUtCanBeUsed:Z

    .line 4508
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCallWatingUtCanBeUsed:Z

    if-nez v2, :cond_33

    .line 4509
    const-string v2, "call waiting is only allowed use CS domain and forbid sync to IMS SDK"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4510
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4511
    return-void

    .line 4514
    :cond_33
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource:[I

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5f

    .line 4537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[error]can\'t get call waiting, the source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4538
    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    goto :goto_b8

    .line 4522
    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query cw , mIsUtForbidden="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",isUse403ForLocalCw="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUse403ForLocalCw()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4523
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUse403ForLocalCw()Z

    move-result v2

    if-eqz v2, :cond_8f

    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v2, :cond_8f

    .line 4524
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_b8

    .line 4526
    :cond_8f
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v4, v4, v5

    .line 4527
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 4526
    invoke-virtual {v2, v4, v5, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getBoolFromSp(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v2

    .line 4529
    .local v2, "isEnable":Z
    iget v4, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4530
    .local v4, "onComplete":Landroid/os/Message;
    if-nez v4, :cond_ac

    .line 4531
    const-string v5, "queryCallWaiting: CALL_WAITING_FROM_LOCAL, onComplete is null."

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4533
    :cond_ac
    invoke-direct {p0, v2, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V

    .line 4535
    .end local v2    # "isEnable":Z
    .end local v4    # "onComplete":Landroid/os/Message;
    goto :goto_b8

    .line 4519
    :cond_b0
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4520
    goto :goto_b8

    .line 4516
    :cond_b4
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4517
    nop

    .line 4541
    :goto_b8
    return-void
.end method

.method private handleQueryClir(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 4544
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4545
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOirSourceMode()I

    move-result v1

    .line 4546
    .local v1, "oirSourceMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter handleQueryClir, oirSourceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4548
    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    .line 4550
    .local v2, "isClirUtCanBeUsed":Z
    if-eqz v2, :cond_6e

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6e

    .line 4551
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->getOirDefaultMode()I

    move-result v4

    .line 4552
    .local v4, "defaultClirMode":I
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v6, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v6, v6, v7

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/huawei/ims/HwImsConfigImpl;->getIntFromSp(Ljava/lang/String;Landroid/content/Context;I)I

    move-result v5

    .line 4554
    .local v5, "clirmode":I
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 4555
    .local v6, "clirArray":[I
    const/4 v7, 0x0

    aput v5, v6, v7

    .line 4556
    const/4 v7, 0x4

    aput v7, v6, v3

    .line 4558
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4559
    .local v3, "clirInfo":Landroid/os/Bundle;
    const-string v7, "queryClir"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4561
    iget v7, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4562
    .local v7, "onComplete":Landroid/os/Message;
    if-nez v7, :cond_5f

    .line 4563
    const-string v8, "handleQueryClir: onComplete is null."

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4566
    :cond_5f
    iget-object v8, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v9, 0x1f

    invoke-virtual {v8, v9, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 4567
    .local v8, "response":Landroid/os/Message;
    invoke-virtual {v8, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4568
    invoke-direct {p0, v5, v8}, Lcom/huawei/ims/HwImsUtImpl;->syncClirModeToImsSdk(ILandroid/os/Message;)V

    .line 4569
    .end local v3    # "clirInfo":Landroid/os/Bundle;
    .end local v4    # "defaultClirMode":I
    .end local v5    # "clirmode":I
    .end local v6    # "clirArray":[I
    .end local v7    # "onComplete":Landroid/os/Message;
    .end local v8    # "response":Landroid/os/Message;
    goto :goto_71

    .line 4570
    :cond_6e
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4572
    :goto_71
    return-void
.end method

.method private handleSciSsConfCb(Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 5
    .param p1, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSciSSConfCb ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3460
    if-nez p1, :cond_1c

    .line 3461
    const-string v0, "handleSciSSConfCb, UTData is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3462
    return-void

    .line 3465
    :cond_1c
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 3473
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_71

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtType:I

    iget v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    if-ne v1, v2, :cond_71

    iget-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    if-eq v1, v2, :cond_2f

    goto :goto_71

    .line 3478
    :cond_2f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCheckedSimCardByUt:Z

    .line 3479
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 3482
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtData;->mStatus:I

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    .line 3484
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtData;->mStatus:I

    if-eqz v1, :cond_6c

    const/16 v2, 0x193

    if-eq v1, v2, :cond_68

    const/16 v2, 0x199

    if-eq v1, v2, :cond_56

    const/4 v2, 0x3

    if-eq v1, v2, :cond_68

    const/4 v2, 0x4

    if-eq v1, v2, :cond_52

    const/4 v2, 0x5

    if-eq v1, v2, :cond_52

    .line 3505
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbUndefinedError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    goto :goto_70

    .line 3490
    :cond_52
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbNoNafOrBsfIpError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3491
    goto :goto_70

    .line 3497
    :cond_56
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUt409ShowPhrase()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isHandle409Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 3498
    :cond_64
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbUndefinedError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    goto :goto_70

    .line 3494
    :cond_68
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handle403Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3495
    goto :goto_70

    .line 3486
    :cond_6c
    invoke-direct {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3487
    nop

    .line 3508
    :cond_70
    :goto_70
    return-void

    .line 3474
    :cond_71
    :goto_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this Ut data is useless, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3475
    return-void
.end method

.method private handleSciSsConfCbNoNafOrBsfIpError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter handleSciSSConfCbNafOrBsfIpError, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsReqRoutHost:Z

    .line 3513
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNafOrBsfIpToSdk:Z

    .line 3514
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_20

    .line 3515
    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 3518
    :cond_20
    if-nez p1, :cond_23

    .line 3519
    return-void

    .line 3523
    :cond_23
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCtCardAndSupportVolte()Z

    move-result v0

    if-eqz v0, :cond_37

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_33

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_37

    .line 3524
    :cond_33
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->saveCtCardVolteFlag(Z)V

    .line 3526
    :cond_37
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mStatus:I

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 3527
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isMmi002004NoneCsfb(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3528
    const-string v0, "NAF or BSF IP not set for ut fail and none csfb"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3529
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3530
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_5c

    .line 3532
    :cond_58
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3534
    :goto_5c
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 3535
    return-void
.end method

.method private handleSciSsConfCbOfCdivSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 6
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3755
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    if-nez v0, :cond_1c

    .line 3756
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForwardEx(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    .line 3757
    .local v0, "imsCallForwardInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCtCardAndSupportVolte()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3758
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->saveCtCardVolteFlag(Z)V

    .line 3760
    :cond_14
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v1, v2, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 3761
    .end local v0    # "imsCallForwardInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_21

    .line 3762
    :cond_1c
    const-string v0, "CDIV PUT: don\'t support will handover to cs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3764
    :goto_21
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3765
    return-void
.end method

.method private handleSciSsConfCbOfCfacSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 6
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3877
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3878
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCtCardAndSupportVolte()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_13

    .line 3879
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->saveCtCardVolteFlag(Z)V

    .line 3881
    :cond_13
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3882
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto :goto_28

    .line 3884
    :cond_1f
    const-string v0, "CF SET: don\'t support this OPRATOR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3885
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3887
    :goto_28
    return-void
.end method

.method private handleSciSsConfCbOfCfnrSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3846
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_57

    .line 3847
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isProtocolIr92V10orGreater()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3848
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3849
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto :goto_60

    .line 3851
    :cond_19
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v0

    .line 3852
    .local v0, "time":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_31

    .line 3854
    const-string v1, "don\'t set the NRT when set the CFNR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3855
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v1, v2}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3856
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3857
    return-void

    .line 3860
    :cond_31
    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversionNoReplyTimer(I)I

    move-result v2

    .line 3861
    .local v2, "result":I
    const/4 v3, 0x6

    iput v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    .line 3863
    if-ne v2, v1, :cond_53

    .line 3864
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallDiversionNoReplyTimer fail, result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_56

    .line 3867
    :cond_53
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    .line 3869
    .end local v0    # "time":I
    .end local v2    # "result":I
    :goto_56
    goto :goto_60

    .line 3871
    :cond_57
    const-string v0, "CFNR GET: don\'t support this OPRATOR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3872
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3874
    :goto_60
    return-void
.end method

.method private handleSciSsConfCbOfCfnrcSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 12
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3818
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCfnrcChangeWithCfnl()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 3819
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 3821
    const/4 v2, 0x1

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 3822
    invoke-static/range {v2 .. v8}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversion(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v0

    .line 3824
    .local v0, "result":I
    const/16 v2, 0x8

    iput v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    .line 3825
    if-ne v0, v1, :cond_39

    .line 3827
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallDiversion fail, SSCONF_CDIV_REASON_CFNL=1, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_3c

    .line 3831
    :cond_39
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    .line 3833
    .end local v0    # "result":I
    :goto_3c
    goto :goto_52

    .line 3834
    :cond_3d
    const-string v0, "CFNRc: don\'t support this OPRATOR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3835
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto :goto_52

    .line 3838
    :cond_47
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3839
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3841
    :goto_52
    return-void
.end method

.method private handleSciSsConfCbOfCwSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 6621
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6622
    .local v0, "onComplete":Landroid/os/Message;
    if-nez v0, :cond_d

    .line 6623
    const-string v1, "onComplete is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6625
    :cond_d
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    if-nez v1, :cond_46

    .line 6626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get cw state, cmd.mToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6627
    iget-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3c

    .line 6628
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallWaitingEnabled()Ljava/lang/Boolean;

    move-result-object v1

    .line 6629
    .local v1, "isCallWaitingEnable":Ljava/lang/Boolean;
    if-eqz v1, :cond_3b

    .line 6630
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 6631
    .local v2, "isEnable":Z
    invoke-direct {p0, v2, v3, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleGetCallWaitingDone(ZILandroid/os/Message;)V

    .line 6633
    .end local v1    # "isCallWaitingEnable":Ljava/lang/Boolean;
    .end local v2    # "isEnable":Z
    :cond_3b
    goto :goto_4b

    .line 6634
    :cond_3c
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCtCardAndSupportVolte()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 6635
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->saveCtCardVolteFlag(Z)V

    goto :goto_4b

    .line 6639
    :cond_46
    iget-boolean v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    invoke-direct {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCallWaitingDone(ZLandroid/os/Message;)V

    .line 6641
    :cond_4b
    :goto_4b
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 6642
    return-void
.end method

.method private handleSciSsConfCbOfIcbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3769
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    if-nez v0, :cond_1a

    .line 3770
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->getCallBarringEnable(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 3771
    .local v0, "isEnable":Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseClck(Ljava/lang/Boolean;)[Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    .line 3772
    .local v1, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 3773
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3774
    .end local v0    # "isEnable":Ljava/lang/Boolean;
    .end local v1    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_1f

    .line 3775
    :cond_1a
    const-string v0, "OIP ICB: don\'t support this OPRATOR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3777
    :goto_1f
    return-void
.end method

.method private handleSciSsConfCbOfOcbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3780
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    if-nez v0, :cond_1a

    .line 3781
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->getCallBarringEnable(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 3782
    .local v0, "isEnable":Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseClck(Ljava/lang/Boolean;)[Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    .line 3783
    .local v1, "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 3784
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3785
    .end local v0    # "isEnable":Ljava/lang/Boolean;
    .end local v1    # "ssInfoStatus":[Landroid/telephony/ims/ImsSsInfo;
    goto :goto_1f

    .line 3786
    :cond_1a
    const-string v0, "OIP OCB: don\'t support this OPRATOR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3788
    :goto_1f
    return-void
.end method

.method private handleSciSsConfCbOfOipSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3719
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    if-nez v0, :cond_18

    .line 3720
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOriginatingIdentityPresentationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 3721
    .local v0, "isEnable":Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseClip(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v1

    .line 3722
    .local v1, "clipInfo":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3723
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3724
    .end local v0    # "isEnable":Ljava/lang/Boolean;
    .end local v1    # "clipInfo":Landroid/os/Bundle;
    goto :goto_23

    .line 3725
    :cond_18
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3726
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3728
    :goto_23
    return-void
.end method

.method private handleSciSsConfCbOfOirSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 10
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3791
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    const/16 v1, 0x1f

    if-nez v0, :cond_45

    .line 3792
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOriginatingIdentityRestrictionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 3793
    .local v0, "isEnable":Ljava/lang/Boolean;
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getOIRDefaultBehavior()I

    move-result v2

    .line 3794
    .local v2, "defaultBehavior":I
    invoke-direct {p0, v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseClir(Ljava/lang/Boolean;I)Landroid/os/Bundle;

    move-result-object v3

    .line 3796
    .local v3, "clirInfo":Landroid/os/Bundle;
    const-string v4, "queryClir"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 3797
    .local v4, "clirResponse":[I
    if-eqz v4, :cond_39

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_39

    const/4 v5, 0x1

    aget v5, v4, v5

    if-eqz v5, :cond_39

    .line 3799
    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 3800
    .local v5, "onComplete":Landroid/os/Message;
    iget-object v6, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3801
    .local v1, "response":Landroid/os/Message;
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3802
    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-direct {p0, v6, v1}, Lcom/huawei/ims/HwImsUtImpl;->syncClirModeToImsSdk(ILandroid/os/Message;)V

    .line 3803
    .end local v1    # "response":Landroid/os/Message;
    .end local v5    # "onComplete":Landroid/os/Message;
    goto :goto_40

    .line 3804
    :cond_39
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v1, v5, v3}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3806
    :goto_40
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3807
    .end local v0    # "isEnable":Ljava/lang/Boolean;
    .end local v2    # "defaultBehavior":I
    .end local v3    # "clirInfo":Landroid/os/Bundle;
    .end local v4    # "clirResponse":[I
    goto :goto_5a

    .line 3808
    :cond_45
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3809
    .local v0, "onComplete":Landroid/os/Message;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3810
    .restart local v1    # "response":Landroid/os/Message;
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->syncClirModeToImsSdk(ILandroid/os/Message;)V

    .line 3811
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3813
    .end local v0    # "onComplete":Landroid/os/Message;
    .end local v1    # "response":Landroid/os/Message;
    :goto_5a
    return-void
.end method

.method private handleSciSsConfCbOfTipSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3731
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    if-nez v0, :cond_18

    .line 3732
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getTerminatingIdentityPresentationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 3733
    .local v0, "isEnable":Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseColp(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v1

    .line 3734
    .local v1, "colpInfo":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3735
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3736
    .end local v0    # "isEnable":Ljava/lang/Boolean;
    .end local v1    # "colpInfo":Landroid/os/Bundle;
    goto :goto_23

    .line 3737
    :cond_18
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3738
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3740
    :goto_23
    return-void
.end method

.method private handleSciSsConfCbOfTirSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3743
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtOpType:I

    if-nez v0, :cond_18

    .line 3744
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getTerminatingIdentityRestrictionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 3745
    .local v0, "isEnable":Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseColr(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v1

    .line 3746
    .local v1, "colrInfo":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v2, v3, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationQueried(ILandroid/os/Bundle;)V

    .line 3747
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3748
    .end local v0    # "isEnable":Ljava/lang/Boolean;
    .end local v1    # "colrInfo":Landroid/os/Bundle;
    goto :goto_23

    .line 3749
    :cond_18
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3750
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3752
    :goto_23
    return-void
.end method

.method private handleSciSsConfCbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3649
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtType:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->setUtDataExpireTime(I)V

    .line 3650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle UT data connection handleSciSSConfCbSuccessfully : cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3652
    :try_start_21
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtType:I

    packed-switch v0, :pswitch_data_8a

    .line 3701
    :pswitch_26
    const-string v0, "not support ssType"

    goto :goto_61

    .line 3666
    :pswitch_29
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfCwSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3667
    goto :goto_84

    .line 3685
    :pswitch_2d
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdated(I)V

    .line 3686
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3687
    goto :goto_84

    .line 3675
    :pswitch_39
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfOcbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3676
    goto :goto_84

    .line 3672
    :pswitch_3d
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfIcbSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3673
    goto :goto_84

    .line 3678
    :pswitch_41
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfCfnrcSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3679
    goto :goto_84

    .line 3698
    :pswitch_45
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfCfnrSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3699
    goto :goto_84

    .line 3695
    :pswitch_49
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfCfacSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3696
    goto :goto_84

    .line 3669
    :pswitch_4d
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfCdivSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3670
    goto :goto_84

    .line 3663
    :pswitch_51
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfTirSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3664
    goto :goto_84

    .line 3660
    :pswitch_55
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfOirSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3661
    goto :goto_84

    .line 3657
    :pswitch_59
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfTipSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3658
    goto :goto_84

    .line 3654
    :pswitch_5d
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->handleSciSsConfCbOfOipSuccessfully(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V

    .line 3655
    goto :goto_84

    .line 3701
    :goto_61
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3702
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3703
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_6e} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6e} :catch_6f

    goto :goto_84

    .line 3709
    :catch_6f
    move-exception v0

    .line 3710
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3711
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto :goto_85

    .line 3706
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7a
    move-exception v0

    .line 3707
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "RuntimeException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3708
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3712
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_84
    nop

    .line 3715
    :goto_85
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 3716
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_49
        :pswitch_3d
        :pswitch_39
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_49
        :pswitch_49
    .end packed-switch
.end method

.method private handleSciSsConfCbUndefinedError(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)V
    .registers 6
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter handleSciSSConfCbUndefinedError, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3615
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_1b

    .line 3616
    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 3619
    :cond_1b
    if-nez p1, :cond_1e

    .line 3620
    return-void

    .line 3624
    :cond_1e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCtCardAndSupportVolte()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2f

    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_32

    .line 3625
    :cond_2f
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->saveCtCardVolteFlag(Z)V

    .line 3627
    :cond_32
    iget v0, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mStatus:I

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2, v0}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 3628
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isMmi002004NoneCsfb(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-nez v0, :cond_5c

    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getUtRetryMaxCounts()I

    move-result v2

    if-ge v0, v2, :cond_5c

    .line 3629
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCmdGetResultFromSdkLocally(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 3630
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    .line 3631
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromUtCmdQueueToRetryQueue(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3632
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utRetryCounts:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->startUtRetryAlarm(I)V

    goto :goto_88

    .line 3634
    :cond_5c
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtApnInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3635
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 3636
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isMmi002004NoneCsfb(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 3637
    const-string v0, "Undefined Error for ut fail and none csfb"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3638
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3639
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_88

    .line 3641
    :cond_7f
    const-string v0, "handle UT data connection fallback CS domain for ut fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3642
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3645
    :goto_88
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 3646
    return-void
.end method

.method private handleSetCallWaitingDone(ZLandroid/os/Message;)V
    .registers 5
    .param p1, "isEnable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set call waiting success, isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6087
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6088
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSyncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    goto :goto_34

    .line 6089
    :cond_20
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6090
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->isSyncCallWaitingToCs(ZLandroid/os/Message;)Z

    goto :goto_34

    .line 6092
    :cond_2c
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseCwInts(Z)Ljava/lang/Object;

    move-result-object v0

    .line 6093
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6095
    .end local v0    # "ret":Ljava/lang/Object;
    :goto_34
    return-void
.end method

.method private handleSetCallWaitingNoneSync(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 6098
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6099
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6101
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_28

    .line 6102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCallWaitingNoneSync: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6103
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_4a

    .line 6105
    :cond_28
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v2

    .line 6106
    .local v2, "isEnable":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableCallWaiting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6107
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCwInts(Z)Ljava/lang/Object;

    move-result-object v3

    .line 6108
    .local v3, "ret":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6110
    .end local v2    # "isEnable":Z
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_4a
    return-void
.end method

.method private handleSetCwFromCs(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2403
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2404
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 2406
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_28

    .line 2407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCwFromCs: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2408
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_31

    .line 2410
    :cond_28
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v2

    .line 2411
    .local v2, "isEnalbe":Z
    invoke-direct {p0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSetCallWaitingDone(ZLandroid/os/Message;)V

    .line 2413
    .end local v2    # "isEnalbe":Z
    :goto_31
    return-void
.end method

.method private handleSimCardAbsentInternal(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 4439
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleClear(I)V

    .line 4440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 4441
    return-void
.end method

.method private handleSimRecordsLoadedInternal(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 4309
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v0, :cond_a

    .line 4310
    const-string v0, "handleSimRecordsLoadedInternal, mImsConfigImpl is null return"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4311
    return-void

    .line 4314
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4315
    .local v0, "newImsi":Ljava/lang/String;
    if-nez v0, :cond_16

    .line 4316
    const-string v1, "Can\'t get current imsi from sim, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4317
    return-void

    .line 4320
    :cond_16
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1, v0}, Lcom/huawei/ims/HwImsConfigImpl;->setCurrentImsi(Ljava/lang/String;)V

    .line 4321
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/huawei/ims/HwImsConfigImpl;->getSharedPreferences(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4322
    .local v1, "oldImsi":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isCardChange(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_75

    .line 4323
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->clearSharedPreferences()V

    .line 4326
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->SIM_IMSI_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v4, v4, v5

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v4, v0, v5}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4329
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_SIM_IMSI_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 4330
    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getImpuFromSim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4329
    invoke-virtual {v2, v4, v5, v6}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4331
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImpu:Ljava/lang/String;

    if-eqz v2, :cond_75

    .line 4332
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->IMPU_FROM_NETWORK_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImpu:Ljava/lang/String;

    .line 4333
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/huawei/ims/HwImsConfigImpl;->setSharedPreferences(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4334
    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImpu:Ljava/lang/String;

    .line 4335
    const-string v2, "handleSimRecordsLoadedInternal mImpu != null, set to sp"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4338
    :cond_75
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->spliceMncMcc()Ljava/lang/String;

    move-result-object v2

    .line 4339
    .local v2, "spliceMncMcc":Ljava/lang/String;
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4, v2}, Lcom/huawei/ims/HwImsConfigImpl;->setSpliceMncMcc(Ljava/lang/String;)V

    .line 4340
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 4343
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/ims/HwImsConfigImpl;->readCarrierConfig(Landroid/content/Context;)V

    .line 4345
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryUtApn()V

    .line 4346
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    .line 4347
    iput-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 4348
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncCallWaitingToCs()V

    .line 4350
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isActiveCallwaitingFromCs()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 4351
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->setCallWaitingToCs()V

    .line 4354
    :cond_a1
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryAndSyncClirModeToImsSdk()V

    .line 4356
    sget v3, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    iget v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    if-ne v3, v4, :cond_b2

    .line 4357
    const-string v3, "handleSimRecordsLoaded: init sdk params when mCurrentSlotId == mSlotId"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4358
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSsConfHs()V

    .line 4360
    :cond_b2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUse403ForLocalCw()Z

    move-result v3

    if-eqz v3, :cond_c3

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCheckedSimCardByUt:Z

    if-nez v3, :cond_c3

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    if-eqz v3, :cond_c3

    .line 4361
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->detectSimCardSubscriptionStatus()V

    .line 4363
    :cond_c3
    return-void
.end method

.method private handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .registers 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4181
    const/4 v0, 0x1

    if-nez p1, :cond_9

    .line 4182
    const-string v1, "utcmd is null. "

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4183
    return v0

    .line 4186
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsShowDataConnectionDialog:Z

    .line 4189
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 4190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Domain select by ss is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4191
    const/4 v2, 0x0

    .line 4194
    .local v2, "ret":I
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$DomainSelectType:[I

    iget-object v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_42

    const/4 v4, 0x2

    if-eq v3, v4, :cond_42

    const/4 v4, 0x3

    if-eq v3, v4, :cond_42

    .line 4204
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 4205
    const/4 v0, 0x1

    .end local v2    # "ret":I
    .local v0, "ret":I
    goto :goto_4e

    .line 4198
    .end local v0    # "ret":I
    .restart local v2    # "ret":I
    :cond_42
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v2

    .line 4199
    if-ne v2, v0, :cond_4d

    .line 4200
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 4209
    :cond_4d
    move v0, v2

    .end local v2    # "ret":I
    .restart local v0    # "ret":I
    :goto_4e
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsShowDataConnectionDialog:Z

    .line 4210
    return v0
.end method

.method private handleSyncCallWaitingDone(ZLandroid/os/Message;)V
    .registers 7
    .param p1, "isEnable"    # Z
    .param p2, "msg"    # Landroid/os/Message;

    .line 6177
    const-string v0, "sync call waiting has finished successfully."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCwInModem:Z

    .line 6180
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    if-ne v0, v1, :cond_26

    .line 6181
    const-string v0, "begin set call waiting to sharedpreference"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6182
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v1, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_CALL_WAITING_KEY:[Ljava/lang/String;

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/huawei/ims/HwImsConfigImpl;->setBoolToSp(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 6185
    :cond_26
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6186
    .local v0, "arSyncCw":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6187
    .local v1, "onComplete":Landroid/os/Message;
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseCwInts(Z)Ljava/lang/Object;

    move-result-object v2

    .line 6188
    .local v2, "ret":Ljava/lang/Object;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6189
    return-void
.end method

.method private handleSyncCallWaitingToCsDone(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 6161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6162
    .local v0, "arSyncCw":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6164
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    .line 6165
    const-string v2, "SyncCallWaitingToCs FAIL"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6166
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6167
    return-void

    .line 6170
    :cond_17
    const-string v2, "sync call waiting to IMS SDK successfully"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6171
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 6172
    .local v2, "callWaitingAction":I
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v3

    .line 6173
    .local v3, "isEnable":Z
    invoke-direct {p0, v3, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingDone(ZLandroid/os/Message;)V

    .line 6174
    return-void
.end method

.method private handleSyncCallWaitingToImsSdkDone(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 6130
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6131
    .local v0, "arSyncCw":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6133
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    .line 6134
    const-string v2, "SyncCallWaitingToImsSdk FAIL"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6135
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6136
    return-void

    .line 6139
    :cond_17
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 6140
    .local v2, "callWaitingAction":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync call waiting to IMS SDK successfully, callWaitingAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6141
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isEnableCallWaiting(I)Z

    move-result v3

    .line 6147
    .local v3, "isEnable":Z
    invoke-direct {p0, v3, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleSyncCallWaitingDone(ZLandroid/os/Message;)V

    .line 6148
    return-void
.end method

.method private handleSyncClirModeToImsSdkDone(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 6256
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 6257
    .local v0, "arSyncClir":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 6259
    .local v1, "onComplete":Landroid/os/Message;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    .line 6260
    const-string v2, "handleSyncClirModeToImsSdkDone FAIL"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6261
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6262
    return-void

    .line 6265
    :cond_17
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 6266
    .local v2, "ret":Landroid/os/Bundle;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6267
    return-void
.end method

.method private handleTearDownTunnelConnectionTimeout()V
    .registers 3

    .line 5392
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_a

    .line 5393
    const-string v0, "handleTearDownTunnelConnectionTimeout - isVowifiPropOpened is flase, return"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5394
    return-void

    .line 5396
    :cond_a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5397
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 5399
    const-string v1, "restart wifi tunnel lifetime alarm."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5400
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelConnectionAlarm()V

    .line 5401
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelConnectionAlarm()V

    .line 5402
    return-void

    .line 5405
    :cond_22
    const-string v1, "tunnel lifetime is out, endImsConnectivity."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5406
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5407
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 5408
    return-void
.end method

.method private handleTempDcConnectionAct(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .registers 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2834
    if-nez p1, :cond_8

    .line 2835
    const-string v0, "handleTempDcConnectionAct - ut cmd is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2836
    return-void

    .line 2838
    :cond_8
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isProcessTemporarilyDcConnection()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2841
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtCanUseDefaultBearForWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2842
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    goto :goto_1f

    .line 2844
    :cond_18
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2845
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startTemporaryDcAlarm()V

    .line 2848
    :cond_1f
    :goto_1f
    return-void
.end method

.method private handleTemporaryDcTimeOut()V
    .registers 3

    .line 5904
    const-string v0, "handleTemporaryDcTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5905
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->recoverDefaultDataSub()V

    .line 5906
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5908
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_14

    .line 5909
    const-string v1, "[error]handleTemporaryDcTimeOut - cmd is null, but receive message of dc time out!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5910
    return-void

    .line 5913
    :cond_14
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_FINISH:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5914
    const/4 v1, 0x1

    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    .line 5916
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v1, :cond_22

    .line 5917
    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5920
    :cond_22
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 5921
    return-void
.end method

.method private handleTemporaryUtStayTimeOut()V
    .registers 2

    .line 5965
    const-string v0, "handleTemporaryUtStayTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5966
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->recoverDefaultDataSub()V

    .line 5967
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->broadcastUtIdle()V

    .line 5968
    return-void
.end method

.method private handleTunnelSetupTimeout()V
    .registers 4

    .line 5426
    const-string v0, "handleTunnelSetupTimeout"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5428
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_f

    .line 5429
    const-string v0, "handleTunnelSetupTimeout - isVowifiPropOpened is false, return"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5430
    return-void

    .line 5433
    :cond_f
    const/4 v0, -0x1

    const/16 v1, 0x3ea

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5435
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 5436
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifiTimeOut:Z

    .line 5437
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5438
    if-eqz v0, :cond_37

    .line 5440
    const-string v1, "handle UT data connection tunnel setup time out, endUtOverWifiConnectivity."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5441
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelConnectionAlarm()V

    .line 5442
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 5443
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 5444
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->changeDcStateWhenTunnelSetupFail()V

    .line 5445
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 5447
    :cond_37
    return-void
.end method

.method private handleUpdateCallWaiting(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 4607
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    move-result-object v0

    .line 4608
    .local v0, "callWaitingSource":Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter handleUpdateCallWaiting, callWaitingSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4609
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4610
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCallWatingUtCanBeUsed:Z

    .line 4616
    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCallWatingUtCanBeUsed:Z

    if-nez v2, :cond_33

    .line 4617
    const-string v2, "call waiting is only allowed use CS domain and forbid sync to IMS SDK"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4618
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4619
    return-void

    .line 4622
    :cond_33
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsConfigImpl$CallWaitingSource:[I

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_bd

    const/4 v3, 0x3

    if-eq v2, v3, :cond_59

    .line 4653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[error]can\'t set call waiting, the source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4654
    return-void

    .line 4630
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update callwaiting isUse403ForLocalCw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUse403ForLocalCw()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mIsUtForbidden : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4632
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUse403ForLocalCw()Z

    move-result v2

    if-eqz v2, :cond_89

    iget-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtForbidden:Z

    if-eqz v2, :cond_89

    .line 4633
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    goto :goto_c5

    .line 4635
    :cond_89
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4637
    .local v2, "onComplete":Landroid/os/Message;
    if-nez v2, :cond_96

    .line 4638
    const-string v3, "handleUpdateCallWaiting: onComplete is null."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4641
    :cond_96
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 4642
    iget-boolean v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->isSyncCallWaitingToImsSdk(ZLandroid/os/Message;)Z

    goto :goto_b1

    .line 4643
    :cond_a4
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 4644
    iget-boolean v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->isSyncCallWaitingToCs(ZLandroid/os/Message;)Z

    .line 4651
    .end local v2    # "onComplete":Landroid/os/Message;
    :goto_b1
    goto :goto_c5

    .line 4646
    .restart local v2    # "onComplete":Landroid/os/Message;
    :cond_b2
    const-string v3, "[error]local call waiting and not sync is not reasonable."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4647
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v2, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 4648
    return-void

    .line 4627
    .end local v2    # "onComplete":Landroid/os/Message;
    :cond_bd
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4628
    goto :goto_c5

    .line 4624
    :cond_c1
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4625
    nop

    .line 4656
    :goto_c5
    return-void
.end method

.method private handleUpdateClir(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 4659
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4660
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOirSourceMode()I

    move-result v1

    .line 4661
    .local v1, "oirSourceMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter handleUpdateClir, oirSourceMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4662
    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    .line 4663
    .local v2, "isClirUtCanBeUsed":Z
    if-eqz v2, :cond_55

    const/4 v3, 0x1

    if-ne v1, v3, :cond_55

    .line 4664
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    sget-object v4, Lcom/huawei/ims/HwImsConfigImpl;->LOCAL_OIR_KEY:[Ljava/lang/String;

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    aget-object v4, v4, v5

    iget v5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/huawei/ims/HwImsConfigImpl;->setIntToSp(Ljava/lang/String;ILandroid/content/Context;)V

    .line 4665
    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4666
    .local v3, "onComplete":Landroid/os/Message;
    if-nez v3, :cond_47

    .line 4667
    const-string v4, "handleUpdateClir: onComplete is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4670
    :cond_47
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 4671
    .local v4, "response":Landroid/os/Message;
    iget v5, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-direct {p0, v5, v4}, Lcom/huawei/ims/HwImsUtImpl;->syncClirModeToImsSdk(ILandroid/os/Message;)V

    .line 4672
    .end local v3    # "onComplete":Landroid/os/Message;
    .end local v4    # "response":Landroid/os/Message;
    goto :goto_58

    .line 4673
    :cond_55
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4675
    :goto_58
    return-void
.end method

.method private handleUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .registers 10
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2537
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomainByUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    const/4 v1, 0x6

    if-nez v0, :cond_16

    .line 2538
    const-string v0, "Can\'t start SS with Ut, will fallback to cs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2539
    if-eqz p1, :cond_15

    .line 2540
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2541
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 2543
    :cond_15
    return-void

    .line 2545
    :cond_16
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initUtSdkWhenDomainSelectUt()V

    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd.dcState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2548
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$ImsDataConnectionState:[I

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-string v2, "handle UT data connection ut use default apn and data is not connected"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_248

    goto/16 :goto_244

    .line 2771
    :pswitch_41
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleTempDcConnectionAct(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2772
    return-void

    .line 2767
    :pswitch_45
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 2768
    invoke-virtual {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 2769
    return-void

    .line 2764
    :pswitch_4d
    goto/16 :goto_244

    .line 2762
    :pswitch_4f
    return-void

    .line 2756
    :pswitch_50
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isProcessImsConnectivity()Z

    move-result v0

    if-nez v0, :cond_244

    .line 2757
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2758
    return-void

    .line 2749
    :pswitch_5b
    const-string v0, "Airplane mode is turned on, no longer trying volte ut and cs, return failure! "

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2750
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2751
    return-void

    .line 2734
    :pswitch_64
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_73

    .line 2735
    const-string v0, "state IMS_DC_CELLULAR_PREF_IMSPDP_FAIL, send GENERIC_FAILURE to user."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2736
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2737
    return-void

    .line 2739
    :cond_73
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2740
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2741
    goto/16 :goto_244

    .line 2743
    :cond_7f
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2744
    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 2745
    return-void

    .line 2728
    :pswitch_87
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2729
    const-string v0, "handle UT data connection finish for IMS_DC_CELLULAR_PREF_TUNNEL_FAIL"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2730
    return-void

    .line 2723
    :pswitch_90
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2724
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDcAlarm()V

    .line 2725
    return-void

    .line 2711
    :pswitch_98
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_9d

    .line 2712
    return-void

    .line 2715
    :cond_9d
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2718
    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 2719
    return-void

    .line 2706
    :pswitch_a5
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleWifiOnlyTunnelFail(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2707
    return-void

    .line 2695
    :pswitch_a9
    const-string v0, "state IMS_DC_WIFI_PREF_IMSPDP_FAIL, startDCAlarm."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2696
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_b3

    .line 2697
    return-void

    .line 2701
    :cond_b3
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2702
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDcAlarm()V

    .line 2703
    return-void

    .line 2667
    :pswitch_bb
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_c0

    .line 2668
    return-void

    .line 2670
    :cond_c0
    const-string v0, "handle UT data connection volte conntion after vowifi connection fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2671
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v0

    if-nez v0, :cond_d2

    .line 2672
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isHandleUtUseDefaultApn(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-nez v0, :cond_244

    .line 2673
    return-void

    .line 2676
    :cond_d2
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 2677
    const-string v0, "handle UT data connection volte conntion after vowifi connection fail default apn"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2678
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v0

    .line 2679
    .local v0, "network":Landroid/net/Network;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSdkServiceIpAddr(Landroid/net/Network;)V

    .line 2680
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2681
    goto/16 :goto_244

    .line 2682
    .end local v0    # "network":Landroid/net/Network;
    :cond_ea
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtCanUseDefaultBearForWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 2683
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2684
    return-void

    .line 2687
    :cond_f4
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2688
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2689
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDcAlarm()V

    .line 2690
    return-void

    .line 2623
    :pswitch_ff
    const-string v0, "case IMS_DC_WIFI_CONNECTION_TUNNEL_ACT."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2624
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_109

    .line 2625
    return-void

    .line 2627
    :cond_109
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_138

    .line 2628
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 2629
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2630
    goto/16 :goto_244

    .line 2632
    :cond_11b
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->endConnectivityIfNeeded(I)V

    .line 2633
    const-string v0, "handle UT data connection begin vowifi Connectivity"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2634
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    .line 2635
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopWifiTunnelSetupAlarm()V

    .line 2636
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startWifiTunnelSetupAlarm()V

    .line 2637
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2638
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2639
    return-void

    .line 2642
    :cond_138
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v0

    if-nez v0, :cond_149

    .line 2643
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->cancelStopImsApnMessage()V

    .line 2644
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2647
    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 2648
    return-void

    .line 2649
    :cond_149
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 2650
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2651
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v0

    .line 2652
    .restart local v0    # "network":Landroid/net/Network;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSdkServiceIpAddr(Landroid/net/Network;)V

    .line 2653
    goto/16 :goto_244

    .line 2654
    .end local v0    # "network":Landroid/net/Network;
    :cond_15c
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtCanUseDefaultBearForWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 2655
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2656
    return-void

    .line 2659
    :cond_166
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2660
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDcAlarm()V

    .line 2661
    return-void

    .line 2550
    :pswitch_16e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isPerformUtPreprocessingForFirstTime()Z

    move-result v0

    .line 2551
    .local v0, "isInterruptUt":Z
    if-eqz v0, :cond_17a

    .line 2552
    const-string v1, "handleUt: The other Sub is busy, waiting."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2553
    return-void

    .line 2556
    :cond_17a
    const-string v4, "handle UT data connection start"

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2557
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1d8

    .line 2558
    const/4 v4, 0x0

    .line 2559
    .local v4, "utDomain":I
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2560
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_18d

    .line 2561
    return-void

    .line 2563
    :cond_18d
    const-string v6, "isUtOverWifiEnabled return true."

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2564
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtDomain()I

    move-result v4

    .line 2565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVoWifiServiceDomain return utDomain = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2569
    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->isNeedSetupWifiTunnel(I)Z

    move-result v6

    if-eqz v6, :cond_1d8

    .line 2570
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtOverWifiTunnelUp()Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 2572
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2573
    goto/16 :goto_244

    .line 2576
    :cond_1bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle UT data connection vowifi connection tunnel act domain is : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2577
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_WIFI_CONNECTION_TUNNEL_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2580
    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 2581
    return-void

    .line 2588
    .end local v4    # "utDomain":I
    .end local v5    # "context":Landroid/content/Context;
    :cond_1d8
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_1f5

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v1

    if-eqz v1, :cond_1ec

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v1

    if-nez v1, :cond_1f5

    .line 2589
    :cond_1ec
    const-string v1, "Airplane mode is turned on and ss not surrport vowifi ut. no longer trying volte ut and cs"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2590
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2591
    return-void

    .line 2594
    :cond_1f5
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v1

    if-nez v1, :cond_202

    .line 2595
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isHandleUtUseDefaultApn(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v1

    if-nez v1, :cond_244

    .line 2596
    return-void

    .line 2599
    :cond_202
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isNeedTempChangeDefaultDataSub()Z

    move-result v1

    if-eqz v1, :cond_215

    .line 2600
    const-string v1, "handle UT data connection ut use default apn and data is connected but not for this sub"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2601
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_TEMPORARILY_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2602
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->sendUtMessage()V

    .line 2603
    return-void

    .line 2604
    :cond_215
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataConnection()Z

    move-result v1

    if-eqz v1, :cond_22c

    .line 2605
    const-string v1, "handle UT data connection ut use default apn and data is connected"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2606
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2607
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForDefaultApn()Landroid/net/Network;

    move-result-object v1

    .line 2608
    .local v1, "network":Landroid/net/Network;
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->initSdkServiceIpAddr(Landroid/net/Network;)V

    .line 2609
    goto :goto_244

    .line 2610
    .end local v1    # "network":Landroid/net/Network;
    :cond_22c
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtCanUseDefaultBearForWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_239

    .line 2611
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2612
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2613
    return-void

    .line 2616
    :cond_239
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2617
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2618
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDcAlarm()V

    .line 2619
    return-void

    .line 2777
    .end local v0    # "isInterruptUt":Z
    :cond_244
    :goto_244
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handleUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 2778
    return-void

    :pswitch_data_248
    .packed-switch 0x1
        :pswitch_16e
        :pswitch_ff
        :pswitch_bb
        :pswitch_a9
        :pswitch_a5
        :pswitch_98
        :pswitch_90
        :pswitch_90
        :pswitch_87
        :pswitch_64
        :pswitch_5b
        :pswitch_50
        :pswitch_4f
        :pswitch_4d
        :pswitch_45
        :pswitch_41
    .end packed-switch
.end method

.method private handleUtApnConnection(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6298
    if-nez p1, :cond_3

    .line 6299
    return-void

    .line 6302
    :cond_3
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_2e

    sget v0, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    if-eq v0, v1, :cond_2e

    .line 6303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUtApnConnection intent not for this slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sCurrentSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6304
    return-void

    .line 6307
    :cond_2e
    const-string v0, "apnType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6308
    .local v0, "apn":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v1

    const-string v2, "failCause"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6309
    .local v1, "causeCode":I
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6310
    .local v2, "cause":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUtApnConnection apn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9d

    const-string v3, "xcap"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 6313
    const/4 v3, -0x1

    .line 6314
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v4

    .line 6313
    const/4 v5, 0x0

    invoke-direct {p0, v5, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 6315
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3, v2}, Lcom/huawei/ims/HwImsConfigImpl;->isDcFailCauseForNonVolteSim(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 6316
    iput-boolean v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    .line 6318
    :cond_8f
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3, v2}, Lcom/huawei/ims/HwImsConfigImpl;->isDcFailCauseToReleaseApn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 6320
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 6321
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handleImsConnectionFailure()V

    .line 6324
    :cond_9d
    return-void
.end method

.method private handleUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .registers 12
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUtCmd enter, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3013
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isNeedHandleUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 3014
    return v1

    .line 3017
    :cond_1c
    const/4 v0, 0x1

    .line 3019
    .local v0, "ret":I
    :try_start_1d
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    packed-switch v2, :pswitch_data_2a6

    .line 3154
    :pswitch_22
    const-string v2, "handleUtCmd not support this cmd"

    goto/16 :goto_244

    .line 3049
    :pswitch_26
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_31

    .line 3050
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryCallWaiting()I

    move-result v2

    move v0, v2

    goto/16 :goto_25c

    .line 3052
    :cond_31
    iget-boolean v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setCallWaiting(Z)I

    move-result v2

    move v0, v2

    .line 3054
    goto/16 :goto_25c

    .line 3114
    :pswitch_3a
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-ne v2, v1, :cond_49

    .line 3115
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    iget-boolean v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    invoke-static {v2, v3}, Lcom/huawei/sci/SciSSConfHs;->setCallBarring(IZ)I

    move-result v2

    move v0, v2

    goto/16 :goto_25c

    .line 3117
    :cond_49
    const/4 v0, 0x1

    .line 3118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSCONF_SS_TYPE_CF not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3120
    goto/16 :goto_25c

    .line 3092
    :pswitch_62
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_9d

    .line 3094
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 3095
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOutgoingCallBarring()I

    move-result v2

    move v0, v2

    goto/16 :goto_25c

    .line 3097
    :cond_75
    const/4 v0, 0x0

    .line 3098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the status of OCB querying via UT interface is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3101
    new-instance v2, Lcom/huawei/ims/HwImsUtImpl$UtData;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/ims/HwImsUtImpl$UtData;-><init>(III)V

    .line 3102
    .local v2, "ut":Lcom/huawei/ims/HwImsUtImpl$UtData;
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 3103
    nop

    .end local v2    # "ut":Lcom/huawei/ims/HwImsUtImpl$UtData;
    goto/16 :goto_25c

    .line 3105
    :cond_9d
    const/4 v0, 0x1

    .line 3106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSCONF_SS_TYPE_OCB not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3108
    goto/16 :goto_25c

    .line 3074
    :pswitch_b6
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_f1

    .line 3076
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 3077
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryIncomingCallBarring()I

    move-result v2

    move v0, v2

    goto/16 :goto_25c

    .line 3079
    :cond_c9
    const/4 v0, 0x0

    .line 3080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the status of ICB querying via UT interface is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3083
    new-instance v2, Lcom/huawei/ims/HwImsUtImpl$UtData;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/ims/HwImsUtImpl$UtData;-><init>(III)V

    .line 3084
    .restart local v2    # "ut":Lcom/huawei/ims/HwImsUtImpl$UtData;
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 3085
    nop

    .end local v2    # "ut":Lcom/huawei/ims/HwImsUtImpl$UtData;
    goto/16 :goto_25c

    .line 3087
    :cond_f1
    const/4 v0, 0x1

    .line 3088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSCONF_SS_TYPE_ICB not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3090
    goto/16 :goto_25c

    .line 3143
    :pswitch_10a
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-ne v2, v1, :cond_124

    .line 3145
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget-object v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    iget-object v6, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->startTime:Ljava/util/Date;

    iget-object v7, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->endTime:Ljava/util/Date;

    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-static/range {v3 .. v9}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversion(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v2

    move v0, v2

    .line 3147
    const/4 v2, 0x7

    iput v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utExpectType:I

    goto/16 :goto_25c

    .line 3149
    :cond_124
    const/4 v0, 0x1

    .line 3150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSCONF_SS_TYPE_CF SET not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3152
    goto/16 :goto_25c

    .line 3128
    :pswitch_13d
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-ne v2, v1, :cond_18e

    .line 3129
    const/4 v2, -0x1

    .line 3130
    .local v2, "time":I
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v4, 0x16

    if-eq v3, v4, :cond_15c

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v4, 0x17

    if-eq v3, v4, :cond_15c

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_161

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 3131
    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isProtocolIr92V10orGreater()Z

    move-result v3

    if-eqz v3, :cond_161

    .line 3132
    :cond_15c
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getNoReplyTimer(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    move-result v3

    move v2, v3

    .line 3134
    :cond_161
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget-object v5, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v9, v2

    invoke-static/range {v3 .. v9}, Lcom/huawei/sci/SciSSConfHs;->setCallDiversion(IILjava/lang/String;Ljava/util/Date;Ljava/util/Date;II)I

    move-result v3

    move v0, v3

    .line 3136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setCallDiversion return value ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3137
    .end local v2    # "time":I
    goto/16 :goto_25c

    .line 3138
    :cond_18e
    const/4 v0, 0x1

    .line 3139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSCONF_SS_TYPE_CF GET not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3141
    goto/16 :goto_25c

    .line 3056
    :pswitch_1a7
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_1e1

    .line 3058
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtDataExpire(I)Z

    move-result v2

    if-eqz v2, :cond_1b9

    .line 3059
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryCallDiversion()I

    move-result v2

    move v0, v2

    goto/16 :goto_25c

    .line 3061
    :cond_1b9
    const/4 v0, 0x0

    .line 3062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the status of CFU querying via UT interface is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3065
    new-instance v2, Lcom/huawei/ims/HwImsUtImpl$UtData;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/ims/HwImsUtImpl$UtData;-><init>(III)V

    .line 3066
    .local v2, "ut":Lcom/huawei/ims/HwImsUtImpl$UtData;
    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 3067
    nop

    .end local v2    # "ut":Lcom/huawei/ims/HwImsUtImpl$UtData;
    goto/16 :goto_25c

    .line 3069
    :cond_1e1
    const/4 v0, 0x1

    .line 3070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSCONF_SS_TYPE_CDIV not support utOpType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3072
    goto/16 :goto_25c

    .line 3042
    :pswitch_1fa
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_204

    .line 3043
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryTerminatingIdentityRestriction()I

    move-result v2

    move v0, v2

    goto :goto_25c

    .line 3045
    :cond_204
    iget-boolean v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setTerminatingIdentityRestriction(Z)I

    move-result v2

    move v0, v2

    .line 3047
    goto :goto_25c

    .line 3035
    :pswitch_20c
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_216

    .line 3036
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOriginatingIdentityRestriction()I

    move-result v2

    move v0, v2

    goto :goto_25c

    .line 3038
    :cond_216
    iget-boolean v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-static {v2, v3}, Lcom/huawei/sci/SciSSConfHs;->setOriginatingIdentityRestriction(ZI)I

    move-result v2

    move v0, v2

    .line 3040
    goto :goto_25c

    .line 3028
    :pswitch_220
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_22a

    .line 3029
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryTerminatingIdentityPresentation()I

    move-result v2

    move v0, v2

    goto :goto_25c

    .line 3031
    :cond_22a
    iget-boolean v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setTerminatingIdentityPresentation(Z)I

    move-result v2

    move v0, v2

    .line 3033
    goto :goto_25c

    .line 3021
    :pswitch_232
    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-nez v2, :cond_23c

    .line 3022
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->queryOriginatingIdentityPresentation()I

    move-result v2

    move v0, v2

    goto :goto_25c

    .line 3024
    :cond_23c
    iget-boolean v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setOriginatingIdentityPresentation(Z)I

    move-result v2

    move v0, v2

    .line 3026
    goto :goto_25c

    .line 3154
    :goto_244
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_247
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_247} :catch_253
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_247} :catch_249

    .line 3155
    const/4 v0, 0x1

    goto :goto_25c

    .line 3162
    :catch_249
    move-exception v2

    .line 3163
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SciSSConfHs func exception"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3164
    const/4 v0, 0x1

    .line 3165
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    goto :goto_25d

    .line 3158
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_253
    move-exception v2

    .line 3159
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "SciSSConfHs func RuntimeException"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3160
    const/4 v0, 0x1

    .line 3161
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    .line 3166
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_25c
    nop

    .line 3168
    :goto_25d
    if-nez v0, :cond_267

    .line 3169
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startUtAlarm()V

    .line 3170
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_WAIT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    goto :goto_272

    .line 3172
    :cond_267
    iput v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    .line 3173
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3174
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 3177
    :goto_272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUtCmd leave, SciSSConfHs ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cmd.mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", utType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", utReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3179
    return v0

    nop

    :pswitch_data_2a6
    .packed-switch 0x1
        :pswitch_232
        :pswitch_220
        :pswitch_20c
        :pswitch_1fa
        :pswitch_1a7
        :pswitch_22
        :pswitch_13d
        :pswitch_13d
        :pswitch_13d
        :pswitch_13d
        :pswitch_13d
        :pswitch_10a
        :pswitch_b6
        :pswitch_62
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_26
        :pswitch_22
        :pswitch_13d
        :pswitch_13d
    .end packed-switch
.end method

.method private handleUtCmdQueue()V
    .registers 5

    .line 2453
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 2454
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-nez v0, :cond_22

    .line 2456
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 2457
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopDcAlarm()V

    .line 2458
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryDcAlarm()V

    .line 2459
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtCanUseDefaultBearForWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2460
    :cond_1b
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopImsDataConnectionAlarm()V

    .line 2463
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->sendStopImsApnMessage()V

    .line 2465
    :cond_21
    return-void

    .line 2468
    :cond_22
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopTemporaryUtStayAlarm()V

    .line 2469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUtCmdQueue start, cmd mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2471
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdState:[I

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsUtImpl$CmdState;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_96

    const/4 v3, 0x2

    if-eq v1, v3, :cond_96

    const/4 v3, 0x3

    if-eq v1, v3, :cond_95

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8c

    const/4 v3, 0x5

    if-eq v1, v3, :cond_7d

    .line 2489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support this cmd mToken="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_9a

    .line 2483
    :cond_7d
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtAlarm()V

    .line 2484
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->removeUtCmd()V

    .line 2485
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startTemporaryUtStayAlarm()V

    .line 2486
    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 2487
    goto :goto_9a

    .line 2479
    :cond_8c
    const-string v1, "handle UT data connection fallback CS domain"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2480
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSsTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2481
    goto :goto_9a

    .line 2477
    :cond_95
    goto :goto_9a

    .line 2474
    :cond_96
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2475
    nop

    .line 2492
    :goto_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUtCmdQueue leave, cmd mToken="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2493
    return-void
.end method

.method private handleUtInit()V
    .registers 1

    .line 4283
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initImsUtImpl()V

    .line 4284
    return-void
.end method

.method private handleUtRetryAlarmTimeOut()V
    .registers 2

    .line 3404
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->stopUtRetryAlarm()V

    .line 3405
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->transferCmdFromRetryQueueToUtCmdQueue()V

    .line 3406
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 3407
    return-void
.end method

.method private handleUtSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .registers 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 4270
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 4273
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4274
    const/4 v0, 0x0

    return v0

    .line 4276
    :cond_d
    const-string v0, "Send UT message fail, remove last ut cmd."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4277
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->removeLastUtCmd()V

    .line 4279
    const/4 v0, 0x1

    return v0
.end method

.method private handleUtTimeOut()V
    .registers 3

    .line 5873
    const-string v0, "handleUtTimeOut"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5874
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mLastSs:I

    .line 5876
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-eqz v0, :cond_18

    .line 5877
    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->reset()V

    .line 5878
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->utSdkReset(I)V

    .line 5879
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtApnInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5882
    :cond_18
    const/16 v0, 0x3e9

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 5884
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSsTick()V

    .line 5885
    return-void
.end method

.method private handleWifiOnlyTunnelFail(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .registers 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2796
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_5

    .line 2797
    return-void

    .line 2800
    :cond_5
    const/4 v0, 0x0

    const-string v1, "ro.vowifi.wifi_only_fall_cs"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2801
    .local v0, "isSupportWifiOnlyFallCs":Z
    if-eqz v0, :cond_1b

    .line 2802
    const-string v1, "handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL, will fall back to cs,startDCAlarm."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2805
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2806
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startDcAlarm()V

    goto :goto_23

    .line 2808
    :cond_1b
    const-string v1, "handle UT data connection state IMS_DC_WIFI_ONLY_TUNNEL_FAIL,send GENERIC_FAILURE to user."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2809
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 2811
    :goto_23
    return-void
.end method

.method private handoverSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I
    .registers 7
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3233
    const/4 v0, 0x1

    if-eqz p1, :cond_9e

    .line 3234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handoverSs mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", utType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", utOpType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3235
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3241
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    .line 3242
    const-string v1, "handoverSs: Airplane mode is turned on, forbid CSFB, return failure!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3243
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3244
    return v0

    .line 3247
    :cond_43
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCheckCsDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 3248
    const-string v1, "Can\'t start SS wiht CS domain."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3249
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3250
    return v0

    .line 3253
    :cond_54
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUt()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCsBeUsed()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 3254
    const-string v1, "handoverSs cannot use CS"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3255
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3256
    return v0

    .line 3259
    :cond_6d
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3260
    .local v1, "defPhone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_7e

    .line 3261
    const-string v3, "handoverSs cannot get default phone"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3262
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseFailure(II)V

    .line 3263
    return v0

    .line 3266
    :cond_7e
    iget v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3267
    .local v3, "onComplete":Landroid/os/Message;
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 3268
    const-string v2, "set Ut disable"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3269
    invoke-direct {p0, v1, p1, v3}, Lcom/huawei/ims/HwImsUtImpl;->handoverUtCmd(Lcom/android/internal/telephony/Phone;Lcom/huawei/ims/HwImsUtImpl$UtCmd;Landroid/os/Message;)I

    move-result v2

    .line 3270
    .local v2, "ret":I
    if-ne v2, v0, :cond_96

    .line 3271
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3274
    :cond_96
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    .line 3275
    const-string v0, "set ut enable"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3276
    return v2

    .line 3237
    .end local v1    # "defPhone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "ret":I
    .end local v3    # "onComplete":Landroid/os/Message;
    :cond_9e
    const-string v1, "handoverSs,utCmd null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3238
    return v0
.end method

.method private handoverSsTick()V
    .registers 2

    .line 3349
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handoverSsTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3350
    return-void
.end method

.method private handoverSsTick(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .registers 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3353
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->handoverSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 3354
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 3355
    return-void
.end method

.method private handoverUtCmd(Lcom/android/internal/telephony/Phone;Lcom/huawei/ims/HwImsUtImpl$UtCmd;Landroid/os/Message;)I
    .registers 13
    .param p1, "defPhone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 3280
    const/4 v0, 0x0

    .line 3281
    .local v0, "result":I
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$5;->$SwitchMap$com$huawei$ims$HwImsUtImpl$CmdToken:[I

    iget-object v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_b6

    .line 3341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handoverSs not support cmd.mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mToken:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3342
    const/4 v0, 0x1

    goto/16 :goto_b4

    .line 3338
    :pswitch_28
    const-string v1, "handoverUtCmd: this command is for detecting sim card subscription status,forbid CSFB."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3339
    goto/16 :goto_b4

    .line 3323
    :pswitch_2f
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3b

    .line 3324
    const-string v1, "Set CFU due to time in cs domain, but abandon the time"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3325
    iput v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 3328
    :cond_3b
    const/4 v1, 0x0

    .line 3329
    .local v1, "hwGsmCdmaPhoneEx":Lcom/android/internal/telephony/IHwGsmCdmaPhoneEx;
    instance-of v2, p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v2, :cond_45

    .line 3330
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mHwGsmCdmaPhoneEx:Lcom/android/internal/telephony/IHwGsmCdmaPhoneEx;

    .line 3332
    :cond_45
    if-eqz v1, :cond_b4

    .line 3333
    iget v3, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    iget v4, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    iget-object v5, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    iget v6, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    iget v7, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    move-object v2, v1

    move-object v8, p3

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/IHwGsmCdmaPhoneEx;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto :goto_b4

    .line 3316
    .end local v1    # "hwGsmCdmaPhoneEx":Lcom/android/internal/telephony/IHwGsmCdmaPhoneEx;
    :pswitch_57
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    invoke-virtual {p1, v1, v2, p3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 3317
    goto :goto_b4

    .line 3313
    :pswitch_5f
    iget-object v1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 3314
    goto :goto_b4

    .line 3308
    :pswitch_65
    iget-boolean v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v4, 0x33

    const/4 v5, 0x1

    .line 3309
    invoke-virtual {v3, v4, v2, v5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3308
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 3311
    goto :goto_b4

    .line 3303
    :pswitch_74
    iget-boolean v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v1

    .line 3304
    .local v1, "callWaitingAction":I
    iget-boolean v3, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x1c

    invoke-virtual {v4, v5, v2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 3306
    goto :goto_b4

    .line 3296
    .end local v1    # "callWaitingAction":I
    :pswitch_88
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 3297
    goto :goto_b4

    .line 3293
    :pswitch_94
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    invoke-virtual {p1, v1, p3}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 3294
    goto :goto_b4

    .line 3290
    :pswitch_9a
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 3291
    goto :goto_b4

    .line 3286
    :pswitch_9e
    iget-object v3, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    iget-object v4, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csPassword:Ljava/lang/String;

    iget-boolean v5, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    iget v6, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    move-object v2, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/Phone;->setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Message;)V

    .line 3288
    goto :goto_b4

    .line 3283
    :pswitch_ac
    iget-object v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    invoke-virtual {p1, v1, v2, p3}, Lcom/android/internal/telephony/Phone;->getCallbarringOption(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3284
    nop

    .line 3345
    :cond_b4
    :goto_b4
    return v0

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_9e
        :pswitch_9a
        :pswitch_94
        :pswitch_88
        :pswitch_74
        :pswitch_65
        :pswitch_5f
        :pswitch_57
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method private hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 6064
    invoke-static {p1, p2}, Lcom/huawei/ims/HiddenPrivacyInfo;->putMosaic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initImsUtImpl()V
    .registers 6

    .line 4287
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 4290
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4291
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4292
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const-string v4, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4295
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 4296
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4297
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4298
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE@hwBrExpand@ConnectStatus=MOBILEDATACON|ConnectStatus=WIFIDATADSCON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 4299
    sget-boolean v1, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v1, :cond_3b

    .line 4300
    const-string v1, "com.hisi.mapcon.servicefailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4303
    :cond_3b
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4304
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mApnChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4306
    return-void
.end method

.method private initSciSsConfHs()V
    .registers 9

    .line 4791
    :try_start_0
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->sSciSsConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_a

    .line 4792
    const-string v0, "initSciSsConfHs:: sdk has not been initialized and mSciSSConfCb is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4793
    return-void

    .line 4795
    :cond_a
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->sSciSsConfCb:Lcom/huawei/sci/SciSSConfCb;

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSciSsCb:Lcom/huawei/sci/SciSSConfCb$Callback;

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfCb;->setCallback(Lcom/huawei/sci/SciSSConfCb$Callback;)V

    .line 4796
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-nez v0, :cond_22

    .line 4797
    new-instance v0, Lcom/huawei/ims/GbaAuth;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/GbaAuth;-><init>(Lcom/huawei/ims/ImsRIL;Lcom/huawei/ims/HwImsConfigImpl;I)V

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    .line 4799
    :cond_22
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->sSciSsConfCb:Lcom/huawei/sci/SciSSConfCb;

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v0}, Lcom/huawei/ims/GbaAuth;->getGbaAuthUtil()Lcom/huawei/ims/GbaAuthUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/sci/SciSSConfCb;->setSSConfAuth(Lcom/huawei/sci/SciSSConfAuth;)V

    .line 4801
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseNodeSelector()Z

    move-result v0

    .line 4802
    .local v0, "isUseNodeSelector":Z
    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->isSupportNodeSelector(Z)I

    move-result v1

    .line 4803
    .local v1, "ret":I
    if-eqz v1, :cond_4d

    .line 4804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportNodeSelector ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4807
    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init isSupportNodeSelector="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4809
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseXcapNameSpace()Z

    move-result v2

    .line 4810
    .local v2, "isUseXcapNameSpace":Z
    invoke-static {v2}, Lcom/huawei/sci/SciSSConfHs;->setSupportXcapNamespace(Z)I

    move-result v3

    move v1, v3

    .line 4811
    if-eqz v1, :cond_82

    .line 4812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSupportXcapNamespace ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4815
    :cond_82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init setSupportXcapNamespace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4816
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtGbaType()I

    move-result v3

    .line 4817
    .local v3, "gbaType":I
    invoke-static {v3}, Lcom/huawei/sci/SciSSConfHs;->setSupportGBAType(I)I

    move-result v4

    move v1, v4

    .line 4818
    if-eqz v1, :cond_b7

    .line 4819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSupportGBAType ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4822
    :cond_b7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init setSupportGBAType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4823
    iget-object v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v4}, Lcom/huawei/ims/HwImsConfigImpl;->isUtUseTmpi()Z

    move-result v4

    .line 4824
    .local v4, "isUseTmpi":Z
    invoke-static {v4}, Lcom/huawei/sci/SciSSConfHs;->setSupportTmpi(Z)I

    move-result v5

    move v1, v5

    .line 4825
    if-eqz v1, :cond_ec

    .line 4826
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSupportTmpi ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4829
    :cond_ec
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init usetmpi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4831
    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v5}, Lcom/huawei/ims/HwImsConfigImpl;->getContentTypeMode()I

    move-result v5

    .line 4833
    .local v5, "contentTypeMode":I
    invoke-static {v5}, Lcom/huawei/sci/SciSSConfHs;->setContentType(I)I

    move-result v6

    move v1, v6

    .line 4834
    if-eqz v1, :cond_121

    .line 4835
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setContentType ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4838
    :cond_121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init contentTypeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4839
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpu()I

    .line 4840
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 4841
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkBsfAddr()I

    .line 4842
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkNafAddr()I

    .line 4843
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkParamsCfg()V

    .line 4844
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsXcapRootUri()I

    .line 4845
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsUserAgentExtensionalParam()V
    :try_end_14a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14a} :catch_152
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14a} :catch_14b

    .end local v0    # "isUseNodeSelector":Z
    .end local v1    # "ret":I
    .end local v2    # "isUseXcapNameSpace":Z
    .end local v3    # "gbaType":I
    .end local v4    # "isUseTmpi":Z
    .end local v5    # "contentTypeMode":I
    goto :goto_158

    .line 4848
    :catch_14b
    move-exception v0

    .line 4849
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SciSSConfHs exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_159

    .line 4846
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_152
    move-exception v0

    .line 4847
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SciSSConfHs RuntimeException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4850
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_158
    nop

    .line 4851
    :goto_159
    return-void
.end method

.method private initSdkServiceIpAddr(Landroid/net/Network;)V
    .registers 5
    .param p1, "netWork"    # Landroid/net/Network;

    .line 2931
    if-nez p1, :cond_3

    .line 2932
    return-void

    .line 2935
    :cond_3
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNafOrBsfIpToSdk:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    iget v2, p1, Landroid/net/Network;->netId:I

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 2936
    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtQueryDnsIgnoreNetId()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    move v0, v1

    .line 2937
    .local v0, "isInitSdkServiceIpAddr":Z
    :goto_19
    if-nez v0, :cond_43

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    if-nez v2, :cond_20

    goto :goto_43

    .line 2940
    :cond_20
    iget v2, p1, Landroid/net/Network;->netId:I

    iput v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    .line 2942
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtGbaLifetimeBeUsed()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2943
    const-string v1, "initSdkServiceIpAddr skip sdk.reset & gba.clear"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_3f

    .line 2945
    :cond_32
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->utSdkReset(I)V

    .line 2946
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2947
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mGbaAuth:Lcom/huawei/ims/GbaAuth;

    invoke-virtual {v1}, Lcom/huawei/ims/GbaAuth;->clear()V

    .line 2949
    :goto_3f
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->setHostIpToSdk(Landroid/net/Network;)V

    .line 2950
    return-void

    .line 2938
    :cond_43
    :goto_43
    return-void
.end method

.method private initUtSdk()V
    .registers 4

    .line 4768
    const-string v0, "initUtSdk enter"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4769
    new-instance v0, Lcom/huawei/sci/SciSSConfCb;

    invoke-direct {v0}, Lcom/huawei/sci/SciSSConfCb;-><init>()V

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setSciSsConfCb(Lcom/huawei/sci/SciSSConfCb;)V

    .line 4770
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->sSciSsConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_17

    .line 4771
    const-string v0, "instance sSciSsConfCb fail"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4772
    return-void

    .line 4776
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtOpenHrsLog()Z

    move-result v0

    .line 4777
    .local v0, "isOpenHrsLog":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/huawei/sci/SciSSConfHs;->init(Landroid/content/Context;Z)I

    move-result v1

    sput v1, Lcom/huawei/ims/HwImsUtImpl;->sUtSdkInitResult:I

    .line 4778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SciSSConfHs.init sUtSdkInitResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->sUtSdkInitResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", IS_HRS_LOG_OPEN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_45} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_45} :catch_46

    .end local v0    # "isOpenHrsLog":Z
    goto :goto_53

    .line 4781
    :catch_46
    move-exception v0

    .line 4782
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SciSSConfHs exception"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_54

    .line 4779
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4d
    move-exception v0

    .line 4780
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "SciSSConfHs RuntimeException"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4783
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_53
    nop

    .line 4785
    :goto_54
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSlotId(I)V

    .line 4786
    const-string v0, "initUtSdk leave"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4787
    return-void
.end method

.method private declared-synchronized initUtSdkWhenDomainSelectUt()V
    .registers 2

    monitor-enter p0

    .line 6474
    :try_start_1
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl;->sSciSsConfCb:Lcom/huawei/sci/SciSSConfCb;

    if-nez v0, :cond_11

    .line 6475
    const-string v0, "initUtSdkWhenDomainSelectUt: initUtSDK and set ut params to sdk."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6476
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initUtSdk()V

    .line 6477
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSsConfHs()V

    goto :goto_2a

    .line 6478
    .end local p0    # "this":Lcom/huawei/ims/HwImsUtImpl;
    :cond_11
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-nez v0, :cond_25

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isRegetImsiFromPhone()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 6479
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpi()I

    .line 6480
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkBsfAddr()I

    .line 6481
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkNafAddr()I

    goto :goto_2a

    .line 6483
    :cond_25
    const-string v0, "initUtSdkWhenDomainSelectUt: undefined branch."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 6485
    :goto_2a
    monitor-exit p0

    return-void

    .line 6473
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAirplaneModeOn()Z
    .registers 5

    .line 2851
    const/4 v0, 0x0

    .line 2852
    .local v0, "isAirplaneModeOn":Z
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 2853
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "airplane_mode_on"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    :cond_19
    move v0, v2

    .line 2855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAirplaneModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2857
    :cond_2e
    return v0
.end method

.method private isCallWaitingExpire()Z
    .registers 4

    .line 1984
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1985
    return v1

    .line 1988
    :cond_6
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1990
    .local v0, "currDate":Ljava/util/Date;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_33

    .line 1991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forbid call waiting request, currDate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mNextGetCallWaitingTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1993
    const/4 v1, 0x0

    return v1

    .line 1995
    :cond_33
    return v1
.end method

.method private isCardChange(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "newImsi"    # Ljava/lang/String;
    .param p2, "oldImsi"    # Ljava/lang/String;

    .line 4406
    const/4 v0, 0x0

    .line 4408
    .local v0, "isChange":Z
    if-nez p1, :cond_9

    .line 4409
    if-nez p2, :cond_7

    .line 4410
    const/4 v0, 0x0

    goto :goto_10

    .line 4412
    :cond_7
    const/4 v0, 0x1

    goto :goto_10

    .line 4415
    :cond_9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 4418
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Card is changed isChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4419
    return v0
.end method

.method private isCardMccMncPreferToUseUt()Z
    .registers 3

    .line 4237
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getCardMccMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCardMccMncPreferToUseUt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCardTypePreferToUseUt()Z
    .registers 4

    .line 4231
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 4232
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->getCardType(I)I

    move-result v1

    .line 4233
    .local v1, "cardType":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCardTypePreferToUseUt(I)Z

    move-result v2

    return v2
.end method

.method private isCfEnable(I)Z
    .registers 4
    .param p1, "action"    # I

    .line 4763
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method private isCheckCsDomain(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .registers 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3932
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 3933
    const-string v1, "ut cmd is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3934
    return v0

    .line 3939
    :cond_9
    iget-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectCs(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z
    .registers 4
    .param p1, "ds"    # Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 3949
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->domainIntersectUt(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isCheckUtDomainByUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .registers 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3953
    if-nez p1, :cond_9

    .line 3954
    const-string v0, "ut cmd is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3955
    const/4 v0, 0x0

    return v0

    .line 3960
    :cond_9
    iget-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v0

    return v0
.end method

.method private isCmdGetResultFromSdkLocally(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .registers 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3375
    const/4 v0, 0x0

    .line 3377
    .local v0, "isCmdGetResult":Z
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_16

    const/16 v2, 0xd

    if-eq v1, v2, :cond_16

    const/16 v2, 0xe

    if-eq v1, v2, :cond_f

    goto :goto_1b

    .line 3391
    :cond_f
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    .line 3392
    const/4 v0, 0x1

    goto :goto_1b

    .line 3382
    :cond_16
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    if-eqz v1, :cond_1b

    .line 3383
    const/4 v0, 0x1

    .line 3399
    :cond_1b
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCmdGetResultFromSdkLocally="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3400
    return v0
.end method

.method private isConfigUtForbiddenTimer()Z
    .registers 3

    .line 5947
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtForbiddenTimer()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isConnectedForSlotId()Z
    .registers 10

    .line 5826
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5827
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5828
    return v1

    .line 5830
    :cond_8
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 5831
    .local v2, "cm":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_18

    .line 5832
    const-string v3, "isConnectedForSlotId: cm == null"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5833
    return v1

    .line 5835
    :cond_18
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    .line 5836
    .local v3, "network":Landroid/net/Network;
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 5837
    .local v4, "nc":Landroid/net/NetworkCapabilities;
    iget v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v5}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v5

    invoke-static {v5}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v5

    .line 5838
    .local v5, "subId":I
    if-eqz v4, :cond_47

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v6

    if-eqz v6, :cond_47

    .line 5839
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v6

    new-instance v7, Landroid/net/StringNetworkSpecifier;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/net/NetworkSpecifier;->satisfiedBy(Landroid/net/NetworkSpecifier;)Z

    move-result v6

    if-eqz v6, :cond_47

    const/4 v1, 0x1

    goto :goto_48

    :cond_47
    nop

    .line 5840
    .local v1, "isConnected":Z
    :goto_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isConnectedForSlotId: Data connected state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5841
    return v1
.end method

.method private isCtCardAndNotSupportVolte()Z
    .registers 3

    .line 3908
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 3909
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->isCTSimCard(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private isCtCardAndSupportVolte()Z
    .registers 3

    .line 3903
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 3904
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->isCTSimCard(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isCarrierSupportVolte()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private isCurrentSubChange()Z
    .registers 4

    .line 4423
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    sget v1, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 4424
    .local v0, "isChanged":Z
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current sub is changed, isChanged is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentSlotId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4425
    return v0
.end method

.method private isDataConnection()Z
    .registers 3

    .line 5724
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 5725
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5726
    const-string v0, "handle UT data connection ut can use wifi and wifi is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5727
    return v1

    .line 5731
    :cond_15
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5732
    const-string v0, "handle UT data connection ut can not use wifi and mobile data is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5733
    return v1

    .line 5736
    :cond_21
    const-string v0, "data is not Connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5737
    const/4 v0, 0x0

    return v0
.end method

.method private isDataService()Z
    .registers 2

    .line 2869
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isMobileNetwork()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isDataSwitchOn()Z
    .registers 3

    .line 5766
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5767
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_10

    .line 5768
    const/4 v1, 0x0

    return v1

    .line 5770
    :cond_10
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private isDefaultConnected()Z
    .registers 4

    .line 5741
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5743
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 5744
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 5745
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1a

    .line 5747
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    .line 5750
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1a
    return v1
.end method

.method private isEnableCallWaiting(I)Z
    .registers 3
    .param p1, "callWaitingAction"    # I

    .line 6200
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 6201
    return v0

    .line 6203
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private isEndOtherImsConnectivity()Z
    .registers 3

    .line 6665
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-eqz v0, :cond_b

    .line 6666
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtImpl;->endOtherImsConnectivity(I)Z

    move-result v0

    return v0

    .line 6668
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private isGetHostNameAndAddRoute(Landroid/net/Network;Ljava/lang/String;)Z
    .registers 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "serviceAddr"    # Ljava/lang/String;

    .line 2986
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 2987
    const-string v1, "network is null."

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2988
    return v0

    .line 2990
    :cond_9
    const/4 v1, 0x0

    .line 2991
    .local v1, "inetAddress":[Ljava/net/InetAddress;
    iget v2, p1, Landroid/net/Network;->netId:I

    .line 2992
    .local v2, "networkId":I
    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mNetId:I

    if-ne v3, v2, :cond_27

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtApnInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2993
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtApnInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [Ljava/net/InetAddress;

    .line 2994
    const-string v3, " InetAddress get from local map."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_37

    .line 2996
    :cond_27
    invoke-direct {p0, p2, p1}, Lcom/huawei/ims/HwImsUtImpl;->getHostByName(Ljava/lang/String;Landroid/net/Network;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 2997
    if-eqz v1, :cond_37

    .line 2998
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtApnInetAddressMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2999
    const-string v3, " InetAddress get from host, and save in local map."

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3003
    :cond_37
    :goto_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " networkId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3004
    const/16 v3, 0x1c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/sci/SciSSConfHs;->setParamsCfg(ILjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_58

    .line 3005
    return v0

    .line 3007
    :cond_58
    const/4 v0, 0x1

    return v0
.end method

.method private isHandle409Error(Lcom/huawei/ims/HwImsUtImpl$UtCmd;Lcom/huawei/ims/HwImsUtImpl$UtData;)Z
    .registers 8
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .param p2, "ut"    # Lcom/huawei/ims/HwImsUtImpl$UtData;

    .line 3575
    const/4 v0, 0x0

    if-eqz p1, :cond_86

    if-nez p2, :cond_7

    goto/16 :goto_86

    .line 3579
    :cond_7
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mStatus:I

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 3580
    iget v1, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtType:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_35

    const/16 v2, 0x16

    if-eq v1, v2, :cond_35

    const/16 v2, 0x17

    if-eq v1, v2, :cond_35

    packed-switch v1, :pswitch_data_8c

    .line 3606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle409Error: not support ut type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/huawei/ims/HwImsUtImpl$UtData;->mUtType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_85

    .line 3590
    :cond_35
    :pswitch_35
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_85

    .line 3591
    invoke-static {}, Lcom/huawei/sci/SciSSConf;->getSSConflictPhraseText()Ljava/lang/String;

    move-result-object v1

    .line 3592
    .local v1, "phraseText":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle409Error: phraseText = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3593
    if-eqz v1, :cond_85

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_85

    .line 3594
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v4, 0x324

    invoke-direct {v3, v4, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    move-object v0, v3

    .line 3596
    .local v0, "error":Landroid/telephony/ims/ImsReasonInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ut409perfix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3597
    iput-object v1, v0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 3598
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    iget v4, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-virtual {v3, v4, v0}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 3599
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v3, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3600
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 3601
    return v2

    .line 3609
    .end local v0    # "error":Landroid/telephony/ims/ImsReasonInfo;
    .end local v1    # "phraseText":Ljava/lang/String;
    :cond_85
    :goto_85
    return v0

    .line 3576
    :cond_86
    :goto_86
    const-string v1, "handle409Error: cmd or ut is null, return"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 3577
    return v0

    :pswitch_data_8c
    .packed-switch 0x7
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method private isHandleUtUseDefaultApn(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .registers 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 2814
    const-string v0, "handle UT data connection volte conntion after vowifi connection fail not default apn"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2815
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtUseApn()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_31

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDefaultConnected()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_1f

    .line 2816
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSlotId()I

    move-result v0

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    if-ne v0, v2, :cond_31

    .line 2817
    :cond_1f
    const-string v0, "handle UT data connection ut use complex apn and mobile data is connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2818
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v0

    .line 2819
    .local v0, "network":Landroid/net/Network;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->initSdkServiceIpAddr(Landroid/net/Network;)V

    .line 2820
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2821
    const/4 v1, 0x1

    return v1

    .line 2823
    .end local v0    # "network":Landroid/net/Network;
    :cond_31
    const-string v0, "handle UT data connection ut use xcap apn or complex apn with mobile data not connected"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2824
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->cancelStopImsApnMessage()V

    .line 2825
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTION_ACT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 2828
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 2829
    return v1
.end method

.method private isLocalCallWaitingEnable()Z
    .registers 5

    .line 2366
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {p0, v0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 2367
    .local v0, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    .line 2368
    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_LOCAL:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    if-ne v2, v3, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    nop

    .line 2367
    :goto_1c
    return v1
.end method

.method private isLteNetworkType()Z
    .registers 6

    .line 6289
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 6290
    .local v0, "slotId":I
    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v1

    .line 6291
    .local v1, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v2

    .line 6292
    .local v2, "networkType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLteNetworkType subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " networkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6293
    const/16 v3, 0xd

    if-eq v2, v3, :cond_39

    const/16 v3, 0x13

    if-ne v2, v3, :cond_37

    goto :goto_39

    :cond_37
    const/4 v3, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v3, 0x1

    :goto_3a
    return v3
.end method

.method private isMmi002004NoneCsfb(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .registers 6
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3449
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->isMmi002004NoneCsfb()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_25

    .line 3452
    :cond_c
    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v2, 0x16

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1c

    iget v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1a

    goto :goto_1c

    :cond_1a
    move v1, v0

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v1, v3

    .line 3453
    .local v1, "isCmdUtTypeCfa":Z
    :goto_1d
    if-eqz v1, :cond_24

    iget v2, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utOpType:I

    if-ne v2, v3, :cond_24

    move v0, v3

    :cond_24
    return v0

    .line 3450
    .end local v1    # "isCmdUtTypeCfa":Z
    :cond_25
    :goto_25
    return v0
.end method

.method private isMobileNetwork()Z
    .registers 6

    .line 2861
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 2862
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/HwTelephonyManager;->getDataRegisteredState(I)I

    move-result v1

    .line 2863
    .local v1, "dataRegisterState":I
    if-nez v1, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 2864
    .local v2, "isMobileNetwork":Z
    :goto_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMobileNetwork: isMobileNetwork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2865
    return v2
.end method

.method private isNeedHandleUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z
    .registers 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3183
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomainByUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3184
    const-string v0, "Can\'t start SS with Ut, will fallback to cs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3185
    if-eqz p1, :cond_16

    .line 3186
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3187
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 3189
    :cond_16
    const/4 v0, 0x0

    return v0

    .line 3191
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private isNeedSetupWifiTunnel(I)Z
    .registers 8
    .param p1, "utDomain"    # I

    .line 2873
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isDataService()Z

    move-result v0

    .line 2875
    .local v0, "isDataService":Z
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtPreferOption()I

    move-result v1

    if-ne v1, v2, :cond_26

    .line 2877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedSetupWifiTunnel::UT_PREFER_USE_VOLTE_MODE is true, isDataService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2878
    xor-int/lit8 v1, v0, 0x1

    return v1

    .line 2880
    :cond_26
    const/4 v1, 0x0

    .line 2881
    .local v1, "isVoWifiRegistered":Z
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUtPreferVowifiWhenVowifiReg()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 2882
    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v3}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v3

    .line 2883
    .local v3, "slotId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/HwTelephonyManagerInner;->isWifiCallingAvailable(I)Z

    move-result v1

    .line 2885
    .end local v3    # "slotId":I
    :cond_3f
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_4a

    if-eqz p1, :cond_4a

    if-eqz v1, :cond_48

    goto :goto_4a

    :cond_48
    move v3, v4

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v3, v2

    .line 2887
    .local v3, "isSelectWifi":Z
    :goto_4b
    const/4 v5, 0x3

    if-eq p1, v5, :cond_53

    if-ne p1, v2, :cond_51

    goto :goto_53

    :cond_51
    move v5, v4

    goto :goto_54

    :cond_53
    :goto_53
    move v5, v2

    .line 2889
    .local v5, "isSelectCellularOrLte":Z
    :goto_54
    if-nez v3, :cond_5c

    if-nez v0, :cond_5b

    if-eqz v5, :cond_5b

    goto :goto_5c

    :cond_5b
    move v2, v4

    :cond_5c
    :goto_5c
    return v2
.end method

.method private isNeedTempChangeDefaultDataSub()Z
    .registers 4

    .line 2893
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2894
    return v1

    .line 2897
    :cond_6
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2898
    return v1

    .line 2901
    :cond_d
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2902
    return v1

    .line 2905
    :cond_1c
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v0

    .line 2906
    .local v0, "slotId":I
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSlotId()I

    move-result v2

    if-eq v2, v0, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method private isNetworkAvailable(I)Z
    .registers 4
    .param p1, "networkType"    # I

    .line 5674
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v0

    .line 5675
    .local v0, "network":Landroid/net/Network;
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private isNetworkConnected()Z
    .registers 5

    .line 5261
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5262
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 5263
    const-string v2, "The ConnectivityManager is null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5264
    return v1

    .line 5266
    :cond_15
    const/16 v2, 0x2d

    .line 5267
    .local v2, "networkType":I
    iget-boolean v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsVowifi:Z

    if-eqz v3, :cond_1d

    .line 5268
    const/16 v2, 0x2f

    .line 5270
    :cond_1d
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 5271
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_28

    .line 5272
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    .line 5274
    :cond_28
    return v1
.end method

.method private isNotXcapApn(ZLandroid/database/Cursor;Ljava/lang/String;)Z
    .registers 7
    .param p1, "isUtQueryXcapApnExact"    # Z
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "apnType"    # Ljava/lang/String;

    .line 5651
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 5652
    return v0

    .line 5655
    :cond_4
    const-string v1, "type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5656
    .local v1, "cursorApnType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    :cond_1b
    return v0
.end method

.method private isOtherSubUtIdle()Z
    .registers 3

    .line 6389
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsUtImpl:Lcom/huawei/ims/ImsUtImpl;

    if-eqz v0, :cond_b

    .line 6390
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsUtImpl;->isOtherSubUtIdle(I)Z

    move-result v0

    return v0

    .line 6393
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private isPerformUtPreprocessingForFirstTime()Z
    .registers 5

    .line 2502
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCurrentSubChange()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2503
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isOtherSubUtIdle()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3f

    .line 2507
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_39

    .line 2508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPerformUtPreprocessingForFirstTime: ut for other slot is not idle, but mCurrentSlotId is -1, should set mCurrentSlotId as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2510
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSlotId(I)V

    .line 2511
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isRegetImsiFromPhone()Z

    .line 2512
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSsConfHs()V

    .line 2513
    return v1

    .line 2515
    :cond_39
    const-string v0, "isPerformUtPreprocessingForFirstTime: ut for other slot is not idle, waiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2516
    return v2

    .line 2518
    :cond_3f
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isEndOtherImsConnectivity()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2519
    const-string v0, "isPerformUtPreprocessingForFirstTime: ut for other slot has connectivity, waiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2520
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsImsConnectivityEnd:Z

    .line 2521
    const/16 v0, 0x31

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 2522
    return v2

    .line 2524
    :cond_54
    const-string v0, "isPerformUtPreprocessingForFirstTime: reset Ut SDK"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2525
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/HwImsUtImpl;->setCurrentSlotId(I)V

    .line 2526
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->utSdkReset(I)V

    .line 2527
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isRegetImsiFromPhone()Z

    .line 2528
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->initSciSsConfHs()V

    .line 2529
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2530
    return v1

    .line 2533
    :cond_6d
    return v1
.end method

.method private isProcessImsConnectivity()Z
    .registers 5

    .line 5460
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->endConnectivityIfNeeded(I)V

    .line 5461
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    .line 5462
    const-string v0, "isProcessImsConnectivity, wait for ims connecting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5463
    return v2

    .line 5466
    :cond_12
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_39

    .line 5467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProcessImsConnectivity, ims is connected, mIsReqRoutHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsReqRoutHost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5468
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsReqRoutHost:Z

    if-eqz v0, :cond_34

    .line 5469
    return v3

    .line 5471
    :cond_34
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 5472
    return v2

    .line 5475
    :cond_39
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    move-result v0

    .line 5476
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProcessImsConnectivity, begin ims result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mImsDcState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5477
    const/4 v1, 0x0

    .line 5478
    .local v1, "isDcReady":Z
    if-eq v0, v3, :cond_68

    const/4 v2, 0x3

    if-eq v0, v2, :cond_62

    goto :goto_97

    .line 5494
    :cond_62
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 5495
    const/4 v1, 0x0

    .line 5496
    goto :goto_97

    .line 5480
    :cond_68
    const/4 v1, 0x0

    .line 5481
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_IDLE:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_77

    .line 5482
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5483
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    goto :goto_97

    .line 5484
    :cond_77
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_83

    .line 5485
    const-string v2, "isProcessImsConnectivity, mImsDcState=ImsDataConnectionState.IMS_DC_CONNECTING"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_97

    .line 5486
    :cond_83
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v2, v3, :cond_91

    .line 5487
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 5488
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    goto :goto_97

    .line 5490
    :cond_91
    const-string v2, "isProcessImsConnectivity, mImsDcState is other ImsDataConnectionState"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5492
    nop

    .line 5500
    :goto_97
    return v1
.end method

.method private isProcessTemporarilyDcConnection()Z
    .registers 4

    .line 5511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processTemporarilyDcConnection, mImsDcState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5512
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_23

    .line 5513
    const-string v0, "processTemporarilyDcConnection, wait for ims connecting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5514
    return v2

    .line 5517
    :cond_23
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTED:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    if-ne v0, v1, :cond_2f

    .line 5518
    const-string v0, "processTemporarilyDcConnection, ims is connected, return true"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5519
    return v2

    .line 5522
    :cond_2f
    iget v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->setDefaultDataSlotId(I)V

    .line 5523
    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsChangedDefaultDataSub:Z

    .line 5524
    const/4 v0, 0x0

    return v0
.end method

.method private isRegetImsiFromPhone()Z
    .registers 4

    .line 6373
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 6374
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_20

    .line 6375
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 6376
    .local v1, "defPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_20

    .line 6377
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 6378
    if-eqz v0, :cond_20

    .line 6379
    const-string v2, "isRegetImsiFromPhone"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6380
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2, v0}, Lcom/huawei/ims/HwImsConfigImpl;->setImsi(Ljava/lang/String;)V

    .line 6381
    const/4 v2, 0x1

    return v2

    .line 6385
    .end local v1    # "defPhone":Lcom/android/internal/telephony/Phone;
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private isSsUseUtInterface(I)Z
    .registers 5
    .param p1, "utType"    # I

    .line 3358
    const/4 v0, 0x1

    .line 3360
    .local v0, "isUseUt":Z
    const/16 v1, 0x14

    if-eq p1, v1, :cond_6

    goto :goto_11

    .line 3364
    :cond_6
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getCallWaitingSource()Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    move-result-object v1

    sget-object v2, Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;->CALL_WAITING_FROM_UT:Lcom/huawei/ims/HwImsConfigImpl$CallWaitingSource;

    if-eq v1, v2, :cond_11

    .line 3365
    const/4 v0, 0x0

    .line 3371
    :cond_11
    :goto_11
    return v0
.end method

.method private isSyncCallWaitingToCs(ZLandroid/os/Message;)Z
    .registers 7
    .param p1, "isEnable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6154
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v0

    .line 6155
    .local v0, "callWaitingAction":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6157
    const/4 v1, 0x1

    return v1
.end method

.method private isSyncCallWaitingToImsSdk(ZLandroid/os/Message;)Z
    .registers 9
    .param p1, "isEnable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6113
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->getCallWaitingAction(Z)I

    move-result v0

    .line 6114
    .local v0, "callWaitingAction":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin sync call waiting to IMS SDK, callWaitingAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6117
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCallWatingUtCanBeUsed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1d

    if-eqz v1, :cond_2c

    .line 6118
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    iget-object v5, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 6119
    invoke-virtual {v5, v4, v0, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 6118
    invoke-virtual {v1, p1, v2, v3}, Lcom/huawei/ims/ImsRIL;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_3b

    .line 6122
    :cond_2c
    const-string v1, "don\'t sync result to IMS SDK exectly"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6123
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v0, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 6126
    :goto_3b
    return v2
.end method

.method private isUse403ForLocalCw()Z
    .registers 2

    .line 6369
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUse403ForLocalCw()Z

    move-result v0

    return v0
.end method

.method private isUtCanUseDefaultBearForWifiConnected()Z
    .registers 2

    .line 6535
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtCanUseWifi()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_16

    .line 6536
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 6535
    :goto_17
    return v0
.end method

.method private isUtDataExpire(I)Z
    .registers 6
    .param p1, "type"    # I

    .line 6208
    const/4 v0, 0x0

    .line 6210
    .local v0, "utDataExpireTime":Ljava/util/Date;
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq p1, v1, :cond_22

    const/16 v1, 0xd

    if-eq p1, v1, :cond_22

    const/16 v1, 0xe

    if-eq p1, v1, :cond_22

    .line 6217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUtDataExpire unknown type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6218
    return v2

    .line 6214
    :cond_22
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    .line 6215
    nop

    .line 6221
    if-nez v0, :cond_33

    .line 6222
    return v2

    .line 6225
    :cond_33
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6227
    .local v1, "currDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_5c

    .line 6228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ut data is not expire, currDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", utDataExpireTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6229
    const/4 v2, 0x0

    return v2

    .line 6231
    :cond_5c
    return v2
.end method

.method private isUtIdInvalid(I)Z
    .registers 4
    .param p1, "id"    # I

    .line 4678
    if-gez p1, :cond_18

    .line 4679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid request id. id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4680
    const/4 v0, 0x1

    return v0

    .line 4682
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Valid request id. id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4683
    const/4 v0, 0x0

    return v0
.end method

.method private isUtOverWifiEnabled()Z
    .registers 10

    .line 5278
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 5279
    return v1

    .line 5282
    :cond_6
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5283
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_12

    .line 5284
    const-string v2, "context == null"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5285
    return v1

    .line 5287
    :cond_12
    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/ims/HwImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 5288
    return v1

    .line 5291
    :cond_1f
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 5292
    .local v2, "cm":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_2f

    .line 5293
    const-string v3, "ConnectivityManager == null"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5294
    return v1

    .line 5297
    :cond_2f
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 5298
    .local v4, "wifiNetinfo":Landroid/net/NetworkInfo;
    const/4 v5, 0x0

    .line 5299
    .local v5, "isWifiConnected":Z
    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 5300
    const/4 v5, 0x1

    .line 5302
    :cond_3e
    const-string v6, "ro.config.hw_vowifi_mmsut"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 5303
    .local v6, "isUtOverWifiEnabled":Z
    iget-object v7, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v7}, Lcom/huawei/ims/HwImsConfigImpl;->getVowifiUtSwitch()Z

    move-result v7

    .line 5304
    .local v7, "isUtSwitchOn":Z
    if-eqz v5, :cond_51

    if-eqz v6, :cond_51

    if-eqz v7, :cond_51

    move v1, v3

    .line 5305
    .local v1, "isEnable":Z
    :cond_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isUtOverWifiEnabled return "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5306
    return v1
.end method

.method private isUtOverWifiTunnelUp()Z
    .registers 3

    .line 5450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUtOverWifiTunnelUp, mIsWifiTunnnelUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5451
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    return v0
.end method

.method private isUtRetryQueueEmpty()Z
    .registers 3

    .line 6672
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6673
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6674
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 6676
    :cond_e
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 6677
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private isUtSubscribed()Z
    .registers 2

    .line 6327
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtSubscribed:Z

    return v0
.end method

.method private isUtSupportedByCurrentBearer()Z
    .registers 6

    .line 6270
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBearerType()I

    move-result v0

    .line 6271
    .local v0, "utBearerType":I
    const/4 v1, 0x1

    .line 6272
    .local v1, "isUtSupport":Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 6274
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLteNetworkType()Z

    move-result v1

    goto :goto_39

    .line 6275
    :cond_f
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1f

    .line 6277
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsServiceImpl;->getImsRegisterState()I

    move-result v3

    if-ne v3, v2, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, v4

    :goto_1d
    move v1, v2

    goto :goto_39

    .line 6278
    :cond_1f
    const/4 v3, 0x3

    if-ne v0, v3, :cond_34

    .line 6280
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLteNetworkType()Z

    move-result v3

    if-nez v3, :cond_32

    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsServiceImpl;->getImsRegisterState()I

    move-result v3

    if-ne v3, v2, :cond_31

    goto :goto_32

    :cond_31
    move v2, v4

    :cond_32
    :goto_32
    move v1, v2

    goto :goto_39

    .line 6282
    :cond_34
    const-string v2, "isUtSupportedByCurrentBearer invalid utBearerType"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6284
    :goto_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUtSupportedByCurrentBearer isUtSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6285
    return v1
.end method

.method private isUtUseDefaultApn()Z
    .registers 2

    .line 5578
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUtUseApn()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isValidCommandInterfaceCfAction(I)Z
    .registers 4
    .param p1, "commandInterfaceCfAction"    # I

    .line 4751
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    if-eq p1, v0, :cond_d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    .line 4758
    const/4 v0, 0x0

    return v0

    .line 4756
    :cond_d
    return v0
.end method

.method private isValidCommandInterfaceCfReason(I)Z
    .registers 3
    .param p1, "commandInterfaceCfReason"    # I

    .line 4736
    packed-switch p1, :pswitch_data_8

    .line 4746
    const/4 v0, 0x0

    return v0

    .line 4744
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isVolteSwitchOn()Z
    .registers 5

    .line 4214
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4215
    .local v0, "defPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 4217
    .local v1, "isVolteSwitchOn":Z
    if-eqz v0, :cond_b

    .line 4218
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsSwitch()Z

    move-result v1

    .line 4221
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volte Switch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4222
    return v1
.end method

.method private isWifiConnected()Z
    .registers 4

    .line 5754
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5756
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1a

    .line 5757
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5758
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1a

    .line 5759
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2

    .line 5762
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private keepAliveImsConnectivity()V
    .registers 5

    .line 5505
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 5506
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5505
    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5508
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 6360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsUtImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6361
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 6364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HwImsUtImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6365
    return-void
.end method

.method private popUtMessage(I)Landroid/os/Message;
    .registers 5
    .param p1, "id"    # I

    .line 2096
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2098
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_17

    instance-of v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v1, :cond_d

    goto :goto_17

    .line 2103
    :cond_d
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2104
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;->mHwImsPhoneEx:Lcom/android/internal/telephony/imsphone/IHwImsPhoneEx;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/imsphone/IHwImsPhoneEx;->popUtMessage(I)Landroid/os/Message;

    move-result-object v2

    return-object v2

    .line 2099
    .end local v1    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_17
    :goto_17
    const-string v1, "popUtMessage imsPhone is null"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2100
    const/4 v1, 0x0

    return-object v1
.end method

.method private processEctCallBack(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2344
    if-nez p1, :cond_8

    .line 2345
    const-string v0, "EctCallBack msg is null, just return"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2346
    return-void

    .line 2348
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2349
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    if-nez v1, :cond_13

    goto :goto_34

    .line 2352
    :cond_13
    invoke-virtual {v1}, Lcom/huawei/ims/HwImsServiceImpl;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2353
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v2, :cond_21

    .line 2354
    const-string v2, "get imsphone fails."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2355
    return-void

    .line 2357
    :cond_21
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 2358
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2e

    .line 2359
    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyECTFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_33

    .line 2361
    :cond_2e
    sget-object v3, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->TRANSFER:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceSuccessed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 2363
    :goto_33
    return-void

    .line 2350
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :cond_34
    :goto_34
    return-void
.end method

.method private processReportChrException(BBI)V
    .registers 11
    .param p1, "isVowifiUt"    # B
    .param p2, "addressType"    # B
    .param p3, "failReason"    # I

    .line 6609
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/ims/HwImsUtImpl;->extractParametersForChr(BBI)Lcom/huawei/ims/UtChrData;

    move-result-object v0

    .line 6610
    .local v0, "utChrData":Lcom/huawei/ims/UtChrData;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6611
    .local v1, "currDate":Ljava/util/Date;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    if-eqz v2, :cond_13

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-ltz v2, :cond_2e

    .line 6612
    :cond_13
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUtChrBroadcast(Lcom/huawei/ims/UtChrData;)V

    .line 6613
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    if-nez v2, :cond_21

    .line 6614
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    .line 6616
    :cond_21
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mCanSendChrBroadcastDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 6618
    :cond_2e
    return-void
.end method

.method private queryAndSyncClirModeToImsSdk()V
    .registers 4

    .line 1750
    const-string v0, "[UTCMD]enter queryAndSyncClirModeToImsSdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1752
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_f

    .line 1753
    const-string v0, "sim card has not been loaded!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1754
    return-void

    .line 1756
    :cond_f
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1757
    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    .line 1758
    .local v0, "domainSelect":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getOirSourceMode()I

    move-result v1

    .line 1759
    .local v1, "oirSourceMode":I
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 1760
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCLIR()I

    .line 1762
    :cond_29
    return-void
.end method

.method private queryUtApn()V
    .registers 19

    .line 5606
    move-object/from16 v1, p0

    iget v0, v1, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v0}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v2

    .line 5607
    .local v2, "slotId":I
    invoke-static {v2}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v3

    .line 5608
    .local v3, "subId":I
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    .line 5609
    .local v4, "operator":Ljava/lang/String;
    const-string v5, "xcap"

    .line 5610
    .local v5, "apnType":Ljava/lang/String;
    iget-object v0, v1, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isUtQueryXcapApnExact()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    move v0, v6

    goto :goto_2a

    :cond_29
    :goto_29
    move v0, v7

    :goto_2a
    move v8, v0

    .line 5611
    .local v8, "isUtQueryXcapApnExact":Z
    if-eqz v8, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numeric = ? AND (type like \'%"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "%\')"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_44
    const-string v0, "numeric = ?"

    :goto_46
    move-object v12, v0

    .line 5612
    .local v12, "selection":Ljava/lang/String;
    const-string v15, "_id"

    .line 5613
    .local v15, "orderBy":Ljava/lang/String;
    const/16 v16, 0x0

    .line 5614
    .local v16, "cursor":Landroid/database/Cursor;
    const-string v0, "content://telephony/carriers/subId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 5615
    .local v17, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryUtApn subId = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5617
    :try_start_6d
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v11, 0x0

    new-array v13, v7, [Ljava/lang/String;

    aput-object v4, v13, v6

    move-object/from16 v10, v17

    move-object v14, v15

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_81} :catch_d2
    .catchall {:try_start_6d .. :try_end_81} :catchall_ce

    move-object v9, v0

    .line 5619
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_aa

    .line 5620
    :try_start_84
    iput-boolean v6, v1, Lcom/huawei/ims/HwImsUtImpl;->mIsUtUseApn:Z

    .line 5621
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 5624
    :cond_8c
    invoke-direct {v1, v8, v9, v5}, Lcom/huawei/ims/HwImsUtImpl;->isNotXcapApn(ZLandroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 5625
    goto :goto_a4

    .line 5628
    :cond_93
    const-string v0, "network_type_bitmask"

    .line 5629
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 5628
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 5632
    .local v0, "networkTypeBitmask":I
    const/high16 v6, 0x20000

    .line 5633
    .local v6, "wlanBitmask":I
    if-eq v0, v6, :cond_a4

    .line 5634
    iput-boolean v7, v1, Lcom/huawei/ims/HwImsUtImpl;->mIsUtUseApn:Z

    .line 5635
    goto :goto_aa

    .line 5637
    .end local v0    # "networkTypeBitmask":I
    .end local v6    # "wlanBitmask":I
    :cond_a4
    :goto_a4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 5640
    :cond_aa
    :goto_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsUtUseApn = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/huawei/ims/HwImsUtImpl;->mIsUtUseApn:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_c0} :catch_ca
    .catchall {:try_start_84 .. :try_end_c0} :catchall_c8

    .line 5644
    if-eqz v9, :cond_c5

    .line 5645
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5648
    :cond_c5
    move-object/from16 v16, v9

    goto :goto_dd

    .line 5644
    :catchall_c8
    move-exception v0

    goto :goto_de

    .line 5641
    :catch_ca
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_d3

    .line 5644
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catchall_ce
    move-exception v0

    move-object/from16 v9, v16

    goto :goto_de

    .line 5641
    :catch_d2
    move-exception v0

    .line 5642
    .local v0, "e":Ljava/lang/Exception;
    :goto_d3
    :try_start_d3
    const-string v6, "Exception for queryUtApn "

    invoke-direct {v1, v6}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_d3 .. :try_end_d8} :catchall_ce

    .line 5644
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v16, :cond_dd

    .line 5645
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 5648
    :cond_dd
    :goto_dd
    return-void

    .line 5644
    .end local v16    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :goto_de
    if-eqz v9, :cond_e3

    .line 5645
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e3
    throw v0
.end method

.method private recoverDefaultDataSub()V
    .registers 5

    .line 5971
    const-string v0, "recoverDefaultDataSub"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5972
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsChangedDefaultDataSub:Z

    if-nez v0, :cond_a

    .line 5973
    return-void

    .line 5976
    :cond_a
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSlotId()I

    move-result v0

    .line 5977
    .local v0, "defaultDataSlotId":I
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v1

    .line 5978
    .local v1, "default4gSlotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recoverDefaultDataSub: defaultDataSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", default4gSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5980
    if-eq v0, v1, :cond_43

    iget v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    if-eq v1, v2, :cond_43

    .line 5981
    const-string v2, "recoverDefaultDataSub: recover default data slot to main slot"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5982
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->setDefaultDataSlotId(I)V

    .line 5983
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsChangedDefaultDataSub:Z

    .line 5985
    :cond_43
    return-void
.end method

.method private removeLastUtCmd()V
    .registers 4

    .line 2442
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2443
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2444
    const-string v1, "removeLastUtCmd mUtCmdQueue isEmpty"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2445
    monitor-exit v0

    return-void

    .line 2447
    :cond_12
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after remove mUtCmdQueue size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2449
    monitor-exit v0

    .line 2450
    return-void

    .line 2449
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private removeUtCmd()V
    .registers 4

    .line 2423
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2424
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after remove mUtCmdQueue size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2426
    monitor-exit v0

    .line 2427
    return-void

    .line 2426
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private removeUtCmdInternal(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .registers 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3436
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3437
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3438
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsUtImpl$UtCmd;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3439
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3440
    .local v2, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    if-ne v2, p1, :cond_1b

    .line 3441
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3442
    goto :goto_1c

    .line 3444
    .end local v2    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_1b
    goto :goto_9

    .line 3445
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/huawei/ims/HwImsUtImpl$UtCmd;>;"
    :cond_1c
    :goto_1c
    monitor-exit v0

    .line 3446
    return-void

    .line 3445
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .registers 5
    .param p1, "isResult"    # Ljava/lang/Boolean;

    .line 5187
    new-instance v0, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    .line 5188
    .local v0, "info":Landroid/telephony/ims/ImsSsInfo;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_12

    .line 5191
    :cond_e
    const/4 v1, 0x1

    iput v1, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_15

    .line 5189
    :cond_12
    :goto_12
    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 5194
    :goto_15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5195
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "imsSsInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5196
    return-object v1
.end method

.method private responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;
    .registers 11
    .param p1, "reason"    # I

    .line 5053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseCallForward reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5054
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transUtToCfReason(I)I

    move-result v0

    .line 5056
    .local v0, "condition":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_24

    .line 5057
    const-string v1, "invalid reason"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5058
    new-array v1, v2, [Landroid/telephony/ims/ImsCallForwardInfo;

    return-object v1

    .line 5061
    :cond_24
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getCallDiversionEnable(I)Ljava/lang/Boolean;

    move-result-object v3

    .line 5062
    .local v3, "isCallDiversionEnable":Ljava/lang/Boolean;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallDiversionEnable isCallDiversionEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5063
    const/4 v4, 0x1

    new-array v5, v4, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 5064
    .local v5, "infos":[Landroid/telephony/ims/ImsCallForwardInfo;
    new-instance v6, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v6}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    aput-object v6, v5, v2

    .line 5066
    if-eqz v3, :cond_54

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_54

    .line 5069
    :cond_4f
    aget-object v6, v5, v2

    iput v4, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    goto :goto_58

    .line 5067
    :cond_54
    :goto_54
    aget-object v6, v5, v2

    iput v2, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 5072
    :goto_58
    aget-object v6, v5, v2

    iput v0, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 5073
    aget-object v6, v5, v2

    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->getCallForwardTargetNumber(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 5074
    aget-object v6, v5, v2

    iget-object v6, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    if-nez v6, :cond_75

    .line 5075
    const-string v6, "responseCallForward number is null, set empty string as default"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5076
    aget-object v6, v5, v2

    const-string v7, ""

    iput-object v7, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 5079
    :cond_75
    aget-object v6, v5, v2

    iput v2, v6, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 5080
    const/4 v6, 0x3

    if-ne p1, v6, :cond_91

    .line 5081
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallDiversionNoReplyTimer()Ljava/lang/String;

    move-result-object v6

    .line 5082
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_91

    .line 5084
    :try_start_82
    aget-object v7, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_8a} :catch_8b

    .line 5087
    goto :goto_91

    .line 5085
    :catch_8b
    move-exception v7

    .line 5086
    .local v7, "nfe":Ljava/lang/NumberFormatException;
    const-string v8, "responseCallForward : NumberFormatException "

    invoke-direct {p0, v8}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5091
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "nfe":Ljava/lang/NumberFormatException;
    :cond_91
    :goto_91
    if-nez p1, :cond_12b

    .line 5092
    invoke-static {}, Lcom/huawei/sci/SciSSConfHs;->getCallForwardTime()[Ljava/util/Date;

    move-result-object v6

    .line 5093
    .local v6, "date":[Ljava/util/Date;
    if-eqz v6, :cond_116

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_116

    aget-object v7, v6, v2

    if-eqz v7, :cond_116

    aget-object v7, v6, v4

    if-eqz v7, :cond_116

    .line 5094
    aget-object v1, v5, v2

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v7

    iput v7, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 5095
    aget-object v1, v5, v2

    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v7

    iput v7, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mStartMinute:I

    .line 5096
    aget-object v1, v5, v2

    aget-object v7, v6, v4

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v7

    iput v7, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mEndHour:I

    .line 5097
    aget-object v1, v5, v2

    aget-object v4, v6, v4

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    iput v4, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mEndMinute:I

    .line 5099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get CFT successfully, date="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mStartHour="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    iget v4, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mStartMinute="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    iget v4, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartMinute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mEndHour="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    iget v4, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mEndHour:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mEndMinute="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v5, v2

    iget v4, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mEndMinute:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_12b

    .line 5103
    :cond_116
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 5104
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 5105
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 5106
    aget-object v4, v5, v2

    iput v1, v4, Landroid/telephony/ims/ImsCallForwardInfo;->mStartHour:I

    .line 5108
    const-string v1, "can\'t get the time while query CFT, deliver -1 to APP"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5112
    .end local v6    # "date":[Ljava/util/Date;
    :cond_12b
    :goto_12b
    aget-object v1, v5, v2

    const/16 v2, 0x81

    iput v2, v1, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 5113
    return-object v5
.end method

.method private responseCallForwardEx(I)[Landroid/telephony/ims/ImsCallForwardInfo;
    .registers 6
    .param p1, "reason"    # I

    .line 5032
    const/4 v0, 0x0

    .line 5033
    .local v0, "infos":[Landroid/telephony/ims/ImsCallForwardInfo;
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transUtToCfReason(I)I

    move-result v1

    .line 5034
    .local v1, "condition":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getIsUseMultCondition()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 5035
    const-string v2, "responseCallForwardEx, Single and composite node query"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5036
    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1b

    .line 5037
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    goto :goto_28

    .line 5038
    :cond_1b
    const/4 v2, 0x7

    if-ne p1, v2, :cond_24

    .line 5039
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    goto :goto_28

    .line 5041
    :cond_24
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    .line 5043
    :goto_28
    if-eqz v0, :cond_37

    aget-object v2, v0, v3

    if-eqz v2, :cond_37

    .line 5044
    aget-object v2, v0, v3

    iput v1, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    goto :goto_37

    .line 5047
    :cond_33
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseCallForward(I)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v0

    .line 5049
    :cond_37
    :goto_37
    return-object v0
.end method

.method private responseClck(Ljava/lang/Boolean;)[Landroid/telephony/ims/ImsSsInfo;
    .registers 5
    .param p1, "isResult"    # Ljava/lang/Boolean;

    .line 5117
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/telephony/ims/ImsSsInfo;

    .line 5119
    .local v0, "info":[Landroid/telephony/ims/ImsSsInfo;
    new-instance v1, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5120
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1a

    .line 5123
    :cond_14
    aget-object v1, v0, v2

    const/4 v2, 0x1

    iput v2, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    goto :goto_1e

    .line 5121
    :cond_1a
    :goto_1a
    aget-object v1, v0, v2

    iput v2, v1, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 5125
    :goto_1e
    return-object v0
.end method

.method private responseClip(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .registers 4
    .param p1, "isResult"    # Ljava/lang/Boolean;

    .line 5172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseClip, isResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5173
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseClir(Ljava/lang/Boolean;I)Landroid/os/Bundle;
    .registers 8
    .param p1, "isResult"    # Ljava/lang/Boolean;
    .param p2, "defaultBehavior"    # I

    .line 5146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseClir isResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5147
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 5148
    .local v1, "response":[I
    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    .line 5149
    const/4 v3, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_3a

    .line 5157
    :cond_2d
    if-ne p2, v2, :cond_32

    .line 5158
    aput v0, v1, v3

    goto :goto_44

    .line 5159
    :cond_32
    if-ne p2, v0, :cond_37

    .line 5160
    aput v2, v1, v3

    goto :goto_44

    .line 5162
    :cond_37
    aput v0, v1, v3

    goto :goto_44

    .line 5150
    :cond_3a
    :goto_3a
    const/4 v4, 0x3

    if-ne p2, v4, :cond_42

    .line 5151
    aput v0, v1, v3

    .line 5152
    aput v3, v1, v2

    goto :goto_44

    .line 5154
    :cond_42
    aput v3, v1, v3

    .line 5166
    :goto_44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5167
    .local v0, "clirInfo":Landroid/os/Bundle;
    const-string v2, "queryClir"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 5168
    return-object v0
.end method

.method private responseColp(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .registers 4
    .param p1, "isResult"    # Ljava/lang/Boolean;

    .line 5182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseColp, isResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5183
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseColr(Ljava/lang/Boolean;)Landroid/os/Bundle;
    .registers 4
    .param p1, "isResult"    # Ljava/lang/Boolean;

    .line 5177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseColr, isResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5178
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->responseBundle(Ljava/lang/Boolean;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private responseCwInts(Z)Ljava/lang/Object;
    .registers 3
    .param p1, "isResult"    # Z

    .line 5129
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseInts(ZI)[I

    move-result-object v0

    return-object v0
.end method

.method private responseFailure(II)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .line 4725
    move v0, p2

    .line 4726
    .local v0, "newErrorCode":I
    iget-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsShowDataConnectionDialog:Z

    if-eqz v1, :cond_7

    .line 4727
    const/16 v0, 0x33f

    .line 4730
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter responseFailure, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newErrorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4731
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 4732
    .local v1, "error":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    invoke-virtual {v2, p1, v1}, Lcom/huawei/ims/ImsUtListenerProxy;->utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 4733
    return-void
.end method

.method private responseFailureAndEndUt(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .registers 5
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 6488
    if-nez p1, :cond_8

    .line 6489
    const-string v0, "responseFailureAndEndUt: cmd is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6490
    return-void

    .line 6492
    :cond_8
    iget v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->popUtMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6493
    .local v0, "onComplete":Landroid/os/Message;
    if-eqz v0, :cond_15

    .line 6494
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 6496
    :cond_15
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_FINISH:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 6497
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 6498
    return-void
.end method

.method private responseInts(ZI)[I
    .registers 6
    .param p1, "isResult"    # Z
    .param p2, "num"    # I

    .line 5133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseInts isResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5134
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5136
    .local v0, "response":[I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_26

    .line 5137
    aput v2, v0, v2

    goto :goto_28

    .line 5139
    :cond_26
    aput v1, v0, v2

    .line 5141
    :goto_28
    aput p2, v0, v1

    .line 5142
    return-object v0
.end method

.method private saveCtCardVolteFlag(Z)V
    .registers 6
    .param p1, "isVolteCard"    # Z

    .line 3890
    move v0, p1

    .line 3891
    .local v0, "volteFlag":I
    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    invoke-static {v1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSlotId(I)I

    move-result v1

    .line 3892
    .local v1, "slotId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveCtCardVolteFlag isVolteCard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl;->CARD_VOLTE_FLAG:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3894
    return-void
.end method

.method private sendQueryCallWaitingForDetection()V
    .registers 5

    .line 6520
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 6521
    const-string v0, "[UTCMD]enter sendQueryCallWaitingForDetection"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6522
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING_FOR_DETECTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 6523
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6524
    return-void

    .line 6526
    :cond_1b
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 6527
    return-void
.end method

.method private sendStopImsApnMessage()V
    .registers 6

    .line 5660
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getDefaultDataSlotId()I

    move-result v0

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    if-ne v0, v1, :cond_f

    .line 5661
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtImsDataDelayEndTime()I

    move-result v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getDefUtImsDataDelayEndTime()I

    move-result v0

    .line 5662
    .local v0, "utImsDataDelayEndTime":I
    :goto_15
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    .line 5663
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    .line 5662
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5664
    return-void
.end method

.method private sendUtChrBroadcast(Lcom/huawei/ims/UtChrData;)V
    .registers 6
    .param p1, "utChrData"    # Lcom/huawei/ims/UtChrData;

    .line 6555
    if-nez p1, :cond_8

    .line 6556
    const-string v0, "sendUtChrBroadcast: utChrData is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6557
    return-void

    .line 6559
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6560
    .local v0, "utChrBundle":Landroid/os/Bundle;
    const-string v1, "EventScenario"

    const-string v2, "UT_FAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6561
    const/4 v1, 0x1

    const-string v2, "EventFailCause"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6562
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getOperationType()B

    move-result v1

    const-string v2, "IMS.UT.operationType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6563
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getDataApnType()B

    move-result v1

    const-string v2, "IMS.UT.dataApntype"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6564
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getIsSupportWifi()B

    move-result v1

    const-string v2, "IMS.UT.isSupportWifi"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6565
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getIsMobileDataConnected()B

    move-result v1

    const-string v2, "IMS.UT.isMobileDateConnected"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6566
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getIsWifiConnected()B

    move-result v1

    const-string v2, "IMS.UT.isWifiConnected"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6567
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getIsVowifiEnable()B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_57

    .line 6568
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getIsVowifiEnable()B

    move-result v1

    const-string v3, "IMS.UT.isVowifiEnable"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6570
    :cond_57
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getAddressType()B

    move-result v1

    if-eq v1, v2, :cond_66

    .line 6571
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getAddressType()B

    move-result v1

    const-string v3, "IMS.UT.addressType"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6573
    :cond_66
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getSubId()B

    move-result v1

    const-string v3, "IMS.UT.subId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6574
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getCurrentSubId()B

    move-result v1

    const-string v3, "IMS.UT.currentSubId"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6575
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getVowifiDomain()B

    move-result v1

    if-eq v1, v2, :cond_87

    .line 6576
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getVowifiDomain()B

    move-result v1

    const-string v3, "IMS.UT.vowifidomain"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 6578
    :cond_87
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getFailReason()I

    move-result v1

    if-eq v1, v2, :cond_96

    .line 6579
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getFailReason()I

    move-result v1

    const-string v2, "IMS.UT.failReason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6581
    :cond_96
    invoke-virtual {p1}, Lcom/huawei/ims/UtChrData;->getCmdDcState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMS.UT.cmdDcState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUtChrBroadcast: sendTelephonyChrBroadcast."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6583
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwTelephonyChrManager()Lcom/android/internal/telephony/HwTelephonyChrManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/HwTelephonyChrManager;->sendTelephonyChrBroadcast(Landroid/os/Bundle;)V

    .line 6584
    return-void
.end method

.method private sendUtMessage()V
    .registers 4

    .line 2781
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isConnectedForSlotId()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_e

    .line 2782
    const/16 v0, 0x3e8

    invoke-direct {p0, v2, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->sendUtMessageDelayed(ILjava/lang/Object;I)V

    goto :goto_11

    .line 2784
    :cond_e
    invoke-virtual {p0, v2, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 2786
    :goto_11
    return-void
.end method

.method private sendUtMessageDelayed(ILjava/lang/Object;I)V
    .registers 8
    .param p1, "utEvent"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "timer"    # I

    .line 1712
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-nez v0, :cond_a

    .line 1713
    const-string v0, "mUtServiceHandler is null, can\'t send message via this handler."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1714
    return-void

    .line 1716
    :cond_a
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1717
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1718
    return-void
.end method

.method private setCallWaitingToCs()V
    .registers 5

    .line 1739
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_a

    .line 1740
    const-string v0, "sim card has not been loaded"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1741
    return-void

    .line 1743
    :cond_a
    const-string v0, "[UTCMD]enter setCallWaitingToCs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1744
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING_NONE_SYNC:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1745
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_CS:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 1746
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1747
    return-void
.end method

.method private static setCurrentSlotId(I)V
    .registers 1
    .param p0, "slotId"    # I

    .line 4429
    sput p0, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    .line 4430
    return-void
.end method

.method private setDefaultDataSlotId(I)V
    .registers 6
    .param p1, "slotId"    # I

    .line 5528
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 5529
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_2e

    .line 5530
    invoke-static {p1}, Lcom/huawei/ims/ImsCallProviderUtils;->getSubIdUsingSlotId(I)I

    move-result v1

    .line 5531
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultDataSubId: subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5532
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 5533
    .end local v1    # "subId":I
    goto :goto_33

    .line 5534
    :cond_2e
    const-string v1, "setDefaultDataSubId failed!"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5536
    :goto_33
    return-void
.end method

.method private setHostIpToSdk(Landroid/net/Network;)V
    .registers 8
    .param p1, "netWork"    # Landroid/net/Network;

    .line 2953
    const/4 v0, -0x1

    .line 2955
    .local v0, "addressType":B
    const/4 v0, 0x0

    .line 2956
    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 2958
    .local v2, "nafIpAddr":[Ljava/net/InetAddress;
    if-eqz v2, :cond_19

    array-length v3, v2

    if-lez v3, :cond_19

    .line 2959
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/huawei/sci/SciSSConfHs;->setHostIp([Ljava/lang/String;I)I

    .line 2961
    :cond_19
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfAuthBeUsed()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_39

    .line 2962
    const/4 v0, 0x1

    .line 2963
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v3}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 2964
    .local v3, "bsfIpAddr":[Ljava/net/InetAddress;
    if-eqz v3, :cond_39

    array-length v5, v3

    if-lez v5, :cond_39

    .line 2965
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->createIpAddr([Ljava/net/InetAddress;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/huawei/sci/SciSSConfHs;->setHostIp([Ljava/lang/String;I)I

    .line 2968
    .end local v3    # "bsfIpAddr":[Ljava/net/InetAddress;
    :cond_39
    iput-boolean v4, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNafOrBsfIpToSdk:Z
    :try_end_3b
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3b} :catch_3c

    .line 2974
    .end local v2    # "nafIpAddr":[Ljava/net/InetAddress;
    goto :goto_4a

    .line 2969
    :catch_3c
    move-exception v2

    .line 2970
    .local v2, "e":Ljava/net/UnknownHostException;
    const-string v3, "Cannot get inet address "

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2971
    iput-boolean v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNafOrBsfIpToSdk:Z

    .line 2972
    const/4 v1, -0x1

    const/16 v3, 0x3eb

    invoke-direct {p0, v1, v0, v3}, Lcom/huawei/ims/HwImsUtImpl;->processReportChrException(BBI)V

    .line 2975
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_4a
    return-void
.end method

.method private setImsExtensionalParam(IZLjava/lang/String;)V
    .registers 5
    .param p1, "num"    # I
    .param p2, "isNeed"    # Z
    .param p3, "params"    # Ljava/lang/String;

    .line 4366
    if-eqz p2, :cond_4

    move-object v0, p3

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {p1, p2, v0}, Lcom/huawei/sci/SciSSConfHs;->setExtensionalParam(IZLjava/lang/String;)I

    .line 4367
    return-void
.end method

.method private setImsSdkParamsTlsConfig()V
    .registers 5

    .line 1966
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtParamsTlsConfig()Ljava/lang/String;

    move-result-object v0

    .line 1967
    .local v0, "utParamsTlsCfg":Ljava/lang/String;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_36

    .line 1971
    :cond_f
    const/16 v1, 0x1d

    invoke-static {v1, v0}, Lcom/huawei/sci/SciSSConfHs;->setParamsCfg(ILjava/lang/String;)I

    move-result v1

    .line 1972
    .local v1, "paramsCfg":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init utParamsTlsCfg, cfgParam =29, value length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1972
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1974
    return-void

    .line 1968
    .end local v1    # "paramsCfg":I
    :cond_36
    :goto_36
    const-string v1, "utParamsTlsCfg is empty"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1969
    return-void
.end method

.method private setImsUserAgentExtensionalParam()V
    .registers 6

    .line 4370
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getUaFromDisplayId()Ljava/lang/String;

    move-result-object v0

    .line 4371
    .local v0, "swVersion":Ljava/lang/String;
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 4372
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4373
    .local v1, "buildVersionBuffer":Ljava/lang/StringBuffer;
    const-string v2, "HUAWEI-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl;->RO_HW_OEMNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4374
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->getBoolCarrierBuildVersion()Z

    move-result v2

    .line 4375
    .local v2, "isNeedBuildVersion":Z
    const/4 v3, 0x0

    .line 4376
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4375
    invoke-direct {p0, v3, v2, v4}, Lcom/huawei/ims/HwImsUtImpl;->setImsExtensionalParam(IZLjava/lang/String;)V

    .line 4377
    const/4 v3, 0x1

    .line 4378
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4377
    invoke-direct {p0, v3, v2, v4}, Lcom/huawei/ims/HwImsUtImpl;->setImsExtensionalParam(IZLjava/lang/String;)V

    .line 4379
    const-string v3, "SetImsExtensionalParam suucess"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4380
    .end local v1    # "buildVersionBuffer":Ljava/lang/StringBuffer;
    .end local v2    # "isNeedBuildVersion":Z
    goto :goto_4c

    .line 4381
    :cond_47
    const-string v1, "Can\'t get prop"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4383
    :goto_4c
    return-void
.end method

.method private static setSciSsConfCb(Lcom/huawei/sci/SciSSConfCb;)V
    .registers 1
    .param p0, "sciSsConfCb"    # Lcom/huawei/sci/SciSSConfCb;

    .line 4433
    sput-object p0, Lcom/huawei/ims/HwImsUtImpl;->sSciSsConfCb:Lcom/huawei/sci/SciSSConfCb;

    .line 4434
    return-void
.end method

.method private setUtDataExpireTime(I)V
    .registers 5
    .param p1, "type"    # I

    .line 6235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter setUtDataExpireTime, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6237
    const/4 v0, 0x5

    if-eq p1, v0, :cond_20

    const/16 v0, 0xd

    if-eq p1, v0, :cond_20

    const/16 v0, 0xe

    if-eq p1, v0, :cond_20

    goto :goto_4c

    .line 6241
    :cond_20
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6242
    .local v0, "currDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Date;->setSeconds(I)V

    .line 6243
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtDataExpireTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expirte time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6245
    nop

    .line 6249
    .end local v0    # "currDate":Ljava/util/Date;
    :goto_4c
    return-void
.end method

.method private setUtOverWifiTunnelUpFlag(Z)V
    .registers 4
    .param p1, "isWifiTunnnelUp"    # Z

    .line 5455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUtOverWifiTunnelUpFlag, isWifiTunnnelUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5456
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsWifiTunnnelUp:Z

    .line 5457
    return-void
.end method

.method private startAlarm(II)V
    .registers 7
    .param p1, "alarm"    # I
    .param p2, "timer"    # I

    .line 5988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAlarm alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5990
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3a

    .line 5991
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 5992
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5994
    :cond_30
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5996
    :cond_3a
    return-void
.end method

.method private startDcAlarm()V
    .registers 3

    .line 5888
    const/16 v0, 0x29

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5889
    return-void
.end method

.method private startDefaultBearForWifiConnected(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .registers 3
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 6540
    const-string v0, "startDefaultBearForWifiConnected."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6541
    if-nez p1, :cond_d

    .line 6542
    const-string v0, "startDefaultBearForWifiConnected: cmd is null."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6543
    return-void

    .line 6545
    :cond_d
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 6546
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_CONNECTING:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsDcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 6547
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->startImsDataConnectionAlarm()V

    .line 6548
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->beginImsConnectivity(Z)I

    .line 6549
    return-void
.end method

.method private startImsDataConnectionAlarm()V
    .registers 3

    .line 5565
    const/16 v0, 0x2c

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5566
    return-void
.end method

.method private startTemporaryDcAlarm()V
    .registers 3

    .line 5896
    const/16 v0, 0x2f

    const/16 v1, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5897
    return-void
.end method

.method private startTemporaryUtStayAlarm()V
    .registers 3

    .line 5951
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    if-nez v0, :cond_16

    .line 5952
    const-string v0, "startTemporaryUtStayAlarm"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5953
    const/16 v0, 0x30

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5955
    :cond_16
    return-void
.end method

.method private startUtAlarm()V
    .registers 3

    .line 5865
    const/16 v0, 0x2a

    const/16 v1, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5866
    return-void
.end method

.method private startUtForbiddenAlarm()V
    .registers 5

    .line 5924
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtForbiddenTimer()I

    move-result v0

    .line 5925
    .local v0, "delay":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUtForbiddenAlarm: delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5926
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 5927
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    const v3, 0xea60

    div-int v3, v0, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 5928
    return-void
.end method

.method private startUtRetryAlarm(I)V
    .registers 4
    .param p1, "count"    # I

    .line 3913
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtRetryInterval(I)I

    move-result v0

    .line 3914
    .local v0, "utRetryInterval":I
    if-gez v0, :cond_b

    .line 3915
    return-void

    .line 3918
    :cond_b
    const/16 v1, 0x2b

    invoke-direct {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 3919
    return-void
.end method

.method private startUtServiceThread()V
    .registers 3

    .line 2108
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$4;

    invoke-direct {v1, p0}, Lcom/huawei/ims/HwImsUtImpl$4;-><init>(Lcom/huawei/ims/HwImsUtImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2118
    return-void
.end method

.method private startWifiTunnelConnectionAlarm()V
    .registers 3

    .line 5377
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_f

    .line 5378
    const/16 v0, 0x2e

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtVoWifiDelayEndTime()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5380
    :cond_f
    return-void
.end method

.method private startWifiTunnelSetupAlarm()V
    .registers 3

    .line 5412
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-eqz v0, :cond_b

    .line 5413
    const/16 v0, 0x2d

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->startAlarm(II)V

    .line 5415
    :cond_b
    return-void
.end method

.method private stopAlarm(I)V
    .registers 4
    .param p1, "alarm"    # I

    .line 5999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAlarm alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6000
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6001
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6003
    :cond_23
    return-void
.end method

.method private stopDcAlarm()V
    .registers 2

    .line 5892
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5893
    return-void
.end method

.method private stopImsDataConnectionAlarm()V
    .registers 2

    .line 5569
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5570
    return-void
.end method

.method private stopTemporaryDcAlarm()V
    .registers 2

    .line 5900
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5901
    return-void
.end method

.method private stopTemporaryUtStayAlarm()V
    .registers 2

    .line 5958
    sget-boolean v0, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v0, :cond_e

    .line 5959
    const-string v0, "stopTemporaryUtStayAlarm"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5960
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5962
    :cond_e
    return-void
.end method

.method private stopUtAlarm()V
    .registers 2

    .line 5869
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5870
    return-void
.end method

.method private stopUtForbiddenAlarm()V
    .registers 3

    .line 5931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopUtForbiddenAlarm: mUtForbiddenDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 5932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtForbiddenDate:Ljava/util/Date;

    .line 5933
    return-void
.end method

.method private stopUtRetryAlarm()V
    .registers 2

    .line 3922
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 3923
    return-void
.end method

.method private stopWifiTunnelConnectionAlarm()V
    .registers 2

    .line 5383
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_a

    .line 5384
    const-string v0, "already stop tunnel connection Alarm, no need do again"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5385
    return-void

    .line 5387
    :cond_a
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5388
    return-void
.end method

.method private stopWifiTunnelSetupAlarm()V
    .registers 2

    .line 5418
    sget-boolean v0, Lcom/huawei/ims/HwImsUtImpl;->IS_VOWIFI_PROP_ON:Z

    if-nez v0, :cond_a

    .line 5419
    const-string v0, "already stop tunnel connection Alarm, no need do again"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 5420
    return-void

    .line 5422
    :cond_a
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->stopAlarm(I)V

    .line 5423
    return-void
.end method

.method private syncClirModeToImsSdk(ILandroid/os/Message;)V
    .registers 4
    .param p1, "clirMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 6252
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/ims/ImsRIL;->setCLIR(ILandroid/os/Message;)V

    .line 6253
    return-void
.end method

.method private transBarringFacilityToCbReason(Ljava/lang/String;)I
    .registers 3
    .param p1, "facility"    # Ljava/lang/String;

    .line 4937
    const-string v0, "AO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4938
    const/4 v0, 0x1

    return v0

    .line 4939
    :cond_a
    const-string v0, "OI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4940
    const/4 v0, 0x2

    return v0

    .line 4941
    :cond_14
    const-string v0, "OX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4942
    const/4 v0, 0x3

    return v0

    .line 4943
    :cond_1e
    const-string v0, "AI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4944
    const/4 v0, 0x0

    return v0

    .line 4945
    :cond_28
    const-string v0, "IR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4946
    const/4 v0, 0x4

    return v0

    .line 4947
    :cond_32
    const-string v0, "AB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4948
    const/4 v0, 0x5

    return v0

    .line 4950
    :cond_3c
    const/4 v0, -0x1

    return v0
.end method

.method private transCbTypeToFacility(I)Ljava/lang/String;
    .registers 5
    .param p1, "cbType"    # I

    .line 4873
    const/4 v0, 0x0

    .line 4875
    .local v0, "facility":Ljava/lang/String;
    packed-switch p1, :pswitch_data_32

    .line 4901
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_31

    .line 4898
    :pswitch_19
    const-string v0, "AC"

    .line 4899
    goto :goto_31

    .line 4895
    :pswitch_1c
    const-string v0, "AG"

    .line 4896
    goto :goto_31

    .line 4892
    :pswitch_1f
    const-string v0, "AB"

    .line 4893
    goto :goto_31

    .line 4889
    :pswitch_22
    const-string v0, "IR"

    .line 4890
    goto :goto_31

    .line 4883
    :pswitch_25
    const-string v0, "OX"

    .line 4884
    goto :goto_31

    .line 4880
    :pswitch_28
    const-string v0, "OI"

    .line 4881
    goto :goto_31

    .line 4877
    :pswitch_2b
    const-string v0, "AO"

    .line 4878
    goto :goto_31

    .line 4886
    :pswitch_2e
    const-string v0, "AI"

    .line 4887
    nop

    .line 4904
    :goto_31
    return-object v0

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_4
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method

.method private transCbTypeToUtTypeGet(I)I
    .registers 4
    .param p1, "cbType"    # I

    .line 4854
    const/4 v0, -0x1

    .line 4855
    .local v0, "utType":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    const/4 v1, 0x2

    if-eq p1, v1, :cond_11

    const/4 v1, 0x3

    if-eq p1, v1, :cond_11

    const/4 v1, 0x4

    if-eq p1, v1, :cond_11

    const/4 v1, 0x5

    if-eq p1, v1, :cond_14

    goto :goto_17

    .line 4859
    :cond_11
    const/16 v0, 0xe

    .line 4860
    goto :goto_17

    .line 4863
    :cond_14
    const/16 v0, 0xd

    .line 4864
    nop

    .line 4869
    :goto_17
    return v0
.end method

.method private transCbTypeToUtTypeSet(I)I
    .registers 5
    .param p1, "cbType"    # I

    .line 4908
    const/4 v0, -0x1

    .line 4910
    .local v0, "utType":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_37

    const/4 v1, 0x2

    if-eq p1, v1, :cond_34

    const/4 v1, 0x3

    if-eq p1, v1, :cond_31

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2e

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x7

    if-eq p1, v1, :cond_28

    .line 4930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR]unknown cbType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    goto :goto_3a

    .line 4927
    :cond_28
    const/16 v0, 0x15

    .line 4928
    goto :goto_3a

    .line 4924
    :cond_2b
    const/16 v0, 0x13

    .line 4925
    goto :goto_3a

    .line 4918
    :cond_2e
    const/16 v0, 0x12

    .line 4919
    goto :goto_3a

    .line 4915
    :cond_31
    const/16 v0, 0x11

    .line 4916
    goto :goto_3a

    .line 4912
    :cond_34
    const/16 v0, 0x10

    .line 4913
    goto :goto_3a

    .line 4921
    :cond_37
    const/16 v0, 0xf

    .line 4922
    nop

    .line 4933
    :goto_3a
    return v0
.end method

.method private transCfToUtReason(I)I
    .registers 3
    .param p1, "reason"    # I

    .line 4955
    packed-switch p1, :pswitch_data_14

    .line 4971
    const/4 v0, -0x1

    return v0

    .line 4965
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 4969
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 4967
    :pswitch_9
    const/4 v0, 0x6

    return v0

    .line 4963
    :pswitch_b
    const/4 v0, 0x4

    return v0

    .line 4961
    :pswitch_d
    const/4 v0, 0x3

    return v0

    .line 4959
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 4957
    :pswitch_11
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private transCfToUtType(I)I
    .registers 3
    .param p1, "reason"    # I

    .line 4976
    packed-switch p1, :pswitch_data_1a

    .line 4992
    const/4 v0, -0x1

    return v0

    .line 4986
    :pswitch_5
    const/16 v0, 0xc

    return v0

    .line 4990
    :pswitch_8
    const/16 v0, 0x17

    return v0

    .line 4988
    :pswitch_b
    const/16 v0, 0x16

    return v0

    .line 4984
    :pswitch_e
    const/16 v0, 0xb

    return v0

    .line 4982
    :pswitch_11
    const/16 v0, 0xa

    return v0

    .line 4980
    :pswitch_14
    const/16 v0, 0x9

    return v0

    .line 4978
    :pswitch_17
    const/4 v0, 0x7

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private transClirModeToUtReason(I)I
    .registers 3
    .param p1, "clirMode"    # I

    .line 5019
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 5025
    return v0

    .line 5021
    :cond_4
    const/4 v0, 0x2

    return v0
.end method

.method private transIntToDate(II)Ljava/util/Date;
    .registers 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 6006
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 6007
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->setHours(I)V

    .line 6008
    invoke-virtual {v0, p2}, Ljava/util/Date;->setMinutes(I)V

    .line 6009
    return-object v0
.end method

.method private transUtToCfReason(I)I
    .registers 3
    .param p1, "reason"    # I

    .line 4997
    if-eqz p1, :cond_13

    packed-switch p1, :pswitch_data_16

    .line 5014
    const/4 v0, -0x1

    return v0

    .line 5011
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 5009
    :pswitch_9
    const/4 v0, 0x4

    return v0

    .line 5007
    :pswitch_b
    const/4 v0, 0x6

    return v0

    .line 5005
    :pswitch_d
    const/4 v0, 0x3

    return v0

    .line 5003
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 5001
    :pswitch_11
    const/4 v0, 0x1

    return v0

    .line 4999
    :cond_13
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method private transferCmdFromRetryQueueToUtCmdQueue()V
    .registers 6

    .line 3410
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3411
    :try_start_3
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3412
    .local v1, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transferCmdFromRetryQueueToUtCmdQueue, size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3414
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1e
    if-ge v2, v1, :cond_3c

    .line 3415
    iget-object v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3416
    .local v3, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtUseDefaultApn()Z

    move-result v4

    if-nez v4, :cond_32

    .line 3417
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;->IMS_DC_INIT:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    iput-object v4, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->dcState:Lcom/huawei/ims/HwImsUtImpl$ImsDataConnectionState;

    .line 3420
    :cond_32
    sget-object v4, Lcom/huawei/ims/HwImsUtImpl$CmdState;->CMD_HANDLE_UT:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    iput-object v4, v3, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->mState:Lcom/huawei/ims/HwImsUtImpl$CmdState;

    .line 3421
    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->addUtCmd(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3414
    .end local v3    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 3423
    .end local v2    # "i":I
    :cond_3c
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3424
    .end local v1    # "size":I
    monitor-exit v0

    .line 3425
    return-void

    .line 3424
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private transferCmdFromUtCmdQueueToRetryQueue(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V
    .registers 4
    .param p1, "cmd"    # Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    .line 3428
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->removeUtCmdInternal(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)V

    .line 3429
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3430
    :try_start_6
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtRetryCmdQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3431
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    .line 3432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd tries go Ut interface again, add cmd to mRetryUtCmdQueue, cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 3433
    return-void

    .line 3431
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private updateCallBarringAllOption(Ljava/lang/String;ZI)I
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "isEnable"    # Z
    .param p3, "serviceClass"    # I

    .line 4575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter updateCallbarringAllOption, isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4576
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    .line 4578
    .local v0, "callBarringAll":[I
    const/4 v1, 0x0

    .line 4580
    .local v1, "id":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v3, v0

    if-ge v2, v3, :cond_28

    .line 4581
    aget v3, v0, v2

    invoke-direct {p0, p1, v3, p2, p3}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringBase(Ljava/lang/String;IZI)I

    move-result v1

    .line 4580
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 4583
    .end local v2    # "i":I
    :cond_28
    return v1

    nop

    :array_2a
    .array-data 4
        0x2
        0x3
        0x4
        0x1
        0x5
    .end array-data
.end method

.method private updateCallBarringBase(Ljava/lang/String;IZI)I
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "isEnable"    # Z
    .param p4, "serviceClass"    # I

    .line 4587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter updateCallBarringBase, cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4588
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v0

    .line 4589
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 4591
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 4592
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 4595
    :cond_33
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToFacility(I)Ljava/lang/String;

    move-result-object v2

    .line 4596
    .local v2, "facility":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->transBarringFacilityToCbReason(Ljava/lang/String;)I

    move-result v3

    .line 4597
    .local v3, "condition":I
    iput v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 4598
    iput-boolean p3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    .line 4599
    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    .line 4600
    iput-object p1, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csPassword:Ljava/lang/String;

    .line 4601
    iput p4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 4602
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 4603
    iget v4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v4
.end method

.method private updateCallWaitingInternal(Z)I
    .registers 7
    .param p1, "isEnable"    # Z

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCallWaitingInternal isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2069
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 2070
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    .line 2072
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2a

    .line 2073
    return v2

    .line 2084
    :cond_2a
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 2086
    iget-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v3, :cond_41

    .line 2087
    const-string v1, "invalid domain, stop updateCallWaiting"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2088
    return v2

    .line 2091
    :cond_41
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 2092
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method private utSdkReset(I)V
    .registers 3
    .param p1, "level"    # I

    .line 6645
    sget v0, Lcom/huawei/ims/HwImsUtImpl;->sUtSdkInitResult:I

    if-nez v0, :cond_14

    .line 6646
    const-string v0, "sUtSdkInitResult reset"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6647
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 6648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsReqRoutHost:Z

    .line 6649
    iput-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSetNafOrBsfIpToSdk:Z

    .line 6651
    :cond_11
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->reset(I)I

    .line 6653
    :cond_14
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 1806
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 1807
    return-void
.end method

.method public close()V
    .registers 2

    .line 1250
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    .line 1253
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    .line 1254
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    .line 1255
    return-void
.end method

.method public detectSimCardSubscriptionStatus()V
    .registers 4

    .line 6504
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_a

    .line 6505
    const-string v0, "sim card has not been loaded"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 6506
    return-void

    .line 6510
    :cond_a
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    .line 6511
    .local v0, "mainSlot":I
    sget-boolean v1, Lcom/huawei/ims/ImsCallProviderUtils;->IS_DUAL_IMS_AVAILABLE:Z

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    if-eq v1, v0, :cond_20

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCtCardAndSupportVolte()Z

    move-result v1

    if-nez v1, :cond_26

    .line 6512
    :cond_20
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCtCardAndNotSupportVolte()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 6513
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t detect sim card subscription status, the main slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6514
    return-void

    .line 6516
    :cond_3b
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->sendQueryCallWaitingForDetection()V

    .line 6517
    return-void
.end method

.method public endCurrentImsConnectivity()Z
    .registers 4

    .line 6686
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_27

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6687
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6688
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v0

    .line 6689
    .local v0, "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtRetryQueueEmpty()Z

    move-result v1

    .line 6690
    .local v1, "isUtRetryCmdQueueEmpty":Z
    if-nez v0, :cond_25

    if-eqz v1, :cond_25

    .line 6691
    const-string v2, "The slot has no UT cmd to solve while the other is waiting, so end connectivity."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6692
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->endImsConnectivity()V

    .line 6694
    :cond_25
    const/4 v2, 0x1

    return v2

    .line 6696
    .end local v0    # "utCmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    .end local v1    # "isUtRetryCmdQueueEmpty":Z
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 1675
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mHwImsServiceImpl:Lcom/huawei/ims/HwImsServiceImpl;

    iget-object v0, v0, Lcom/huawei/ims/HwImsServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .registers 2

    .line 6448
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-eqz v0, :cond_b

    .line 6449
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtIMPUFromNetwork()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6451
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method handleImsGetImpuDone(Ljava/lang/String;)V
    .registers 3
    .param p1, "impu"    # Ljava/lang/String;

    .line 1799
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 1800
    return-void
.end method

.method handleSimCardAbsent()V
    .registers 2

    .line 2024
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(I)Z

    .line 2025
    return-void
.end method

.method handleSimRecordsLoaded(Ljava/lang/String;)V
    .registers 3
    .param p1, "newImsi"    # Ljava/lang/String;

    .line 1790
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 1791
    return-void
.end method

.method isAirModeResetCwInModem()Z
    .registers 2

    .line 2000
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsAirModeResetCwInModem:Z

    return v0
.end method

.method isSendUtMessage(I)Z
    .registers 3
    .param p1, "utEvent"    # I

    .line 1685
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isSendUtMessage(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "utEvent"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1696
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 1697
    const-string v0, "mUtServiceHandler is null, can\'t send message via this handler."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1698
    const/4 v0, 0x0

    return v0

    .line 1700
    :cond_b
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1701
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    return v1
.end method

.method public isSimCardCheckedByUt()Z
    .registers 2

    .line 6461
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsCheckedSimCardByUt:Z

    return v0
.end method

.method public isSupportCFT()Z
    .registers 4

    .line 1656
    sget-object v0, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->isCheckUtDomain(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;)Z

    move-result v0

    return v0
.end method

.method isUtEnable()Z
    .registers 2

    .line 1666
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsUtEnable:Z

    return v0
.end method

.method public isUtIdle()Z
    .registers 7

    .line 6412
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    const/16 v3, 0x30

    .line 6413
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 6414
    .local v0, "isWaitingForUtStay":Z
    :goto_11
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->getFirstUtCmd()Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    move-result-object v3

    if-nez v3, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v2

    .line 6415
    .local v3, "isUtCmdQueueEmpty":Z
    :goto_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUtIdle: isWaitingForUtStay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isUtCmdQueueEmpty = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6416
    if-nez v0, :cond_3b

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    return v1
.end method

.method public processECT()V
    .registers 4

    .line 6436
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    if-eqz v0, :cond_f

    .line 6437
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mUtServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/ImsRIL;->explicitCallTransfer(Landroid/os/Message;)V

    .line 6439
    :cond_f
    return-void
.end method

.method declared-synchronized queryAndSyncCallWaitingToCs()V
    .registers 5

    monitor-enter p0

    .line 1724
    :try_start_1
    const-string v0, "[UTCMD]enter queryAndSyncCallWaitingToCs"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1728
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCallWaitingExpire()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToCs()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLocalCallWaitingEnable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1729
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting()I

    goto :goto_31

    .line 1731
    .end local p0    # "this":Lcom/huawei/ims/HwImsUtImpl;
    :cond_1e
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCardMccMncPreferToUseUt()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1732
    const-string v0, "this card MCC MNC is not prefer to use UT, will set network mode for callwait"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1733
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mCi:Lcom/huawei/ims/ImsRIL;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/ims/ImsRIL;->setCallWaiting(ZILandroid/os/Message;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 1736
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 1723
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method queryAndSyncCallWaitingToImsSdk()V
    .registers 2

    .line 1765
    const-string v0, "[UTCMD]enter queryAndSyncCallWaitingToImsSdk"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1771
    iget-boolean v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsSimRecordLoaded:Z

    if-nez v0, :cond_f

    .line 1772
    const-string v0, "sim card has not been loaded!"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1773
    return-void

    .line 1778
    :cond_f
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isCallWaitingExpire()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->isCallWaitingSyncToImsSdk()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->isLocalCallWaitingEnable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1779
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->queryCallWaiting()I

    .line 1781
    :cond_26
    return-void
.end method

.method public queryCLIP()I
    .registers 5

    .line 1405
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1406
    const-string v0, "[UTCMD]enter queryCLIP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1407
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1410
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1411
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1414
    :cond_1c
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1415
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCLIR()I
    .registers 5

    .line 1379
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1380
    const-string v0, "[UTCMD]enter queryCLIR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1381
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1383
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1384
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1387
    :cond_1c
    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 1389
    iget-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v2, :cond_33

    .line 1390
    const-string v1, "invalid domain, stop queryCLIR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1391
    const/4 v1, -0x1

    return v1

    .line 1394
    :cond_33
    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 1395
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCOLP()I
    .registers 5

    .line 1447
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1448
    const-string v0, "[UTCMD]enter queryCOLP"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1449
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1452
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1453
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1456
    :cond_1c
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1457
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCOLR()I
    .registers 5

    .line 1425
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1427
    const-string v0, "[UTCMD]enter queryCOLR"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1429
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1432
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1433
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1436
    :cond_1c
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1437
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCallBarringForServiceClass(II)I
    .registers 7
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 1275
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]queryCallBarringForServiceClass:cbType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1279
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeGet(I)I

    move-result v0

    .line 1280
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLBARRING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1282
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1283
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 1286
    :cond_36
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToFacility(I)Ljava/lang/String;

    move-result-object v2

    .line 1287
    .local v2, "facility":Ljava/lang/String;
    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csFacility:Ljava/lang/String;

    .line 1288
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->transBarringFacilityToCbReason(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1289
    iput p2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 1291
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1292
    iget v3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v3
.end method

.method public queryCallForwardForServiceClass(ILjava/lang/String;I)I
    .registers 8
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 1305
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter queryCallForward, condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1308
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCfReason(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1309
    const-string v0, "Invalid condition for queryCallForward."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1310
    const/4 v0, -0x1

    return v0

    .line 1313
    :cond_24
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1315
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1316
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1319
    :cond_38
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1320
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transCfToUtReason(I)I

    move-result v1

    iput v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1321
    iput p3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 1323
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1324
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public queryCallWaiting()I
    .registers 8

    .line 1333
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1334
    const-string v0, "[UTCMD]enter queryCallWaiting"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1341
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1342
    .local v0, "currDate":Ljava/util/Date;
    iput-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    .line 1343
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mNextGetCallWaitingTime:Ljava/util/Date;

    if-eqz v1, :cond_1c

    .line 1344
    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    .line 1347
    :cond_1c
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_GET_CALLWAITING:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {v1, v2, v4, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1349
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    const/4 v5, -0x1

    if-eqz v2, :cond_30

    .line 1350
    return v5

    .line 1361
    :cond_30
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v6, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v2, v6, v3}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 1363
    iget-object v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v2, v3, :cond_46

    .line 1364
    const-string v2, "invalid domain, stop queryCallWaiting"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1365
    return v5

    .line 1368
    :cond_46
    invoke-virtual {p0, v4, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 1369
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2
.end method

.method public receiveOtherSubUtIdle()V
    .registers 3

    .line 6423
    const-string v0, "receiveOtherSubUtIdle"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 6425
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdle()Z

    move-result v0

    if-nez v0, :cond_10

    .line 6427
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 6429
    :cond_10
    return-void
.end method

.method responseMessage(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "err"    # Lcom/android/internal/telephony/CommandException$Error;

    .line 2016
    const-string v0, "responseMessage with err"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2017
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2018
    return-void
.end method

.method responseMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseMessage with obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2006
    if-nez p1, :cond_1c

    .line 2007
    const-string v0, "responseMessage msg is null"

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2008
    return-void

    .line 2011
    :cond_1c
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2012
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2013
    return-void
.end method

.method public setHomeDomainName()I
    .registers 5

    .line 4391
    const/4 v0, -0x1

    .line 4392
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getDomainName()Ljava/lang/String;

    move-result-object v1

    .line 4394
    .local v1, "domainName":Ljava/lang/String;
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHomeDomainName domainName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4395
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    sget v2, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    if-ne v2, v3, :cond_31

    .line 4396
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setHomeDomainName(Ljava/lang/String;)I

    move-result v2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_30} :catch_32

    move v0, v2

    .line 4400
    :cond_31
    goto :goto_38

    .line 4398
    :catch_32
    move-exception v2

    .line 4399
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setHomeDomainName, exception"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 4401
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHomeDomainName , ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 4402
    return v0
.end method

.method setImsSdkBsfAddr()I
    .registers 7

    .line 1870
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfSrvAddr()Ljava/lang/String;

    move-result-object v0

    .line 1871
    .local v0, "bsfAddr":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtBsfPort()I

    move-result v1

    .line 1872
    .local v1, "bsfPort":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtBsfUseHttps()Z

    move-result v2

    .line 1873
    .local v2, "isBsfGoHttps":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ims sdk, bsf use https="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1874
    const/4 v3, -0x1

    .line 1876
    .local v3, "ret":I
    if-nez v0, :cond_2f

    .line 1877
    const-string v4, "bsfAddr is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1878
    return v3

    .line 1882
    :cond_2f
    :try_start_2f
    invoke-static {v0, v1, v2}, Lcom/huawei/sci/SciSSConfHs;->setBsfAddr(Ljava/lang/String;IZ)I

    move-result v4
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_35

    move v3, v4

    .line 1885
    goto :goto_3b

    .line 1883
    :catch_35
    move-exception v4

    .line 1884
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "setImsSdkBsfAddr, failed"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1886
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Ims Sdk Bsf Addr , ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1887
    return v3
.end method

.method setImsSdkImpi()I
    .registers 5

    .line 1843
    const/4 v0, -0x1

    .line 1844
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtImpi()Ljava/lang/String;

    move-result-object v1

    .line 1845
    .local v1, "impi":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImsSdkImpi impi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1847
    if-nez v1, :cond_28

    .line 1848
    const-string v2, "impi is null."

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1849
    return v0

    .line 1853
    :cond_28
    :try_start_28
    sget v2, Lcom/huawei/ims/HwImsUtImpl;->sCurrentSlotId:I

    iget v3, p0, Lcom/huawei/ims/HwImsUtImpl;->mSlotId:I

    if-ne v2, v3, :cond_33

    .line 1854
    invoke-static {v1}, Lcom/huawei/sci/SciSSConfHs;->setAuthUserName(Ljava/lang/String;)I

    move-result v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_34

    move v0, v2

    .line 1858
    :cond_33
    goto :goto_3a

    .line 1856
    :catch_34
    move-exception v2

    .line 1857
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsSdkImpi, failed"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1860
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Ims Sdk Impi, ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1861
    return v0
.end method

.method setImsSdkImpu()I
    .registers 3

    .line 1810
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    if-nez v0, :cond_6

    .line 1811
    const/4 v0, -0x1

    return v0

    .line 1813
    :cond_6
    invoke-virtual {p0}, Lcom/huawei/ims/HwImsUtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtImpu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1814
    .local v0, "impu":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkImpu(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method setImsSdkImpu(Ljava/lang/String;)I
    .registers 5
    .param p1, "impu"    # Ljava/lang/String;

    .line 1824
    const/4 v0, -0x1

    .line 1825
    .local v0, "ret":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsSdkImpu impu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1828
    :try_start_1a
    invoke-static {p1}, Lcom/huawei/sci/SciSSConfHs;->setLocalUserName(Ljava/lang/String;)I

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_20

    move v0, v1

    .line 1831
    goto :goto_26

    .line 1829
    :catch_20
    move-exception v1

    .line 1830
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "setImsSdkImpu, failed"

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1833
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Ims Sdk impu, ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1834
    return v0
.end method

.method setImsSdkNafAddr()I
    .registers 7

    .line 1913
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafSrvAddr()Ljava/lang/String;

    move-result-object v0

    .line 1914
    .local v0, "nafAddr":Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v1}, Lcom/huawei/ims/HwImsConfigImpl;->getUtNafPort()I

    move-result v1

    .line 1915
    .local v1, "nafPort":I
    iget-object v2, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v2}, Lcom/huawei/ims/HwImsConfigImpl;->isUtNafUseHttps()Z

    move-result v2

    .line 1916
    .local v2, "isNafGoHttps":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ims sdk naf , naf port, naf use https="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1917
    const/4 v3, -0x1

    .line 1919
    .local v3, "ret":I
    if-nez v0, :cond_2f

    .line 1920
    const-string v4, "nafAddr is null."

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1922
    return v3

    .line 1926
    :cond_2f
    :try_start_2f
    invoke-static {v0, v1, v2}, Lcom/huawei/sci/SciSSConfHs;->setNafAddr(Ljava/lang/String;IZ)I

    move-result v4
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_35

    move v3, v4

    .line 1929
    goto :goto_3b

    .line 1927
    :catch_35
    move-exception v4

    .line 1928
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "setImsSdkNafAddr, exception"

    invoke-direct {p0, v5}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1930
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Ims Sdk Naf Addr, ret ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1931
    return v3
.end method

.method setImsSdkParamsCfg()V
    .registers 10

    .line 1935
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtParamsCfg()[Ljava/lang/String;

    move-result-object v0

    .line 1936
    .local v0, "utParamsCfgArray":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 1937
    .local v1, "tlsVersion":I
    const/4 v2, 0x1

    if-eqz v0, :cond_72

    .line 1938
    array-length v3, v0

    .line 1939
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v3, :cond_72

    .line 1940
    aget-object v5, v0, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1941
    .local v5, "utParamsCfg":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_69

    const/4 v6, 0x0

    aget-object v7, v5, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_69

    aget-object v7, v5, v2

    .line 1942
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2c

    goto :goto_69

    .line 1948
    :cond_2c
    :try_start_2c
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1949
    .local v6, "utParam":I
    const/16 v7, 0xc

    if-ne v6, v7, :cond_3d

    .line 1950
    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_3c} :catch_62

    move v1, v7

    .line 1955
    :cond_3d
    nop

    .line 1956
    aget-object v7, v5, v2

    invoke-static {v6, v7}, Lcom/huawei/sci/SciSSConfHs;->setParamsCfg(ILjava/lang/String;)I

    .line 1957
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init utParamsCfg, cfgParam="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    goto :goto_6f

    .line 1952
    .end local v6    # "utParam":I
    :catch_62
    move-exception v6

    .line 1953
    .local v6, "ex":Ljava/lang/NumberFormatException;
    const-string v7, "setParamsCfg Exception"

    invoke-direct {p0, v7}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1954
    goto :goto_6f

    .line 1943
    .end local v6    # "ex":Ljava/lang/NumberFormatException;
    :cond_69
    :goto_69
    const-string v6, "setParamsCfg config param not right"

    invoke-direct {p0, v6}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1944
    nop

    .line 1939
    .end local v5    # "utParamsCfg":[Ljava/lang/String;
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1960
    .end local v3    # "length":I
    .end local v4    # "i":I
    :cond_72
    if-le v1, v2, :cond_77

    .line 1961
    invoke-direct {p0}, Lcom/huawei/ims/HwImsUtImpl;->setImsSdkParamsTlsConfig()V

    .line 1963
    :cond_77
    return-void
.end method

.method setImsXcapRootUri()I
    .registers 5

    .line 1896
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mImsConfigImpl:Lcom/huawei/ims/HwImsConfigImpl;

    invoke-virtual {v0}, Lcom/huawei/ims/HwImsConfigImpl;->getUtXcapRootUri()Ljava/lang/String;

    move-result-object v0

    .line 1897
    .local v0, "xcapuri":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1899
    .local v1, "ret":I
    :try_start_7
    invoke-static {v0}, Lcom/huawei/sci/SciSSConfHs;->setXcapRootUri(Ljava/lang/String;)I

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_d

    move v1, v2

    .line 1902
    goto :goto_13

    .line 1900
    :catch_d
    move-exception v2

    .line 1901
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setImsXcapRootUri, exception"

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1903
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImsXcapRootUri , ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1904
    return v1
.end method

.method public setIsDataReg(Z)V
    .registers 2
    .param p1, "isDataReg"    # Z

    .line 6470
    iput-boolean p1, p0, Lcom/huawei/ims/HwImsUtImpl;->mIsDataReg:Z

    .line 6471
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 1263
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1264
    iget-object v0, p0, Lcom/huawei/ims/HwImsUtImpl;->mListenerProxy:Lcom/huawei/ims/ImsUtListenerProxy;

    invoke-virtual {v0, p1}, Lcom/huawei/ims/ImsUtListenerProxy;->setImsUtListener(Landroid/telephony/ims/ImsUtListener;)V

    .line 1265
    return-void
.end method

.method public updateCLIP(Z)I
    .registers 5
    .param p1, "isEnable"    # Z

    .line 1590
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCLIP, isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1592
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_ORIGINATING_IDENTITY_PRESENTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1595
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1596
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1599
    :cond_2a
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    .line 1600
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1601
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCLIR(I)I
    .registers 6
    .param p1, "clirMode"    # I

    .line 1559
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCLIR, clirMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1561
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_OUTGOING_CALLERID_DISPLAY:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1563
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1564
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1567
    :cond_2b
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v1

    :goto_30
    iput-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    .line 1568
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->transClirModeToUtReason(I)I

    move-result v2

    iput v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1569
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIR, isUtEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", utReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1571
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    iget v3, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utType:I

    invoke-direct {p0, v2, v3, v1}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    .line 1573
    iget-object v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->domainSelect:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_INVALID_DOMAIN:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-ne v1, v2, :cond_71

    .line 1574
    const-string v1, "invalid domain, stop queryCLIR"

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1575
    const/4 v1, -0x1

    return v1

    .line 1578
    :cond_71
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/huawei/ims/HwImsUtImpl;->isSendUtMessage(ILjava/lang/Object;)Z

    .line 1579
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCOLP(Z)I
    .registers 6
    .param p1, "isEnable"    # Z

    .line 1635
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCOLP, isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1637
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_PRESETNTATION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1640
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1641
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1644
    :cond_2b
    iput-boolean p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    .line 1645
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1646
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCOLR(I)I
    .registers 6
    .param p1, "presentation"    # I

    .line 1612
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCOLR, presentation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1614
    new-instance v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v1, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_TERMINATING_IDENTITY_RESTRICTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1617
    .local v0, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1618
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1

    .line 1621
    :cond_2b
    if-nez p1, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    iput-boolean v2, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    .line 1622
    iput p1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1623
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1624
    iget v1, v0, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v1
.end method

.method public updateCallBarringOption(Ljava/lang/String;IZI[Ljava/lang/String;)I
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "isAction"    # Z
    .param p4, "serviceClass"    # I
    .param p5, "barrList"    # [Ljava/lang/String;

    .line 1472
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCallBarringOption, cbType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", barrList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1473
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1476
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v0

    .line 1477
    .local v0, "type":I
    const/16 v1, 0x15

    if-ne v0, v1, :cond_63

    .line 1478
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCbTypeToUtTypeSet(I)I

    move-result v1

    .line 1479
    .local v1, "utType":I
    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_UT_PREFER_CS_SECONDARY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/huawei/ims/HwImsUtImpl;->domainSelect(Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;IZ)Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    move-result-object v2

    .line 1480
    .local v2, "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallBarringOption: domainSelect is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1481
    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;->SS_SELECT_CS_DOMAIN_ONLY:Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;

    if-eq v2, v3, :cond_63

    .line 1482
    invoke-direct {p0, p1, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringAllOption(Ljava/lang/String;ZI)I

    move-result v3

    return v3

    .line 1485
    .end local v1    # "utType":I
    .end local v2    # "ds":Lcom/huawei/ims/HwImsUtImpl$DomainSelectType;
    :cond_63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->updateCallBarringBase(Ljava/lang/String;IZI)I

    move-result v1

    return v1
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .registers 10
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 2038
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCallForward, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2039
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 2043
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCfAction(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCfReason(I)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_7c

    .line 2048
    :cond_49
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCfToUtType(I)I

    move-result v0

    .line 2049
    .local v0, "type":I
    new-instance v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v2, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 2051
    .local v1, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2052
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 2055
    :cond_60
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->isCfEnable(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    .line 2056
    invoke-direct {p0, p2}, Lcom/huawei/ims/HwImsUtImpl;->transCfToUtReason(I)I

    move-result v2

    iput v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 2057
    iput-object p3, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 2058
    iput p5, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utTimer:I

    .line 2059
    iput p2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 2060
    iput p1, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 2061
    iput p4, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csServiceClass:I

    .line 2063
    invoke-direct {p0, v1}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 2064
    iget v2, v1, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v2

    .line 2044
    .end local v0    # "type":I
    .end local v1    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_7c
    :goto_7c
    const-string v0, "Invalid action or condition for updateCallForward."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 2045
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I
    .registers 13
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;

    .line 1503
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UTCMD]enter updateCallForwardUncondTimer, startHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    const/4 v1, 0x0

    invoke-direct {p0, p7, v1}, Lcom/huawei/ims/HwImsUtImpl;->hiddenPrivacyInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1505
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->logd(Ljava/lang/String;)V

    .line 1510
    invoke-direct {p0, p5}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCfAction(I)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-direct {p0, p6}, Lcom/huawei/ims/HwImsUtImpl;->isValidCommandInterfaceCfReason(I)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1511
    move v0, p6

    .line 1512
    .local v0, "cmdCsReason":I
    if-nez p6, :cond_5c

    .line 1513
    const/4 v0, 0x6

    .line 1516
    :cond_5c
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->transCfToUtType(I)I

    move-result v1

    .line 1517
    .local v1, "type":I
    new-instance v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;

    sget-object v3, Lcom/huawei/ims/HwImsUtImpl$CmdToken;->CMD_SET_CALLFORWARDING_OPTION:Lcom/huawei/ims/HwImsUtImpl$CmdToken;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/huawei/ims/HwImsUtImpl$UtCmd;-><init>(Lcom/huawei/ims/HwImsUtImpl$CmdToken;II)V

    .line 1519
    .local v2, "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    iget v3, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    invoke-direct {p0, v3}, Lcom/huawei/ims/HwImsUtImpl;->isUtIdInvalid(I)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 1520
    iget v3, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v3

    .line 1523
    :cond_73
    invoke-direct {p0, p5}, Lcom/huawei/ims/HwImsUtImpl;->isCfEnable(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->isUtEnable:Z

    .line 1524
    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->transCfToUtReason(I)I

    move-result v3

    iput v3, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utReason:I

    .line 1525
    iput-object p7, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utNumber:Ljava/lang/String;

    .line 1526
    invoke-direct {p0, p1, p2}, Lcom/huawei/ims/HwImsUtImpl;->transIntToDate(II)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->startTime:Ljava/util/Date;

    .line 1527
    invoke-direct {p0, p3, p4}, Lcom/huawei/ims/HwImsUtImpl;->transIntToDate(II)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->endTime:Ljava/util/Date;

    .line 1528
    iput v0, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csReason:I

    .line 1529
    iput p5, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->csAction:I

    .line 1531
    invoke-direct {p0, v2}, Lcom/huawei/ims/HwImsUtImpl;->handleSs(Lcom/huawei/ims/HwImsUtImpl$UtCmd;)I

    .line 1532
    iget v3, v2, Lcom/huawei/ims/HwImsUtImpl$UtCmd;->utId:I

    return v3

    .line 1534
    .end local v0    # "cmdCsReason":I
    .end local v1    # "type":I
    .end local v2    # "cmd":Lcom/huawei/ims/HwImsUtImpl$UtCmd;
    :cond_97
    const-string v0, "Invalid condition for updateCallForwardUncondTimer."

    invoke-direct {p0, v0}, Lcom/huawei/ims/HwImsUtImpl;->loge(Ljava/lang/String;)V

    .line 1535
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .registers 4
    .param p1, "isEnable"    # Z
    .param p2, "serviceClass"    # I

    .line 1547
    invoke-static {}, Lcom/huawei/ims/HwImsUtImpl;->checkAccessPermission()V

    .line 1548
    invoke-direct {p0, p1}, Lcom/huawei/ims/HwImsUtImpl;->updateCallWaitingInternal(Z)I

    move-result v0

    return v0
.end method
